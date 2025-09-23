import * as idl from '@idlizer/core/idl';
export declare const DEFAULT_VALUES: {
    readonly LENGTH: "0.vp";
    readonly FLOAT64: "1.0";
    readonly INT32: "0";
    readonly INT64: "0";
    readonly BOOLEAN: "false";
    readonly RESOURCE_STR: "\"\"";
    readonly RESOURCE_COLOR: "Color.Black";
    readonly OPTION_NONE: "None";
    readonly FONT_WEIGHT: "FontWeight.Normal";
    readonly FONT_SIZE: "16.fp";
    readonly OPACITY: "1.0";
    readonly Z_INDEX: "0";
    readonly MAX_LINES: "1";
    readonly SELECTION_START: "0";
    readonly SELECTION_END: "0";
};
export interface TypeConversionResult {
    cjType?: idl.IDLType | string;
    defaultValue?: string;
    overloads?: Array<{
        cjType: idl.IDLType | string;
        defaultValue?: string;
        useOption?: boolean;
    }>;
    error?: string;
    isFromUnionOverload?: boolean;
}
/**
 * 未处理联合类型统计
 */
interface UnhandledUnionStats {
    count: number;
    examples: string[];
}
export declare class CJTypeMapper {
    private readonly typeCheckers;
    private readonly typeCache;
    private readonly conversionCache;
    private readonly errorStats;
    private readonly enumMappingCache;
    private readonly unhandledUnions;
    private readonly debugEnabled;
    constructor();
    private initializeTypeCheckers;
    private initializeCommonEnumMappings;
    private getCombinations;
    private tryMapToEnum;
    private extractLiteralsFromTypeName;
    private isLiteralSubsetMatch;
    private getEnumDefaultValue;
    private createTypeChecker;
    private createSpecialTypeChecker;
    convertParameterType(paramType: idl.IDLType, paramName: string, isOptional: boolean): TypeConversionResult;
    /**
     * 将命名的 Union_* 类型按语义进行收敛或重载
     */
    private convertNamedUnionDisplay;
    /**
     * 从 Union_* 类型名提取标记
     */
    private extractUnionTokens;
    /**
     * 判断是否为原始类型或字面量类型
     */
    private isPrimitiveOrLiteral;
    /**
     * 分析联合类型标记，生成类型特征
     */
    private analyzeUnionTokens;
    /**
     * 应用联合类型收敛规则（按优先级排序）
     */
    private applyUnionConvergenceRules;
    /**
     * 追踪未处理的联合类型，用于后续规则补充
     */
    private trackUnhandledUnion;
    private extractBaseType;
    private determineTypeConversion;
    private applyOptionalHandling;
    private convertNumberType;
    private convertStringType;
    private convertBooleanType;
    private convertUnionType;
    private convertSpecialType;
    isNumberType(type: idl.IDLType): boolean;
    isStringType(type: idl.IDLType): boolean;
    isBooleanType(type: idl.IDLType): boolean;
    isSpecialType(type: idl.IDLType): boolean;
    isBasicType(type: idl.IDLType): boolean;
    isTupleType(type: idl.IDLType): boolean;
    private getCachedTypeCheck;
    getTypeDisplayName(type: idl.IDLType): string;
    private getSemanticTypeName;
    private mapStringType;
    private isFunctionType;
    private convertTupleType;
    private getTupleDefaultValue;
    private convertFunctionType;
    private mapSpecialType;
    private generateResourceColorDefault;
    private isBasicSemanticType;
    private isSemanticResourceType;
    private getBasicTypeDefault;
    private getSemanticResourceDefault;
    /**
     * 强制检测简单的 string|number 联合类型模式
     */
    private detectSimpleStringNumberUnion;
    /**
     * 智能合并相似的类型，减少重载数量
     */
    private smartMergeTypes;
    /**
     * 将类型分组为语义类别
     */
    private getTypeGroup;
    /**
     * 从同组类型中选择最具代表性的类型
     */
    private selectRepresentativeType;
    private logError;
    /**
     * 调试日志输出（可通过环境变量控制）
     */
    private debugLog;
    private trackError;
    /**
     * 获取错误统计信息（用于调试）
     */
    getErrorStats(): Map<string, number>;
    /**
     * 获取未处理联合类型统计（用于调试和规则补充）
     */
    getUnhandledUnions(): Map<string, UnhandledUnionStats>;
    /**
     * 清理缓存（用于测试或重置）
     */
    clearCaches(): void;
}
export {};
//# sourceMappingURL=CJTypeMapper.d.ts.map