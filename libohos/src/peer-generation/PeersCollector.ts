import * as path from "path"
import { ArgumentModifier, capitalize, getSuper, isDefined, LibraryInterface, Method, NamedMethodSignature, PeerClass, PeerLibrary, PeerMethod, PeerMethodArg, PeerMethodSignature, warn, Language, unionTypeProcessor } from "@idlizer/core";
import * as idl from "@idlizer/core/idl"
import { collectComponents, findComponentByDeclaration, findComponentByType, IdlComponentDeclaration } from "./ComponentsCollector";
import { getMethodModifiers } from "./idl/IdlPeerGeneratorVisitor";
import { peerGeneratorConfiguration } from "../DefaultConfiguration";

const collectPeers_cache = new Map<LibraryInterface, PeerClass[]>()
export function collectPeers(library: PeerLibrary): PeerClass[] {
    if (!collectPeers_cache.has(library))
        collectPeers_cache.set(library, collectComponents(library).map(it => generatePeer(library, it)))
    return collectPeers_cache.get(library)!
}

export function collectOrderedPeers(library: PeerLibrary): PeerClass[] {
    return Array.from(collectPeers(library)).sort((a, b) => a.componentName.localeCompare(b.componentName))
}

export function collectPeersForFile(library: PeerLibrary, file: idl.IDLFile): PeerClass[] {
    return collectPeers(library).filter(it => it.file === file)
}

// 使用公共 Union 处理器的 CJ 适配器（完善版）
function expandCJArgTypes(argType: idl.IDLType, argName?: string): idl.IDLType[] {
	if (!argType) {
		return [idl.IDLAnyType]
	}
	try {
		const dbg = idl.DebugUtils?.debugPrintType?.(argType)
		console.log(`[PeersCollector][CJ] expandArg start name=${argName ?? ''} type=${dbg}`)
	} catch {}
	// Optional<...> 先拆 type 再包 Option
	if (idl.isOptionalType(argType)) {
		const innerType = (argType as any)?.type as idl.IDLType | undefined
		if (!innerType) return [argType]
		// Optional<UnionType>
		if (idl.isUnionType(innerType)) {
			try {
				const v = (innerType as any).types?.map((t: idl.IDLType) => idl.DebugUtils.debugPrintType(t)).join(' | ')
				console.log(`[PeersCollector][CJ] Optional<Union> detected name=${argName ?? ''} variants=[${v}]`)
			} catch {}
			const result = unionTypeProcessor.convertUnionType(innerType.types, argName || 'value')
			return unionTypeProcessor.convertToIDLTypes(result).map(t => idl.createOptionalType(t))
		}
		// Optional<ReferenceType('Union_*')>
		if (idl.isReferenceType(innerType) && innerType.name?.startsWith('Union_')) {
			console.log(`[PeersCollector][CJ] Optional<Reference Union_*> detected name=${argName ?? ''} union=${innerType.name}`)
			const alts = expandCJArgTypes(innerType, argName)
			return alts.map(t => idl.createOptionalType(t))
		}
		return [argType]
	}

	// 直接 UnionType：使用公共处理器
	if (idl.isUnionType(argType)) {
		try {
			const v = (argType as any).types?.map((t: idl.IDLType) => idl.DebugUtils.debugPrintType(t)).join(' | ')
			console.log(`[PeersCollector][CJ] UnionType detected name=${argName ?? ''} variants=[${v}]`)
		} catch {}
		const result = unionTypeProcessor.convertUnionType((argType as any).types, argName || 'value')
		return unionTypeProcessor.convertToIDLTypes(result)
	}

	// ReferenceType("Type_*_testTupleUnion_value")：复杂tuple union简化处理
	if (idl.isReferenceType(argType) && argType.name.includes('testTupleUnion_value')) {
		console.log(`[PeersCollector] Simplifying complex tuple union ${argType.name} -> (Float64, Bool, String)`)
		// 对于 [(number | string), (boolean | EnumDTS), (string | EnumDTS | boolean)]
		// 简化为 [number, boolean, string] -> 使用原生tuple类型引用
		return [idl.createReferenceType('(Float64, Bool, String)')]
	}

	// ReferenceType("Union_*")：按名称拆
	if (idl.isReferenceType(argType) && argType.name.startsWith('Union_')) {
		console.log(`[PeersCollector][CJ] Reference Union_* detected name=${argName ?? ''} union=${argType.name}`)
		const unionName = argType.name
		const memberNames = unionName.replace(/^Union_/, '').split('_').filter(p => !!p)
		const memberTypes = memberNames.map(name => {
			switch (name) {
				case 'Number': return idl.IDLNumberType
				case 'String': return idl.IDLStringType
				case 'Boolean': return idl.IDLBooleanType
				case 'Array': {
					const nextIndex = memberNames.indexOf(name) + 1
					if (nextIndex < memberNames.length) {
						const elementTypeName = memberNames[nextIndex]
						if (elementTypeName === 'Number') return idl.createContainerType('sequence' as any, [idl.IDLI32Type])
						if (elementTypeName === 'String') return idl.createContainerType('sequence' as any, [idl.createReferenceType('ResourceStr')])
					}
					return idl.createReferenceType('Array')
				}
				default: return idl.createReferenceType(name)
			}
		})
		const filtered = memberTypes.filter((_, i) => (i === 0 || memberNames[i - 1] !== 'Array'))
		const result = unionTypeProcessor.convertUnionType(filtered, argName || 'value')
		const expanded = unionTypeProcessor.convertToIDLTypes(result)
		if (expanded.length === 1 && idl.isReferenceType(expanded[0]) && (expanded[0] as any).name === (argType as any).name) {
			return applyHardcodedUnionRules(unionName, argName || 'value')
		}
		try {
			console.log(`[PeersCollector][CJ] Reference Union_* expanded name=${argName ?? ''} union=${argType.name} -> alts=${expanded.map(e => idl.DebugUtils.debugPrintType(e)).join(', ')}`)
		} catch {}
		return expanded
	}

	return [argType]
}

// 硬编码的 Union 规则作为后备 - 已更新为与文档一致的新规则
function applyHardcodedUnionRules(unionName: string, paramName: string): idl.IDLType[] {
    
    // 布尔+字符串：Boolean + String → Bool & String 重载
    if (unionName === 'Union_Boolean_String') {
        return [idl.IDLBooleanType, idl.IDLStringType]
    }
    
    // 字符串+数字：String + Number → Number & String 重载（不收敛为Length）
    if (unionName === 'Union_String_Number' || unionName === 'Union_Number_String') {
        return [idl.IDLNumberType, idl.IDLStringType]
    }
    
    // 字符串+资源：String + Resource → String & Resource 重载
    if (unionName === 'Union_String_Resource') {
        return [idl.IDLStringType, idl.createReferenceType('Resource')]
    }
    
    // 数字+资源：Number + Resource → Number & Resource 重载
    if (unionName === 'Union_Number_Resource') {
        return [idl.IDLNumberType, idl.createReferenceType('Resource')]
    }
    
    // 数字+资源字符串：Number + ResourceStr → Number & ResourceStr 重载
    if (unionName === 'Union_Number_ResourceStr') {
        return [idl.IDLNumberType, idl.createReferenceType('ResourceStr')]
    }
    
    // 长度语义（三元联合）：Number + String + Resource → Number & String & Resource
    if (unionName === 'Union_Number_String_Resource') {
        return [idl.IDLNumberType, idl.IDLStringType, idl.createReferenceType('Resource')]
    }
    
    // 标量/向量：Number + Array_Number → Int32/Int64 & Array<Int32/Int64>（默认用Int64，除非index/count语义）
    if (unionName === 'Union_Number_Array_Number') {
        const isIndexCount = /^(index|count|selected|current|active|position|level|depth|page|step|tab)$/i.test(paramName)
        const scalarType = isIndexCount ? idl.IDLI32Type : idl.IDLI64Type
        const arrayType = isIndexCount ? 
            idl.createContainerType('sequence' as any, [idl.IDLI32Type]) :
            idl.createContainerType('sequence' as any, [idl.IDLI64Type])
        return [scalarType, arrayType]
    }
    
    // 具名二选一：检查是否为 Union_TypeA_TypeB 模式
    const parts = unionName.replace(/^Union_/, '').split('_').filter(p => !!p)
    if (parts.length === 2 && parts.every(p => p[0] === p[0].toUpperCase())) {
        return parts.map(p => idl.createReferenceType(p))
    }
    
    // 多元具名联合：Union_A_B_C_... → 拆分为各个具名类型（限制最多3个）
    if (parts.length >= 3 && parts.every(p => p[0] === p[0].toUpperCase())) {
        return parts.slice(0, 3).map(p => idl.createReferenceType(p))
    }
    
    // 兜底：返回原类型
    return [idl.createReferenceType(unionName)]
}

function processMethodOrCallable(library: PeerLibrary, method: idl.IDLMethod | idl.IDLCallable, peer: PeerClass, parentName?: string): PeerMethod[] | undefined {
    if (peerGeneratorConfiguration().components.ignorePeerMethod.includes(method.name!))
        return
    // Some method have other parents as part of their names
    // Such as the ones coming from the friend interfaces
    // E.g. ButtonInterface instead of ButtonAttribute
    const isCallSignature = idl.isCallable(method)
    const methodName = isCallSignature ? `set${capitalize(peer.componentName)}Options` : method.name
    const retType = method.returnType!
    const isThisRet = isCallSignature || idl.isNamedNode(retType) && (retType.name === peer.originalClassName || retType.name === "T" || retType === idl.IDLThisType)
    const originalParentName = parentName ?? peer.originalClassName!
    const signature = new NamedMethodSignature(
        (isThisRet ? idl.IDLThisType : retType) ?? method.returnType!,
        method.parameters.map(it => it.type),
        method.parameters.map(it => it.name),
        undefined,
        method.parameters.map(it => it.isOptional ? ArgumentModifier.OPTIONAL : undefined)
    )
    const realRetType = isThisRet ? idl.IDLVoidType : retType
    // Helper: expand CJ semantic unions to concrete overload arg types (Length|ResourceStr, Float32|Resource, TypeA|TypeB, etc.)
        // 方法内部现在直接使用全局的 expandCJArgTypes 函数

    // 如果是 CJ 语言：将参数中的命名 Union 拆成多重载（与组件层保持一致）
    const generatePeerMethod = (argsTypes: idl.IDLType[], overloadIndex?: number): PeerMethod => {
        const sig = new NamedMethodSignature(
            signature.returnType,
            argsTypes,
            signature.argsNames,
            signature.defaults,
            signature.argsModifiers
        )
        const overloadPostfix = PeerMethodSignature.generateOverloadPostfix(method)
        const baseName = isCallSignature ? methodName : `set${capitalize(methodName)}`
        const newMethodName = baseName + overloadPostfix
        return new PeerMethod(
            new PeerMethodSignature(
                newMethodName,
                idl.getFQName(method.parent as idl.IDLInterface).split('.').concat(newMethodName).join('_'),
                sig.args.map((it, index) => new PeerMethodArg(sig.argName(index), idl.maybeOptional(it, sig.isArgOptional(index)))),
                sig.returnType,
                method.parent as idl.IDLInterface,
            ),
            originalParentName,
            realRetType,
            isCallSignature,
            new Method(methodName!, sig, getMethodModifiers(method))
        )
    }

    if (library.language === Language.CJ) {
        // 对方法参数执行语义 Union 拆分，做笛卡尔展开
        const unionsIndices: number[] = []
        const unionAlts: idl.IDLType[][] = []
        const baseTypes = signature.args.slice()
        let hasSingleReplacement = false
        signature.args.forEach((t, i) => {
            const alts = expandCJArgTypes(t, signature.argName(i))
            if (alts.length > 1) {
                unionsIndices.push(i)
                unionAlts.push(alts)
            } else if (alts.length === 1) {
                // 单一收敛：直接替换该参数类型
                baseTypes[i] = alts[0]
                hasSingleReplacement = true
            }
        })
        if (unionsIndices.length > 0) {
            // 生成组合（基于已替换过单一收敛后的 baseTypes）
            const results: PeerMethod[] = []
            const backtrack = (pos: number) => {
                if (pos === unionsIndices.length) {
                    results.push(generatePeerMethod(baseTypes.slice()))
                    return
                }
                const argIndex = unionsIndices[pos]
                for (const alt of unionAlts[pos]) {
                    baseTypes[argIndex] = alt
                    backtrack(pos + 1)
                }
            }
            backtrack(0)
            return results
        }
        // 无多重重载，但存在单一收敛替换 → 生成一次方法
        if (hasSingleReplacement) {
            return [generatePeerMethod(baseTypes)]
        }
    }

    return [generatePeerMethod(signature.args)]
}

function processProperty(library: PeerLibrary, prop: idl.IDLProperty, peer: PeerClass, parentName?: string): PeerMethod[] | undefined {
    if (peerGeneratorConfiguration().components.ignorePeerMethod.includes(prop.name))
        return
    const originalParentName = parentName ?? peer.originalClassName!
    const mk = (argType: idl.IDLType): PeerMethod => {
        const signature = new NamedMethodSignature(idl.IDLThisType, [idl.maybeOptional(argType, prop.isOptional)], ["value"]) 
        const overloadPostfix = PeerMethodSignature.generateOverloadPostfix(prop)
        const methodName = `set${capitalize(prop.name)}${overloadPostfix}`
        return new PeerMethod(
            new PeerMethodSignature(
                methodName,
                idl.getFQName(prop.parent as idl.IDLInterface).split('.').concat(methodName).join('_'),
                [new PeerMethodArg('value', idl.maybeOptional(argType, prop.isOptional))],
                idl.IDLVoidType,
                prop.parent as idl.IDLInterface,
            ),
            originalParentName,
            idl.IDLVoidType,
            false,
            new Method(prop.name, signature, []))
    }
    // 在 CJ 下，将属性命名 Union 类型语义化拆重载（复用方法参数的拆分逻辑）
    if (library.language === Language.CJ) {
        const alts = expandCJArgTypes(prop.type, prop.name)
        if (alts.length >= 1) return alts.map((a: idl.IDLType) => mk(a))
    }
    return [mk(prop.type)]
}

function processOptionAttribute(seenAttributes: Set<string>, property: idl.IDLProperty, peer: PeerClass) {
    const propName = property.name
    if (seenAttributes.has(propName)) {
        warn(`ignore seen property: ${propName}`)
        return
    }
    seenAttributes.add(propName)
    // const type = this.fixTypeLiteral(propName, property.type, peer)
    peer.attributesFields.push(property)
}

function createComponentAttributesDeclaration(clazz: idl.IDLInterface, peer: PeerClass) {
    if (peerGeneratorConfiguration().components.invalidAttributes.includes(peer.componentName)) {
        return
    }
    const seenAttributes = new Set<string>()
    clazz.properties.forEach(prop => {
        processOptionAttribute(seenAttributes, prop, peer)
    })
}

function fillClass(library: PeerLibrary, peer: PeerClass, clazz: idl.IDLInterface) {
    peer.originalClassName = clazz.name
    const parentDecl = getSuper(clazz, library)
    // TODO: should we check other parents?
    if (parentDecl) {
        const parentComponent = findComponentByDeclaration(library, parentDecl)!
        peer.originalParentName = parentDecl?.name
        peer.originalParentFilename = parentDecl?.fileName
        peer.parentComponentName = parentComponent.name
    }
    let peerMethods = [
        ...clazz.properties.flatMap(it => processProperty(library, it, peer) ?? []),
        ...clazz.methods.flatMap(it => processMethodOrCallable(library, it, peer) ?? []),
    ].filter(isDefined)

    peerMethods = deduplicatePeerMethods(peerMethods)
    peer.methods.push(...peerMethods)

    createComponentAttributesDeclaration(clazz, peer)
}

function fillInterface(library: PeerLibrary, peer: PeerClass, iface: idl.IDLInterface) {
	peer.originalInterfaceName = iface.name
    let peerMethods = iface.callables
        .flatMap(it => processMethodOrCallable(library, it, peer, iface?.name) ?? [])
        .filter(isDefined)

    peerMethods = deduplicatePeerMethods(peerMethods)
	peer.methods.push(...peerMethods)
}

function generatePeer(library: PeerLibrary, component: IdlComponentDeclaration): PeerClass {
    if (!component.attributeDeclaration.fileName) {
        throw new Error("Expected parent of attributes to be a SourceFile, but fileName is undefined")
    }

    const originalFileName = component.attributeDeclaration.fileName
    const baseName = path.basename(originalFileName)
    const resolvedPath = path.resolve(originalFileName)

    const file = library.findFileByOriginalFilename(baseName) ||
                    library.findFileByOriginalFilename(resolvedPath)

    if (!file) {
        console.error("Available files in library:", library.files.map(f => f.fileName))
        throw new Error(`Not found a file corresponding to attributes class: ${baseName} (${resolvedPath})`)
    }

    const peer = new PeerClass(file, component.name, baseName)

    if (component.interfaceDeclaration) {
        fillInterface(library, peer, component.interfaceDeclaration)
    }

    fillClass(library, peer, component.attributeDeclaration)
    // TODO that changes ABI - some functions will not be merged. Do we want to continue with that? Or do we want to wait more
    // accurate methods merging algorithm?
    // collapseIdlEventsOverloads(this.library, peer)
    return peer
}

function deduplicatePeerMethods(methods: PeerMethod[]): PeerMethod[] {
    const seen = new Set<string>()
    const result: PeerMethod[] = []
    for (const m of methods) {
        const sig = m.sig
        const key =
            sig.name + ":" +
            sig.args.map((a: PeerMethodArg) =>
                (a.type ? (a.type as any).name ?? a.type.toString() : "unknown")
            ).join(",") +
            "->" +
            (sig.returnType ? (sig.returnType as any).name ?? sig.returnType.toString() : "void")

        if (!seen.has(key)) {
            seen.add(key)
            result.push(m)
        }
    }
    return result
}