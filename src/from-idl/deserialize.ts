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

import * as webidl2 from "webidl2"
import {
    isAttribute, isCallback, isClass, isConstructor, isDictionary, isEnum, isInterface, isOperation, isOptional,
    isPromiseTypeDescription,
    isRecordTypeDescription,
    isSequenceTypeDescription,
    isSingleTypeDescription, isTypedef, isUnionTypeDescription
} from "./webidl2-utils"
import { toString } from "./toString"
import {
    createContainerType, createNumberType, createUnionType, IDLCallback, IDLConstructor, IDLEntry, IDLEnum, IDLEnumMember, IDLInterface, IDLKind,
    IDLMethod, IDLParameter, IDLPrimitiveType, IDLProperty, IDLType, IDLTypedef
} from "../idl"
import { isDefined } from "../util"

export function toIDLNode(node: webidl2.IDLRootType): IDLEntry {
    if (isEnum(node)) {
        return toIDLEnum(node)
    }
    if (isClass(node)) {
        return toIDLInterface(node)
    }
    if (isInterface(node)) {
        return toIDLInterface(node)
    }
    if (isCallback(node)) {
        return toIDLCallback(node)
    }
    if (isTypedef(node)) {
        return toIDLTypedef(node)
    }
    if (isDictionary(node)) {
        return toIDLDictionary(node)
    }
    throw new Error(`unexpected node type: ${toString(node)}`)
}

function toIDLInterface(node: webidl2.InterfaceType): IDLInterface {
    return {
        kind: isClass(node) ? IDLKind.Class : IDLKind.Interface,
        name: node.name,
        inheritance: [node.inheritance]
            .filter(isDefined)
            .map(toIDLType),
        constructors: node.members
            .filter(isConstructor)
            .map(toIDLConstructor),
        properties: node.members
            .filter(isAttribute)
            .map(toIDLProperty),
        methods: node.members
            .filter(isOperation)
            .map(toIDLMethod),
        extendedAttributes: toExtendedAttributes(node.extAttrs),
        callables: []
    }
}

function toIDLType(type: webidl2.IDLTypeDescription | string): IDLType {
    if (typeof type === "string") {
        return {
            name: type,
            kind: IDLKind.ReferenceType
        }
    }
    if (isUnionTypeDescription(type)) {
        const unionTypes = type.idlType
        return createUnionType(unionTypes
            .map(toIDLType)
            .filter(isDefined))
    }
    if (isSingleTypeDescription(type)) {
        return {
            name: type.idlType,
            kind: IDLKind.ReferenceType
        }
    }
    if (isSequenceTypeDescription(type) || isPromiseTypeDescription(type) || isRecordTypeDescription(type)) {
        return createContainerType(
            type.generic,
            toIDLType(type.idlType[0])
        )
    }

    throw new Error(`unexpected type: ${toString(type)}`)
}


function toIDLMethod(node: webidl2.OperationMemberType): IDLMethod {
    if (!node.idlType) {
        throw new Error(`method with no type ${toString(node)}`)
    }
    return {
        name: node.name ?? "",
        isStatic: node.special === "static",
        parameters: node.arguments.map(toIDLParameter),
        returnType: toIDLType(node.idlType),
        extendedAttributes: toExtendedAttributes(node.extAttrs),
        kind: IDLKind.Method
    }
}

function toIDLConstructor(node: webidl2.ConstructorMemberType): IDLConstructor {
    return {
        parameters: node.arguments.map(toIDLParameter),
        kind: IDLKind.Constructor
    }
}

function toIDLParameter(node: webidl2.Argument): IDLParameter {
    return {
        kind: IDLKind.Parameter,
        isVariadic: node.variadic,
        isOptional: node.optional,
        type: toIDLType(node.idlType),
        name: node.name
    }
}

function toIDLCallback(node: webidl2.CallbackType): IDLCallback {
    return {
        kind: IDLKind.Callback,
        name: node.name,
        parameters: node.arguments.map(toIDLParameter),
        returnType: toIDLType(node.idlType)
    }
}

function toIDLTypedef(node: webidl2.TypedefType): IDLTypedef {
    return {
        kind: IDLKind.Typedef,
        type: toIDLType(node.idlType),
        name: node.name
    }
}

function toIDLDictionary(node: webidl2.DictionaryType): IDLEnum {
    return {
        kind: IDLKind.Enum,
        name: node.name,
        elements: node.members.map(toIDLEnumMember)
    }
}

function toIDLProperty(node: webidl2.AttributeMemberType): IDLProperty {
    return {
        kind: IDLKind.Property,
        name: node.name,
        type: toIDLType(node.idlType),
        isReadonly: node.readonly,
        isStatic: node.special === "static",
        isOptional: isOptional(node),
        extendedAttributes: toExtendedAttributes(node.extAttrs)
    }
}

function toIDLEnumMember(node: webidl2.DictionaryMemberType): IDLEnumMember {

    let initializer = undefined
    if (node.default?.type == "string") {
        initializer = node.default?.value
    } else if (node.default?.type == "number") {
        initializer = +(node.default?.value)
    } else if (node.default == null) {
        initializer = undefined
    } else {
        throw new Error(`Unrepresentable enum initializer: ${node.default}`)
    }
    return {
        kind: IDLKind.EnumMember,
        name: node.name,
        type: toIDLType(node.idlType) as IDLPrimitiveType,
        initializer: initializer
    }
}

function toExtendedAttributes(extAttrs: webidl2.ExtendedAttribute[]): string[]|undefined {
    // TODO: be smarter about RHS.
    return extAttrs.map(it => `${it.name}${it.rhs?.value ? it.rhs?.value : ""}`)
}

function toIDLEnum(node: webidl2.EnumType): IDLEnum {
    return {
        kind: IDLKind.Enum,
        name: node.name,
        elements: node.values.map((it: { value: string }) => {
            return {
                kind: IDLKind.EnumMember,
                name: it.value,
                type: createNumberType(),
                initializer: undefined
            }
        })
    }
}
