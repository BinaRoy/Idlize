import * as idl from '@idlizer/core/idl';
import { convertNumberProperty, NumberConversionInput, NumberConversionResult } from './CJNumberConversion';

export const DEFAULT_VALUES = {
    LENGTH: '0.vp',
    FLOAT64: '0.0',
    INT32: '0',
    INT64: '0',
    BOOLEAN: 'false',
    RESOURCE_STR: '""',
    RESOURCE_COLOR: 'Color.Black',
    OPTION_NONE: 'None'
} as const;

export interface TypeConversionResult {
    cjType: idl.IDLType | string;
    defaultValue?: string;
    error?: string;
}

interface TypeChecker {
    (type: idl.IDLType): boolean;
}

// 预编译的正则表达式，提高字符串匹配性能
const STRING_PATTERNS = {
    COLOR: /(color|background|border|fill|stroke|tint|theme|primary|secondary|accent)/i,
    RESOURCE: /(content|text|label|title|placeholder|hint|name|src|source|path|url|icon|image|resource|theme|style)/i,
    PLAIN_TEXT: /(message|error|debug|log|description|comment|reason|info|warning|trace)/i
} as const;

export class CJTypeMapper {
    private readonly typeCheckers: Map<string, TypeChecker> = new Map();
    private readonly typeCache: Map<string, boolean> = new Map();
    
    constructor() {
        this.initializeTypeCheckers();
    }

    private initializeTypeCheckers(): void {
        this.typeCheckers.set('number', this.createTypeChecker(['number', 'Number']));
        this.typeCheckers.set('string', this.createTypeChecker(['string', 'String']));
        this.typeCheckers.set('boolean', this.createTypeChecker(['boolean', 'Boolean']));
        this.typeCheckers.set('special', this.createSpecialTypeChecker());
    }

    private createTypeChecker(typeNames: string[]): TypeChecker {
        return (type: idl.IDLType) => {
            try {
                const typeName = this.getTypeDisplayName(type);
                return typeNames.some(name => 
                    typeName === name || 
                    typeName.toLowerCase() === name.toLowerCase()
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

            const baseType = this.extractBaseType(paramType);
            const conversion = this.determineTypeConversion(baseType, paramName);
            return this.applyOptionalHandling(conversion, isOptional, baseType);
            
        } catch (error) {
            this.logError(`Failed to convert parameter ${paramName}`, error);
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
        if (!isOptional) {
            return {
                cjType: conversion.cjType,
                defaultValue: undefined,
                error: conversion.error
            };
        }

        if (this.isBasicType(baseType)) {
            return {
                cjType: conversion.cjType,
                defaultValue: conversion.defaultValue,
                error: conversion.error
            };
        }

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
            if (type.toString) {
                return type.toString();
            }
            if ((type as any).name) {
                return (type as any).name;
            }
            if ((type as any).kind) {
                return (type as any).kind;
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
        
        if (STRING_PATTERNS.COLOR.test(name)) {
            return {
                targetType: idl.createReferenceType('ResourceColor'),
                defaultValue: this.generateResourceColorDefault(propertyName)
            };
        }
        
        if (STRING_PATTERNS.RESOURCE.test(name)) {
            return {
                targetType: idl.createReferenceType('ResourceStr'),
                defaultValue: DEFAULT_VALUES.RESOURCE_STR
            };
        }
        
        if (STRING_PATTERNS.PLAIN_TEXT.test(name)) {
            return {
                targetType: idl.IDLStringType,
                defaultValue: DEFAULT_VALUES.RESOURCE_STR
            };
        }
        
        return {
            targetType: idl.createReferenceType('ResourceStr'),
            defaultValue: DEFAULT_VALUES.RESOURCE_STR
        };
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

    private logError(message: string, error: any): void {
        console.warn(`[CJTypeMapper] ${message}: ${error}`);
    }
}
