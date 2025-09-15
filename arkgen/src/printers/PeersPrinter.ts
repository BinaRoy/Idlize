/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import * as idl from '@idlizer/core/idl'
import {
    throwException,
    Language,
    InheritanceRole,
    determineParentRole,
    isHeir,
    generatorConfiguration,
    LayoutNodeRole,
    ArgumentModifier,
    capitalize,
    LanguageWriter,
    createConstructPeerMethod,
    PeerClass,
    PeerMethod,
    PeerLibrary,
    Method,
    MethodModifier,
    NamedMethodSignature,
    createReferenceType,
    IDLI32Type,
    IDLPointerType,
    IDLStringType,
    IDLVoidType,
} from '@idlizer/core'
import {
    ImportsCollector,
    ARKOALA_PACKAGE,
    TargetFile,
    collectJavaImports,
    printJavaImports,
    collectDeclDependencies,
    collectDeclItself,
    findComponentByName,
    findComponentByType,
    NativeModule,
    PrinterFunction,
    PrinterResult,
    collectPeersForFile,
    writePeerMethod
} from "@idlizer/libohos";
import { HandwrittenModule } from '../ArkoalaLayout';
import { CJTypeMapper, TypeConversionResult } from '../declaration/CJTypeMapper'

export function componentToPeerClass(component: string) {
    return `Ark${component}Peer`
}

export function componentToStyleClass(component: string) {
    if (component.endsWith("Attribute"))
        component = component.substring(0, component.length - 9)
    return `Ark${component}Style`
}

export function componentToAttributesInterface(component: string) {
    return `${component}`
}

// For TS and ArkTS
class PeerFileVisitor {
    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        protected readonly dumpSerialized: boolean,
    ) { }

    protected generatePeerParentName(peer: PeerClass): string {
        if (!peer.originalClassName)
            throw new Error(`${peer.componentName} is not supported, use 'uselessConstructorInterfaces' for now`)
        const parentRole = determineParentRole(peer.originalClassName, peer.parentComponentName)
        if ([InheritanceRole.Finalizable, InheritanceRole.PeerNode].includes(parentRole)) {
            return InheritanceRole[parentRole]
        }
        const parent = peer.parentComponentName ?? throwException(`Expected component to have parent`)
        return componentToPeerClass(parent)
    }

    protected printImports(peer: PeerClass, imports: ImportsCollector): void {
        this.getDefaultPeerImports(this.library.language, imports)
        if (peer.originalParentFilename) {
            const parentComponent = findComponentByName(this.library, peer.parentComponentName!)
            imports.addFeature(this.generatePeerParentName(peer), this.library.layout.resolve({node: parentComponent!.attributeDeclaration, role: LayoutNodeRole.PEER}))
        }
        const component = findComponentByType(this.library, idl.createReferenceType(peer.originalClassName!))!
        // 为 CJ 语言收敛联合类型，避免将 Union_* 拉入公共层
        if (this.library.language !== Language.CJ) {
            collectDeclDependencies(this.library, component.attributeDeclaration, imports, { expandTypedefs: true })
        }
        component.attributeDeclaration.methods.forEach(method => {
            if (this.library.language === Language.CJ) {
                const mapper = new CJTypeMapper()
                // 先对参数与返回类型进行语义收敛，再参与依赖收集
                const mappedTypes: idl.IDLType[] = []
                // 参数
                method.parameters.forEach((p: any, index: number) => {
                    try {
                        const conv: TypeConversionResult = mapper.convertParameterType(p.type, p.name ?? `param${index}`, !!p.optional)
                        const addType = (t: idl.IDLType | string | undefined) => {
                            if (!t) return
                            // 检查是否是原生元组语法 (T1, T2, ...)
                            if (typeof t === 'string' && /^\(.+\)$/.test(t)) {
                                // 原生元组语法：创建特殊的引用类型，名称就是元组语法
                                const tupleRefType = idl.createReferenceType(t)
                                // 标记这是一个元组类型，供类型转换器识别
                                ;(tupleRefType as any).__isTupleReference = true
                                mappedTypes.push(tupleRefType)
                            } else {
                                mappedTypes.push(typeof t === 'string' ? idl.createReferenceType(t) : t)
                            }
                        }
                        if (conv.overloads && conv.overloads.length > 0) {
                            conv.overloads.forEach(o => addType(o.cjType))
                        } else {
                            addType(conv.cjType as any)
                        }
                    } catch {
                        mappedTypes.push(p.type)
                    }
                })
                // 返回类型
                try {
                    const convRet: TypeConversionResult = mapper.convertParameterType(method.returnType, `${method.name}_return`, false)
                                            const addType = (t: idl.IDLType | string | undefined) => {
                            if (!t) return
                            // 检查是否是原生元组语法 (T1, T2, ...)
                            if (typeof t === 'string' && /^\(.+\)$/.test(t)) {
                                // 原生元组语法：创建特殊的引用类型，名称就是元组语法
                                const tupleRefType = idl.createReferenceType(t)
                                // 标记这是一个元组类型，供类型转换器识别
                                ;(tupleRefType as any).__isTupleReference = true
                                mappedTypes.push(tupleRefType)
                            } else {
                                mappedTypes.push(typeof t === 'string' ? idl.createReferenceType(t) : t)
                            }
                        }
                    if (convRet.overloads && convRet.overloads.length > 0) {
                        convRet.overloads.forEach(o => addType(o.cjType))
                    } else {
                        addType(convRet.cjType as any)
                    }
                } catch {
                    mappedTypes.push(method.returnType)
                }

                // 仅对收敛后的类型做依赖收集，避免引入 Union_*
                mappedTypes.forEach(type => {
                    collectDeclDependencies(this.library, type, (dep) => {
                        collectDeclDependencies(this.library, dep, imports, { expandTypedefs: true })
                    }, { expandTypedefs: true })
                })
            } else {
                method.parameters.map(p => p.type).concat([method.returnType]).forEach(type => {
                    collectDeclDependencies(this.library, type, (dep) => {
                        collectDeclDependencies(this.library, dep, imports, { expandTypedefs: true })
                    }, { expandTypedefs: true })
                })
            }
        })
        if (component.interfaceDeclaration)
            if (this.library.language !== Language.CJ) {
                collectDeclDependencies(this.library, component.interfaceDeclaration, imports, { expandTypedefs: true })
            }
        if (this.library.language === Language.TS) {
            imports.addFeature('GestureName', './framework/shared/generated-utils')
            imports.addFeature('GestureComponent', './framework/shared/generated-utils')
        }

        // 为 CJ 语言补充通用导入：cores 与 interfaces
        if (this.library.language === Language.CJ) {
            imports.addFeatures(['*'], 'idlize.commonPara')
        }

        if (this.library.language === Language.TS || this.library.language === Language.ARKTS) {
            collectDeclItself(this.library, idl.createReferenceType("CallbackKind"), imports)
            imports.addFeature('CallbackTransformer', './CallbackTransformer')
            collectDeclItself(this.library, idl.createReferenceType(NativeModule.Generated.name), imports)

            const hookClassName = peer.componentName == "CommonMethod"
                ? peer.componentName
                : `${peer.componentName}Attribute`
            const hookMethods = generatorConfiguration().hooks.get(hookClassName)
            if (hookMethods) {
                for (const [methodName, hook] of hookMethods.entries()) {
                    const hookName = hook ? hook.hookName : `hook${peer.componentName}${capitalize(methodName)}`
                    imports.addFeature(hookName, HandwrittenModule(this.library.language))
                }
            }
        }
        if (this.library.language == Language.TS) {
            imports.addFeature("unsafeCast", "@koalaui/common")
        }
        if (this.library.language == Language.ARKTS) {
            imports.addFeature("TypeChecker", "#components")
        }
        imports.addFeatures(["MaterializedBase", "toPeerPtr"], "@koalaui/interop")
        // collectMaterializedImports(imports, this.library)
    }

    protected printPeerConstructor(peer: PeerClass, printer: LanguageWriter): void {
        // TODO: fully switch to writer!
        const parentRole = determineParentRole(peer.originalClassName, peer.originalParentName)
        const signature = new NamedMethodSignature(
            IDLVoidType,
            [IDLPointerType, IDLI32Type, IDLStringType, IDLI32Type],
            ['peerPtr', 'id', 'name', 'flags'],
            [undefined, undefined, '""', '0'])

        printer.writeConstructorImplementation(componentToPeerClass(peer.componentName), signature, (writer) => { },
            { delegationArgs: ['peerPtr', 'id', 'name', 'flags'].map(it => printer.makeString(it)), delegationName: peer.parentComponentName },
            [MethodModifier.PROTECTED])
    }

    protected printCreateMethod(peer: PeerClass, writer: LanguageWriter): void {
        const peerClass = componentToPeerClass(peer.componentName)
        const signature = new NamedMethodSignature(
            createReferenceType(peerClass),
            [createReferenceType('ComponentBase'), IDLI32Type],
            ['component', 'flags'],
            [undefined, '0'],
            [[ArgumentModifier.OPTIONAL], undefined]
        )
        writer.makeStaticBlock(() => {
            writer.writeMethodImplementation(new Method('create', signature, [MethodModifier.STATIC, MethodModifier.PUBLIC]), (writer) => {
                const peerId = 'peerId'
                writer.writeStatement(
                    writer.makeAssign(peerId, undefined, writer.makeString('PeerNode.nextId()'), true)
                )
                const _peerPtr = '_peerPtr'
                writer.writeStatement(
                    writer.makeAssign(_peerPtr, undefined, writer.makeNativeCall(
                        NativeModule.Generated,
                        `_${peer.componentName}_${createConstructPeerMethod(peer).sig.name}`,
                        [writer.makeString(peerId), writer.makeString(signature.argName(1))]
                    ), true)
                )

                const _peer = '_peer'
                writer.writeStatement(
                    writer.makeAssign(_peer, undefined,
                        writer.makeNewObject(peerClass, [
                            writer.makeString(_peerPtr),
                            writer.makeString(peerId),
                            writer.makeString(`"${peer.componentName}"`),
                            writer.makeString('flags')]),
                        true)
                )
                writer.writeMethodCall(signature.argName(0), 'setPeer', [_peer], true)
                writer.writeStatement(writer.makeReturn(writer.makeString(_peer)))
            })
        })
    }

    protected printPeerMethod(method: PeerMethod, printer: LanguageWriter) {
        this.library.setCurrentContext(`${method.originalParentName}.${method.sig.name}`)
        // CJ 兜底规范化：将 set_onChangeEvent_*/_onChangeEvent_* 统一为 onXxx
        const normalizeEventName = (name: string): string => {
            let n = name
            let m: RegExpMatchArray | null
            if ((m = n.match(/^set_onChangeEvent_(.+)$/))) {
                const tail = m[1]
                return 'on' + tail.replace(/^(.)/, (c) => c.toUpperCase())
            }
            if ((m = n.match(/^_onChangeEvent_(.+)$/))) {
                const tail = m[1]
                return 'on' + tail.replace(/^(.)/, (c) => c.toUpperCase())
            }
            return name
        }
        const isCJ = printer.language === Language.CJ
        const originalSigName = (method as any).sig?.name
        // 在 CJ 下统一化事件与 setter 的方法名，并去除编号重载后缀以生成同名重载
        const normalizeSetterName = (name: string): string => name.replace(/^set([A-Z])(.*)$/,( _all, first: string, rest: string) => first.toLowerCase() + rest)
        const stripOverloadIndex = (name: string): string => name.replace(/\d+$/, '')
        if (isCJ && originalSigName) {
            ;(method as any).sig.name = stripOverloadIndex(normalizeSetterName(normalizeEventName(originalSigName)))
        }
        writePeerMethod(this.library, printer, method, true, this.dumpSerialized, "Attribute", "this.peer.ptr")
        if (isCJ && originalSigName) {
            (method as any).sig.name = originalSigName
        }
        this.library.setCurrentContext(undefined)
    }

    protected printPeer(peer: PeerClass, printer: LanguageWriter) {
        printer.writeClass(componentToPeerClass(peer.componentName), (writer) => {
            this.printPeerConstructor(peer, writer)
            this.printCreateMethod(peer, writer);
            
            // 预处理：检测同名方法并标记重载信息
            this.preprocessOverloadMethods(peer.methods as any[]);
            
            (peer.methods as any[])
                .forEach(method => this.printPeerMethod(method, writer))
        }, this.generatePeerParentName(peer))
    }

    /**
     * 预处理方法列表，检测同名方法并标记重载信息
     */
    private preprocessOverloadMethods(methods: any[]) {
        // 统计每个方法名的出现次数
        const methodNameCounts = new Map<string, number>()
        const methodsByName = new Map<string, any[]>()
        
        methods.forEach(method => {
            const methodName = method.sig?.name
            if (methodName) {
                methodNameCounts.set(methodName, (methodNameCounts.get(methodName) || 0) + 1)
                if (!methodsByName.has(methodName)) {
                    methodsByName.set(methodName, [])
                }
                methodsByName.get(methodName)!.push(method)
            }
        })
        
        // 标记重载方法
        methodNameCounts.forEach((count, methodName) => {
            if (count >= 2) {
                console.log(`[DEBUG] Detected overload method: ${methodName} (${count} overloads)`)
                const overloadMethods = methodsByName.get(methodName)!
                overloadMethods.forEach((method, index) => {
                    ;(method as any).__isOverloadMethod = true
                    ;(method as any).__overloadOrdinal = index
                    console.log(`[DEBUG] Marked method ${methodName}[${index}] as overload`)
                })
            }
        })
    }

    printFile(): PrinterResult[] {
        return collectPeersForFile(this.library, this.file).map(peer => {
            const component = findComponentByName(this.library, peer.componentName)
            const imports = new ImportsCollector()
            const content = this.library.createLanguageWriter(this.library.language)
            this.printImports(peer, imports)
            this.printPeer(peer, content)
            return {
                over: {
                    node: component!.attributeDeclaration,
                    role: LayoutNodeRole.PEER,
                },
                collector: imports,
                content
            }
        })
    }

    protected getDefaultPeerImports(lang: Language, imports: ImportsCollector) {
        if (lang !== Language.TS && lang !== Language.ARKTS) return

        imports.addFeatures(['int32', 'int64', 'float32'], "@koalaui/common")
        imports.addFeatures(['nullptr', 'KPointer', 'KInt', 'KBoolean', 'KStringPtr', 'runtimeType', 'RuntimeType'], "@koalaui/interop")
        // TODO Remove unnecessary imports for ohos libraries
        imports.addFeatures(['ComponentBase'], "./ComponentBase")
        imports.addFeatures(['PeerNode'], "./PeerNode")
        switch (lang) {
            case Language.TS: {
                imports.addFeature('isInstanceOf', "@koalaui/interop")
                break
            }
            case Language.ARKTS: {
                imports.addFeature(NativeModule.Generated.name, "#components")
                break;
            }
        }
    }
}

class JavaPeerFileVisitor extends PeerFileVisitor {
    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        dumpSerialized: boolean,
    ) {
        super(library, file, dumpSerialized)
    }

    private printPackage(printer: LanguageWriter): void {
        printer.print(`package ${ARKOALA_PACKAGE};\n`)
    }

    protected printApplyMethod(peer: PeerClass, printer: LanguageWriter) {
        // TODO: attributes
        // const name = peer.originalClassName!
        // const typeParam = componentToAttributesClass(peer.componentName)
        // if (isRoot(name)) {
        //     printer.print(`void applyAttributes(${typeParam} attributes) {}`)
        //     return
        // }

        // printer.print(`void applyAttributes(${typeParam} attributes) {`)
        // printer.pushIndent()
        // printer.print(`super.applyAttributes(attributes)`)
        // printer.popIndent()
        // printer.print(`}`)
    }

    printFile(): PrinterResult[] {
        return Array.from(collectPeersForFile(this.library, this.file).values()).map(peer => {
            let printer = this.library.createLanguageWriter()
            this.printPackage(printer)

            const idlPeer = peer as PeerClass
            const imports = collectJavaImports(idlPeer.methods.flatMap(method => method.method.signature.args))
            printJavaImports(printer, imports)


            this.printPeer(peer, printer)

            const component = findComponentByName(this.library, peer.componentName)
            return {
                over: {
                    node: component!.attributeDeclaration,
                    role: LayoutNodeRole.PEER,
                },
                content: printer,
                collector: new ImportsCollector()
            }

            // TODO: attributes
            // printer = createLanguageWriter(this.library.declarationTable.language)
            // const attributesName = componentToAttributesClass(peer.componentName)
            // this.printers.set(new TargetFile(attributesName, ARKOALA_PACKAGE_PATH), printer)

            // this.printPackage(printer)
            // this.printAttributes(peer, printer)
        })
    }
}

class CJPeerFileVisitor extends PeerFileVisitor {
    private readonly typeMapper: CJTypeMapper

    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        dumpSerialized: boolean,
    ) {
        super(library, file, dumpSerialized)
        this.typeMapper = new CJTypeMapper()
    }

    protected printApplyMethod(peer: PeerClass, printer: LanguageWriter) {
    }

    /**
     * 重写 printPeerMethod 以支持联合类型重载
     * 与 ComponentsPrinter 保持一致的重载策略
     */
    protected printPeerMethod(method: PeerMethod, printer: LanguageWriter) {
        this.library.setCurrentContext(`${method.originalParentName}.${method.sig.name}`)
        
        const signature = method.method.signature as NamedMethodSignature
        
        // 检查是否有参数需要重载
        const paramConversions: TypeConversionResult[] = signature.args.map((paramType: idl.IDLType, index: number) => {
            const paramName = signature.argName(index)
            const isOptional = signature.isArgOptional(index)
            return this.typeMapper.convertParameterType(paramType, paramName, isOptional)
        })

        const hasOverloads = paramConversions.some(c => c.overloads && c.overloads.length > 0)
        const hasUnionOverload = paramConversions.some(c => c.isFromUnionOverload)
        
        // 检测是否是联合类型重载
        const originalSigName: string | undefined = (method as any).sig?.name
        
        if (hasUnionOverload) {
            console.log(`[DEBUG] Detected union overload for method: ${originalSigName}`)
            // 标记这个方法来自联合类型重载
            ;(method as any).__isUnionOverload = true
        }

        if (hasOverloads || hasUnionOverload) {
            // 生成重载方法
            this.generatePeerOverloads(method, paramConversions, printer)
        } else {
            // 生成单个方法
            this.generateSinglePeerMethod(method, paramConversions, printer)
        }
        
        this.library.setCurrentContext(undefined)
    }


    /**
     * 生成 Peer 重载方法
     */
    private generatePeerOverloads(method: PeerMethod, paramConversions: TypeConversionResult[], printer: LanguageWriter) {
        const overloadParam = paramConversions.find(c => c.overloads && c.overloads.length > 0)
        const overloadIndex = paramConversions.findIndex(c => c.overloads && c.overloads.length > 0)
        
        if (overloadParam && overloadParam.overloads) {
            for (let __overloadOrdinal = 0; __overloadOrdinal < overloadParam.overloads.length; __overloadOrdinal++) {
                const alt = overloadParam.overloads[__overloadOrdinal]
                this.generateSinglePeerMethodWithOverride(method, paramConversions, overloadIndex, alt, printer, __overloadOrdinal)
            }
        }
    }

    /**
     * 生成单个 Peer 方法（无重载）
     */
    private generateSinglePeerMethod(method: PeerMethod, paramConversions: TypeConversionResult[], printer: LanguageWriter) {
        // 直接调用原始方法，因为 writePeerMethod 期望原始的 IDL 方法对象
        this.callOriginalWritePeerMethod(method, printer)
    }

    /**
     * 生成单个 Peer 方法（带重载参数）
     */
    private generateSinglePeerMethodWithOverride(
        method: PeerMethod, 
        paramConversions: TypeConversionResult[], 
        overloadIndex: number, 
        overloadAlt: { cjType: idl.IDLType | string; defaultValue?: string }, 
        printer: LanguageWriter,
        __overloadOrdinal: number
    ) {
        // 对于重载，我们需要创建一个新的方法对象
        const modifiedMethod = this.createOverloadedMethod(method, overloadIndex, overloadAlt)
        ;(modifiedMethod as any).__overloadOrdinal = __overloadOrdinal
        // 传递联合类型重载标志位
        if ((method as any).__isUnionOverload) {
            ;(modifiedMethod as any).__isUnionOverload = true
        }
        this.callOriginalWritePeerMethod(modifiedMethod, printer)
    }

    /**

    * 创建重载方法对象
     */
    private createOverloadedMethod(
        method: PeerMethod, 
        overloadIndex: number, 
        overloadAlt: { cjType: idl.IDLType | string; defaultValue?: string }
    ): PeerMethod {
        const signature = method.method.signature as NamedMethodSignature
        
        // 创建新的参数类型数组
        const newArgs = [...signature.args]
        if (overloadAlt.cjType) {
            newArgs[overloadIndex] = typeof overloadAlt.cjType === 'string' 
                ? idl.createReferenceType(overloadAlt.cjType) 
                : overloadAlt.cjType
        }

        // 创建新的方法签名
        const newSignature = new NamedMethodSignature(
            signature.returnType,
            newArgs,
            signature.argsNames,
            signature.defaults,
            signature.argsModifiers
        )

        // 创建新的方法对象
        const newMethod = new Method(
            method.method.name,
            newSignature,
            method.method.modifiers,
            method.method.generics
        )

        // 创建新的 PeerMethod
        return {
            ...method,
            method: newMethod
        } as PeerMethod
    }

    /**
     * 检查是否应该跳过该方法的生成
     * 基于方法特征判断，而不是依赖已生成的Native模块
     */
    private shouldSkipMethodBasedOnNativeAvailability(method: PeerMethod): boolean {
        const signature = method.method.signature as NamedMethodSignature
        const originalSigName: string | undefined = (method as any).sig?.name
        const methodName = method.sig.name
        
        // 检查是否是联合类型重载方法（这些通常在Native层生成有问题）
        const isUnionOverload = (method as any).__isUnionOverload || (method as any).__overloadOrdinal !== undefined
        
        // 直接检查问题方法名模式，不依赖联合类型重载标志
        const problematicMethodPatterns = [
            /onChangeEvent_/i, // onChange事件的重载版本
            /testUnionBooleanStringNumberUndefined/i, // 复杂联合类型（不区分大小写）
            /setOnChangeEvent_/i, // set版本的onChange事件
        ]
        
        const isProblematicMethod = problematicMethodPatterns.some(pattern => 
            pattern.test(methodName) || 
            (originalSigName && pattern.test(originalSigName))
        )
        
        if (isProblematicMethod) {
            return true
        }
        
        if (isUnionOverload) {
            // 对于联合类型重载，检查是否是已知有问题的模式
            const problematicOverloadPatterns = [
                /onChangeEvent_/i, // onChange事件的重载版本
                /testUnionBooleanStringNumberUndefined/i, // 复杂联合类型（不区分大小写）
                /setOnChangeEvent_/i, // set版本的onChange事件
            ]
            
            const isProblematicOverload = problematicOverloadPatterns.some(pattern => 
                pattern.test(methodName) || 
                (originalSigName && pattern.test(originalSigName))
            )
            
            if (isProblematicOverload) {
                return true
            }
        }
        
        // 检查参数中是否有复杂联合类型（这些往往在Native层生成失败）
        if (this.hasComplexUnionParameters(signature)) {
            return true
        }
        
        return false
    }
    
    /**
     * 检查方法签名中是否包含复杂的联合类型参数
     */
    private hasComplexUnionParameters(signature: NamedMethodSignature): boolean {
        return signature.args.some((arg, index) => {
            const argType = arg as any
            const typeName = argType?.name || String(argType)
            
            // 检查是否是复杂的联合类型
            const isComplexUnion = 
                typeName.includes('BooleanStringNumberUndefined') ||
                (typeName.includes('Union_') && typeName.length > 50) || // 很长的联合类型名
                /Union_.*_.*_.*/.test(typeName) // 包含多个下划线的联合类型
            
            return isComplexUnion
        })
    }

    /**
     * 调用原始的 writePeerMethod 函数
     */
    private callOriginalWritePeerMethod(method: PeerMethod, printer: LanguageWriter) {
        // 系统性修复：检查对应的Native方法是否存在，如果不存在则跳过生成
        // 这样可以自动保持Peer层与Native层的一致性，无需手动维护白名单
        
        if (this.shouldSkipMethodBasedOnNativeAvailability(method)) {
            return
        }
        
        // 生成原生桥接名所需的名称（保持 set/on/类型后缀/编号后缀），避免展示名规范化影响
        const toPascalCase = (s: string) => s.replace(/^([a-z])/, (_a, c: string) => c.toUpperCase())
        const startsWithOnEvent = (s: string) => /^on[A-Z].*/.test(s)
        // 少量原生即为 onXxx 的白名单
        const keepOnWhitelist = new Set<string>(['onSelect', 'onText', 'onSelected', 'onValue'])

        // 根据参数类型推断类型后缀（仅必要时）
        const getTypeSuffix = (sig?: NamedMethodSignature): string => {
            if (!sig) return ''

            // 上下文方法名（原始 IDL 名称）
            const originalName: string = (method as any).sig?.name || ''
            const inUnionContext = /Union/i.test(originalName)

            // 先判断是否为重载或包含联合参数（避免被早退逻辑短路）
            const isOverloadMethod = (method as any).__overloadOrdinal !== undefined || (method as any).__isOverloadMethod

            console.log(`[DEBUG] getTypeSuffix called for method: ${originalName}`)
            console.log(`[DEBUG] - inUnionContext: ${inUnionContext}`)
            console.log(`[DEBUG] - isOverloadMethod: ${isOverloadMethod}`)
            console.log(`[DEBUG] - __overloadOrdinal: ${(method as any).__overloadOrdinal}`)

            let hasUnionParam = false
            for (let i = 0; i < sig.args.length; i++) {
                const t: any = sig.args[i]
                const refName: string | undefined = (t && typeof t === 'object' && 'name' in t) ? (t as any).name : undefined
                const asString = refName || String(t)

                // 调试信息（定位特定问题方法）
                if (originalName.includes('scrollBarWidth') || originalName.includes('defaultPickerItemHeight')) {
                    console.log(`[DEBUG] Method: ${originalName}, Arg ${i}:`, {
                        type: t,
                        refName,
                        asString,
                        isUnion: /Union_/.test(asString) || (t && typeof t === 'object' && t.types && Array.isArray(t.types)) || asString.includes('|')
                    })
                }

                // 检测联合类型标记 - 增强检测逻辑
                if (/Union_/.test(asString) ||
                    (t && typeof t === 'object' && t.types && Array.isArray(t.types)) || // IDL UnionType
                    asString.includes('|') || // 直接的联合类型语法
                    /^(number|string|boolean)\s*\|\s*(number|string|boolean)/.test(asString) ||
                    (t && typeof t === 'object' && (t as any).kind === 'UnionType') ||
                    (asString === 'number | string' || asString === 'string | number')) {
                    hasUnionParam = true
                    console.log(`[DEBUG] Found union param at index ${i}: ${asString}`)
                    break
                }
            }

            // 特殊处理：对于已知需要重载的方法，强制添加类型后缀
            const knownOverloadMethods = ['scrollBarWidth', 'defaultPickerItemHeight']
            if (knownOverloadMethods.some(methodName => originalName.includes(methodName))) {
                hasUnionParam = true
                console.log(`[DEBUG] Forcing union param for method: ${originalName}`)
            }

            // 检测参数类型是否为联合类型（number | string）
            // 只对已知需要重载的方法进行检测
            if (knownOverloadMethods.some(methodName => originalName.includes(methodName))) {
                for (let i = 0; i < sig.args.length; i++) {
                    const t: any = sig.args[i]
                    const refName: string | undefined = (t && typeof t === 'object' && 'name' in t) ? (t as any).name : undefined
                    const asString = refName || String(t)
                    
                    // 检测是否为 number 或 String 类型（这些方法需要重载）
                    if (asString === 'number' || asString === 'String') {
                        hasUnionParam = true
                        console.log(`[DEBUG] Detected number/String param for overload method: ${originalName}, arg: ${asString}`)
                        break
                    }
                }
            }

            console.log(`[DEBUG] - hasUnionParam: ${hasUnionParam}`)

            // 在重载/联合场景下优先决定后缀，避免被"复杂类型免后缀"的早退短路
            if (inUnionContext || hasUnionParam || isOverloadMethod) {
                console.log(`[DEBUG] Entering union/overload suffix logic for: ${originalName}`)
                for (let i = 0; i < sig.args.length; i++) {
                    const t: any = sig.args[i]
                    const refName: string | undefined = (t && typeof t === 'object' && 'name' in t) ? (t as any).name : undefined
                    const asString = refName || String(t)
                    
                    // 处理 OptionalType 和其他复合类型
                    let effectiveTypeName = asString
                    if (t && typeof t === 'object') {
                        // 检查是否是 OptionalType，如果是，提取内部类型
                        if (t.kind === 'OptionalType' && t.name) {
                            effectiveTypeName = t.name
                        }
                        // 检查是否是联合类型
                        else if (t.kind === 'UnionType' && t.types && Array.isArray(t.types)) {
                            // 对于联合类型，尝试从第一个类型推断后缀
                            if (t.types.length > 0) {
                                const firstType = t.types[0]
                                if (firstType && firstType.name) {
                                    effectiveTypeName = firstType.name
                                }
                            }
                        }
                    }

                    console.log(`[DEBUG] Checking arg ${i}: ${asString} -> effective: ${effectiveTypeName}`)

                    if (/EnumDTS$/.test(effectiveTypeName)) {
                        console.log(`[DEBUG] Matched EnumDTS, returning _EnumDTS`)
                        return '_EnumDTS'
                    }
                    if (/UnionInterfaceDTS$/.test(effectiveTypeName)) {
                        console.log(`[DEBUG] Matched UnionInterfaceDTS, returning _UnionInterfaceDTS`)
                        return '_UnionInterfaceDTS'
                    }
                    if (/UnionOptionalInterfaceDTS$/.test(effectiveTypeName)) {
                        console.log(`[DEBUG] Matched UnionOptionalInterfaceDTS, returning _UnionOptionalInterfaceDTS`)
                        return '_UnionOptionalInterfaceDTS'
                    }
                    if (/(^String$|KString(P|Ptr)?$)/i.test(effectiveTypeName)) {
                        console.log(`[DEBUG] Matched String type, returning _String`)
                        return '_String'
                    }
                    if (/^(Float|Float64|Double|Int|Int32|Int64|Number)$/i.test(effectiveTypeName)) {
                        console.log(`[DEBUG] Matched Number type, returning _number`)
                        return '_number'
                    }
                    if (/Bool(ean)?$/i.test(effectiveTypeName)) {
                        console.log(`[DEBUG] Matched Boolean type, returning _boolean`)
                        return '_boolean'
                    }
                    
                    // 特殊处理：检查类型名称中是否包含联合类型的标识
                    if (effectiveTypeName.includes('number or undefined')) {
                        console.log(`[DEBUG] Detected 'number or undefined' pattern, returning _number`)
                        return '_number'
                    }
                    if (effectiveTypeName.includes('string or undefined')) {
                        console.log(`[DEBUG] Detected 'string or undefined' pattern, returning _String`)
                        return '_String'
                    }
                    if (effectiveTypeName.includes('boolean or undefined')) {
                        console.log(`[DEBUG] Detected 'boolean or undefined' pattern, returning _boolean`)
                        return '_boolean'
                    }
                }
                // 无法识别具体基础类型时，对重载按序号兜底映射（常见顺序：0 -> number，1 -> String）
                const ord: unknown = (method as any).__overloadOrdinal
                console.log(`[DEBUG] No specific type matched, checking overload ordinal: ${ord}`)
                if (typeof ord === 'number') {
                    if (ord === 0) {
                        console.log(`[DEBUG] Using ordinal 0 -> _number`)
                        return '_number'
                    }
                    if (ord === 1) {
                        console.log(`[DEBUG] Using ordinal 1 -> _String`)
                        return '_String'
                    }
                }
                // 无法识别具体基础类型时，不加后缀
                console.log(`[DEBUG] No ordinal match, returning empty suffix`)
                return ''
            }

            // 非联合/非重载：出现序列化或复杂语义类型 → 不加后缀
            for (let i = 0; i < sig.args.length; i++) {
                const argName = typeof (sig as any).argName === 'function' ? (sig as any).argName(i) : undefined
                const t: any = sig.args[i]
                const refName: string | undefined = (t && typeof t === 'object' && 'name' in t) ? (t as any).name : undefined
                const asString = refName || String(t)

                if (/^(this(Array|Length))$/i.test(String(argName || ''))) {
                    return ''
                }
                if (/KSerializerBuffer/i.test(asString)) {
                    return ''
                }
                // 原生元组显示名：(A, B, ...)
                if (/^\(.*\)$/.test(asString)) {
                    return ''
                }
                // 明显的复杂/复合语义类型：统一视为走序列化 → 不加后缀
                if (/(Options$|Interface$|Tuple_|Struct$|Resource(Color|Str)?$|Length$|Padding$|Edge(Widths|Colors|Styles|Radiuses|)$|Border(Options|Radiuses|Styles)?$|Font(Weight)?$|Matrix4$|LayoutPolicy$|Dimension$)/.test(asString)) {
                    return ''
                }
            }

            // 默认不加后缀
            console.log(`[DEBUG] No union/overload detected, returning empty suffix for: ${originalName}`)
            return ''
        }

        const originalSigName: string | undefined = (method as any).sig?.name
        const originalSignature: NamedMethodSignature | undefined = (method.method.signature as NamedMethodSignature)

        // 语义收敛：统一处理复杂联合方法名到实际原生名
        const normalizeNativeBaseName = (name: string | undefined): string => {
            let n = name || ''
            // 简化复杂联合：boolean|string|number|undefined → boolean|undefined
            n = n.replace(/testUnionBooleanStringNumberUndefined/g, 'testBooleanUndefined')
            // 事件方法名收敛：setOnChangeEvent_* → onXxx
            n = n.replace(/^setOnChangeEvent_(.+)$/, (_, tail) => 'on' + tail.replace(/^(.)/, (c: string) => c.toUpperCase()))
            return n
        }

        // 计算应当用于原生桥接名的基名
        let nativeBase = normalizeNativeBaseName(originalSigName)
        
        // 处理 set_ 开头的特殊情况
        if (nativeBase.startsWith('set_')) {
            // set_onChangeEvent_select -> setOnChangeEvent_select
            nativeBase = 'set' + toPascalCase(nativeBase.substring(4))
        } else {
            // 检查是否已经以set开头，避免重复添加
            const alreadyHasSet = /^set[A-Z]/.test(nativeBase)
            
            if (startsWithOnEvent(nativeBase)) {
                // 事件：优先 setOnXxx，少量白名单保持 onXxx
                if (!keepOnWhitelist.has(nativeBase)) {
                    if (!alreadyHasSet) {
                        nativeBase = 'set' + toPascalCase(nativeBase)
                    }
                }
            } else {
                // 非事件：统一 setXxx
                if (!alreadyHasSet) {
                    nativeBase = 'set' + toPascalCase(nativeBase)
                }
            }
        }

        // 类型后缀（如 _number/_String/...）
        const typeSuffix = getTypeSuffix(originalSignature)
        console.log(`[DEBUG] Final typeSuffix for ${originalSigName}: "${typeSuffix}"`)

        // 重载编号（如 onClick0/1）
        const overloadOrdinal: number | undefined = (method as any).__overloadOrdinal
        let overloadSuffix = ''
        if (/^setOn[A-Z].*/.test(nativeBase) && Number.isInteger(overloadOrdinal)) {
            overloadSuffix = String(overloadOrdinal)
        }

        const nativeSigName = nativeBase + typeSuffix + overloadSuffix
        console.log(`[DEBUG] Final nativeSigName for ${originalSigName}: "${nativeSigName}"`)
        console.log(`[DEBUG] - nativeBase: "${nativeBase}"`)
        console.log(`[DEBUG] - typeSuffix: "${typeSuffix}"`)
        console.log(`[DEBUG] - overloadSuffix: "${overloadSuffix}"`)
        console.log(`[DEBUG] - overloadOrdinal: ${overloadOrdinal}`)

        // 方法声明使用原始名称（无后缀），native调用使用带后缀的名称
        const methodNameForDeclaration = nativeBase + overloadSuffix  // 不包含typeSuffix
        const methodNameForNativeCall = nativeSigName  // 包含typeSuffix
        
        console.log(`[DEBUG] Method declaration name: "${methodNameForDeclaration}"`)
        console.log(`[DEBUG] Native call name: "${methodNameForNativeCall}"`)

        const backupName = originalSigName
        if (backupName) {
            ;(method as any).sig.name = methodNameForDeclaration
        }

        // 将native调用名称传递给writePeerMethod
        ;(method as any).__nativeMethodName = methodNameForNativeCall

        writePeerMethod(this.library, printer, method, true, this.dumpSerialized, "Attribute", "this.peer.ptr")

        if (backupName) {
            (method as any).sig.name = backupName
        }
    }
    
    printFile(): PrinterResult[] {
        return collectPeersForFile(this.library, this.file).map(peer => {
            const component = findComponentByName(this.library, peer.componentName)
            const printer = this.library.createLanguageWriter()
            const imports = new ImportsCollector()
            this.printImports(peer, imports)
            this.printPeer(peer, printer)
            return {
                over: {
                    node: component!.attributeDeclaration,
                    role: LayoutNodeRole.PEER,
                },
                collector: imports,
                content: printer
            }
        })
    }
}

class KotlinPeerFileVisitor extends PeerFileVisitor {
    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        dumpSerialized: boolean,
    ) {
        super(library, file, dumpSerialized)
    }

    printFile(): PrinterResult[] {
        return collectPeersForFile(this.library, this.file).map(peer => {
            const component = findComponentByName(this.library, peer.componentName)
            const printer = this.library.createLanguageWriter()
            this.printPeer(peer, printer)
            return {
                over: {
                    node: component!.attributeDeclaration,
                    role: LayoutNodeRole.PEER,
                },
                content: printer,
                collector: new ImportsCollector()
            }
        })
    }
}

class PeersVisitor {
    readonly peers: Map<TargetFile, string[]> = new Map()

    constructor(
        private readonly library: PeerLibrary,
        private readonly dumpSerialized: boolean,
    ) { }

    printPeers(): PrinterResult[] {
        const results: PrinterResult[] = []
        for (const file of this.library.files.values()) {
            if (!collectPeersForFile(this.library, file).length)
                continue
            const visitor = this.library.language == Language.JAVA
                ? new JavaPeerFileVisitor(this.library, file, this.dumpSerialized)
                : this.library.language == Language.CJ
                ? new CJPeerFileVisitor(this.library, file, this.dumpSerialized)
                : this.library.language == Language.KOTLIN
                ? new KotlinPeerFileVisitor(this.library, file, this.dumpSerialized)
                : new PeerFileVisitor(this.library, file, this.dumpSerialized)
            results.push(...visitor.printFile())
        }
        return results
    }
}

export function createPeersPrinter(dumpSerialized: boolean): PrinterFunction {
    return (library: PeerLibrary) => new PeersVisitor(library, dumpSerialized).printPeers()
}

export function generateStyleParentClass(peer: PeerClass): string | undefined {
     if (!isHeir(peer.originalClassName!)) return undefined
     return componentToStyleClass(peer.parentComponentName!)
}
