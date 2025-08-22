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
        // 特殊处理：T | T[] 联合类型转换为 Array<T>
        if (type.types.length === 2) {
            const [type1, type2] = type.types
            
            // 检查是否为 T | T[] 模式
            const simplifiedType = this.detectSingleTypeWithArrayUnion(type1, type2)
            if (simplifiedType) {
                console.log(`[CJTypeNameConvertor] Converting union ${this.convert(type1)} | ${this.convert(type2)} to Array<${simplifiedType}>`)
                return `Array<${simplifiedType}>`
            }
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
            return 'Int32'  // 根据需求，number[] 转换为 Array<Int32>
        }
        if (this.isNumberArrayType(type1) && this.isNumberType(type2)) {
            return 'Int32'
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
                case idl.IDLStringType: return 'CString'
                case idl.IDLInteropReturnBufferType: return 'KInteropReturnBuffer'
                case idl.IDLSerializerBuffer: return 'KSerializerBuffer'
                case idl.IDLObjectType: return 'Unit'
            }
        }
        if (idl.isContainerType(type)) {
            if (idl.IDLContainerUtils.isSequence(type)) {
                return `CPointer<${this.convert(type.elementType[0])}>`
            }
        }
        if (idl.isReferenceType(type)) {
            // Fix, actual mapping has to be due to IDLType
            if (super.convert(type).startsWith('Array'))
                return `CPointer<UInt8>`
            if (super.convert(type) == 'String' || super.convert(type) == 'KStringPtr' ) {
                return `CString`
            }
            if (super.convert(type) == 'Object') {
                return `KPointer`
            }
        }
        return super.convert(type)
    }
    convertPrimitiveType(type: idl.IDLPrimitiveType): string {
        switch (type) {
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
