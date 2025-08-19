/*
 * Copyright (c) 2024-2025 Huawei Device Co., Ltd.
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

import * as idl from '../idl'

/**
 * Union 类型转换结果
 */
export interface UnionTypeConversionResult {
    /** 单一类型时使用（收敛成功） */
    cjType?: idl.IDLType | string;
    defaultValue?: string;
    
    /** 需要重载时使用（二选一：cjType 或 overloads） */
    overloads?: Array<{ 
        cjType: idl.IDLType | string; 
        defaultValue?: string; 
        useOption?: boolean 
    }>;
    
    /** 错误信息 */
    error?: string;
    /** 其他元信息 */
    notes?: string[];
}

/**
 * 参数名语义模式
 */
export const SEMANTIC_PATTERNS = {
    // 长度/尺寸语义
    LENGTH: /^(width|height|size|fontSize|minFontSize|maxFontSize|lineHeight|letterSpacing|baselineOffset|textIndent|margin|padding|border|radius|offset|spacing|gap|indent)$/i,
    
    // 颜色语义
    COLOR: /^(color|backgroundColor|fontColor|borderColor|shadowColor|tintColor|fillColor|strokeColor)$/i,
    
    // 资源语义
    RESOURCE: /^(src|icon|image|background|font|text|title|label|placeholder|content)$/i,
    
    // 索引/计数语义
    INDEX_COUNT: /^(index|count|selected|current|active|position|level|depth|page|step|tab)$/i,
    
    // 比例语义
    SCALE: /^(scale|ratio|factor|percent|opacity|alpha|weight|friction|tension)$/i,
};

/**
 * 默认值常量
 */
export const DEFAULT_VALUES = {
    LENGTH: '"0vp"',
    RESOURCE_STR: '""',
    RESOURCE_COLOR: 'Color.Black',
    FLOAT32: '0.0',
    INT32: '0',
    INT64: '0L',
    BOOLEAN: 'false',
    STRING: '""',
    FONT_WEIGHT: 'FontWeight.Normal',
    DATE: 'DateTime.now()',
    ARRAY: '[]',
};

/**
 * 通用 Union 类型处理器
 * 提供 Component 层和 Peer 层复用的核心逻辑
 */
export class UnionTypeProcessor {
    
    /**
     * 转换 Union 类型为 Cangjie 语义类型
     * @param memberTypes Union 的成员类型
     * @param paramName 参数名（用于语义推断）
     * @param context 上下文信息
     */
    public convertUnionType(
        memberTypes: idl.IDLType[], 
        paramName: string,
        context: { isOptional?: boolean; language?: string } = {}
    ): UnionTypeConversionResult {
        
        if (!memberTypes || memberTypes.length === 0) {
            return { 
                cjType: 'ResourceStr', 
                defaultValue: DEFAULT_VALUES.RESOURCE_STR,
                error: 'Empty union types' 
            };
        }

        // 单一类型直接返回
        if (memberTypes.length === 1) {
            return { cjType: memberTypes[0] };
        }

        const typeNames = memberTypes.map(t => this.getTypeDisplayName(t));
        console.log(`[UnionTypeProcessor] Analyzing union for ${paramName}: [${typeNames.join(', ')}]`);

        // 类型检测
        const hasString = memberTypes.some(t => this.isStringType(t));
        const hasNumber = memberTypes.some(t => this.isNumberType(t));
        const hasResource = memberTypes.some(t => this.isResourceType(t));
        const hasColor = memberTypes.some(t => this.isColorType(t));
        const hasArray = memberTypes.some(t => this.isArrayType(t));
        
        // P0: 颜色语义 - 优先级最高
        if (hasColor || SEMANTIC_PATTERNS.COLOR.test(paramName)) {
            console.log(`[UnionTypeProcessor] Converging ${paramName} to ResourceColor (color semantic)`);
            return {
                cjType: 'ResourceColor',
                defaultValue: DEFAULT_VALUES.RESOURCE_COLOR
            };
        }

        // P1: 字符串+资源 → ResourceStr
        if (hasString && hasResource && !hasNumber) {
            console.log(`[UnionTypeProcessor] Converging ${paramName} to ResourceStr (string+resource)`);
            return {
                cjType: 'ResourceStr',
                defaultValue: DEFAULT_VALUES.RESOURCE_STR
            };
        }

        // P2: 数字+数组 → 标量/向量重载
        if (hasNumber && hasArray && !hasString) {
            const isIndexCount = SEMANTIC_PATTERNS.INDEX_COUNT.test(paramName);
            const scalarType = isIndexCount ? 'Int32' : 'Float32';
            const arrayType = isIndexCount ? 'Array<Int32>' : 'Array<Float32>';
            
            console.log(`[UnionTypeProcessor] Creating scalar/vector overloads for ${paramName}: ${scalarType} | ${arrayType}`);
            return {
                overloads: [
                    { cjType: scalarType, defaultValue: DEFAULT_VALUES[scalarType as keyof typeof DEFAULT_VALUES] },
                    { cjType: arrayType, defaultValue: DEFAULT_VALUES.ARRAY }
                ]
            };
        }

        // P3: 数字+字符串 → 长度语义重载
        if (hasString && hasNumber) {
            console.log(`[UnionTypeProcessor] Creating Length/ResourceStr overloads for ${paramName}`);
            return {
                overloads: [
                    { cjType: 'Length', defaultValue: DEFAULT_VALUES.LENGTH },
                    { cjType: 'ResourceStr', defaultValue: DEFAULT_VALUES.RESOURCE_STR }
                ]
            };
        }

        // P4: 数字+资源 → 比例语义重载
        if (hasNumber && hasResource && !hasString) {
            console.log(`[UnionTypeProcessor] Creating Float32/Resource overloads for ${paramName}`);
            return {
                overloads: [
                    { cjType: 'Float32', defaultValue: DEFAULT_VALUES.FLOAT32 },
                    { cjType: 'Resource', defaultValue: 'null' }
                ]
            };
        }

        // P5: 具名类型联合 → 多重载
        const namedTypes = this.extractNamedTypes(memberTypes);
        if (namedTypes.length >= 2) {
            console.log(`[UnionTypeProcessor] Creating named type overloads for ${paramName}: [${namedTypes.join(', ')}]`);
            return {
                overloads: namedTypes.slice(0, 3).map(typeName => ({ // 限制最多3个重载
                    cjType: typeName,
                    defaultValue: this.getDefaultValueForType(typeName)
                }))
            };
        }

        // 兜底：返回第一个类型
        console.log(`[UnionTypeProcessor] Fallback to first type for ${paramName}: ${typeNames[0]}`);
        return { 
            cjType: memberTypes[0],
            notes: [`Fallback used for union: ${typeNames.join(' | ')}`]
        };
    }

    /**
     * 将 UnionTypeConversionResult 转换为 IDLType 数组（用于 Peer 层）
     */
    public convertToIDLTypes(result: UnionTypeConversionResult): idl.IDLType[] {
        if (result.overloads && result.overloads.length > 0) {
            return result.overloads.map(o => 
                typeof o.cjType === 'string' 
                    ? idl.createReferenceType(o.cjType) 
                    : o.cjType as idl.IDLType
            );
        } else if (result.cjType) {
            const type = typeof result.cjType === 'string' 
                ? idl.createReferenceType(result.cjType) 
                : result.cjType as idl.IDLType;
            return [type];
        }
        
        // 兜底
        return [idl.createReferenceType('ResourceStr')];
    }

    // 私有辅助方法
    private getTypeDisplayName(type: idl.IDLType): string {
        if (idl.isReferenceType(type)) return type.name;
        if (idl.isPrimitiveType(type)) return type.name;
        return type.toString?.() || 'unknown';
    }

    private isStringType(type: idl.IDLType): boolean {
        return (idl.isPrimitiveType(type) && type.name === 'String') || 
               (idl.isReferenceType(type) && type.name.toLowerCase().includes('string'));
    }

    private isNumberType(type: idl.IDLType): boolean {
        return (idl.isPrimitiveType(type) && type.name === 'number') || 
               (idl.isReferenceType(type) && type.name.toLowerCase().includes('number'));
    }

    private isResourceType(type: idl.IDLType): boolean {
        return idl.isReferenceType(type) && type.name.toLowerCase().includes('resource');
    }

    private isColorType(type: idl.IDLType): boolean {
        return idl.isReferenceType(type) && type.name.toLowerCase().includes('color');
    }

    private isArrayType(type: idl.IDLType): boolean {
        return idl.isReferenceType(type) && 
               (type.name.toLowerCase().includes('array') || type.name.startsWith('Array_'));
    }

    private extractNamedTypes(memberTypes: idl.IDLType[]): string[] {
        return memberTypes
            .filter(t => idl.isReferenceType(t))
            .map(t => (t as any).name)
            .filter(name => name && name[0] === name[0].toUpperCase()) // 首字母大写的具名类型
            .filter((name, index, arr) => arr.indexOf(name) === index); // 去重
    }

    private getDefaultValueForType(typeName: string): string {
        const upperName = typeName.toUpperCase();
        if (upperName.includes('COLOR')) return DEFAULT_VALUES.RESOURCE_COLOR;
        if (upperName.includes('RESOURCE')) return DEFAULT_VALUES.RESOURCE_STR;
        if (upperName.includes('FONT')) return DEFAULT_VALUES.FONT_WEIGHT;
        if (upperName.includes('DATE')) return DEFAULT_VALUES.DATE;
        return 'null';
    }
}

/**
 * 全局单例实例
 */
export const unionTypeProcessor = new UnionTypeProcessor();
