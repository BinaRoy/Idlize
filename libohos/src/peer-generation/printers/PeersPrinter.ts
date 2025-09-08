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
    Language,
    CustomTypeConvertor,
    InteropReturnTypeConvertor,
    PeerMethod,
    LanguageWriter,
    MaterializedMethod,
    PeerLibrary,
    getInternalClassName,
    getHookMethod,
    isNamedNode,
    isMaterializedType,
    isPrimitiveType,
    LayoutNodeRole,
    PeerMethodSignature,
    PeerMethodArg,
    getExtractor
} from '@idlizer/core'
import {
    ExpressionStatement,
    LanguageExpression,
    LanguageStatement,
    Method,
    MethodSignature,
    NamedMethodSignature,
} from "../LanguageWriters";
import { createReferenceType, IDLType, IDLVoidType, IDLThisType } from '@idlizer/core'
import { NativeModule } from "../NativeModule";

export function componentToPeerClass(component: string) {
    return `Ark${component}Peer`
}

export function componentToStyleClass(component: string) {
    if (component.endsWith("Attribute"))
        component = component.substring(0, component.length - 9)
    return `Ark${component}Style`
}

const returnValName = "retval"  // make sure this doesn't collide with parameter names!

export function writePeerMethod(library: PeerLibrary, printer: LanguageWriter, method: PeerMethod, isIDL: boolean, dumpSerialized: boolean,
    methodPostfix: string, ptr: string, returnType: IDLType = IDLVoidType, generics?: string[]
) {
    const hookMethod = getHookMethod(method.originalParentName, method.method.name)
    if (hookMethod && hookMethod.replaceImplementation) return
    const signature = method.method.signature as NamedMethodSignature
    // 事件命名规范化（仅对 CJ 输出生效）：
    // 1) _onChangeEvent_foo   → onFoo
    // 2) set_onChangeEvent_foo → onFoo（去掉 set_ 前缀，以匹配组件层 onFooAttribute 调用）
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
    // Setter 命名收敛：对 CJ 输出移除 set 前缀，以与组件层 xxxAttribute 调用保持一致
    const normalizeSetterName = (name: string): string => {
        // 仅处理以 set 后跟大写字母开头的典型 setter，如 setFontSize → fontSize
        return name.replace(/^set([A-Z])(.*)$/,( _all, first: string, rest: string) => first.toLowerCase() + rest)
    }
    // 去除数字重载后缀（如 name0/name1 → name），以启用同名多重载
    const stripOverloadIndex = (name: string): string => name.replace(/\d+$/, '')
    const normalizedName = printer.language === Language.CJ
        ? stripOverloadIndex(normalizeSetterName(normalizeEventName(method.sig.name)))
        : method.sig.name
    // 对 CJ 语言应用元组类型转换
    let finalArgs = signature.args
    if (printer.language === Language.CJ) {
        finalArgs = signature.args.map((argType, index) => {
            // 检查是否是 Tuple_* 类型
            const typeName = (argType as any).name || ''
            if (typeName.includes('Tuple_')) {
                const match = typeName.match(/^Tuple_(.+)$/)
                if (match) {
                    const tokens = match[1].split('_').filter(Boolean)
                    const elementTypes = tokens.map((tok: string) => {
                        const t = tok.toLowerCase()
                        if (t === 'number' || t === 'float64') return 'Float64'
                        if (t === 'int32') return 'Int32'
                        if (t === 'int64') return 'Int64'
                        if (t === 'boolean' || t === 'bool') return 'Bool'
                        if (t === 'string') return 'String'
                        return tok // 枚举或自定义类型
                    })
                    // 创建原生元组类型引用
                    const nativeTupleType = `(${elementTypes.join(', ')})`
                    const tupleRefType = createReferenceType(nativeTupleType)
                    ;(tupleRefType as any).__isTupleReference = true
                    return tupleRefType
                }
            }
            return argType
        })
    }
    let peerMethod = new Method(
        `${normalizedName}${methodPostfix}`,
        new NamedMethodSignature(returnType, finalArgs, signature.argsNames, signature.defaults, signature.argsModifiers),
        method.method.modifiers, method.method.generics
    )
    const argConvertors = method.argAndOutConvertors(library)
    try { console.log(`[DEBUG] writePeerMethod: method=${method.sig.name}, argConvertors=${argConvertors.map(c => c.constructor.name).join(', ')}`) } catch {}
    
    // 检查是否有联合类型参数需要重载
    const hasUnionParams = checkForUnionParameters(signature, library)
    if (hasUnionParams && printer.language === Language.CJ) {
        console.log(`[DEBUG] writePeerMethod: Found union parameters in method ${method.sig.name}, generating overloads`)
        generateUnionOverloads(library, printer, method, isIDL, dumpSerialized, methodPostfix, ptr, returnType, generics)
        return
    }
    
    printer.writeMethodImplementation(peerMethod, (writer) => {
        let scopes = argConvertors.filter(it => it.isScoped)
        scopes.forEach(it => {
            writer.pushIndent()
        })
        let serializerCreated = false
        let returnValueFilledThroughOutArg = false
        argConvertors.forEach((it, index) => {
            if (it.useArray) {
                if (!serializerCreated) {
                    const serializerRef = createReferenceType('SerializerBase')
                    const serializerEntry = library.resolveTypeReference(serializerRef)
                    if (!serializerEntry) {
                        throw new Error("Not found SerializerBase!")
                    }
                    writer.addFeature('SerializerBase', library.layout.resolve({ node: serializerEntry, role: LayoutNodeRole.INTERFACE }))
                    writer.addFeature('DeserializerBase', library.layout.resolve({ node: serializerEntry, role: LayoutNodeRole.INTERFACE }))
                    writer.writeStatement(
                        writer.makeAssign(`thisSerializer`, createReferenceType('SerializerBase'),
                            writer.makeMethodCall('SerializerBase', 'hold', []), true)
                    )
                    serializerCreated = true
                }
                if (it.isOut) {
                    returnValueFilledThroughOutArg = true
                    writer.writeStatement(it.convertorSerialize(`this`, returnValName, writer))
                } else
                    writer.writeStatement(it.convertorSerialize(`this`, it.param, writer))
            }
        })
        // Enable to see serialized data.
        if (dumpSerialized) {
            let arrayNum = 0
            argConvertors.forEach((it, index) => {
                if (it.useArray) {
                    writer.writePrintLog(`"${it.param}:", thisSerializer.asBuffer(), thisSerializer.length())`)
                }
            })
        }
        let params: LanguageExpression[] = []
        if (method.sig.context) {
            params.push(writer.makeString(ptr))
        }
        let serializerPushed = false
        argConvertors.forEach(it => {
            if (it.useArray) {
                if (!serializerPushed) {
                    params.push(writer.makeSerializedBufferGetter(`thisSerializer`))
                    params.push(writer.makeMethodCall(`thisSerializer`, 'length', []))
                    serializerPushed = true
                }
            } else {
                params.push(writer.makeString(it.convertorArg(it.param, writer)))
            }
        })
        let call = writer.makeNativeCall(
            NativeModule.Generated,
            // Native 符号保持原始签名，避免与其他语言/既有导出不一致
            `_${method.originalParentName}_${method.sig.name}`,
            params)

        if (!returnValueFilledThroughOutArg && returnType != IDLVoidType && returnType !== IDLThisType) {
            writer.writeStatement(writer.makeAssign(returnValName, undefined, call, true))
        } else {
            writer.writeStatement(writer.makeStatement(call))
        }
        if (serializerPushed)
            writer.writeStatement(new ExpressionStatement(
                writer.makeMethodCall('thisSerializer', 'release', [])))
        scopes.reverse().forEach(it => {
            writer.popIndent()
        })
        // TODO: refactor
        if (returnType != IDLVoidType) {
            let result: LanguageStatement[] = [writer.makeReturn(writer.makeString(returnValName))]
            if (returnValueFilledThroughOutArg) {
                // keep result
            } else if (returnsThis(method, returnType)) {
                result = [writer.makeReturn(writer.makeString("this"))]
            } else if (method instanceof MaterializedMethod && method.sig.name !== PeerMethodSignature.CTOR) {
                if (isNamedNode(returnType)
                    && (returnType.name === method.originalParentName || isMaterializedType(returnType, writer.resolver))) {
                    result = [
                        ...constructMaterializedObject(writer, signature, "obj", returnValName),
                        writer.makeReturn(writer.makeString("obj"))
                    ]
                } else if (returnType == idl.IDLAnyType) {
                    // Read as resource
                    // Change any return type to the serializer buffer in NativeModule
                    // result = makeDeserializedReturn(library, printer, returnType)
                } else if (!isPrimitiveType(returnType)) {
                    const returnTypeConvertor = new InteropReturnTypeConvertor(library)
                    if ((idl.IDLContainerUtils.isSequence(returnType) || idl.IDLContainerUtils.isRecord(returnType)) && writer.language != Language.JAVA) {
                        result = makeDeserializedReturn(library, printer, returnType)
                    } else if (returnTypeConvertor.isReturnInteropBuffer(returnType)
                        && !(library.typeConvertor(returnValName, returnType) instanceof CustomTypeConvertor)
                        && writer.language != Language.JAVA) {
                        result = makeDeserializedReturn(library, printer, returnType)
                    } else {
                        // todo: implement deserialization for types other than enum
                        result = [writer.makeThrowError("Object deserialization is not implemented.")]

                        if (idl.isReferenceType(returnType)) {
                            const enumEntry = library.resolveTypeReference(returnType)
                            if (enumEntry && idl.isEnum(enumEntry))
                                result = [
                                    writer.makeReturn(writer.enumFromI32(writer.makeString(returnValName), enumEntry))
                                ]
                        }
                    }
                } else if (returnType === idl.IDLBufferType && writer.language !== Language.JAVA) {
                    const instance = makeDeserializerInstance(returnValName, writer.language)
                    result = [
                        writer.makeReturn(
                            writer.makeMethodCall(
                                instance, 'readBuffer', []
                            )
                        )
                    ]
                }
            }
            for (const stmt of result) {
                writer.writeStatement(stmt)
            }
        }
    })
}

function makeDeserializedReturn(library: PeerLibrary, writer: LanguageWriter, returnType: IDLType): LanguageStatement[] {
    const deserializerName = `${returnValName}Deserializer`
    writer.writeStatement(
        writer.makeAssign(
            deserializerName,
            idl.createReferenceType("DeserializerBase"),
            writer.makeString(makeDeserializerInstance(returnValName, writer.language)),
            true,
            false,
            { assignRef: true }
        )
    )

    const returnConvertor = library.typeConvertor(returnValName, returnType)
    const returnResultValName = "returnResult"
    return [
        returnConvertor.convertorDeserialize(
            'buffer',
            deserializerName,
            (expr) => writer.makeAssign(returnResultValName, returnType, expr, true),
            writer
        ),
        writer.makeReturn(writer.makeString(returnResultValName))
    ]
}

function makeDeserializerInstance(returnValName: string, language: Language) {
    if (language === Language.TS) {
        return `new DeserializerBase(${returnValName}.buffer, ${returnValName}.byteLength)`
    } else if (language === Language.ARKTS) {
        return `new DeserializerBase(${returnValName}, ${returnValName}.length)`
    } else if (language === Language.JAVA) {
        return `new DeserializerBase(${returnValName}, ${returnValName}.length)`
    } else if (language === Language.CJ) {
        return `DeserializerBase(${returnValName}, Int32(${returnValName}.size))`
    } else if (language === Language.KOTLIN) {
        return `DeserializerBase(${returnValName}.data, ${returnValName}.length)`
    } else {
        throw new Error("not implemented")
    }
}

function returnsThis(method: PeerMethod, returnType: IDLType) {
    return !!method.sig.context && returnType === IDLThisType
}

function constructMaterializedObject(writer: LanguageWriter, signature: MethodSignature,
    resultName: string, peerPtrName: string): LanguageStatement[] {
    const retType = signature.returnType
    if (!idl.isReferenceType(retType)) {
        throw new Error("Method returns wrong value")
    }
    // TODO: Use "ClassNameInternal.fromPtr(ptr)"
    // once java is generated in the same way as typescript for materialized classes
    const decl = writer.resolver.resolveTypeReference(retType)
    if (!decl) {
        throw new Error(`Can not resolve materialized class: ${retType.name}`)
    }
    if (!idl.isInterface(decl)) {
        throw new Error(`Materialized class ${decl.name}, kind: ${decl.kind} must be an IDL interface`)
    }
    const extractor = getExtractor(decl, writer.language, false)
    return [
        writer.makeAssign(
            `${resultName}`,
            retType,
            writer.makeMethodCall(extractor.receiver!, extractor.method, [writer.makeString(peerPtrName)]),
            true),
    ]
    /*
    return [
        writer.makeAssign(`${resultName}`, retType, writer.makeNewObject(forceAsNamedNode(retType).name), true),
-        writer.makeAssign(`${resultName}.peer`, createReferenceType("Finalizable"),
            writer.makeNewObject('Finalizable', [writer.makeString(peerPtrName), writer.makeString(`${forceAsNamedNode(retType).name}.getFinalizer()`)]),
            false),
    ]
    */
}

// 检查方法参数中是否有联合类型
function checkForUnionParameters(signature: NamedMethodSignature, library: PeerLibrary): boolean {
    return signature.args.some(argType => {
        const base = idl.isOptionalType(argType) ? 
            (argType as idl.IDLOptionalType).type : argType;
        return idl.isUnionType(base) || 
               (idl.isReferenceType(base) && 
                (base as idl.IDLReferenceType).name?.startsWith('Union_'));
    });
}

// 生成联合类型重载方法
function generateUnionOverloads(
    library: PeerLibrary, 
    printer: LanguageWriter, 
    method: PeerMethod, 
    isIDL: boolean, 
    dumpSerialized: boolean,
    methodPostfix: string, 
    ptr: string, 
    returnType: IDLType, 
    generics?: string[]
) {
    const signature = method.method.signature as NamedMethodSignature
    const unionParamIndex = signature.args.findIndex(argType => {
        const base = idl.isOptionalType(argType) ? 
            (argType as idl.IDLOptionalType).type : argType;
        return idl.isUnionType(base) || 
               (idl.isReferenceType(base) && 
                (base as idl.IDLReferenceType).name?.startsWith('Union_'));
    });

    if (unionParamIndex === -1) {
        console.log(`[DEBUG] generateUnionOverloads: No union parameter found in method ${method.sig.name}`)
        return;
    }

    const unionType = signature.args[unionParamIndex];
    const baseUnionType = idl.isOptionalType(unionType) ? 
        (unionType as idl.IDLOptionalType).type : unionType;
    
    let unionBranches: string[] = [];
    
    if (idl.isUnionType(baseUnionType)) {
        unionBranches = (baseUnionType as idl.IDLUnionType).types.map(t => {
            if (idl.isReferenceType(t)) {
                return (t as idl.IDLReferenceType).name!;
            }
            return t.toString();
        });
    } else if (idl.isReferenceType(baseUnionType)) {
        const typeName = (baseUnionType as idl.IDLReferenceType).name!;
        if (typeName.startsWith('Union_')) {
            // 解析 Union_Length_EdgeWidths_LocalizedEdgeWidths
            const tokens = typeName.substring(6).split('_').filter(t => t.length > 0);
            unionBranches = tokens;
        }
    }

    console.log(`[DEBUG] generateUnionOverloads: Found union branches: ${unionBranches.join(', ')}`)

    // 为每个联合分支生成重载方法
    unionBranches.forEach(branchType => {
        const suffix = getTypeSuffix(branchType);
        console.log(`[DEBUG] generateUnionOverloads: Generating overload for branch ${branchType} with suffix ${suffix}`)
        
        // 创建新的参数类型数组
        const newArgs = [...signature.args];
        const isOptional = idl.isOptionalType(unionType);
        
        if (isOptional) {
            newArgs[unionParamIndex] = idl.createOptionalType(idl.createReferenceType(branchType));
        } else {
            newArgs[unionParamIndex] = idl.createReferenceType(branchType);
        }

        // 创建新的方法签名
        const newSignature = new NamedMethodSignature(
            returnType,
            newArgs,
            signature.argsNames,
            signature.defaults,
            signature.argsModifiers
        );

        // 创建新的方法
        const overloadMethod = new Method(
            `${method.sig.name}${methodPostfix}`,
            newSignature,
            method.method.modifiers,
            method.method.generics
        );

        // 创建新的 PeerMethod
        const overloadPeerMethod = new PeerMethod(
            method.sig,
            method.originalParentName,
            returnType,
            method.isCallSignature,
            overloadMethod
        );

        // 生成重载方法实现
        printer.writeMethodImplementation(overloadMethod, (writer) => {
            console.log(`[DEBUG] generateUnionOverloads: Generating implementation for ${overloadMethod.name} with type ${branchType}`)
            
            // 创建新的方法签名用于参数转换器
            const newSignature = new NamedMethodSignature(
                returnType,
                newArgs,
                signature.argsNames,
                signature.defaults,
                signature.argsModifiers
            );
            
            // 创建新的 PeerMethod 用于获取参数转换器
            const newPeerMethodArgs = newArgs.map((argType, index) => 
                new PeerMethodArg(signature.argsNames[index], argType)
            );
            const newPeerMethodSig = new PeerMethodSignature(
                method.sig.name,
                method.sig.fqname,
                newPeerMethodArgs,
                returnType,
                method.sig.context
            );
            
            const tempMethod = new PeerMethod(
                newPeerMethodSig,
                method.originalParentName,
                returnType,
                method.isCallSignature,
                overloadMethod
            );
            
            const argConvertors = tempMethod.argAndOutConvertors(library)
            console.log(`[DEBUG] generateUnionOverloads: Got ${argConvertors.length} arg convertors`)
            
            let scopes = argConvertors.filter(it => it.isScoped)
            scopes.forEach(it => {
                writer.pushIndent()
            })
            let serializerCreated = false
            let returnValueFilledThroughOutArg = false
            argConvertors.forEach((it, index) => {
                if (it.useArray) {
                    if (!serializerCreated) {
                        const serializerRef = createReferenceType('SerializerBase')
                        const serializerEntry = library.resolveTypeReference(serializerRef)
                        if (!serializerEntry) {
                            throw new Error("Not found SerializerBase!")
                        }
                        writer.addFeature('SerializerBase', library.layout.resolve({ node: serializerEntry, role: LayoutNodeRole.INTERFACE }))
                        writer.addFeature('DeserializerBase', library.layout.resolve({ node: serializerEntry, role: LayoutNodeRole.INTERFACE }))
                        writer.writeStatement(
                            writer.makeAssign(`thisSerializer`, createReferenceType('SerializerBase'),
                                writer.makeMethodCall('SerializerBase', 'hold', []), true)
                        )
                        serializerCreated = true
                    }
                    if (it.isOut) {
                        returnValueFilledThroughOutArg = true
                        console.log(`[DEBUG] Serializing out arg ${index}: ${it.constructor.name} for param ${it.param}`)
                        writer.writeStatement(it.convertorSerialize(`this`, returnValName, writer))
                    } else {
                        console.log(`[DEBUG] Serializing arg ${index}: ${it.constructor.name} for param ${it.param}`)
                        writer.writeStatement(it.convertorSerialize(`this`, it.param, writer))
                    }
                }
            })
            
            // Enable to see serialized data.
            if (dumpSerialized) {
                let arrayNum = 0
                argConvertors.forEach((it, index) => {
                    if (it.useArray) {
                        writer.writePrintLog(`"${it.param}:", thisSerializer.asBuffer(), thisSerializer.length())`)
                    }
                })
            }
            
            let params: LanguageExpression[] = []
            if (method.sig.context) {
                params.push(writer.makeString(ptr))
            }
            let serializerPushed = false
            argConvertors.forEach(it => {
                if (it.useArray) {
                    if (!serializerPushed) {
                        params.push(writer.makeSerializedBufferGetter(`thisSerializer`))
                        params.push(writer.makeMethodCall(`thisSerializer`, 'length', []))
                        serializerPushed = true
                    }
                } else {
                    params.push(writer.makeString(it.convertorArg(it.param, writer)))
                }
            })
            
            // 调用带后缀的互操作函数
            const interopName = `_${method.originalParentName}_${method.sig.name}_${suffix}`;
            console.log(`[DEBUG] generateUnionOverloads: Calling interop function ${interopName}`)
            
            let call = writer.makeNativeCall(
                NativeModule.Generated,
                interopName,
                params)

            if (!returnValueFilledThroughOutArg && returnType != IDLVoidType && returnType !== IDLThisType) {
                writer.writeStatement(writer.makeAssign(returnValName, undefined, call, true))
            } else {
                writer.writeStatement(writer.makeStatement(call))
            }
            if (serializerPushed)
                writer.writeStatement(new ExpressionStatement(
                    writer.makeMethodCall('thisSerializer', 'release', [])))
            scopes.reverse().forEach(it => {
                writer.popIndent()
            })
            
            // 处理返回值
            if (returnType != IDLVoidType) {
                let result: LanguageStatement[] = [writer.makeReturn(writer.makeString(returnValName))]
                if (returnValueFilledThroughOutArg) {
                    // keep result
                } else if (returnsThis(method, returnType)) {
                    result = [writer.makeReturn(writer.makeString("this"))]
                }
                for (const stmt of result) {
                    writer.writeStatement(stmt)
                }
            }
        });
    });
}

// 获取类型后缀
function getTypeSuffix(typeName: string): string {
    // 将类型名转换为后缀格式
    // 例如: Length -> Length, EdgeWidths -> EdgeWidths, LocalizedEdgeWidths -> LocalizedEdgeWidths
    return typeName;
}
