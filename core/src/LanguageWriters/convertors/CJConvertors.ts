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

import * as idl from '../../idl'
import { CJKeywords } from '../../languageSpecificKeywords'
import { ReferenceResolver } from '../../peer-generation/ReferenceResolver'
import { convertNode, convertType, IdlNameConvertor, NodeConvertor } from '../nameConvertor'
import { InteropArgConvertor } from './InteropConvertors'

export class CJTypeNameConvertor implements NodeConvertor<string>, IdlNameConvertor {

    // 控制调试日志输出
    private static readonly DEBUG_LOG = false
    private dbg(fn: () => void) { if (CJTypeNameConvertor.DEBUG_LOG) try { fn() } catch { } }
    
    /**
     * 基础类型映射表：处理被错误包装为引用类型的基础类型名
     * 
     * 问题：某些阶段会将基础类型（如 void）错误地包装为 IDLReferenceType('Unit')，
     * 导致类型解析失败并兜底返回 Any。
     * 
     * 解决：直接映射这些"伪引用类型"的名称到正确的 CJ 类型字符串。
     * 
     * 影响：所有使用 CJTypeNameConvertor 的地方，包括：
     * - Foreign 函数声明
     * - 类方法返回类型  
     * - 参数类型转换
     * - 其他类型引用位置
     */
    private static readonly BASIC_TYPE_MAPPING: Record<string, string> = {
        // void 类型映射
        'Unit': 'Unit',
        'void': 'Unit',
        // 布尔类型映射
        'Bool': 'Bool', 
        'boolean': 'Bool',
        // 整数类型映射
        'Int32': 'Int32',
        'Int64': 'Int64',
        'UInt8': 'UInt8',
        'UInt16': 'UInt16', 
        'UInt32': 'UInt32',
        'UInt64': 'UInt64',
        // 浮点类型映射
        'Float32': 'Float32',
        'Float64': 'Float64',
        // 字符串类型映射
        'String': 'String',
        // 指针类型映射
        'pointer': 'UInt64',
        'Pointer': 'UInt64'
    }

    constructor(
        protected resolver: ReferenceResolver
    ) { }

    convert(node: idl.IDLNode): string {
        if (idl.isType(node) && idl.isReferenceType(node)) {
            if (node.name.startsWith('%TEXT%:')) {
                return node.name.substring(7)
            }
        }
        return convertNode(this, node)
    }

    /***** TypeConvertor<string> **********************************/
    convertOptional(type: idl.IDLOptionalType): string {
        return `Option<${this.convert(type.type)}>`
    }
    convertUnion(type: idl.IDLUnionType): string {
        // T | T[] → Array<T>
        if (type.types.length === 2) {
            const [type1, type2] = type.types
            const simplifiedType = this.detectSingleTypeWithArrayUnion(type1, type2)
            if (simplifiedType) {
                this.dbg(() => console.log(`[CJTypeNameConvertor] Converting union ${this.convert(type1)} | ${this.convert(type2)} to Array<${simplifiedType}>`))
                return `Array<${simplifiedType}>`
            }
        }
        // 调试：输出仍然落到名称分支的联合类型
        this.dbg(() => {
            const variants = type.types?.map(t => idl.DebugUtils.debugPrintType(t)).join(' | ')
            console.log(`[CJTypeNameConvertor] convertUnion fallback: name=${type.name} variants=[${variants}]`)
        })
        // 序列化方法参数的Union_类型展开：选择第一个成员类型，避免Union_泄漏
        if (type.name && type.name.startsWith('Union_')) {
            this.dbg(() => console.log(`[CJTypeNameConvertor] Expanding Union type ${type.name} to first member`))
            // 提取Union_类型的第一个成员类型
            if (type.types && type.types.length > 0) {
                const firstType = this.convert(type.types[0])
                this.dbg(() => console.log(`[CJTypeNameConvertor] Union ${type.name} -> ${firstType}`))
                return firstType
            }
            // 兜底：如果无法提取成员，使用Any
            this.dbg(() => console.warn(`[CJTypeNameConvertor] Cannot extract Union members from ${type.name}, using Any`))
            return 'Any'
        }
        return type.name
    }
    convertContainer(type: idl.IDLContainerType): string {
        if (idl.IDLContainerUtils.isSequence(type)) {
            return `ArrayList<${convertType(this, type.elementType[0])}>`
        }
        if (idl.IDLContainerUtils.isRecord(type)) {
            const stringes = type.elementType.slice(0, 2).map(it => convertType(this, it))
            if (idl.isReferenceType(type.elementType[0])) {
                const keyValueType = this.resolver.resolveTypeReference(type.elementType[0])!
                if (idl.isInterface(keyValueType) || idl.isEnum(keyValueType)) {
                    return `HashMap<Int64, ${stringes[1]}>`
                }
            }
            return `HashMap<${stringes[0]}, ${stringes[1]}>`
        }
        if (idl.IDLContainerUtils.isPromise(type)) {
            return `Any`
        }
        throw new Error(`IDL type ${idl.DebugUtils.debugPrintType(type)} not supported`)
    }
    convertNamespace(node: idl.IDLNamespace): string {
        return node.name
    }
    convertInterface(node: idl.IDLInterface): string {
        return removePoints(idl.getNamespaceName(node).concat(node.name))
    }
    convertEnum(node: idl.IDLEnum): string {
        return removePoints(idl.getNamespaceName(node).concat(node.name))
    }
    convertTypedef(node: idl.IDLTypedef): string {
        return node.name
    }
    convertCallback(type: idl.IDLCallback): string {
        const params = type.parameters.map(it =>
            `${CJKeywords.has(it.name) ? it.name.concat("_") : it.name}: ${it.isOptional ? "?" : ""}${this.convert(it.type!)}`)
        return `(${params.join(", ")}) -> ${this.convert(type.returnType)}`
    }
    convertMethod(node: idl.IDLMethod): string {
        throw new Error('Method not implemented.')
    }
    convertConstant(node: idl.IDLConstant): string {
        throw new Error('Method not implemented.')
    }
    convertImport(type: idl.IDLImport): string {
        console.warn("Imports are not implemented yet")
        return type.name
    }
    convertTypeReferenceAsImport(type: idl.IDLReferenceType, importClause: string): string {
        const maybeTypeArguments = type.typeArguments?.length ? `<${type.typeArguments.join(', ')}>` : ""
        let decl = this.resolver.resolveTypeReference(type)
        if (decl)
            return `${decl.name}${maybeTypeArguments}`
        return this.convert(idl.IDLCustomObjectType)
    }
    convertTypeReference(type: idl.IDLReferenceType): string {
        if (type.name === idl.IDLObjectType.name)
            return "KPointer"
        
        // 处理被错误包装为引用类型的基础类型名
        // 这是一个通用修复，影响所有使用 CJTypeNameConvertor 的地方（包括类方法返回类型）
        const mappedType = type.name ? CJTypeNameConvertor.BASIC_TYPE_MAPPING[type.name] : undefined
        if (mappedType) {
            return mappedType
        }
            
        // CJ 兜底（限定）：不再把 Union_* 映射为 Any，保留名称由上层展开
        if (type.name.startsWith('Union_')) {
            this.dbg(() => console.log(`[CJTypeNameConvertor] Preserving reference to ${type.name} (no Any fallback here)`))
            return type.name
        }
        
        // 屏蔽 Tuple_* 类型名，转换为原生元组语法
        if (type.name.startsWith('Tuple_')) {
            // 尝试从类型名解析元组元素
            const match = type.name.match(/^Tuple_(.+)$/)
            if (match) {
                const tokens = match[1].split('_').filter(Boolean)
                const elementTypes = tokens.map((tok: string) => {
                    const t = tok.toLowerCase()
                    if (t === 'number' || t === 'float64') return 'Float64'
                    if (t === 'int32') return 'Int32'
                    if (t === 'int64') return 'Int64'
                    if (t === 'boolean' || t === 'bool') return 'Bool'
                    if (t === 'string') return 'String'
                    return tok // 枚举或自定义类型，保持原样
                })
                const nativeTupleSyntax = `(${elementTypes.join(', ')})`
                this.dbg(() => console.log(`[CJTypeNameConvertor] Converting Tuple type reference ${type.name} to native syntax: ${nativeTupleSyntax}`))
                return nativeTupleSyntax
            }
            // 如果解析失败，返回兜底类型
            this.dbg(() => console.log(`[CJTypeNameConvertor] Failed to parse Tuple type ${type.name}, returning String`))
            return 'String'
        }
        
        // resolve synthetic types
        const decl = this.resolver.resolveTypeReference(type)!
        if (decl && idl.isSyntheticEntry(decl)) {
            if (idl.isCallback(decl)) {
                return this.callbackType(decl)
            }
            const entity = idl.getExtAttribute(decl, idl.IDLExtendedAttributes.Entity)
            if (entity) {
                const isTuple = entity === idl.IDLEntity.Tuple
                return this.productType(decl as idl.IDLInterface, isTuple, !isTuple)
            }
        }
        let name = type.name.split('.')
        let typeArgs = type.typeArguments?.map(it => this.convert(it)) ?? []
        const maybeTypeArguments = !typeArgs?.length ? '' : `<${typeArgs.join(', ')}>`
        if (decl) {
            return idl.getNamespacesPathFor(decl).map(ns => ns.name).join().concat(name[name.length - 1].concat(maybeTypeArguments))
        }
        
        // 🔧 HACK: 对于无法解析的类型，检查是否为元组类型模式
        // 这样可以避免将元组类型错误地转换为 Any
        if (type.name && type.name.startsWith('Tuple_')) {
            const match = type.name.match(/^Tuple_(.+)$/)
            if (match) {
                const tokens = match[1].split('_').filter(Boolean)
                const elementTypes = tokens.map((tok: string) => {
                    const t = tok.toLowerCase()
                    if (t === 'number' || t === 'float64') return 'Float64'
                    if (t === 'int32') return 'Int32'
                    if (t === 'int64') return 'Int64'
                    if (t === 'boolean' || t === 'bool') return 'Bool'
                    if (t === 'string') return 'String'
                    return tok // 枚举或自定义类型，保持原样
                })
                const nativeTupleSyntax = `(${elementTypes.join(', ')})`
                this.dbg(() => console.log(`[CJTypeNameConvertor] HACK: Converting unresolved Tuple type ${type.name} to native syntax: ${nativeTupleSyntax}`))
                return nativeTupleSyntax
            }
        }
        
        return this.convert(idl.IDLCustomObjectType)
    }
    convertTypeParameter(type: idl.IDLTypeParameterType): string {
        return type.name
    }
    convertPrimitiveType(type: idl.IDLPrimitiveType): string {
        switch (type) {
            case idl.IDLThisType: return 'this'
            case idl.IDLStringType: return 'String'
            case idl.IDLBooleanType: return 'Bool'
            case idl.IDLNumberType: return 'Float64'
            case idl.IDLUndefinedType: return 'Unit' // might be wrong
            case idl.IDLI8Type: return 'Int8'
            case idl.IDLU8Type: return 'UInt8'
            case idl.IDLI16Type: return 'Int16'
            case idl.IDLU16Type: return 'UInt16'
            case idl.IDLI32Type: return 'Int32'
            case idl.IDLU32Type: return 'UInt32'
            case idl.IDLI64Type: return 'Int64'
            case idl.IDLU64Type: return 'UInt64'
            case idl.IDLF32Type: return 'Float32'
            case idl.IDLF64Type: return 'Float64'
            case idl.IDLPointerType: return 'UInt64'
            case idl.IDLVoidType: return 'Unit'
            case idl.IDLBufferType: return 'Array<UInt8>'
            case idl.IDLInteropReturnBufferType: return 'Array<UInt8>'
            case idl.IDLBigintType: return 'Int64'
            case idl.IDLSerializerBuffer: return 'KSerializerBuffer'
            case idl.IDLAnyType: return 'Any'
            case idl.IDLDate: return 'DateTime'
            case idl.IDLObjectType: return 'Any'

            case idl.IDLUnknownType:
            case idl.IDLFunctionType:
            case idl.IDLCustomObjectType: return 'Any'
        }
        throw new Error(`Unsupported IDL primitive ${idl.DebugUtils.debugPrintType(type)}`)
    }

    private callbackType(decl: idl.IDLCallback): string {
        const params = decl.parameters.map(it =>
            `${CJKeywords.has(it.name) ? it.name.concat("_") : it.name}: ${this.convert(it.type!)}`)
        return `((${params.join(", ")}) -> ${this.convert(decl.returnType)})`
    }

    private productType(decl: idl.IDLInterface, isTuple: boolean, includeFieldNames: boolean): string {
        // 处理 Tuple_* 类型：转换为原生元组语法
        if (isTuple && decl.name.startsWith('Tuple_')) {
            const fieldTypes = decl.properties.map(prop => this.convert(prop.type))
            const nativeTupleSyntax = `(${fieldTypes.join(', ')})`
            this.dbg(() => console.log(`[CJTypeNameConvertor] Converting Tuple type ${decl.name} to native syntax: ${nativeTupleSyntax}`))
            return nativeTupleSyntax
        }
        
        return decl.name
    }

    /**
     * 检测是否为 T | T[] 联合类型模式
     * @param type1 第一个类型
     * @param type2 第二个类型
     * @returns 如果匹配模式则返回基础类型的Cangjie表示，否则返回null
     */
    private detectSingleTypeWithArrayUnion(type1: idl.IDLType, type2: idl.IDLType): string | null {
        // 检查 string | string[] 模式
        if (this.isStringType(type1) && this.isStringArrayType(type2)) {
            return 'String'
        }
        if (this.isStringArrayType(type1) && this.isStringType(type2)) {
            return 'String'
        }
        
        // 检查 number | number[] 模式
        if (this.isNumberType(type1) && this.isNumberArrayType(type2)) {
            return 'Float64'  // 修改：number[] 转换为 Array<Float64>
        }
        if (this.isNumberArrayType(type1) && this.isNumberType(type2)) {
            return 'Float64'  // 修改：number[] 转换为 Array<Float64>
        }
        
        return null
    }

    private isStringType(type: idl.IDLType): boolean {
        return idl.isPrimitiveType(type) && type === idl.IDLStringType
    }

    private isNumberType(type: idl.IDLType): boolean {
        return idl.isPrimitiveType(type) && type === idl.IDLNumberType
    }

    private isStringArrayType(type: idl.IDLType): boolean {
        if (idl.isContainerType(type) && idl.IDLContainerUtils.isSequence(type)) {
            return type.elementType.length > 0 && this.isStringType(type.elementType[0])
        }
        return false
    }

    private isNumberArrayType(type: idl.IDLType): boolean {
        if (idl.isContainerType(type) && idl.IDLContainerUtils.isSequence(type)) {
            return type.elementType.length > 0 && this.isNumberType(type.elementType[0])
        }
        return false
    }
}

export class CJIDLTypeToForeignStringConvertor extends CJTypeNameConvertor {
    convert(type: idl.IDLNode): string {
        if (idl.isPrimitiveType(type)) {
            switch (type) {
                case idl.IDLStringType: 
                    return 'CString'  // 强制所有字符串类型在 foreign 函数中使用 CString
                case idl.IDLInteropReturnBufferType: return 'KInteropReturnBuffer'
                case idl.IDLSerializerBuffer: return 'KSerializerBuffer'
                case idl.IDLObjectType: return 'Unit'
                case idl.IDLVoidType: return 'Unit'  // void 类型在 foreign 函数中返回 Unit
            }
        }
        if (idl.isContainerType(type)) {
            if (idl.IDLContainerUtils.isSequence(type)) {
                return `CPointer<${this.convert(type.elementType[0])}>`
            }
        }
        if (idl.isReferenceType(type)) {
            const ref = type as idl.IDLReferenceType
            const refName = ref.name
            // 规范化：去除命名空间/前缀，取最后一段（支持 "%TEXT%:KStringPtr"、"ns.sub.String" 等）
            const simpleRef = (() => {
                const tailByColon = refName.split(':').pop() ?? refName
                const tailByDot = tailByColon.split('.').pop() ?? tailByColon
                return tailByDot
            })()
            
            // Foreign 函数中的特殊字符串类型映射 - 优先处理
            if (simpleRef === 'String' || simpleRef === 'KStringPtr') {
                return 'CString'
            }
            
            // 其他引用类型先尝试父类转换
            const superConverted = super.convert(type)
            
            // Foreign 函数中的特殊处理 - 确保 String 类型始终映射为 CString
            if (superConverted === 'String') {
                return 'CString'
            }
            if (superConverted.startsWith('Array')) {
                return `CPointer<UInt8>`
            }
            if (superConverted === 'Object') {
                return `KPointer`
            }
            
            return superConverted
        }
        return super.convert(type)
    }
    convertPrimitiveType(type: idl.IDLPrimitiveType): string {
        switch (type) {
            case idl.IDLStringType: return 'CString'  // 确保字符串原始类型也映射为 CString
            case idl.IDLBufferType: return 'CPointer<UInt8>'
        }
        return super.convertPrimitiveType(type)
    }
}

export class CJInteropArgConvertor extends InteropArgConvertor {
    convertPrimitiveType(type: idl.IDLPrimitiveType): string {
        switch (type) {
            case idl.IDLNumberType: return "Float64"
            case idl.IDLF64Type: return "Float64"
        }
        return super.convertPrimitiveType(type)
    }
}

export function removePoints(s: string) {
    return s.split(/[\.\-]/g).join('_')
}


