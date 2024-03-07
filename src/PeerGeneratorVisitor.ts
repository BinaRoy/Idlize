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
import * as ts from "typescript"
import { asString, nameOrNull as nameOrUndefined, getDeclarationsByNode, stringOrNone } from "./util"
import { GenericVisitor } from "./options"

export class PeerGeneratorVisitor implements GenericVisitor<stringOrNone[]> {
    private typesToGenerate: string[] = []

    constructor(private sourceFile: ts.SourceFile, private typeChecker: ts.TypeChecker,
        private interfacesToGenerate: Set<string>) {
    }

    private output: stringOrNone[] = []

    visitWholeFile(): stringOrNone[] {
        ts.forEachChild(this.sourceFile, (node) => this.visit(node))
        return this.output
    }

    needsPeer(type: ts.Identifier | undefined): boolean {
        let name = type?.text
        if (!name) return false
        if (this.interfacesToGenerate.size > 0) {
            return this.interfacesToGenerate.has(name)
        }
        if (name?.endsWith("Attribute")) return true
        if (name === "CommonMethod") return true
        return false
    }

    visit(node: ts.Node) {
        if (ts.isClassDeclaration(node) && this.needsPeer(node.name)) {
            this.processClass(node)
        } else if (ts.isInterfaceDeclaration(node) && this.needsPeer(node.name)) {
            this.processInterface(node)
        } else if (ts.isModuleDeclaration(node)) {
            // This is a namespace, visit its children
            ts.forEachChild(node, (node) => this.visit(node));
        }
    }

    processClass(node: ts.ClassDeclaration) {
        if (!this.needsPeer(node.name)) return
        this.prologue(node)
        node.members.forEach(child => {
            if (ts.isConstructorDeclaration(child)) {
                this.processConstructor(child)
            } else if (ts.isMethodDeclaration(child)) {
                this.processMethod(child)
            } else if (ts.isPropertyDeclaration(child)) {
                this.processProperty(child)
            }
        })
        this.processApplyMethod(node)
        this.popIndent()
        this.print('}')
        this.prepareInterfaceAttributes(node)
        this.pushIndent()
        node.members.forEach(child => {
            if (ts.isMethodDeclaration(child)) {
                this.processOptionAttribute(child)
            }
        })
        this.epilogue()
        this.generateAttributesValuesInterfaces()
    }

    processInterface(node: ts.InterfaceDeclaration) {
        if (!this.needsPeer(node.name)) return
        this.prologue(node)
        node.members.forEach(child => {
            if (ts.isConstructorDeclaration(child)) {
                this.processConstructor(child)
            } else if (ts.isMethodSignature(child)) {
                this.processMethod(child)
            } else if (ts.isPropertyDeclaration(child)) {
                this.processProperty(child)
            }
        })
        this.processApplyMethod(node)
        this.popIndent()
        this.print('}')
        this.prepareInterfaceAttributes(node)
        this.pushIndent()
        node.members.forEach(child => {
            if (ts.isMethodSignature(child)) {
                this.processOptionAttribute(child)
            }
        })
        this.epilogue()
        this.generateAttributesValuesInterfaces()
    }

    processConstructor(ctor: ts.ConstructorDeclaration | ts.ConstructSignatureDeclaration) {
    }

    generateParams(params: ts.NodeArray<ts.ParameterDeclaration>): stringOrNone {
        return params?.map(param => `${nameOrUndefined(param.name)}${param.questionToken ? "?" : ""}: ${param.type?.getText(this.sourceFile)}`).join(", ")
    }

    generateValues(params: ts.NodeArray<ts.ParameterDeclaration>): stringOrNone {
        return params?.map(param => `${nameOrUndefined(param.name)}`).join(", ")
    }

    print(value: stringOrNone) {
        if (value) this.output.push(this.indented(value))
    }

    processMethod(method: ts.MethodDeclaration | ts.MethodSignature) {
        let isComponent = false
        let methodName = method.name.getText(this.sourceFile)
        console.log("processsing", methodName)
        this.pushIndent()
        this.print(`${methodName}${isComponent ? "Attribute" : ""}(${this.generateParams(method.parameters)}) {`)
        if (isComponent) {
            this.print(`if (this.checkPriority("${methodName}")) {`)
            this.pushIndent()
            this.print(`this.peer?.${methodName}Attribute(${this.generateValues(method.parameters)})`)
            this.popIndent()
            this.print(`}`)
        } else {
            let isStub = false
            if (isStub) {
                this.print(`throw new Error("${methodName}Attribute() is not implemented")`)
            } else {
                if (!methodName.startsWith("on"))
                    this.generateNativeCall(method)
            }
        }
        this.print(`}`)
        this.popIndent()
    }

    generateNativeCall(method: ts.MethodDeclaration | ts.MethodSignature) {
        let argConvertors = method.parameters
            .map((param) => this.argConvertor(param))
        let name = `_${asString(method.name)}Impl`
        let scopes = new Array<ArgConvertor>()
        argConvertors
                .filter(it => it.isScoped)
                .map(it => scopes.push(it))
        scopes.forEach(it => {
            this.pushIndent()
            this.print(it.scopeStart!(asString(it.param.name)))
        })
        this.pushIndent()
        argConvertors.forEach(it => {
            if (it.isArray) {
                this.print(`let ${asString(it.param.name)}Array = new Uint8Array(128)`)
                this.print(`let ${asString(it.param.name)}Type = 0`)
                this.print(`let ${asString(it.param.name)}Index = 0`)
                it.convertorToArray(asString(it.param.name))
            }
        })
        this.print(`nativeModule().${name}(`)
        this.pushIndent()
        argConvertors.forEach(it => {
            if (it.isArray)
                this.print(`${asString(it.param.name)}Array, ${asString(it.param.name)}Index`)
            else
                it.convertor(asString(it.param.name))
        })
        this.popIndent()
        this.output.push(this.indented(`)`))
        scopes.reverse().forEach(it => {
            this.popIndent()
            this.print(it.scopeEnd!(asString(it.param.name)))
        })
        this.popIndent()
    }

    private indent = 0
    indented(input: string): string {
        let space = ""
        for (let i = 0; i < this.indent; i++) space += "  "
        return `${space}${input}`
    }
    pushIndent() {
        this.indent++
    }
    popIndent() {
        this.indent--
    }

    typeConverter(param: ts.ParameterDeclaration, type: ts.TypeNode): ArgConvertor {
        if (type.kind == ts.SyntaxKind.UndefinedKeyword || type.kind == ts.SyntaxKind.VoidKeyword || type.kind == ts.SyntaxKind.ObjectKeyword) {
            return {
                param: param,
                expectedType: 3,
                isScoped: false,
                isArray: false,
                nativeType: "KPointer",
                convertor: (param: string) => {
                    this.print("undefined")
                },
                convertorToArray: (param: string) => {
                    this.print(`${param}Index += serializeUndefined(${param}Array, ${param}Index)`)
                }
            }
        }
        if (type.kind == ts.SyntaxKind.NullKeyword) {
            throw new Error("Unsupported null")
        }
        if (type.kind == ts.SyntaxKind.NumberKeyword) {
            return {
                param: param,
                expectedType: 1,
                isScoped: false,
                isArray: false,
                nativeType: "KInt", // or KFloat, need to use IDL as input
                convertor: (param: string) => {
                    this.print(param)
                },
                convertorToArray: (param: string) => {
                    this.print(`${param}Index += serializeNumber(${param}Array, ${param}Index, ${param})`)
                }
            }
        }
        if (type.kind == ts.SyntaxKind.StringKeyword) {
            return {
                param: param,
                expectedType: 2,
                isScoped: true,
                isArray: false,
                scopeStart: (param) => `withString(${param}, (${param}Ptr: KStringPtr) => {`,
                scopeEnd: (param) => '})',
                nativeType: "KStringPtr",
                convertor: (param) => {
                    this.print(`${param}Ptr`)
                },
                convertorToArray: (param: string) => {
                    this.print(`${param}Index += serializeString(${param}Array, ${param}Index, ${param})`)
                }
            }
        }
        if (type.kind == ts.SyntaxKind.BooleanKeyword) {
            return {
                param: param,
                expectedType: 3,
                isArray: false,
                isScoped: false,
                nativeType: "KInt",
                convertor: (param) => this.print(`+${param}`),
                convertorToArray: (param) => {
                    this.print(`${param}Index += serializeInt32(${param}Array, ${param}Index, +${param})`)
                }
            }
        }
        if (ts.isTypeReferenceNode(type)) {
            const declaration = getDeclarationsByNode(this.typeChecker, type.typeName)[0]
            console.log(getDeclarationsByNode(this.typeChecker, type))
            if (!declaration) {
                throw new Error(`Declaration not found: ${asString(type.typeName)}`)
            }
            if (ts.isEnumDeclaration(declaration)) {
                return {
                    param: param,
                    expectedType: 1,
                    isArray: false,
                    isScoped: false,
                    nativeType: "KInt",
                    convertor: (param) => this.print(`${param} as KInt`),
                    convertorToArray: (param) => {
                        this.print(`${param}Index += serializeInt32(${param}Array, ${param}Index, ${param} as KInt)`)
                    }
                }
            }
            if (ts.isTypeAliasDeclaration(declaration)) {
                return this.typeConverter(param, declaration.type)
            }
            if (ts.isInterfaceDeclaration(declaration)) {
                // TODO: fix
                return {
                    param: param,
                    expectedType: 2,
                    isArray: false,
                    isScoped: false,
                    nativeType: "KNativePointer",
                    convertor: (param) => this.print(`${param}.peer`),
                    convertorToArray: (param) => {}
                }
            }
            if (ts.isClassDeclaration(declaration)) {
                // TODO: fix
                return {
                    param: param,
                    expectedType: 2,
                    isArray: false,
                    isScoped: false,
                    nativeType: "KNativePointer",
                    convertor: (param) => this.print(`${param}.peer`),
                    convertorToArray: (param) => this.print(`${param}.peer`)
                }
            }
        }
        if (ts.isUnionTypeNode(type)) {
            let memberConvertors = type.types.map(member => this.typeConverter(param, member))
            // Unique by serialization form.
            memberConvertors = [...new Map(memberConvertors.map(item =>
                [item.expectedType, item])).values()]
            return {
                    param: param,
                    expectedType: -1,
                    isScoped: false,
                    isArray: true,
                    nativeType: "KUInt8ArrayPtr",
                    convertor: (param: string) => { throw new Error("Do not use") },
                    convertorToArray: (param: string) => {
                        this.print(`${param}Type = checkType(value)`)
                        // Save actual type being passed.
                        this.print(`${param}Index += serializeInt32(${param}Array, ${param}Index, ${param}Type)`)
                        memberConvertors.forEach(it => {
                            this.print(`if (${it.expectedType} == ${param}Type) {`)
                            this.pushIndent()
                            it.convertorToArray(param)
                            this.popIndent()
                            this.print(`}`)
                        })
                    }
            }
        }
        if (ts.isTypeLiteralNode(type)) {
            // Actually literal types and union types are serialized in quite similar manner.
            let memberConvertors = type
                .members
                .filter(ts.isPropertySignature)
                .map(member => this.typeConverter(param, member.type!))
            return {
                param: param,
                expectedType: 3,
                isScoped: false,
                isArray: true,
                nativeType: "KUInt8ArrayPtr",
                convertor: (param: string) => { throw new Error("Do not use") },
                convertorToArray: (param: string) => {
                    memberConvertors.forEach(it => {
                        it.convertorToArray(param)
                    })
                }
            }
        }
        if (ts.isTupleTypeNode(type)) {
            //
        }
        if (ts.isFunctionTypeNode(type)) {
            //
        }
        if (ts.isTypeLiteralNode(type)) {
            //
        }
        if (ts.isParenthesizedTypeNode(type)) {
            return {
                param: param,
                expectedType: 4,
                isScoped: false,
                isArray: false,
                nativeType: "None",
                convertor: (param: string) => {
                    this.print(param)
                },
                convertorToArray: (param: string) => {
                    this.print(`throw new Error()`)
                }
            }
        }
        if (ts.isImportTypeNode(type)) {
            let typeName = asString(type.qualifier)
            return {
                param: param,
                expectedType: 4, // Assume imported are objects, not really always the case..
                isScoped: false,
                isArray: false,
                nativeType: "None",
                convertor: (param: string) => {
                    this.print(param)
                },
                convertorToArray: (param: string) => {
                    this.print(`${param}Index += this.serialize${typeName}(${param}Array, ${param}Index, ${param})`)
                }
            }
        }
        // console.log(type)
        throw new Error(`Cannot convert: ${asString(type)} ${type.getText(this.sourceFile)}`)
    }

    argConvertor(param: ts.ParameterDeclaration): ArgConvertor {
        if (!param.type) throw new Error("Type is needed")
        return this.typeConverter(param, param.type)
    }

    processProperty(property: ts.PropertyDeclaration | ts.PropertySignature) {
        throw new Error(`unexpected property ${property.name.getText(this.sourceFile)}`)
    }

    prologue(node: ts.ClassDeclaration | ts.InterfaceDeclaration) {
        let clazzName = nameOrUndefined(node.name)!
        let component = clazzName.replace("Attribute", "")
        let isComponent = false
        if (component == "CommonMethod") {
            component = "Component"
            isComponent = true
        }
        [
            `import { KStringPtr, withString } from "@koalaui/interop"`,
            isComponent ? undefined : `import { Ark${component}Component } from "./Ark${component}"`,
            isComponent ? undefined : `import { ArkComponentPeer } from "./ArkComponentPeer"`,
            `import { nativeModule } from "@koalaui/arkoala"`,
            `function checkType(value: any): number {`,
            `let type = typeof value`,
            `if (type == "number") return 1`,
            `if (type == "string") return 2`,
            `if (type == "undefined") return 3`,
            `if (type == "object") return 4`,
            `throw new Error("bug: " + value)`,
            `}`,
            `export class Ark${component}Peer extends ${isComponent ? "PeerNode" : "ArkComponentPeer"} {`
        ].map(it => this.print(it))
        this.pushIndent()
        this.print(`attributes?: Ark${component}Attributes`)
        this.popIndent()
    }

    processApplyMethod(node: ts.ClassDeclaration | ts.InterfaceDeclaration) {
        let clazzName = nameOrUndefined(node.name)!
        let isCommon = clazzName == "CommonMethodAttribute"
        let component = clazzName.replace("Attribute", "")
        if (component == "CommonMethod") {
            component = "Component"
        }
        const interfaceName = `Ark${component}Attributes`
        this.pushIndent()
        if (isCommon) {

        }
        this.print(`applyAttributes${isCommon ? `<T extends ${interfaceName}>` : ``}(attributes: ${isCommon ? `T` : interfaceName}): void {`)
        this.pushIndent()
        this.print(isCommon ? undefined : `super.applyAttributes(attributes)`)
        this.popIndent()
        this.print(`}`)
    }

    prepareInterfaceAttributes(node: ts.ClassDeclaration | ts.InterfaceDeclaration) {
        let clazzName = nameOrUndefined(node.name)!
        let component = clazzName.replace("Attribute", "")
        if (component == "CommonMethod") {
            component = "Component"
        }
        this.print(`export interface Ark${component}Attributes ${component == "Component" ? "" : "extends ArkComponentAttributes"} {`)
    }

    processOptionAttribute(method: ts.MethodDeclaration | ts.MethodSignature) {
        let methodName = method.name.getText(this.sourceFile)
        let parameters = this.generateParams(method.parameters)
        let isUnionObject = false
        if (parameters) {
            if (parameters.includes('=>')) {
                parameters = parameters.substring(parameters.indexOf(':') + 1, parameters.length)
            } else if (parameters.includes('{')) {
                isUnionObject = true
                const name = methodName.charAt(0).toUpperCase() + methodName.slice(1) + "ValuesType"
                this.typesToGenerate.push(`export interface ${name} { ${parameters.substring(parameters.indexOf(':') + 1, parameters.length).replace(/{|}/g,'')} }`)
                parameters = name
            } else if (parameters.split(':').length > 2) {
                const name = methodName.charAt(0).toUpperCase() + methodName.slice(1) + "ValuesType"
                this.typesToGenerate.push(`export interface ${name} { ${parameters} }`)
                parameters = name
            } else {
                parameters = parameters.substring(parameters.indexOf(':') + 1, parameters.length)
            }
        }
        if (parameters) {
            this.print(`${methodName}?:${parameters},`)
        }
    }

    generateAttributesValuesInterfaces() {
        this.typesToGenerate.forEach((value: string) => {
            this.print(value)
        })
    }

    epilogue() {
        this.popIndent()
        this.print(`}`)
    }
}

interface ArgConvertor {
    isScoped: boolean
    isArray: boolean
    expectedType: number
    scopeStart?: (param: string) => string
    scopeEnd?: (param: string) => string
    nativeType: string
    convertor: (param: string) => void
    convertorToArray: (param: string) => void
    param: ts.ParameterDeclaration
}
