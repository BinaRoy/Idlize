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

import {
    IDLCallback,
    IDLConstructor,
    IDLContainerType, IDLEntry, IDLEnum, IDLFunction, IDLInterface, IDLKind, IDLProperty, IDLType, IDLTypedef,
    IDLVariable, hasExtAttribute, isTypeParameterType, printType
} from "./idl"
import { capitalize, stringOrNone, toSet } from "./util";

/**
 * TODOs
 *   * differentiate int vs float
 *   * generate scoped types
 */

const typeMapper = new Map<string, string>(
    [
        ["undefined", "void"],
        ["any", "void*"],
        ["number", "ArkUI_Float32"],
        ["string", "ArkUI_CharPtr"],
        ["boolean", "ArkUI_Bool"],
        ["LabelStyle", "ArkUILabelStyle"],
        ["ButtonType", "ArkUIButtonType"],
        ["ButtonStyleMode", "ArkUIButtonStyleMode"]
    ]
)

function mapInterfaceName(type: string, isReference: boolean = false): string {
    switch (type) {
        case "any": return "void*";
        case "undefined": return "void";
    }
    return `ArkUI${type}${isReference ? "*" : ""}`
}

let currentInterface: IDLInterface|undefined = undefined

function mapType(type: IDLType|undefined): string {
    if (!type) return "/* undefined type */ void"
    const rawType = type.name
    if (typeMapper.get(rawType)) {
        return typeMapper.get(rawType)!
    }
    if (isTypeParameterType(type) && currentInterface) {
        return mapInterfaceName(currentInterface.name!, true)
    }
    switch (type.kind) {
        case IDLKind.UnionType: return `/* unmapped union type ${printType(type)} */ void*`
        case IDLKind.ContainerType: return mapType((type as IDLContainerType).elementType) + "*"
        case IDLKind.ReferenceType: return mapInterfaceName(rawType, true)
    }
    return rawType
}

function printProperty(iface: IDLInterface, idl: IDLProperty): stringOrNone[] {
    let isCommon = hasExtAttribute(idl, "CommonMethod")
    let arg = isCommon ? "ArkUINodeHandle node" : `${mapInterfaceName(iface.name, true)} instance`
    return [
        `\t${mapType(idl.type)} (*get${capitalize(idl.name!)})(${arg});`,
        idl.isReadonly ? undefined : `\tvoid (*set${capitalize(idl.name!)})(${arg}, ${mapType(idl.type)} value);`,
    ]
}

function printParameters(parameters: IDLVariable[] | undefined): string {
    if (!parameters) return ""
    return parameters?.map(param => `${mapType(param.type)} ${param.name}`)?.join(", ")
}

function printConstructor(iface: IDLInterface, idl: IDLConstructor, index: number): string {
    return `\t${mapInterfaceName(iface.name)}* (*construct${index == 0 ? "" : index.toString()})(${printParameters(idl.parameters)});`
}

function printDestructor(idl: IDLInterface): string {
    let isCommon = hasExtAttribute(idl, "CommonMethod")
    let arg = isCommon ? "ArkUINodeHandle node" : `${mapInterfaceName(idl.name, true)} instance`
    return `\tvoid (*destruct)(${arg});`
}

function printFunction(iface: IDLInterface, idl: IDLFunction): string {
    let isCommon = hasExtAttribute(idl, "CommonMethod")
    let maybeComma = idl.parameters.length > 0 ? ", " : ""
    let arg = isCommon ? "ArkUINodeHandle node" : `${mapInterfaceName(iface.name, true)} instance`
    return `\t${mapType(idl.returnType)} (*${idl.name})(${arg}${maybeComma}${printParameters(idl.parameters)});`
}

function printCallable(idl: IDLFunction, index: number): string {
    return `\t${mapType(idl.returnType)} (*invoke${index == 0 ? "" : index.toString()})(${printParameters(idl.parameters)});`
}

function printCallback(idl: IDLCallback): stringOrNone {
    return undefined
}

function printInterface(idl: IDLInterface, bodyOnly: boolean): stringOrNone[] {
    currentInterface = idl
    let result = [
        bodyOnly ? undefined : structName(idl),
        bodyOnly ? undefined : "{",
        ... idl.constructors?.map((it, index) => printConstructor(idl, it, index)) ?? [],
        printDestructor(idl),
        ... idl.properties?.flatMap(it => printProperty(idl, it)) ?? [],
        ... idl.methods?.map(it => printFunction(idl, it)) ?? [],
        ... idl.callables?.map((it, index) => printCallable(it, index)) ?? [],
        bodyOnly ? undefined : "};"
    ]
    currentInterface = undefined
    return result
}

function structName(idl: IDLInterface): stringOrNone {
    let name = `struct ${mapInterfaceName(idl.name!)}`
    if (idl.inheritance.length > 0) {
        name += " : " + idl.inheritance.map(it => mapInterfaceName(it.name)).join(", ")
    }
    return name
}

function printEnum(idl: IDLEnum): stringOrNone[] {
    return [
        `enum ${mapInterfaceName(idl.name)} {`,
        ... idl.elements.map(it => `\t${it.name}${it.initializer ? " = " + it.initializer : "" },`),
        "};"
    ]
}

function printTypedef(idl: IDLTypedef): stringOrNone[] {
    return [
        `typedef  ${mapType(idl.type)} ${idl.name};`
    ]
}

export function printHeader(idls: IDLEntry[], interfacesToGenerate: Set<string>): stringOrNone[] {
    let result: stringOrNone[] = []
    idls.forEach((idl) => {
        if (idl.kind == IDLKind.Class || idl.kind == IDLKind.Interface || idl.kind == IDLKind.AnonymousInterface) {
            let iface = idl as IDLInterface
            if (interfacesToGenerate.size == 0 || interfacesToGenerate.has(iface.name))
                result.push(... printInterface(idl as IDLInterface, false))
        }
        else if (idl.kind == IDLKind.Enum) {
            if (interfacesToGenerate.size == 0)
                result.push(... printEnum(idl as IDLEnum))
        } else if (idl.kind == IDLKind.Typedef) {
            if (interfacesToGenerate.size == 0)
                result.push(... printTypedef(idl as IDLTypedef))
        } else if (idl.kind == IDLKind.Callback) {
            result.push(printCallback(idl as IDLCallback))
        } else
            result.push("unexpected kind: " + idl.kind)
    })
    return result
}

const prologue = `
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
#ifndef FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_ARKOALA_API_H
#define FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_ARKOALA_API_H

#ifdef __cplusplus
extern "C" {
#endif

#define ARKUI_FULL_API_VERSION 67

typedef int ArkUI_Bool;
typedef int ArkUI_Int32;
typedef unsigned int ArkUI_Uint32;
typedef long long ArkUI_Int64;
typedef float ArkUI_Float32;
typedef double ArkUI_Float64;
typedef const char* ArkUI_CharPtr;

`

const epilogue = `
#ifdef __cplusplus
};
#endif

#endif // FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_ARKOALA_API_H
`


export function wrapWithPrologueAndEpilogue(body: string): string {
    return prologue + body + epilogue
}

export function toHeaderString(allEntries: Array<IDLEntry[]>, interfacesToGenerate: string|undefined): string {
    const generatedHeader =
      prologue +
      allEntries
        .flatMap(it => printHeader(it, toSet(interfacesToGenerate)))
        .filter(element => (element?.length ?? 0) > 0)
        .join("\n") +
      epilogue
    return generatedHeader
}