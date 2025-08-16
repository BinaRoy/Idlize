import * as idl from '@idlizer/core/idl';
import { convertNumberProperty, NumberConversionInput, NumberConversionResult } from './CJNumberConversion';

export const DEFAULT_VALUES = {
    LENGTH: '0.vp',
    FLOAT64: '1.0',
    INT32: '0',
    INT64: '0',
    BOOLEAN: 'false',
    RESOURCE_STR: '""',
    RESOURCE_COLOR: 'Color.Black',
    OPTION_NONE: 'None',
    // 新增更多默认值
    FONT_WEIGHT: 'FontWeight.Normal',
    FONT_SIZE: '16.fp',
    OPACITY: '1.0',
    Z_INDEX: '0',
    // 针对具体属性的更合理默认值
    MAX_LINES: '1',
    SELECTION_START: '0',
    SELECTION_END: '0'
} as const;

export interface TypeConversionResult {
    // When union converges to single semantic type
    cjType?: idl.IDLType | string;
    defaultValue?: string;
    // When union requires overloads, provide alternatives
    overloads?: Array<{ cjType: idl.IDLType | string; defaultValue?: string; useOption?: boolean }>;
    error?: string;
}

interface TypeChecker {
    (type: idl.IDLType): boolean;
}

// 预编译的正则表达式，提高字符串匹配性能
const STRING_PATTERNS = {
    COLOR: /(color|background|border|fill|stroke|tint|theme|primary|secondary|accent|shade|hue)/i,
    RESOURCE: /(content|text|label|title|placeholder|hint|name|src|source|path|url|icon|image|resource|theme|style|key|id)/i,
    PLAIN_TEXT: /(message|error|debug|log|description|comment|reason|info|warning|trace|note|memo)/i,
    // 新增更精确的分类
    DIMENSIONAL: /(width|height|size|length|margin|padding|radius|gap|space|offset|position|left|right|top|bottom|x|y|z)/i,
    CALLBACK: /(on|event|handler|listener|callback|trigger|action)/i
} as const;

export class CJTypeMapper {
    private readonly typeCheckers: Map<string, TypeChecker> = new Map();
    private readonly typeCache: Map<string, boolean> = new Map();
    private readonly conversionCache: Map<string, TypeConversionResult> = new Map();
    private readonly errorStats: Map<string, number> = new Map();
    // 新增：枚举映射缓存，用于将 Literal_* 和 Union_* 类型映射到对应的枚举
    private readonly enumMappingCache: Map<string, string> = new Map();
    
    constructor() {
        this.initializeTypeCheckers();
        this.initializeCommonEnumMappings();
    }

    private initializeTypeCheckers(): void {
        this.typeCheckers.set('number', this.createTypeChecker(['number', 'Number']));
        this.typeCheckers.set('string', this.createTypeChecker(['string', 'String']));
        this.typeCheckers.set('boolean', this.createTypeChecker(['boolean', 'Boolean']));
        this.typeCheckers.set('special', this.createSpecialTypeChecker());
    }

    private initializeCommonEnumMappings(): void {
        // 常见的字面量联合类型到枚举的映射
        const commonMappings: Array<[string[], string]> = [
            // 对齐相关
            [['left', 'center', 'right'], 'HorizontalAlign'],
            [['start', 'center', 'end'], 'HorizontalAlign'],
            [['top', 'middle', 'bottom'], 'VerticalAlign'],
            [['top', 'center', 'bottom'], 'VerticalAlign'],
            
            // 尺寸相关
            [['small', 'medium', 'large'], 'ComponentSize'],
            [['xs', 's', 'm', 'l', 'xl'], 'ComponentSize'],
            
            // 主题相关
            [['light', 'dark', 'auto'], 'ThemeType'],
            [['default', 'primary', 'secondary'], 'ThemeType'],
            
            // Canvas 相关
            [['butt', 'round', 'square'], 'CanvasLineCap'],
            [['miter', 'round', 'bevel'], 'CanvasLineJoin'],
            [['ltr', 'rtl'], 'CanvasDirection'],
            
            // 边框相关
            [['solid', 'dashed', 'dotted'], 'BorderStyle'],
            
            // 字体相关
            [['normal', 'bold', 'lighter'], 'FontWeight'],
            [['normal', 'italic', 'oblique'], 'FontStyle']
        ];
        
        // 为每个映射生成所有可能的 Literal_ 和 Union_ 组合
        for (const [literals, enumName] of commonMappings) {
            // 单个 Literal_ 类型
            for (const literal of literals) {
                this.enumMappingCache.set(`Literal_String_${literal}`, enumName);
                this.enumMappingCache.set(`Literal_${literal}`, enumName);
            }
            
            // Union_ 类型（各种组合）
            const sortedLiterals = [...literals].sort();
            this.enumMappingCache.set(`Union_String_${sortedLiterals.join('_')}`, enumName);
            this.enumMappingCache.set(`Union_${sortedLiterals.join('_')}`, enumName);
            
            // 生成部分组合
            for (let i = 2; i <= literals.length; i++) {
                const combinations = this.getCombinations(literals, i);
                for (const combo of combinations) {
                    const sortedCombo = combo.sort();
                    this.enumMappingCache.set(`Union_String_${sortedCombo.join('_')}`, enumName);
                    this.enumMappingCache.set(`Union_${sortedCombo.join('_')}`, enumName);
                }
            }
        }
        
        console.log(`[CJTypeMapper] Initialized ${this.enumMappingCache.size} enum mappings`);
    }

    private getCombinations<T>(array: T[], size: number): T[][] {
        if (size === 0) return [[]];
        if (size > array.length) return [];
        if (size === array.length) return [array];
        
        const result: T[][] = [];
        for (let i = 0; i <= array.length - size; i++) {
            const smaller = this.getCombinations(array.slice(i + 1), size - 1);
            for (const combo of smaller) {
                result.push([array[i], ...combo]);
            }
        }
        return result;
    }

    private tryMapToEnum(type: idl.IDLType): { enumName: string; defaultValue: string } | null {
        const typeName = this.getTypeDisplayName(type);
        
        // 直接查找映射
        const directMapping = this.enumMappingCache.get(typeName);
        if (directMapping) {
            return {
                enumName: directMapping,
                defaultValue: this.getEnumDefaultValue(directMapping)
            };
        }
        
        // 尝试提取 Literal_ 或 Union_ 类型中的字面量值
        const extractedLiterals = this.extractLiteralsFromTypeName(typeName);
        if (extractedLiterals.length > 0) {
            // 尝试匹配已知的枚举
            for (const [key, enumName] of this.enumMappingCache) {
                if (this.isLiteralSubsetMatch(extractedLiterals, key)) {
                    console.log(`[CJTypeMapper] Found subset match: ${typeName} -> ${enumName} (via ${key})`);
                    return {
                        enumName,
                        defaultValue: this.getEnumDefaultValue(enumName)
                    };
                }
            }
        }
        
        return null;
    }

    private extractLiteralsFromTypeName(typeName: string): string[] {
        // 从 Literal_String_xxx 或 Union_String_xxx_yyy 中提取字面量
        const literalMatch = typeName.match(/^Literal_(?:String_)?(.+)$/);
        if (literalMatch) {
            return [literalMatch[1]];
        }
        
        const unionMatch = typeName.match(/^Union_(?:String_)?(.+)$/);
        if (unionMatch) {
            return unionMatch[1].split('_').filter(s => s.length > 0);
        }
        
        return [];
    }

    private isLiteralSubsetMatch(literals: string[], mappingKey: string): boolean {
        const keyLiterals = this.extractLiteralsFromTypeName(mappingKey);
        if (keyLiterals.length === 0) return false;
        
        // 检查 literals 是否是 keyLiterals 的子集或相等
        return literals.every(lit => keyLiterals.includes(lit)) && literals.length > 0;
    }

    private getEnumDefaultValue(enumName: string): string {
        // 根据枚举类型提供合理的默认值
        const enumDefaults: Record<string, string> = {
            'HorizontalAlign': 'HorizontalAlign.Start',
            'VerticalAlign': 'VerticalAlign.Top',
            'ComponentSize': 'ComponentSize.Medium',
            'ThemeType': 'ThemeType.Auto',
            'CanvasLineCap': 'CanvasLineCap.Butt',
            'CanvasLineJoin': 'CanvasLineJoin.Miter',
            'CanvasDirection': 'CanvasDirection.Ltr',
            'BorderStyle': 'BorderStyle.Solid',
            'FontWeight': 'FontWeight.Normal',
            'FontStyle': 'FontStyle.Normal'
        };
        
        return enumDefaults[enumName] || `${enumName}.Default`;
    }

    private createTypeChecker(typeNames: string[]): TypeChecker {
        return (type: idl.IDLType) => {
            try {
                const typeName = this.getTypeDisplayName(type);
                const lowerTypeName = typeName.toLowerCase();
                
                return typeNames.some(name => 
                    typeName === name || 
                    lowerTypeName === name.toLowerCase() ||
                    lowerTypeName.includes(name.toLowerCase()) ||
                    // 处理 IDL 内部类型名称
                    (type as any).kind === name.toLowerCase() ||
                    (type as any).name === name
                );
            } catch (error) {
                this.logError('Type checker failed', error);
                return false;
            }
        };
    }

    private createSpecialTypeChecker(): TypeChecker {
        const specialTypes = ['any', 'unknown', 'never', 'void', 'null', 'undefined', 'symbol', 'object'];
        return (type: idl.IDLType) => {
            try {
                const typeName = this.getTypeDisplayName(type).toLowerCase();
                return specialTypes.includes(typeName);
            } catch (error) {
                this.logError('Special type checker failed', error);
                return false;
            }
        };
    }

    public convertParameterType(
        paramType: idl.IDLType, 
        paramName: string, 
        isOptional: boolean
    ): TypeConversionResult {
        try {
            if (!paramName || paramName.trim() === '') {
                return {
                    cjType: paramType,
                    defaultValue: undefined,
                    error: 'Empty parameter name'
                };
            }

            // 缓存键：包含类型、参数名和可选性
            const cacheKey = `${this.getTypeDisplayName(paramType)}_${paramName}_${isOptional}`;
            const cached = this.conversionCache.get(cacheKey);
            if (cached && !cached.error) {
                console.log(`[CJTypeMapper] Cache hit for ${paramName}`);
                return cached;
            }

            const baseType = this.extractBaseType(paramType);
            
            // 调试信息：记录类型检测
            const typeDisplayName = this.getTypeDisplayName(baseType);
            console.log(`[CJTypeMapper] Converting ${paramName}: ${typeDisplayName}, isOptional: ${isOptional}`);
            
            let result: TypeConversionResult;
            
            // Handle union types first
            if (idl.isUnionType(baseType)) {
                console.log(`[CJTypeMapper] Detected union type for ${paramName}: ${baseType.types.map(t => this.getTypeDisplayName(t)).join(' | ')}`);
                const unionConv = this.convertUnionType(baseType.types, paramName, isOptional)
                // Optional handling for overloads is encoded inside convertUnionType
                if (unionConv.overloads && unionConv.overloads.length > 0) {
                    console.log(`[CJTypeMapper] Generated ${unionConv.overloads.length} overloads for ${paramName}`);
                    result = unionConv;
                } else {
                    result = this.applyOptionalHandling(unionConv, isOptional, baseType);
                }
            } else {
                const conversion = this.determineTypeConversion(baseType, paramName);
                result = this.applyOptionalHandling(conversion, isOptional, baseType);
            }
            
            // 缓存成功的转换结果
            if (!result.error) {
                this.conversionCache.set(cacheKey, result);
            }
            
            return result;
            
        } catch (error) {
            this.trackError(`Failed to convert parameter ${paramName}`, error);
            return {
                cjType: paramType,
                defaultValue: undefined,
                error: `Conversion failed: ${error}`
            };
        }
    }

    private extractBaseType(paramType: idl.IDLType): idl.IDLType {
        return idl.isOptionalType(paramType) ? paramType.type : paramType;
    }

    private determineTypeConversion(baseType: idl.IDLType, paramName: string): TypeConversionResult {
        // 首先尝试枚举映射 - 检查是否是 Literal_ 或 Union_ 类型
        const enumMapping = this.tryMapToEnum(baseType);
        if (enumMapping) {
            console.log(`[CJTypeMapper] Mapped ${this.getTypeDisplayName(baseType)} to enum ${enumMapping.enumName}`);
            return {
                cjType: enumMapping.enumName,
                defaultValue: enumMapping.defaultValue
            };
        }

        // 函数类型优先识别，避免被字符串语义等规则误伤
        if (this.isFunctionType(baseType)) {
            return this.convertFunctionType(baseType)
        }
        if (this.isNumberType(baseType)) {
            return this.convertNumberType(baseType, paramName);
        }

        if (this.isStringType(baseType)) {
            return this.convertStringType(baseType, paramName);
        }

        if (this.isBooleanType(baseType)) {
            return this.convertBooleanType(baseType);
        }

        if (this.isSpecialType(baseType)) {
            return this.convertSpecialType(baseType);
        }

        return {
            cjType: baseType,
            defaultValue: undefined
        };
    }

    private applyOptionalHandling(
        conversion: TypeConversionResult, 
        isOptional: boolean, 
        baseType: idl.IDLType
    ): TypeConversionResult {
        // If conversion suggests overloads, apply optional handling to each overload
        if (conversion.overloads && conversion.overloads.length > 0) {
            if (isOptional) {
                // 基础类型重载参数提供默认值，非基础类型用 Option<T>
                const processedOverloads = conversion.overloads.map(overload => {
                    const cjTypeName = typeof overload.cjType === 'string' ? overload.cjType : this.getTypeDisplayName(overload.cjType as idl.IDLType)
                    if (this.isBasicSemanticType(cjTypeName)) {
                        // 基础语义类型：Length = 0.vp、Float64 = 1.0、Int32 = 0、Int64 = 0
                        return {
                            ...overload,
                            defaultValue: overload.defaultValue || this.getBasicTypeDefault(cjTypeName)
                        }
                    } else {
                        // 非基础类型：ResourceStr、ResourceColor等用合理默认值，复杂类型用 Option<T>
                        if (this.isSemanticResourceType(cjTypeName)) {
                            return {
                                ...overload,
                                defaultValue: overload.defaultValue || this.getSemanticResourceDefault(cjTypeName)
                            }
                        } else {
                            return {
                                cjType: idl.createOptionalType(overload.cjType as idl.IDLType),
                                defaultValue: DEFAULT_VALUES.OPTION_NONE
                            }
                        }
                    }
                })
                return { overloads: processedOverloads }
            }
            return conversion
        }

        if (!isOptional) {
            return {
                cjType: conversion.cjType!,
                defaultValue: undefined,
                error: conversion.error
            };
        }

        const cjTypeName = typeof conversion.cjType === 'string' ? conversion.cjType : this.getTypeDisplayName(conversion.cjType as idl.IDLType)
        
        // 基础类型可选：使用默认值策略
        if (this.isBasicSemanticType(cjTypeName)) {
            return {
                cjType: conversion.cjType!,
                defaultValue: conversion.defaultValue || this.getBasicTypeDefault(cjTypeName),
                error: conversion.error
            };
        }

        // 语义资源类型：使用合理默认值
        if (this.isSemanticResourceType(cjTypeName)) {
            return {
                cjType: conversion.cjType!,
                defaultValue: conversion.defaultValue || this.getSemanticResourceDefault(cjTypeName),
                error: conversion.error
            };
        }

        // 非基础类型：使用 Option<T>
        return {
            cjType: idl.createOptionalType(conversion.cjType as idl.IDLType),
            defaultValue: DEFAULT_VALUES.OPTION_NONE,
            error: conversion.error
        };
    }

    private convertNumberType(baseType: idl.IDLType, paramName: string): TypeConversionResult {
        try {
            const result: NumberConversionResult = convertNumberProperty({
                propertyName: paramName,
                isOptional: true
            });

            return {
                cjType: result.cjType,
                defaultValue: result.defaultValue
            };
        } catch (error) {
            return {
                cjType: 'Int64',
                defaultValue: DEFAULT_VALUES.INT64,
                error: `Number conversion failed: ${error}`
            };
        }
    }

    private convertStringType(baseType: idl.IDLType, paramName: string): TypeConversionResult {
        try {
            const result = this.mapStringType(paramName);
            const typeName = this.getSemanticTypeName(result.targetType);
            
            return {
                cjType: typeName,
                defaultValue: result.defaultValue
            };
        } catch (error) {
            return {
                cjType: 'String',
                defaultValue: DEFAULT_VALUES.RESOURCE_STR,
                error: `String conversion failed: ${error}`
            };
        }
    }

    private convertBooleanType(baseType: idl.IDLType): TypeConversionResult {
        return {
            cjType: 'Bool',
            defaultValue: DEFAULT_VALUES.BOOLEAN
        };
    }

    private convertUnionType(memberTypes: idl.IDLType[], paramName: string, isOptional: boolean): TypeConversionResult {
        try {
            if (!memberTypes || memberTypes.length === 0) {
                // 避免返回 Any，默认按资源字符串处理
                return { cjType: 'ResourceStr', defaultValue: DEFAULT_VALUES.RESOURCE_STR, error: 'Empty union types' }
            }

            // 增强的类型检测，包含调试信息
            const typeNames = memberTypes.map(t => this.getTypeDisplayName(t));
            console.log(`[CJTypeMapper] Union type members for ${paramName}: [${typeNames.join(', ')}]`);
            
            // 首先尝试枚举映射 - 检查是否整个联合可以映射为单个枚举
            for (const memberType of memberTypes) {
                const enumMapping = this.tryMapToEnum(memberType);
                if (enumMapping) {
                    console.log(`[CJTypeMapper] Union member ${this.getTypeDisplayName(memberType)} mapped to enum ${enumMapping.enumName}`);
                    return {
                        cjType: enumMapping.enumName,
                        defaultValue: enumMapping.defaultValue
                    };
                }
            }
            
            // 额外的 Debug 信息：检查原始类型对象
            memberTypes.forEach((t, idx) => {
                console.log(`[CJTypeMapper] Type ${idx} for ${paramName}:`, {
                    displayName: this.getTypeDisplayName(t),
                    toString: t.toString?.(),
                    kind: (t as any).kind,
                    name: (t as any).name,
                    constructor: t.constructor?.name
                });
            });

            const hasString = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                const isStr = this.isStringType(t) || typeName === 'string' || typeName.includes('string');
                console.log(`[CJTypeMapper] ${this.getTypeDisplayName(t)} is string: ${isStr}`);
                return isStr;
            })
            const hasNumber = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                const isNum = this.isNumberType(t) || typeName === 'number' || typeName.includes('number');
                console.log(`[CJTypeMapper] ${this.getTypeDisplayName(t)} is number: ${isNum}`);
                return isNum;
            })
            const hasColorRef = memberTypes.some(t => this.getTypeDisplayName(t).toLowerCase().includes('color'))
            const hasFunction = memberTypes.some(t => this.isFunctionType(t))
            // Case: function-related unions → overloads (function + ResourceStr when combined with string)
            if (hasFunction && hasString) {
                console.log(`[CJTypeMapper] Creating overloads for ${paramName} (function|string)`)
                // 选择首个函数类型作为代表
                const fnType = memberTypes.find(t => this.isFunctionType(t))!
                const overloads = [
                    { cjType: fnType },
                    { cjType: 'ResourceStr', defaultValue: DEFAULT_VALUES.RESOURCE_STR }
                ]
                return { overloads }
            }

            console.log(`[CJTypeMapper] Union analysis for ${paramName}: hasString=${hasString}, hasNumber=${hasNumber}, hasColorRef=${hasColorRef}`);

            // Case: color-related unions → ResourceColor
            if (hasColorRef || STRING_PATTERNS.COLOR.test(paramName)) {
                console.log(`[CJTypeMapper] Converging ${paramName} to ResourceColor (color-related)`);
                return {
                    cjType: 'ResourceColor',
                    defaultValue: this.generateResourceColorDefault(paramName)
                }
            }

            // P0 优化: FontWeight | number | string → FontWeight (字体相关)
            const hasFontWeight = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                return typeName.includes('fontweight') || typeName === 'fontweight';
            });
            
            // 扩展字体权重检测：通过参数名识别
            const isFontWeightParam = /^(fontWeight|font_weight|textWeight|text_weight|weight)$/i.test(paramName);
            
            if ((hasFontWeight || isFontWeightParam) && (hasString || hasNumber)) {
                console.log(`[CJTypeMapper] P0 Converging ${paramName} to FontWeight (FontWeight|number|string or param name match)`);
                return {
                    cjType: 'FontWeight',
                    defaultValue: DEFAULT_VALUES.FONT_WEIGHT
                }
            }

            // Case: string | Resource → ResourceStr (direct pattern match)
            const hasResource = memberTypes.some(t => this.getTypeDisplayName(t).toLowerCase().includes('resource'))
            if (hasString && hasResource && !hasNumber) {
                console.log(`[CJTypeMapper] P0 Converging ${paramName} to ResourceStr (string|Resource)`);
                return {
                    cjType: 'ResourceStr',
                    defaultValue: DEFAULT_VALUES.RESOURCE_STR
                }
            }

            // Case: string | Resource → ResourceStr (fallback by name semantics)
            if (hasString && !hasNumber && STRING_PATTERNS.RESOURCE.test(paramName)) {
                console.log(`[CJTypeMapper] Converging ${paramName} to ResourceStr (by name semantics)`);
                return {
                    cjType: 'ResourceStr',
                    defaultValue: DEFAULT_VALUES.RESOURCE_STR
                }
            }
            
            // P1 优化: Date | Bindable → Date
            const hasDate = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                return typeName.includes('date');
            });
            
            const hasBindable = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                return typeName.includes('bindable');
            });
            
            if (hasDate && hasBindable) {
                console.log(`[CJTypeMapper] P1 Converging ${paramName} to Date (Date|Bindable)`);
                return {
                    cjType: 'Date',
                    defaultValue: 'Date()'
                }
            }
            
            // P2 优化: String | Array<String> → Array<ResourceStr>
            const hasArray = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                return typeName.includes('array');
            });
            
            if (hasString && hasArray && STRING_PATTERNS.RESOURCE.test(paramName)) {
                console.log(`[CJTypeMapper] P2 Converging ${paramName} to Array<ResourceStr> (String|Array<String>)`);
                return {
                    cjType: idl.createReferenceType('Array', [idl.createReferenceType('ResourceStr')]),
                    defaultValue: '[]'
                }
            }
            
            // P2 优化: Number | Array<Number> → Array<Int64>
            if (hasNumber && hasArray) {
                console.log(`[CJTypeMapper] P2 Converging ${paramName} to Array<Int64> (Number|Array<Number>)`);
                return {
                    cjType: idl.createReferenceType('Array', [idl.createReferenceType('Int64')]),
                    defaultValue: '[]'
                }
            }

            // Case: string | number → overloads (numeric semantic + ResourceStr)
            // 严格遵守：TS string 不能映射为 Length，必须通过重载承接两类用法
            if (hasString && hasNumber) {
                console.log(`[CJTypeMapper] Creating overloads for ${paramName} (string|number)`);
                try {
                    const numMapping: NumberConversionResult = convertNumberProperty({ propertyName: paramName, isOptional: isOptional })
                    const strMapping = this.mapStringType(paramName)
                    
                    // 确保 string 路径不会映射为 Length 类型
                    const stringCjType = this.getSemanticTypeName(strMapping.targetType)
                    if (stringCjType === 'Length') {
                        this.logError(`Invalid string to Length mapping for ${paramName}`, 'String type cannot be mapped to Length')
                        // 回退为 ResourceStr，避免产生 Any
                        return { cjType: 'ResourceStr', defaultValue: DEFAULT_VALUES.RESOURCE_STR, error: 'String cannot map to Length' }
                    }
                    
                    const overloads = [
                        { cjType: numMapping.cjType, defaultValue: numMapping.defaultValue },        // number → Length/Float64/Int32/Int64
                        { cjType: stringCjType, defaultValue: strMapping.defaultValue }              // string → ResourceStr/ResourceColor/String (never Length)
                    ]
                    console.log(`[CJTypeMapper] Generated overloads for ${paramName}: [${overloads.map(o => `${o.cjType}=${o.defaultValue}`).join(', ')}]`);
                    return { overloads }
                } catch (error) {
                    this.logError(`Failed to create string|number overloads for ${paramName}`, error)
                    // 回退为 ResourceStr，避免产生 Any
                    return { cjType: 'ResourceStr', defaultValue: DEFAULT_VALUES.RESOURCE_STR }
                }
            }

            // Fallback: 强制检测常见的联合类型模式
            const hasSimpleStringNumber = this.detectSimpleStringNumberUnion(memberTypes, paramName)
            if (hasSimpleStringNumber) {
                console.log(`[CJTypeMapper] Fallback: Creating string|number overloads for ${paramName}`);
                try {
                    const overloads = [
                        { cjType: 'Length', defaultValue: DEFAULT_VALUES.LENGTH },           // 数字路径 → Length
                        { cjType: 'ResourceStr', defaultValue: DEFAULT_VALUES.RESOURCE_STR }  // 字符串路径 → ResourceStr
                    ]
                    console.log(`[CJTypeMapper] Fallback generated overloads for ${paramName}: [${overloads.map(o => `${o.cjType}=${o.defaultValue}`).join(', ')}]`);
                    return { overloads }
                } catch (error) {
                    this.logError(`Failed to create fallback string|number overloads for ${paramName}`, error)
                }
            }

            // P3-P5 策略: 智能处理，平衡收敛和重载
            console.log(`[CJTypeMapper] P3-P5: Analyzing ${memberTypes.length} union members for ${paramName}`);
            
            // 映射所有成员类型
            const mapped = memberTypes.map(t => this.determineTypeConversion(t, paramName))
            const mappedWithNames = mapped.map(m => ({
                conversion: m,
                typeName: typeof m.cjType === 'string' ? m.cjType : this.getTypeDisplayName(m.cjType as idl.IDLType)
            }))
            
            // 检查是否所有类型映射到同一个语义类型（收敛优先）
            const uniqueTypeNames = new Set(mappedWithNames.map(m => m.typeName))
            if (uniqueTypeNames.size === 1) {
                const convergedType = mapped[0]
                console.log(`[CJTypeMapper] P3-P5: All types converge to ${convergedType.cjType}, using convergence`);
                return { cjType: convergedType.cjType!, defaultValue: convergedType.defaultValue }
            }
            
            // 如果成员类型过多（>3），尝试智能合并相似类型
            if (memberTypes.length > 3) {
                const smartMerged = this.smartMergeTypes(mappedWithNames, paramName)
                if (smartMerged) {
                    console.log(`[CJTypeMapper] P3-P5: Smart merged to ${smartMerged.length} types for ${paramName}`);
                    return { overloads: smartMerged }
                }
            }
            
            // 生成重载（限制数量）
            const distinct: Array<{ cjType: idl.IDLType | string; defaultValue?: string }> = []
            const seenNames = new Set<string>()
            
            for (const m of mappedWithNames) {
                if (!seenNames.has(m.typeName)) {
                    seenNames.add(m.typeName)
                    distinct.push({ cjType: m.conversion.cjType!, defaultValue: m.conversion.defaultValue })
                    // 根据成员数量动态调整重载上限
                    const maxOverloads = memberTypes.length <= 4 ? 2 : 3
                    if (distinct.length >= maxOverloads) break
                }
            }
            
            if (distinct.length > 1) {
                console.log(`[CJTypeMapper] P3-P5: Generated ${distinct.length} overloads for ${paramName}: [${distinct.map(o => typeof o.cjType === 'string' ? o.cjType : this.getTypeDisplayName(o.cjType as idl.IDLType)).join(', ')}]`);
                return { overloads: distinct }
            }
            
            // 如果只有一个去重后的类型，直接使用
            if (distinct.length === 1) {
                console.log(`[CJTypeMapper] P3-P5: Single type after deduplication: ${distinct[0].cjType}`);
                return { cjType: distinct[0].cjType, defaultValue: distinct[0].defaultValue }
            }
            
            // 最后的兜底策略
            console.log(`[CJTypeMapper] P3-P5: Fallback to first member type for ${paramName}`);
            return { cjType: memberTypes[0] }
        } catch (error) {
            this.logError('Union conversion failed', error)
            return { cjType: memberTypes[0], error: String(error) }
        }
    }

    private convertSpecialType(baseType: idl.IDLType): TypeConversionResult {
        try {
            const result = this.mapSpecialType(baseType);
            return {
                cjType: result.targetType,
                defaultValue: result.defaultValue
            };
        } catch (error) {
            return {
                cjType: 'Any',
                defaultValue: 'null',
                error: `Special type conversion failed: ${error}`
            };
        }
    }

    // 优化的类型检测方法 - 使用缓存
    public isNumberType(type: idl.IDLType): boolean {
        return this.getCachedTypeCheck('number', type);
    }

    public isStringType(type: idl.IDLType): boolean {
        return this.getCachedTypeCheck('string', type);
    }

    public isBooleanType(type: idl.IDLType): boolean {
        return this.getCachedTypeCheck('boolean', type);
    }

    public isSpecialType(type: idl.IDLType): boolean {
        return this.getCachedTypeCheck('special', type);
    }

    public isBasicType(type: idl.IDLType): boolean {
        return this.getCachedTypeCheck('basic', type);
    }

    private getCachedTypeCheck(checkType: string, type: idl.IDLType): boolean {
        const cacheKey = `${checkType}:${this.getTypeDisplayName(type)}`;
        
        if (this.typeCache.has(cacheKey)) {
            return this.typeCache.get(cacheKey)!;
        }

        let result: boolean;
        if (checkType === 'basic') {
            result = this.isNumberType(type) || this.isStringType(type) || this.isBooleanType(type);
        } else {
            const checker = this.typeCheckers.get(checkType);
            result = checker ? checker(type) : false;
        }

        this.typeCache.set(cacheKey, result);
        return result;
    }

    public getTypeDisplayName(type: idl.IDLType): string {
        try {
            // 尝试多种方式获取类型名称
            if (type.toString && typeof type.toString === 'function') {
                const toStringResult = type.toString();
                if (toStringResult && toStringResult !== '[object Object]') {
                    return toStringResult;
                }
            }
            
            if ((type as any).name) {
                return (type as any).name;
            }
            
            if ((type as any).kind) {
                return (type as any).kind;
            }
            
            // 检查是否是 IDL 内置类型
            if (type === idl.IDLStringType || (type as any) === 'string') {
                return 'string';
            }
            if (type === idl.IDLNumberType || (type as any) === 'number') {
                return 'number';
            }
            if (type === idl.IDLBooleanType || (type as any) === 'boolean') {
                return 'boolean';
            }
            
            return 'unknown';
        } catch (error) {
            this.logError('Failed to get type display name', error);
            return 'unknown';
        }
    }

    private getSemanticTypeName(type: idl.IDLType): string {
        try {
            if (typeof type === 'string') {
                return type;
            }
            return this.getTypeDisplayName(type);
        } catch (error) {
            this.logError('Failed to get semantic type name', error);
            return 'String';
        }
    }

    private mapStringType(propertyName: string): { targetType: idl.IDLType; defaultValue: string } {
        const name = propertyName || '';
        
        // 优先级1: 颜色相关 → ResourceColor
        if (STRING_PATTERNS.COLOR.test(name)) {
            console.log(`[CJTypeMapper] String ${name} mapped to ResourceColor (color pattern)`);
            return {
                targetType: idl.createReferenceType('ResourceColor'),
                defaultValue: this.generateResourceColorDefault(propertyName)
            };
        }
        
        // 优先级2: 回调函数相关（名称像回调但类型为字符串）→ ResourceStr
        if (STRING_PATTERNS.CALLBACK.test(name)) {
            console.log(`[CJTypeMapper] String ${name} mapped to ResourceStr (callback-like string)`);
            return {
                targetType: idl.createReferenceType('ResourceStr'),
                defaultValue: DEFAULT_VALUES.RESOURCE_STR
            };
        }
        
        // 优先级3: 尺寸相关但是字符串类型 → ResourceStr（不能映射为Length）
        if (STRING_PATTERNS.DIMENSIONAL.test(name)) {
            console.log(`[CJTypeMapper] String ${name} mapped to ResourceStr (dimensional but string)`);
            return {
                targetType: idl.createReferenceType('ResourceStr'),
                defaultValue: DEFAULT_VALUES.RESOURCE_STR
            };
        }
        
        // 优先级4: 资源相关 → ResourceStr
        if (STRING_PATTERNS.RESOURCE.test(name)) {
            console.log(`[CJTypeMapper] String ${name} mapped to ResourceStr (resource pattern)`);
            return {
                targetType: idl.createReferenceType('ResourceStr'),
                defaultValue: DEFAULT_VALUES.RESOURCE_STR
            };
        }
        
        // 优先级5: 纯文本消息 → String
        if (STRING_PATTERNS.PLAIN_TEXT.test(name)) {
            console.log(`[CJTypeMapper] String ${name} kept as String (plain text)`);
            return {
                targetType: idl.IDLStringType,
                defaultValue: DEFAULT_VALUES.RESOURCE_STR
            };
        }
        
        // 默认策略: ResourceStr（最常用的字符串语义类型）
        console.log(`[CJTypeMapper] String ${name} mapped to ResourceStr (default)`);
        return {
            targetType: idl.createReferenceType('ResourceStr'),
            defaultValue: DEFAULT_VALUES.RESOURCE_STR
        };
    }

    private isFunctionType(type: idl.IDLType): boolean {
        try {
            const display = this.getTypeDisplayName(type).toLowerCase()
            if ((type as any).kind && (type as any).kind.toLowerCase() === 'function') {
                return true
            }
            if ((type as any).name && String((type as any).name).toLowerCase().includes('function')) {
                return true
            }
            // toString 形如 "(A, B) -> C"
            if (typeof (type as any).toString === 'function') {
                const s = String((type as any).toString())
                if (s.includes('->') || /^\(.*\)\s*->\s*/.test(s)) {
                    return true
                }
            }
            // 兜底：显示名里带箭头且不像普通标识
            return display.includes('->')
        } catch {
            return false
        }
    }

    private convertFunctionType(baseType: idl.IDLType): TypeConversionResult {
        // 函数类型保持原样，由可选处理统一决定是否包 Option
        return { cjType: baseType, defaultValue: undefined }
    }

    private mapSpecialType(type: idl.IDLType): { targetType: idl.IDLType; defaultValue: string; useOption: boolean } {
        const typeName = this.getTypeDisplayName(type).toLowerCase();
        
        switch (typeName) {
            case 'any':
            case 'unknown':
                return { targetType: idl.createReferenceType('Any'), defaultValue: 'null', useOption: false };
            case 'never':
            case 'void':
                return { targetType: idl.createReferenceType('Unit'), defaultValue: 'Unit', useOption: false };
            case 'null':
            case 'undefined':
                return { targetType: idl.createReferenceType('Unit'), defaultValue: 'Unit', useOption: true };
            default:
                return { targetType: type, defaultValue: 'null', useOption: false };
        }
    }

    private generateResourceColorDefault(propertyName: string): string {
        const name = (propertyName || '').toLowerCase();
        
        if (name.includes('background')) return 'Color.White';
        if (name.includes('border')) return 'Color.Gray';
        if (name.includes('text') || name.includes('font')) return 'Color.Black';
        
        return DEFAULT_VALUES.RESOURCE_COLOR;
    }

    private isBasicSemanticType(typeName: string): boolean {
        return ['Length', 'Float64', 'Int32', 'Int64', 'Bool'].includes(typeName);
    }

    private isSemanticResourceType(typeName: string): boolean {
        return ['ResourceStr', 'ResourceColor', 'String'].includes(typeName);
    }

    private getBasicTypeDefault(typeName: string): string {
        const defaults: Record<string, string> = {
            'Length': DEFAULT_VALUES.LENGTH,
            'Float64': DEFAULT_VALUES.FLOAT64,
            'Int32': DEFAULT_VALUES.INT32,
            'Int64': DEFAULT_VALUES.INT64,
            'Bool': DEFAULT_VALUES.BOOLEAN
        };
        return defaults[typeName] || DEFAULT_VALUES.INT64;
    }

    private getSemanticResourceDefault(typeName: string): string {
        const defaults: Record<string, string> = {
            'ResourceStr': DEFAULT_VALUES.RESOURCE_STR,
            'ResourceColor': DEFAULT_VALUES.RESOURCE_COLOR,
            'String': DEFAULT_VALUES.RESOURCE_STR
        };
        return defaults[typeName] || DEFAULT_VALUES.RESOURCE_STR;
    }

    /**
     * 强制检测简单的 string|number 联合类型模式
     */
    private detectSimpleStringNumberUnion(memberTypes: idl.IDLType[], paramName: string): boolean {
        if (!memberTypes || memberTypes.length !== 2) {
            return false;
        }

        // 检测是否有一个类型看起来像 string，另一个像 number
        const typeNames = memberTypes.map(t => this.getTypeDisplayName(t).toLowerCase());
        console.log(`[CJTypeMapper] Fallback detection for ${paramName}: types=[${typeNames.join(', ')}]`);

        const hasStringLike = typeNames.some(name => 
            name.includes('string') || 
            name === 'string' ||
            name.includes('str')
        );
        
        const hasNumberLike = typeNames.some(name => 
            name.includes('number') || 
            name === 'number' ||
            name.includes('num') ||
            name.includes('int') ||
            name.includes('float')
        );

        const result = hasStringLike && hasNumberLike;
        console.log(`[CJTypeMapper] Fallback detection result for ${paramName}: hasStringLike=${hasStringLike}, hasNumberLike=${hasNumberLike}, result=${result}`);
        
        return result;
    }

    /**
     * 智能合并相似的类型，减少重载数量
     */
    private smartMergeTypes(
        mappedWithNames: Array<{ conversion: TypeConversionResult; typeName: string }>, 
        paramName: string
    ): Array<{ cjType: idl.IDLType | string; defaultValue?: string }> | null {
        const typeGroups = new Map<string, Array<{ conversion: TypeConversionResult; typeName: string }>>()
        
        // 将类型按语义分组
        for (const mapped of mappedWithNames) {
            const group = this.getTypeGroup(mapped.typeName)
            if (!typeGroups.has(group)) {
                typeGroups.set(group, [])
            }
            typeGroups.get(group)!.push(mapped)
        }
        
        // 如果分组后数量仍然过多，返回 null
        if (typeGroups.size > 3) {
            return null
        }
        
        // 从每个组选择最具代表性的类型
        const result: Array<{ cjType: idl.IDLType | string; defaultValue?: string }> = []
        for (const [group, members] of typeGroups) {
            const representative = this.selectRepresentativeType(members, group, paramName)
            if (representative) {
                result.push(representative)
            }
        }
        
        return result.length > 1 && result.length <= 3 ? result : null
    }
    
    /**
     * 将类型分组为语义类别
     */
    private getTypeGroup(typeName: string): string {
        const lower = typeName.toLowerCase()
        
        if (['length', 'float32', 'float64', 'int32', 'int64'].includes(lower)) {
            return 'numeric'
        }
        if (['resourcestr', 'string'].includes(lower)) {
            return 'text'
        }
        if (['resourcecolor', 'color'].includes(lower)) {
            return 'color'
        }
        if (['bool', 'boolean'].includes(lower)) {
            return 'boolean'
        }
        if (['option', 'optional'].some(opt => lower.includes(opt))) {
            return 'optional'
        }
        
        return 'other'
    }
    
    /**
     * 从同组类型中选择最具代表性的类型
     */
    private selectRepresentativeType(
        members: Array<{ conversion: TypeConversionResult; typeName: string }>, 
        group: string, 
        paramName: string
    ): { cjType: idl.IDLType | string; defaultValue?: string } | null {
        if (members.length === 0) return null
        
        // 优先级规则
        const priorities: Record<string, string[]> = {
            'numeric': ['Length', 'Float32', 'Int64', 'Int32', 'Float64'],
            'text': ['ResourceStr', 'String'],
            'color': ['ResourceColor', 'Color'],
            'boolean': ['Bool', 'Boolean'],
            'optional': [], // 保持原类型
            'other': [] // 使用第一个
        }
        
        const groupPriorities = priorities[group] || []
        
        // 按优先级选择
        for (const priority of groupPriorities) {
            const found = members.find(m => m.typeName === priority)
            if (found) {
                return {
                    cjType: found.conversion.cjType!,
                    defaultValue: found.conversion.defaultValue
                }
            }
        }
        
        // 如果没有匹配优先级，返回第一个
        const first = members[0]
        return {
            cjType: first.conversion.cjType!,
            defaultValue: first.conversion.defaultValue
        }
    }

    private logError(message: string, error: any): void {
        console.warn(`[CJTypeMapper] ${message}: ${error}`);
    }

    private trackError(message: string, error: any): void {
        const errorKey = `${message}: ${String(error)}`;
        const count = this.errorStats.get(errorKey) || 0;
        this.errorStats.set(errorKey, count + 1);
        
        // 只在第一次出现时记录详细错误
        if (count === 0) {
            console.error(`[CJTypeMapper] NEW ERROR: ${message}`, error);
        } else if (count % 10 === 0) {
            // 每10次重复错误时提醒
            console.warn(`[CJTypeMapper] REPEATED ERROR (${count + 1} times): ${message}`);
        }
    }

    /**
     * 获取错误统计信息（用于调试）
     */
    public getErrorStats(): Map<string, number> {
        return new Map(this.errorStats);
    }

    /**
     * 清理缓存（用于测试或重置）
     */
    public clearCaches(): void {
        this.typeCache.clear();
        this.conversionCache.clear();
        this.errorStats.clear();
        console.log('[CJTypeMapper] All caches cleared');
    }
}
