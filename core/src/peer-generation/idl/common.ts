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

import * as idl from "../../idl"
import { Language } from "../../Language"
import { capitalize } from "../../util"

export function generateSyntheticIdlNodeName(type: idl.IDLType): string {
    if (idl.isPrimitiveType(type)) return capitalize(type.name)
    if (idl.isContainerType(type)) {
        const typeArgs = type.elementType.map(it => generateSyntheticIdlNodeName(it)).join("_").replaceAll(".", "_")
        switch (type.containerKind) {
            case "sequence": return "Array_" + typeArgs
            case "record": return "Map_" + typeArgs
            case "Promise": return "Promise_" + typeArgs
            default: throw new Error(`Unknown container type ${idl.DebugUtils.debugPrintType(type)}`)
        }
    }
    if (idl.isNamedNode(type))
        return type.name.split('.').map(capitalize).join('_')
    if (idl.isOptionalType(type))
        return `Opt_${generateSyntheticIdlNodeName(type.type)}`
    throw `Can not compute type name of ${idl.IDLKind[type.kind]}`
}

export function qualifiedName(decl: idl.IDLNode, languageOrDelimiter: Language|string, pattern: idl.QNPattern): string {
    if (!idl.isNamedNode(decl))
        throw new Error("internal error, name required for no-named node")
    const delimiter = typeof languageOrDelimiter === "string"
        ? languageOrDelimiter
        : ([Language.CPP, Language.CJ, Language.KOTLIN].includes(languageOrDelimiter) ? '_' : '.')
    if (!idl.isEntry(decl))
        throw new Error(`Expected to have an IDLEntry, got ${idl.IDLKind[decl.kind]}`)
    return idl.getQualifiedName(decl, pattern).split(".").join(delimiter)
}

export function collapseTypes(types: idl.IDLType[], name?: string): idl.IDLType {
    // 🔍 调试日志：追踪类型收敛过程
    console.log(`[collapseTypes] 开始处理类型收敛:`)
    console.log(`  - 输入类型数量: ${types.length}`)
    console.log(`  - 输入类型: ${types.map(t => idl.printType(t)).join(' | ')}`)
    console.log(`  - 名称: ${name || 'undefined'}`)
    
    const seenNames = new Set<string>()
    const uniqueTypes = types.filter(it => {
        const typeName = idl.printType(it)
        if (seenNames.has(typeName)) return false
        seenNames.add(typeName)
        return true
    })
    
    console.log(`[collapseTypes] 去重后类型: ${uniqueTypes.map(t => idl.printType(t)).join(' | ')}`)
    
    // 单一类型直接返回
    if (uniqueTypes.length === 1) {
        console.log(`[collapseTypes] 单一类型，直接返回: ${idl.printType(uniqueTypes[0])}`)
        return uniqueTypes[0]
    }
    
    // 🔍 检查是否包含问题类型
    const hasString = uniqueTypes.some(t => t === idl.IDLStringType || (idl.isReferenceType(t) && t.name === 'String'))
    const hasPadding = uniqueTypes.some(t => idl.isReferenceType(t) && t.name.includes('Padding'))
    const hasColor = uniqueTypes.some(t => idl.isReferenceType(t) && t.name.includes('Color'))
    const hasBorderStyle = uniqueTypes.some(t => idl.isReferenceType(t) && t.name.includes('BorderStyle'))
    
    if (hasString || hasPadding || hasColor || hasBorderStyle) {
        console.log(`[collapseTypes] 🚨🚨🚨 发现问题类型被当作联合类型处理！`)
        console.log(`  - 包含String: ${hasString}`)
        console.log(`  - 包含Padding: ${hasPadding}`)
        console.log(`  - 包含Color: ${hasColor}`)
        console.log(`  - 包含BorderStyle: ${hasBorderStyle}`)
        console.log(`  - 调用栈:`, new Error().stack)
    }
    
    // 🔧 暂时禁用类型收敛以避免循环引用
    // const convergedType = attemptTypeConvergence(uniqueTypes, name)
    // if (convergedType) {
    //     console.log(`[collapseTypes] 🔧 CONVERGED: ${uniqueTypes.map(t => idl.printType(t)).join(' | ')} → ${idl.printType(convergedType)}`)
    //     return convergedType
    // }
    
    // 只有真正需要重载的联合类型才创建 IDLUnionType
    console.log(`[collapseTypes] 创建联合类型: ${uniqueTypes.map(t => idl.printType(t)).join(' | ')}`)
    return idl.createUnionType(uniqueTypes, name)
}

/**
 * 🔧 尝试将联合类型收敛为单一类型
 * 这是解决 "String 被错误当作联合类型" 问题的根本修复
 */
function attemptTypeConvergence(types: idl.IDLType[], name?: string): idl.IDLType | null {
    const typeNames = types.map(t => idl.printType(t))
    console.log(`[attemptTypeConvergence] Analyzing types: ${typeNames.join(' | ')}`)
    
    const hasString = types.some(t => t === idl.IDLStringType || (idl.isReferenceType(t) && t.name === 'String'))
    const hasNumber = types.some(t => t === idl.IDLNumberType || (idl.isReferenceType(t) && t.name === 'number'))
    const hasResource = types.some(t => idl.isReferenceType(t) && t.name === 'Resource')
    const hasResourceStr = types.some(t => idl.isReferenceType(t) && t.name === 'ResourceStr')
    const hasResourceColor = types.some(t => idl.isReferenceType(t) && t.name === 'ResourceColor')
    
    // 🔧 防止循环引用：如果已经包含ResourceStr，直接返回它
    if (hasResourceStr) {
        console.log(`[attemptTypeConvergence] Found existing ResourceStr, returning it directly`)
        return types.find(t => idl.isReferenceType(t) && t.name === 'ResourceStr') || null
    }
    
    // 🔧 防止循环引用：如果已经包含ResourceColor，直接返回它
    if (hasResourceColor) {
        console.log(`[attemptTypeConvergence] Found existing ResourceColor, returning it directly`)
        return types.find(t => idl.isReferenceType(t) && t.name === 'ResourceColor') || null
    }
    
    // 1. string | number | Resource → ResourceStr (Length类型的典型模式)
    if (hasString && hasNumber && hasResource && types.length === 3) {
        console.log(`[attemptTypeConvergence] Converting string|number|Resource to ResourceStr`)
        return idl.createReferenceType('ResourceStr')
    }
    
    // 2. string | Resource → ResourceStr
    if (hasString && hasResource && types.length === 2) {
        console.log(`[attemptTypeConvergence] Converting string|Resource to ResourceStr`)
        return idl.createReferenceType('ResourceStr')
    }
    
    // 3. Color相关类型 → ResourceColor
    if (hasString && hasNumber && types.some(t => 
        idl.isReferenceType(t) && t.name?.toLowerCase().includes('color'))) {
        console.log(`[attemptTypeConvergence] Converting color-related union to ResourceColor`)
        return idl.createReferenceType('ResourceColor')
    }
    
    // 5. 纯基础类型联合：优先选择更通用的类型
    const basicTypes = types.filter(t => 
        t === idl.IDLStringType || 
        t === idl.IDLNumberType || 
        t === idl.IDLBooleanType ||
        (idl.isReferenceType(t) && ['String', 'number', 'boolean'].includes(t.name || ''))
    )
    
    if (basicTypes.length === types.length) {
        // 如果都是基础类型，收敛为最通用的
        if (hasString && hasNumber) {
            return idl.createReferenceType('ResourceStr')  // string | number → ResourceStr
        } else if (hasString) {
            return idl.IDLStringType  // 纯string联合 → String
        } else if (hasNumber) {
            return idl.IDLNumberType  // 纯number联合 → number
        }
    }
    
    // 6. 对象类型 + 基础类型：通常收敛为对象类型
    const objectTypes = types.filter(t => 
        idl.isReferenceType(t) && 
        !t.name?.startsWith('Union_') &&
        !['Resource', 'ResourceStr', 'ResourceColor', 'String', 'number', 'boolean'].includes(t.name || '')
    )
    
    if (objectTypes.length === 1 && basicTypes.length > 0) {
        // 对象类型 + 基础类型 → 对象类型（如 Padding | string → Padding）
        return objectTypes[0]
    }
    
    // 无法收敛，返回null表示需要创建真正的联合类型
    return null
}

export function generifiedTypeName(refType: idl.IDLReferenceType | undefined, refName?: string): string | undefined {
    if (!refType) return undefined
    const typeArgs = refType.typeArguments?.map(it => idl.printType(it) /* FIXME: BUG! */).join(",")
    return `${refName ? refName : refType.name}${typeArgs ? `<${typeArgs}>` : ``}`
}

export function sanitizeGenerics(genericDeclarationString:string): string {
    const eqIdx = genericDeclarationString.indexOf('=')
    if (eqIdx !== -1) {
        genericDeclarationString = genericDeclarationString.substring(0, eqIdx)
    }
    const extendsIdx = genericDeclarationString.indexOf('extends')
    if (extendsIdx !== -1) {
        genericDeclarationString = genericDeclarationString.substring(0, extendsIdx)
    }
    return genericDeclarationString.trim()
}

export function generateSyntheticUnionName(types: idl.IDLType[]) {
    return `Union_${types.map(it => generateSyntheticIdlNodeName(it)).join("_").replaceAll(".", "_")}`
}

export function generateSyntheticFunctionParameterName(parameter:idl.IDLParameter): string {
    if (parameter.isOptional) {
        return generateSyntheticIdlNodeName(idl.createOptionalType(parameter.type))
    }
    return generateSyntheticIdlNodeName(parameter.type)
}

export function generateSyntheticFunctionName(parameters: idl.IDLParameter[], returnType: idl.IDLType, isAsync: boolean = false): string {
    let prefix = isAsync ? "AsyncCallback" : "Callback"
    const names = parameters.map(generateSyntheticFunctionParameterName).concat(generateSyntheticIdlNodeName(returnType))
    return `${prefix}_${names.join("_").replaceAll(".", "_")}`
}

export function isImportAttr(decl: idl.IDLNode): boolean {
    return idl.hasExtAttribute(decl, idl.IDLExtendedAttributes.Import)
}
