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

import * as idl from "@idlizer/core/idl"
import { collapseIdlPeerMethods, collectPeers, componentToStyleClass, findComponentByDeclaration, findComponentByName, groupOverloads, isComponentDeclaration, KotlinInterfacesVisitor, PrinterFunction } from "@idlizer/libohos"
import { ArkTSInterfacesVisitor, CJInterfacesVisitor, InterfacesVisitor, JavaInterfacesVisitor, TSDeclConvertor, TSInterfacesVisitor, PrinterResult } from "@idlizer/libohos"
import { CJTypeMapper, TypeConversionResult } from "../declaration/CJTypeMapper"
import { DeclarationConvertor, getSuper, indentedBy, Language, LanguageWriter, Method, MethodModifier, NamedMethodSignature, PeerLibrary, ReferenceResolver, stringOrNone } from "@idlizer/core"
import { generateAttributeModifierSignature } from "./ComponentsPrinter"
import { componentToAttributesInterface, generateStyleParentClass } from "./PeersPrinter"
//

function collectParentsPropertiesNames(int: idl.IDLInterface, resolver: ReferenceResolver): Set<string> {
    const result = new Set<string>()
    function go(int: idl.IDLInterface) {
        int.inheritance.forEach(parent => {
            const found = resolver.resolveTypeReference(parent)
            if (found && idl.isInterface(found)) {
                found.properties.forEach(prop => {
                    result.add(prop.name)
                })
                go(found)
            }
        })
    }

    go(int)
    return result
}

class ArkoalaTSDeclConvertor extends TSDeclConvertor {
    protected printComponent(idlInterface: idl.IDLInterface): stringOrNone[] {
        const component = findComponentByDeclaration(this.peerLibrary, idlInterface)
        if (idlInterface !== component?.attributeDeclaration)
            return []
        const peer = collectPeers(this.peerLibrary).find(it => it.componentName === component.name)
        if (!peer) throw new Error(`Peer for component ${component.name} was not found`)
        const printer = this.peerLibrary.createLanguageWriter()
        const declaredPrefix = this.isDeclared && this.peerLibrary.language !== Language.ARKTS ? "declare " : ""
        const superType = getSuper(idlInterface, this.peerLibrary)
        const extendsClause = superType ? `extends ${componentToAttributesInterface(superType.name)} ` : ""
        printer.print(`export ${declaredPrefix}interface ${componentToAttributesInterface(idlInterface.name)} ${extendsClause}{`)
        printer.pushIndent()
        const filteredMethods = peer!.methods
            .filter(it => !it.isCallSignature)
        const collapsedMethods = groupOverloads(filteredMethods, this.peerLibrary.language)
            .map(group => collapseIdlPeerMethods(this.peerLibrary, group))
        const parentMethods = collectParentsPropertiesNames(idlInterface, this.peerLibrary)
        collapsedMethods.forEach(method => {
            if (this.peerLibrary.language === Language.ARKTS && !parentMethods.has(method.method.name)) {
                const nonPublic = new Method(
                    method.method.name,
                    method.method.signature,
                    method.method.modifiers?.filter(it => it !== MethodModifier.PUBLIC)
                )
                printer.writeMethodImplementation(nonPublic, w => {
                    w.writeStatement(w.makeThrowError(`Unimplemented method ${method.method.name}`))
                })
            } else {
                printer.writeMethodDeclaration(method.method.name, method.method.signature)
            }
        })
        const attributeModifierSignature = generateAttributeModifierSignature(this.peerLibrary, component)
        if (this.peerLibrary.language === Language.ARKTS && !parentMethods.has('attributeModifier')) {
            printer.writeMethodImplementation(new Method('attributeModifier', attributeModifierSignature), w => {
                w.writeStatement(w.makeThrowError(`Unimplemented method attributeModifier`))
            })
        } else {
            printer.writeMethodDeclaration('attributeModifier', attributeModifierSignature)
        }
        printer.popIndent()
        printer.print('}')
        const stylePrinter = this.peerLibrary.createLanguageWriter()
        const parentStyle = generateStyleParentClass(peer)
        stylePrinter.writeClass(componentToStyleClass(idlInterface.name), (writer) => {
            for (const field of peer.attributesFields) {
                writer.writeFieldDeclaration(
                    field.name + "_value",
                    field.type,
                    [],
                    true
                )
            }
            collapsedMethods.forEach(method => {
                // TODO: temporary hack
                stylePrinter.writeMethodImplementation(method.method, (writer) => {
                    if (method.method.signature.returnType == idl.IDLThisType) {
                        writer.writeStatement(writer.makeReturn(writer.makeThis()))
                    }
                })
            })
            stylePrinter.writeMethodImplementation(new Method('attributeModifier', attributeModifierSignature, [MethodModifier.PUBLIC]), writer => {
                writer.writeStatement(writer.makeThrowError("Not implemented"))
            })
        }, parentStyle, [componentToAttributesInterface(idlInterface.name)])
        return printer.getOutput().concat(stylePrinter.getOutput())
    }
    convertInterface(node: idl.IDLInterface) {
        if (isComponentDeclaration(this.peerLibrary, node)) {
            this.writer.writeLines(this.printComponent(node).join("\n"))
            return
        }
        return super.convertInterface(node)
    }
}

class ArkoalaTSInterfacesVisitor extends TSInterfacesVisitor {
    protected override getDeclConvertor(writer: LanguageWriter, library: PeerLibrary, isDeclared: boolean): DeclarationConvertor<void> {
        return new ArkoalaTSDeclConvertor(writer, library, isDeclared)
    }
}

class ArkoalaArkTSDeclConvertor extends ArkoalaTSDeclConvertor {
    protected printMethod(method: idl.IDLMethod): stringOrNone[] {
        const staticPrefix = method.isStatic ? "static " : ""
        return [
            ...this.printExtendedAttributes(method),
            indentedBy(`${staticPrefix}${method.name}${this.printTypeParameters(method.typeParameters)}(${this.printParameters(method.parameters)}): ${this.convertType(method.returnType)}`, 1)
        ]
    }
}

class ArkoalaArkTSInterfacesVisitor extends ArkTSInterfacesVisitor {
    protected override getDeclConvertor(writer: LanguageWriter, library: PeerLibrary, isDeclared: boolean): DeclarationConvertor<void> {
        return new ArkoalaArkTSDeclConvertor(writer, library, isDeclared)
    }
}

function getVisitor(peerLibrary: PeerLibrary, isDeclarations: boolean): InterfacesVisitor {
    if (peerLibrary.language == Language.TS) {
        return new ArkoalaTSInterfacesVisitor(peerLibrary, true)
    }
    if (peerLibrary.language == Language.JAVA) {
        return new JavaInterfacesVisitor(peerLibrary)
    }
    if (peerLibrary.language == Language.ARKTS) {
        return new ArkoalaArkTSInterfacesVisitor(peerLibrary, isDeclarations, true)
    }
    if (peerLibrary.language == Language.CJ) {
        const inner = new CJInterfacesVisitor(peerLibrary)
        const mapper = new CJTypeMapper()
        return {
            printInterfaces(): PrinterResult[] {
                for (const file of peerLibrary.files.values()) {
                    // IDLFile: entries 列出所有顶层声明
                    file.entries.forEach((node: idl.IDLEntry) => {
                        if (idl.isInterface(node)) {
                            node.properties.forEach(prop => {
                                try {
                                    const conv = mapper.convertParameterType(prop.type, prop.name, true)
                                    if (conv.overloads && conv.overloads.length > 0) {
                                        const t = conv.overloads[0].cjType
                                        if (t) {
                                            const assigned = typeof t === 'string' ? idl.createReferenceType(t) : t
                                            prop.type = (assigned as any).kind === 'optionalType' ? (assigned as any).type : assigned
                                        }
                                    } else if (conv.cjType) {
                                        const assigned = typeof conv.cjType === 'string' ? idl.createReferenceType(conv.cjType) : conv.cjType
                                        prop.type = (assigned as any).kind === 'optionalType' ? (assigned as any).type : assigned
                                    }
                                } catch {}
                            })
                            node.methods.forEach((method: idl.IDLMethod) => {
                                // 参数（就地修改，避免破坏 IDLParameter 的结构/品牌字段）
                                method.parameters.forEach((param: idl.IDLParameter, idx: number) => {
                                    try {
                                        const name = param.name || `param${idx}`
                                        const isOpt = param.isOptional
                                        const conv: TypeConversionResult = mapper.convertParameterType(param.type, name, isOpt)
                                        if (conv.overloads && conv.overloads.length > 0) {
                                            const t = conv.overloads[0].cjType
                                            if (t) {
                                                const assigned = typeof t === 'string' ? idl.createReferenceType(t) : t
                                                param.type = (assigned as any).kind === 'optionalType' ? (assigned as any).type : assigned
                                            }
                                        } else if (conv.cjType) {
                                            const assigned = typeof conv.cjType === 'string' ? idl.createReferenceType(conv.cjType) : conv.cjType
                                            param.type = (assigned as any).kind === 'optionalType' ? (assigned as any).type : assigned
                                        }
                                    } catch {
                                        // keep original
                                    }
                                })
                                try {
                                    const convRet: TypeConversionResult = mapper.convertParameterType(method.returnType, `${method.name}_return`, false)
                                    if (convRet.overloads && convRet.overloads.length > 0) {
                                        const t = convRet.overloads[0].cjType
                                        if (t) {
                                            const assigned = typeof t === 'string' ? idl.createReferenceType(t) : t
                                            method.returnType = (assigned as any).kind === 'optionalType' ? (assigned as any).type : assigned
                                        }
                                    } else if (convRet.cjType) {
                                        const assigned = typeof convRet.cjType === 'string' ? idl.createReferenceType(convRet.cjType) : convRet.cjType
                                        method.returnType = (assigned as any).kind === 'optionalType' ? (assigned as any).type : assigned
                                    }
                                } catch {}
                            })
                        }
                    })
                }
                // 为 CJ 语言输出的 interfaces 文件补充 cores 导入
                // 接口(commonPara)文件不应导入自身包，避免包级自循环依赖
                return inner.printInterfaces()
            }
        } as InterfacesVisitor
    }
    if (peerLibrary.language == Language.KOTLIN) {
        return new KotlinInterfacesVisitor(peerLibrary)
    }
    throw new Error(`Need to implement InterfacesVisitor for ${peerLibrary.language} language`)
}

export function createInterfacePrinter(isDeclarations: boolean): PrinterFunction {
    return (library: PeerLibrary) => getVisitor(library, isDeclarations).printInterfaces()
}
