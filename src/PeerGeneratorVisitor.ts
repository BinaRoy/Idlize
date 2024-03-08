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

enum RuntimeType {
    UNEXPECTED = -1,
    NUMBER,
    STRING,
    OBJECT,
    BOOLEAN,
    UNDEFINED
}

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
        if (false) {
            this.prepareInterfaceAttributes(node)
            this.pushIndent()
            node.members.forEach(child => {
                if (ts.isMethodSignature(child)) {
                    this.processOptionAttribute(child)
                }
            })
        }
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
        this.pushIndent()
        let argConvertors = method.parameters
            .map((param) => this.argConvertor(param))
        let name = `_${asString(method.name)}Impl`
        let scopes = new Array<ArgConvertor>()
        argConvertors
            .filter(it => it.isScoped)
            .map(it => scopes.push(it))
        scopes.forEach(it => {
            this.pushIndent()
            this.print(it.scopeStart?.(it.param))
        })
        argConvertors.forEach(it => {
            if (it.useArray) {
                this.print(`let ${it.param}Array = new Uint8Array(128)`)
                this.print(`let ${it.param}Type = 0`)
                this.print(`let ${it.param}Index = 0`)
                it.convertorToArray(it.param)
            }
        })
        this.print(`nativeModule().${name}(`)
        this.pushIndent()
        argConvertors.forEach((it, index) => {
            let maybeComma = index == argConvertors.length - 1 ? "" : ","
            if (it.useArray)
                this.print(`${it.param}Array, ${it.param}Index`)
            else
                it.convertor(it.param)
            this.print(maybeComma)

        })
        this.popIndent()
        this.output.push(this.indented(`)`))
        scopes.reverse().forEach(it => {
            this.popIndent()
            this.print(it.scopeEnd!(it.param))
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

    emptyConvertor(param: string): ArgConvertor {
        return {
            param: "<unused>",
            runtimeTypes: [],
            isScoped: false,
            useArray: false,
            convertor: () => { },
            convertorToArray: (param: string) => { }
        }
    }

    stringConvertor(param: string): ArgConvertor {
        return {
            param: param,
            runtimeTypes: [RuntimeType.STRING],
            isScoped: true,
            useArray: false,
            scopeStart: (param) => `withString(${param}, (${param}Ptr: KStringPtr) => {`,
            scopeEnd: () => '})',
            convertor: (param) => {
                this.print(`${param}Ptr`)
            },
            convertorToArray: (param: string) => {
                this.print(`${param}Index += serializeString(${param}Array, ${param}Index, ${param})`)
            }
        }
    }

    anyConvertor(param: string): ArgConvertor {
        return {
            param: param,
            runtimeTypes: [],
            isScoped: false,
            useArray: true,
            convertor: (param) => { throw new Error("Not for any")},
            convertorToArray: (param: string) => {
                this.print(`${param}Index += serializeAny(${param}Array, ${param}Index, ${param})`)
            }
        }
    }

    arrayConvertor(param: string, elementType: ts.TypeNode): ArgConvertor {
        return {
            param: param,
            runtimeTypes: [RuntimeType.OBJECT],
            isScoped: false,
            useArray: true,
            convertor: (param: string) => { throw new Error("Do not use") },
            convertorToArray: (param: string) => {
                // Array length.
                this.print(`${param}Index += this.serializeInt32(${param}Array, ${param}Index, ${param}.length)`)
                this.print(`for (let i = 0; i < ${param}.length; i++) {`)
                this.pushIndent()
                this.print(`let element = ${param}[i]`)
                let convertor = this.typeConvertor("element", elementType)
                convertor.convertorToArray("element")
                this.popIndent()
                this.print(`}`)
            }
        }
    }

    typeConvertor(param: string, type: ts.TypeNode): ArgConvertor {
        if (type.kind == ts.SyntaxKind.UndefinedKeyword || type.kind == ts.SyntaxKind.VoidKeyword || type.kind == ts.SyntaxKind.ObjectKeyword) {
            return {
                param: param,
                runtimeTypes: [RuntimeType.OBJECT, RuntimeType.UNDEFINED],
                isScoped: false,
                useArray: false,
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
                runtimeTypes: [RuntimeType.NUMBER],
                isScoped: false,
                useArray: false,
                convertor: (param: string) => {
                    this.print(param)
                },
                convertorToArray: (param: string) => {
                    this.print(`${param}Index += serializeNumber(${param}Array, ${param}Index, ${param})`)
                }
            }
        }
        if (type.kind == ts.SyntaxKind.StringKeyword) {
            return this.stringConvertor(param)
        }
        if (type.kind == ts.SyntaxKind.BooleanKeyword) {
            return {
                param: param,
                runtimeTypes: [RuntimeType.BOOLEAN],
                useArray: false,
                isScoped: false,
                convertor: (param) => this.print(`+${param}`),
                convertorToArray: (param) => {
                    this.print(`${param}Index += serializeBoolean(${param}Array, ${param}Index, ${param})`)
                }
            }
        }
        if (ts.isTypeReferenceNode(type)) {
            const declaration = getDeclarationsByNode(this.typeChecker, type.typeName)[0]
            if (!declaration) {
                throw new Error(`Declaration not found: ${asString(type.typeName)}`)
            }
            if (ts.isEnumDeclaration(declaration)) {
                return {
                    param: param,
                    runtimeTypes: [RuntimeType.NUMBER], // Enums are integers in runtime.
                    useArray: false,
                    isScoped: false,
                    convertor: (param) => this.print(`enumToInt32(${param})`),
                    convertorToArray: (param) => {
                        this.print(`${param}Index += serializeInt32(${param}Array, ${param}Index, ${param} as KInt)`)
                    }
                }
            }
            if (ts.isTypeAliasDeclaration(declaration)) {
                return this.typeConvertor(param, declaration.type)
            }
            if (ts.isInterfaceDeclaration(declaration)) {
                let ifaceName = ts.idText(declaration.name)
                if (ifaceName == "Array") {
                    if (ts.isTypeReferenceNode(type)) 
                        return this.arrayConvertor(param, type.typeArguments![0]) 
                    else
                        return this.emptyConvertor(param)
                }
                return {
                    param: param,
                    runtimeTypes: [RuntimeType.OBJECT],
                    useArray: true,
                    isScoped: false,
                    convertor: (param) => this.print(`${param}.peer`),
                    convertorToArray: (param) => {
                        this.print(`${param}Index += serializeIface${ifaceName}(${param}Array, ${param}Index, ${param})`)
                    }
                }
            }
            if (ts.isClassDeclaration(declaration)) {
                // TODO: fix
                return {
                    param: param,
                    runtimeTypes: [RuntimeType.OBJECT],
                    useArray: true,
                    isScoped: false,
                    convertor: (param) => this.print(`${param}.peer`),
                    convertorToArray: (param) => {
                        this.print(`${param}Index += serializeClass${asString(declaration.name)}(${param}Array, ${param}Index, ${param})`)
                    }
                }
            }
        }
        if (ts.isUnionTypeNode(type)) {
            let memberConvertors = type.types.map(member => this.typeConvertor(param, member))
            // Unique by serialization form.
            memberConvertors = [...new Map(memberConvertors.map(item => [item.runtimeTypes, item])).values()]
            return {
                param: param,
                runtimeTypes: [RuntimeType.UNEXPECTED],
                isScoped: false,
                useArray: true,
                convertor: (param: string) => { throw new Error("Do not use") },
                convertorToArray: (paramName: string) => {
                    this.print(`${paramName}Type = runtimeType(${paramName})`)
                    // Save actual type being passed.
                    this.print(`${paramName}Index += serializeInt32(${paramName}Array, ${paramName}Index, ${paramName}Type)`)
                    this.checkUniques(param, memberConvertors)
                    memberConvertors.forEach((it, index) => {
                        let maybeElse = (index > 0) ? "else " : ""
                        this.print(`${maybeElse}if (${it.runtimeTypes.map(it => "(" + it + " == " + paramName + "Type)").join(" || ")}) {`)
                        this.pushIndent()
                        it.convertorToArray(paramName)
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
                .map(member => {
                    let memberName = ts.idText(member.name as ts.Identifier)
                    let name = `${param}_${memberName}`
                    this.print(`let ${name} = ${param}.${memberName}`)
                    return this.typeConvertor(name, member.type!)
                })
            return {
                param: param,
                runtimeTypes: [RuntimeType.OBJECT, RuntimeType.UNDEFINED],
                isScoped: false,
                useArray: true,
                convertor: (param: string) => { throw new Error("Do not use") },
                convertorToArray: (param: string) => {
                    memberConvertors.forEach(it => { it.convertorToArray(it.param) })
                }
            }
        }
        if (ts.isArrayTypeNode(type)) {
            return this.arrayConvertor(param, type.elementType)
        }
        if (ts.isLiteralTypeNode(type)) {
            if (type.literal.kind == ts.SyntaxKind.NullKeyword) {
                return this.emptyConvertor(param)
            }
            if (type.literal.kind == ts.SyntaxKind.StringLiteral) {
                return this.stringConvertor(param)
            }
            throw new Error(`Unsupported literal type: ${type.literal.kind}` + type.getText(this.sourceFile))
        }
        if (ts.isTupleTypeNode(type)) {
            let memberConvertors = type
                .elements
                .filter(ts.isPropertySignature)
                .map(element => this.typeConvertor(param, element))
            return {
                param: param,
                runtimeTypes: [RuntimeType.OBJECT, RuntimeType.UNDEFINED],
                isScoped: false,
                useArray: true,
                convertor: (param: string) => { throw new Error("Do not use") },
                convertorToArray: (param: string) => {
                    memberConvertors.forEach(it => {
                        it.convertorToArray(param)
                    })
                }
            }
        }
        if (ts.isFunctionTypeNode(type)) {
            console.log("Functions are ignored")
            return this.emptyConvertor(param)
        }
        if (ts.isParenthesizedTypeNode(type)) {
            return {
                param: param,
                runtimeTypes: [RuntimeType.OBJECT, RuntimeType.UNDEFINED],
                isScoped: false,
                useArray: false,
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
                runtimeTypes: [RuntimeType.OBJECT], // Assume imported are objects, not really always the case..
                isScoped: false,
                useArray: false,
                convertor: (param: string) => {
                    this.print(param)
                },
                convertorToArray: (param: string) => {
                    this.print(`${param}Index += this.serialize${typeName}(${param}Array, ${param}Index, ${param})`)
                }
            }
        }
        if (type.kind == ts.SyntaxKind.AnyKeyword) {
            console.log("WARNING: any type convertor")
            return this.anyConvertor(param)
        }
        console.log(type)
        throw new Error(`Cannot convert: ${asString(type)} ${type.getText(this.sourceFile)}`)
    }

    checkUniques(param: string, convertors: ArgConvertor[]) {
        for (let i = 0; i < convertors.length; i++) {
            for (let j = i + 1; j < convertors.length; j++) {
                let first = convertors[i].runtimeTypes
                let second = convertors[j].runtimeTypes
                first.forEach(value => {
                    if (second.includes(value)) {
                        console.log(`WARNING: Runtime type conflict in ${param}: ${RuntimeType[value]}`)
                    }
                })
            }
        }
    }

    argConvertor(param: ts.ParameterDeclaration): ArgConvertor {
        if (!param.type) throw new Error("Type is needed")
        return this.typeConvertor(asString(param.name), param.type)
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
            `function runtimeType(value: any): number {`,
            `  let type = typeof value`,
            `  if (type == "number") return ${RuntimeType.NUMBER}`,
            `  if (type == "string") return ${RuntimeType.STRING}`,
            `  if (type == "undefined") return ${RuntimeType.UNDEFINED}`,
            `  if (type == "object") return ${RuntimeType.OBJECT}`,
            `  if (type == "boolean") return ${RuntimeType.BOOLEAN}`,
            `  throw new Error("bug: " + value)`,
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
        if (parameters) {
            if (parameters.includes('=>')) {
                parameters = parameters.substring(parameters.indexOf(':') + 1, parameters.length)
            } else if (parameters.includes('{')) {
                const name = methodName.charAt(0).toUpperCase() + methodName.slice(1) + "ValuesType"
                this.typesToGenerate.push(`export interface ${name} { ${parameters.substring(parameters.indexOf(':') + 1, parameters.length).replace(/{|}/g, '')} }`)
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
    useArray: boolean
    runtimeTypes: RuntimeType[]
    scopeStart?: (param: string) => string
    scopeEnd?: (param: string) => string
    convertor: (param: string) => void
    convertorToArray: (param: string) => void
    param: string
}
