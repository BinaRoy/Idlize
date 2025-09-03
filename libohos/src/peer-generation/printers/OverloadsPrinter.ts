/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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
    ExpressionStatement,
    LanguageExpression,
    Method,
    MethodModifier,
    NamedMethodSignature,
    StringExpression
} from "../LanguageWriters";
import { LanguageWriter, PeerClassBase, PeerMethod, PeerLibrary, ArgumentModifier, getHookMethod, PeerMethodSignature, PeerClass, MaterializedClass } from "@idlizer/core"
import { isDefined, Language, throwException, collapseTypes } from '@idlizer/core'
import { ArgConvertor, UndefinedConvertor } from "@idlizer/core"
import { ReferenceResolver, UnionRuntimeTypeChecker, zipMany } from "@idlizer/core";
import { peerGeneratorConfiguration } from '../../DefaultConfiguration';
import { injectPatch } from '../common';

function collapseReturnTypes(types: idl.IDLType[], language?: Language) {
    let returnType: idl.IDLType = collapseTypes(types)
    if (idl.isUnionType(returnType) && language && (language == Language.ARKTS || language == Language.TS)) {
        let newTypes = returnType.types.map(it => idl.isVoidType(it) ? idl.IDLUndefinedType : it)
        returnType = idl.createUnionType(newTypes)
    }
    // CJ 专属：聚合方法签名不暴露 Union_*，使用 Any 规避
    if (idl.isUnionType(returnType) && language === Language.CJ) {
        try {
            const stacked = returnType.types?.map(t => idl.printType(t)).join(" | ")
            console.log(`[OverloadsPrinter][CJ] collapseReturnTypes: union return detected [${stacked}] -> Any`)
        } catch {}
        returnType = idl.IDLAnyType
    }
    return returnType
}

export function groupSameSignatureMethodsIDL(methods: idl.IDLMethod[]): idl.IDLMethod[][] {
    if (methods.length < 2) return methods.map(it => [it])

    // get methods args
    let params = methods.map(it => it.parameters)
    // cut optional args
    params = params.map(methodParams => methodParams.filter(param => !param.isOptional))
    let types = params.map(methodParams => methodParams.map(param => idl.printType(param.type)))

    // compare methods signatures
    let sameSignatureGroups = new Map<string, idl.IDLMethod[]>()
    types.forEach((methodTypes, idx) => {
        let methodTypesStringify = methodTypes.join(":")
        if (sameSignatureGroups.has(methodTypesStringify)) {
            sameSignatureGroups.get(methodTypesStringify)?.push(methods[idx])
        } else {
            sameSignatureGroups.set(methodTypesStringify, [methods[idx]])
        }
    })

    return Array.from(sameSignatureGroups.values())
}

function groupSameSignatureMethods(methods: PeerMethod[]): PeerMethod[][] {
    if (methods.length < 2) return methods.map(it => [it])

    // get methods args
    let args = methods.map(it => it.method.signature.args)
    // cut optional args
    args = args.map(methArgs => methArgs.filter(type => !idl.isOptionalType(type)))
    let types = args.map(methArgs => methArgs.map(type => idl.printType(type)))

    // compare methods signatures
    let sameSignatureGroups = new Map<string, PeerMethod[]>()
    types.forEach((methodTypes, idx) => {
        let methodTypesStringify = methodTypes.join(":")
        if (sameSignatureGroups.has(methodTypesStringify)) {
            sameSignatureGroups.get(methodTypesStringify)?.push(methods[idx])
        } else {
            sameSignatureGroups.set(methodTypesStringify, [methods[idx]])
        }
    })

    return Array.from(sameSignatureGroups.values())
}

export function collapseSameNamedMethods(methods: Method[], selectMaxMethodArgs?: number[], language?: Language, postfix: string = ""): Method {
    if (methods.some(it => it.signature.defaults?.length))
        throw new Error("Can not process defaults in collapsed method")
    const maxArgLength = Math.max(...methods.map(it => it.signature.args.length))
    const maxMethod = methods.find(it => it.signature.args.length === maxArgLength)!
    const argsModifiers: (ArgumentModifier|undefined)[] = []
    const collapsedArgs: idl.IDLType[] = Array.from({length: maxArgLength}, (_, argIndex) => {
        if (selectMaxMethodArgs?.includes(argIndex))
            return maxMethod.signature.args[argIndex]
        const types = methods.map(it => it.signature.args[argIndex]).filter(isDefined)
        const optional = methods.some(it => {
            if (argIndex < it.signature.args.length) {
                return it.signature.isArgOptional(argIndex)
            } else {
                return true
            }
        })
        argsModifiers.push(optional ? ArgumentModifier.OPTIONAL : undefined)
        let collapsedType = collapseTypes(types)
        const wasOptional = optional
        if (optional && !idl.isOptionalType(collapsedType)) {
            collapsedType = idl.createOptionalType(collapsedType)
        }
        // CJ 专属：聚合方法签名不暴露 Union_*，以 Any 兜底（保留可选性）
        if (idl.isUnionType(wasOptional ? (collapsedType as idl.IDLOptionalType).type : collapsedType) && language === Language.CJ) {
            try {
                const printed = types.map(t => idl.printType(t)).join(', ')
                console.log(`[OverloadsPrinter][CJ] collapseSameNamedMethods: arg#${argIndex} union detected [${printed}] -> ${wasOptional ? 'Optional<Any>' : 'Any'}`)
            } catch {}
            return wasOptional ? idl.createOptionalType(idl.IDLAnyType) : idl.IDLAnyType
        }
        return collapsedType //, "%PROXY_BEFORE_PEER%")
    })

    const returnType = collapseReturnTypes(methods.map(it => it.signature.returnType ?? idl.IDLVoidType), language)
    return new Method(
        `${methods[0].name}${postfix}`,
        new NamedMethodSignature(
            returnType,
            collapsedArgs,
            (maxMethod.signature as NamedMethodSignature).argsNames,
            undefined,
            argsModifiers
        ),
        methods[0].modifiers?.includes(MethodModifier.PRIVATE) ?
        methods[0].modifiers :
        [MethodModifier.PUBLIC].concat(methods[0].modifiers ?? []),
        methods[0].generics,
    )
}

export function collapseIdlPeerMethods(library: PeerLibrary, overloads: PeerMethod[], selectMaxMethodArgs?: number[]): PeerMethod {
    const method = collapseSameNamedMethods(overloads.map(it => it.method), selectMaxMethodArgs)
    const maxArgsLength = Math.max(...overloads.map(it => it.method.signature.args.length))
    const maxMethod = overloads.find(it => it.method.signature.args.length === maxArgsLength)!
    const targets: idl.IDLType[] = Array.from({length: maxArgsLength}, (_, argIndex) => {
        if (selectMaxMethodArgs?.includes(argIndex))
            return idl.entityToType(maxMethod.method.signature.args[argIndex])
        return collapseTypes(overloads.flatMap(overload => {
            if (overload.method.signature.args.length <= argIndex)
                return []
            const target = idl.entityToType(overload.method.signature.args[argIndex])
            if (idl.isUnionType(target))
                return target.types
            return [target]
        }))
    })

    const returnType = collapseReturnTypes(overloads.map(it => it.returnType), library.language)
    return new PeerMethod(
        new PeerMethodSignature(
             method.name,
             "%STUB&",
             targets.map((it, index) => ({
                name: method.signature.argName(index),
                type: it
             })),
             method.signature.returnType,
        ),
        overloads[0].originalParentName,
        returnType,
        overloads[0].isCallSignature,
        method,
    )
}

export function allowsOverloads(language: Language): boolean {
    switch (language) {
        case Language.TS:
        case Language.CJ:
            // 允许 CJ 下的同名重载，由 OverloadsPrinter 生成同名方法并在方法体内做运行时类型分派
            return true
        default:
            return true
    }
}

export function groupOverloads<T extends PeerMethod>(peerMethods: T[], language: Language): T[][] {
    if (allowsOverloads(language))
        return peerMethods.map(it => [it])
    const seenNames = new Set<string>()
    const groups: T[][] = []
    for (const method of peerMethods) {
        if (seenNames.has(method.method.name))
            continue
        seenNames.add(method.method.name)
        groups.push(peerMethods.filter(it => it.method.name === method.method.name))
    }
    return groups
}

export function groupOverloadsIDL<T extends idl.IDLSignature>(methods: T[], language: Language): T[][] {
    if (allowsOverloads(language))
        return methods.map(it => [it])
    const groups = new Map<string, T[]>()
    for (const method of methods) {
        if (!groups.has(method.name)) {
            groups.set(method.name, [])
        }
        const bucket = groups.get(method.name)
        bucket?.push(method)
    }
    return Array.from(groups.values())
}

interface CollapsedMethod {
    methods: idl.IDLMethod[]
    name: string
    parameters: idl.IDLParameter[]
    returnType: idl.IDLType
}

export function collapseSameMethodsIDL(methods:idl.IDLMethod[], language?: Language): CollapsedMethod {
    const parameters = zipMany(...methods.map(it => it.parameters))
        .map(it => {
            let defined: idl.IDLParameter | undefined = undefined
            let isOptional = false
            for (const param of it) {
                if (param) {
                    defined = param
                    isOptional = isOptional || param.isOptional
                } else {
                    isOptional = true
                }
            }
            if (!defined) {
                throw new Error("Not found defined parameter")
            }
            return idl.createParameter(
                defined.name,
                idl.maybeOptional(
                    collapseTypes(
                        it.filter(it => it !== undefined)
                            .map(it => it as idl.IDLParameter /* rollup problems */)
                            .map(it => it.type)
                        ),
                        isOptional
                    ),
                isOptional,
                false
            )
        })

        const returnType = collapseReturnTypes(methods.map(it => it.returnType), language)
        return {
            methods,
            parameters,
            name: methods[0]?.name ?? throwException('No method to collapse'),
            returnType: returnType
        }
}
type MethodPrefixEmitter =
  ((peer: string, method: Method, printer: LanguageWriter) => void) | undefined;

export class OverloadsPrinter {
    private static undefinedConvertor: UndefinedConvertor | undefined
    private posfix: string = ""
    private prefixEmitter: MethodPrefixEmitter;

    constructor(private library: PeerLibrary, private printer: LanguageWriter, private language: Language, private isComponent: boolean, private useMemoM3: boolean) {
        // TODO: UndefinedConvertor is not known during static initialization because of cyclic dependencies
        if (!OverloadsPrinter.undefinedConvertor) {
            OverloadsPrinter.undefinedConvertor = new UndefinedConvertor("OverloadsPrinter")
        }
    }

    setPostfix(postfix?: string) {
        this.posfix = postfix ?? ""
    }
    setMethodPrefixEmitter(fn?: (peer: string, method: Method, printer: LanguageWriter) => void) {
        this.prefixEmitter = fn;
      }
    printGroupedComponentOverloads(peer: string, peerMethods: (PeerMethod)[]) {
        // CJ 专属：在进入打印流程前，将包含 Union 参数的方法展开为多路重载，避免在签名中物化 Union_*
        const expandedForCJ = this.language === Language.CJ ? this.expandUnionOverloadsForCJ(peerMethods) : peerMethods
        if (this.language === Language.CJ) {
            try {
                const before = peerMethods.length
                const after = expandedForCJ.length
                console.log(`[OverloadsPrinter][CJ] Expanded union overloads for peer=${peer}: methods ${before} -> ${after}`)
            } catch {}
        }

        const orderedMethods = Array.from(expandedForCJ)
            .sort((a, b) => b.sig.args.length - a.sig.args.length)
            // Methods with a large number of runtime types should have low priority(place below) and we go from specific to general
            .sort((a, b) => {
                const cardinalityA = a.argConvertors(this.library)
                    .reduce((acc, it) => it.runtimeTypes.length + acc, 0)
                const cardinalityB = b.argConvertors(this.library)
                    .reduce((acc, it) => it.runtimeTypes.length + acc, 0)
                return cardinalityA - cardinalityB
            })

        // 始终打印重载选择器：同名不同签名 → 生成一个聚合方法，内部做运行时分派；
        // 同名同签名 → 仍折叠为一个实现
        const groups = groupSameSignatureMethods([...orderedMethods])
        if (this.language === Language.CJ) {
            try {
                const dbg = orderedMethods.map(m => `${m.method.name}(${(m.method.signature as NamedMethodSignature).args.map(a => idl.printType(a)).join(', ')})`).join('; ')
                console.log(`[OverloadsPrinter][CJ] orderedMethods before collapse: ${dbg}`)
            } catch {}
        }
        for (let group of groups) {
            this.printCollapsedOverloads(peer, group)
        }
    }

    /**
     * 将包含 Union 参数的方法在 CJ 语言下展开为多路重载（按文档：除 T|Array<T> 以外一律走重载）。
     * 注意：此处仅对参数进行展开；返回类型保持不变。
     */
    private expandUnionOverloadsForCJ(peerMethods: PeerMethod[]): PeerMethod[] {
        const result: PeerMethod[] = []
        for (const pm of peerMethods) {
            const sig = pm.method.signature as NamedMethodSignature
            const args = sig.args
            // 记录每个参数的候选类型集合（非 Union 保持单一）
            const candidateTypesPerArg: idl.IDLType[][] = args.map((argType) => {
                // Optional<Union<...>> 处理：保留 Optional 外壳，仅展开内部 Union
                if (idl.isOptionalType(argType) && idl.isUnionType(argType.type)) {
                    const members = argType.type.types
                    return members.map(m => idl.createOptionalType(m))
                }
                if (idl.isUnionType(argType)) {
                    return argType.types
                }
                return [argType]
            })

            // 计算笛卡尔积，生成多路方法
            const variants: idl.IDLType[][] = this.cartesianProduct(candidateTypesPerArg)
            try {
                const argTypesStr = args.map(t => idl.printType(t)).join(', ')
                console.log(`[OverloadsPrinter][CJ] method=${pm.method.name} args=[${argTypesStr}] variants=${variants.length}`)
            } catch {}
            if (variants.length <= 1) {
                result.push(pm)
                continue
            }

            // 克隆 PeerMethod，为每个变体生成一个新方法（同名不同签名）
            for (const variantArgTypes of variants) {
                const newMethod = new Method(
                    pm.method.name,
                    new NamedMethodSignature(
                        pm.method.signature.returnType,
                        variantArgTypes,
                        sig.argsNames,
                        undefined,
                        (pm.method.signature as any).argsModifiers
                    ),
                    pm.method.modifiers,
                    pm.method.generics,
                )
                const newSig = new PeerMethodSignature(
                    pm.sig.name,
                    pm.sig.fqname,
                    variantArgTypes.map((t, idx) => ({ name: sig.argName(idx), type: t })),
                    pm.sig.returnType,
                )
                const newPeerMethod = new PeerMethod(
                    newSig,
                    pm.originalParentName,
                    pm.returnType,
                    pm.isCallSignature,
                    newMethod,
                )
                try {
                    const vt = variantArgTypes.map(t => idl.printType(t)).join(', ')
                    console.log(`[OverloadsPrinter][CJ]   + variant ${pm.method.name}(${vt})`)
                } catch {}
                result.push(newPeerMethod)
            }
        }
        return result
    }

    private cartesianProduct<T>(lists: T[][]): T[][] {
        if (lists.length === 0) return [[]]
        return lists.reduce<T[][]>((acc, list) => {
            const res: T[][] = []
            for (const a of acc) for (const b of list) res.push(a.concat([b]))
            return res
        }, [[]])
    }
    
    private printCollapsedOverloads(peer: string, methods: PeerMethod[]) {
        const collapsedMethod = collapseSameNamedMethods(methods.map(it => it.method), undefined, this.language, this.posfix)
        if (collapsedMethod.signature.returnType == idl.IDLThisType && this.printer.language == Language.CJ) {
            collapsedMethod.signature.returnType = idl.IDLVoidType
        }
        const key = peer + '.' + collapsedMethod.name
        if (this.prefixEmitter) {
            this.prefixEmitter(peer, collapsedMethod, this.printer);
          }
        this.printer.writeMethodImplementation(collapsedMethod, (writer) => {
            injectPatch(this.printer, key, peerGeneratorConfiguration().patchMaterialized)
            if (this.isComponent) {
                this.printer.pushIndent()
            }
            const hookMethod = getHookMethod(peer, collapsedMethod.name)
            if (hookMethod) {
                this.printHookedMethodBody(peer, collapsedMethod, hookMethod.hookName, writer)
                if (!hookMethod.replaceImplementation) {
                    this.printCollapsedOverloadsMethodBody(peer, collapsedMethod, methods, writer)
                }
            } else {
                this.printCollapsedOverloadsMethodBody(peer, collapsedMethod, methods, writer)
            }
            if (this.isComponent) {
                this.printer.popIndent()
                this.printer.writeStatement(this.printer.makeReturn(collapsedMethod.signature.returnType == idl.IDLThisType ? this.printer.makeThis() : undefined))
            }
        })
    }

    printHookedMethodBody(peer: string, method: Method, hookName: string, writer: LanguageWriter) {
        const args = method.signature.args.map((_, i) => method.signature.argName(i))
        const hookCall = writer.makeFunctionCall(hookName, [
            writer.makeThis(), ...args.map(arg => writer.makeString(arg))
        ])
        if (this.isComponent || method.signature.returnType === idl.IDLVoidType) {
            writer.writeExpressionStatement(hookCall)
        } else {
            writer.writeStatement(writer.makeReturn(hookCall))
        }
    }

    printCollapsedOverloadsMethodBody(peer: string, collapsedMethod: Method, methods: PeerMethod[], writer: LanguageWriter) {
        if (methods.length > 1) {
            const runtimeTypeCheckers = collapsedMethod.signature.args.map((_, argIndex) => {
                const argName = collapsedMethod.signature.argName(argIndex)
                this.printer.language == Language.JAVA ?
                    this.printer.print(`final byte ${argName}_type = Ark_Object.getRuntimeType(${argName}).value;`) :
                    this.printer.print(`const ${argName}_type = runtimeType(${argName})`)
                return new UnionRuntimeTypeChecker(
                    methods.map(m => m.argConvertors(this.library)[argIndex] ?? OverloadsPrinter.undefinedConvertor))
            })
            let shallStop = false
            methods.forEach((peerMethod, methodIndex) => {
                if (!shallStop) {
                    shallStop ||= this.printComponentOverloadSelector(peer, collapsedMethod, peerMethod, methodIndex, runtimeTypeCheckers)
                }
            })
            if (!shallStop)
                writer.makeThrowError(`Can not select appropriate overload`).write(writer)
        } else {
            this.printPeerCallAndReturn(peer, collapsedMethod, methods[0])
        }
    }

    public printCollapsedDeclaration(peer: PeerClassBase, methods: PeerMethod[]) {
        const collapsedMethod = collapseSameNamedMethods(methods.map(it => it.method), undefined, this.language)
        this.printer.writeMethodDeclaration(collapsedMethod.name, collapsedMethod.signature)
    }

    private printComponentOverloadSelector(peer: string, collapsedMethod: Method, peerMethod: PeerMethod, methodIndex: number, runtimeTypeCheckers: UnionRuntimeTypeChecker[]): boolean {
        const argsConditions: LanguageExpression[] = []
        collapsedMethod.signature.args
            .forEach((type, argIndex) => {
                    // Create a type selector for Optional, Union and Enum types
                    let isNeedDiscriminator = idl.isOptionalType(type) || idl.isUnionType(type)
                    if (idl.isReferenceType(type) && !isNeedDiscriminator) {
                        const resolved = this.library.resolveTypeReference(idl.createReferenceType(type.name))
                        isNeedDiscriminator = resolved !== undefined && idl.isEnum(resolved)
                    }
                    if (isNeedDiscriminator) {
                        argsConditions.push(runtimeTypeCheckers[argIndex].makeDiscriminator(collapsedMethod.signature.argName(argIndex), methodIndex, this.printer))
                    }
                }
            )
        if (argsConditions.length > 0) {
            this.printer.print(`if (${this.printer.makeNaryOp("&&", argsConditions).asString()}) {`)
            this.printer.pushIndent()
        }
        this.printPeerCallAndReturn(peer, collapsedMethod, peerMethod)
        if (argsConditions.length > 0) {
            this.printer.popIndent()
            this.printer.print('}')
        }
        return argsConditions.length == 0
    }

    public printPeerCallAndReturn(peer: string, collapsedMethod: Method, peerMethod: PeerMethod) {
        const argsNames = peerMethod.argConvertors(this.library).map((conv, index) => {
            const argName = collapsedMethod.signature.argName(index)
            const castedArgName = `${(peerMethod.method.signature as NamedMethodSignature).argsNames[index]}_casted`
            const castedType = idl.maybeOptional(peerMethod.method.signature.args[index], peerMethod.method.signature.isArgOptional(index))
            if (this.printer.language == Language.CJ) {
                if (idl.isOptionalType(collapsedMethod.signature.args[index])) {
                    this.printer.makeAssign(castedArgName, castedType, this.printer.makeString(`if (let Some(${this.printer.escapeKeyword(argName)}) <- ${this.printer.escapeKeyword(argName)}) {${this.printer.escapeKeyword(argName)}} else { throw Exception(\"Type has to be not None\")}`), true, true).write(this.printer)
                } else {
                    this.printer.makeAssign(castedArgName, castedType, this.printer.makeString(this.printer.escapeKeyword(argName)), true, true).write(this.printer)
                }
            } else if (this.printer.language == Language.KOTLIN) {
                this.printer.makeAssign(castedArgName, castedType, this.printer.makeString(argName), true, true).write(this.printer)
            } else if (this.printer.language == Language.JAVA) {
                this.printer.print(`final ${this.printer.getNodeName(castedType)} ${castedArgName} = (${this.printer.getNodeName(castedType)})${argName};`)
            }
            else {
                this.printer.print(`const ${castedArgName} = ${this.printer.escapeKeyword(argName)} as (${this.printer.getNodeName(castedType)})`)
            }
            return castedArgName
        })
        const isStatic = collapsedMethod.modifiers?.includes(MethodModifier.STATIC)
        const receiver = isStatic
            ? peer
            : this.isComponent ? `this.getPeer()` : `this`
        const namePostifx = this.isComponent ? "Attribute" : `${this.posfix}_serialize`
        const methodName = `${peerMethod.sig.name}${namePostifx}`
        if (collapsedMethod.signature.returnType === idl.IDLThisType) {
            if (this.printer.language == Language.CJ) {
                if (isStatic) {
                    this.printer.writeMethodCall(receiver, methodName, argsNames, false)
                } else {
                    this.printer.print(`let thisPeer = ${receiver}`)
                    this.printer.writeMethodCall(`thisPeer`, methodName, argsNames, false)
                }
            } else {
                this.printer.writeMethodCall(receiver, methodName, argsNames, !isStatic)
            }
            this.printer.writeStatement(this.printer.makeReturn(this.printer.makeThis()))
        } else if (collapsedMethod.signature.returnType === idl.IDLVoidType) {
            if (this.printer.language == Language.CJ) {
                if (isStatic) {
                    this.printer.writeMethodCall(receiver, methodName, argsNames, false)
                } else {
                    this.printer.print(`let thisPeer = ${receiver}`)
                    this.printer.writeMethodCall(`thisPeer`, methodName, argsNames, false)
                }
            } else {
                this.printer.writeMethodCall(receiver, methodName, argsNames, !isStatic)
            }
            this.printer.writeStatement(this.printer.makeReturn())
        } else if (peerMethod.returnType === idl.IDLVoidType && idl.isUnionType(collapsedMethod.signature.returnType)) {
            // handling case when there is two original functions:
            // foo(): boolean
            // foo(cb: (boolean) => void): void
            // and collapsed return type is `boolean | undefined`, so we want to return `undefined` on the second overload
            this.printer.writeMethodCall(receiver, methodName, argsNames, !isStatic)
            this.printer.writeStatement(this.printer.makeReturn(this.printer.makeUndefined()))
        } else {
            this.printer.writeStatement(
                this.printer.makeReturn(
                    this.printer.makeMethodCall(receiver, methodName,
                        argsNames.map(it => this.printer.makeString(it)))
                ))
        }
    }
}
