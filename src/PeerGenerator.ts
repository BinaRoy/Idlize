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
import { IDLEntry, IDLInterface, IDLMethod, IDLParameter, IDLProperty } from "./idl"
import { stringOrNone } from "./util"

function shallGenerate(name: string|undefined): boolean {
    if (!name) return false
    if (name.endsWith("Attribute")) return true
    if (name == "CommonMethod") return true
    return false
}

function generateParams(params: IDLParameter[]|undefined): stringOrNone {
    return params?.map(param => `${param.name}: ${param.type?.name}`).join(", ")
}

function generateMethod(method: IDLMethod): stringOrNone[] {
    return [
        `    ${method.name}Attribute(${generateParams(method.parameters)}) {}`
    ]
}

function generateProperty(property: IDLProperty): stringOrNone[] {
    return [
        `${property.name}`
    ]
}

function generateAttributes(entry: IDLInterface): stringOrNone[] {
    return [
        ... entry.properties?.flatMap(property => generateProperty(property))!,
        ... entry.methods?.flatMap(method => generateMethod(method))!
    ]
}

function printPeer(entry: IDLEntry): stringOrNone[]  {
    if (!shallGenerate(entry.name)) return []
    let component = entry.name!.replace("Attribute", "")
    let isComponent = false
    if (component == "CommonMethod") {
        component = "Component"
        isComponent = true
    }
    let result = [
        `import { KStringPtr, withString } from "@koalaui/interop"`,
        isComponent ? undefined : `import { Ark${component}Component } from "./Ark${component}"`,
        isComponent ? undefined : `import { ArkComponentPeer } from "./ArkComponentPeer"`,
        `import { nativeModule } from "@koalaui/arkoala"`,
        `export class Ark${component}Peer extends ${isComponent ? "PeerNode" : "ArkComponentPeer"} {`,
        `    constructor(component: Ark${component}Component) {`,
        `        super("${component}", component)`,
        `    }`,
        ... generateAttributes(entry as IDLInterface),
        `}`
    ]
    return result
}

export function toPeersString(entries: IDLEntry[]): string|undefined {
    let result = entries
        .flatMap(printPeer)
        .filter(element => (element?.length ?? 0) > 0)
    if (result.length == 0) return undefined
    return result.join("\n")
}