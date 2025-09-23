/**
 * CJNumberConversion.ts
 *
 * TypeScript number 类型到 Cangjie 类型的智能转换器
 * 仅在组件层 (ComponentsPrinter) 的 Cangjie 输出路径生效
 * 不影响 Peer 层、IDL 层及其他语言输出路径
 */
export type NumberSemanticHint = 'size' | 'optionalSize' | 'position' | 'count' | 'ratio' | 'angle' | 'timestamp';
export interface NumberMappingContext {
    propertyName: string;
    semanticHint: NumberSemanticHint;
    range?: {
        min?: number;
        max?: number;
    };
    unit?: string;
}
export interface NumberConversionInput {
    propertyName: string;
    isOptional?: boolean;
    semanticHint?: NumberSemanticHint;
    jsDocTags?: {
        tag: string;
        comment?: string;
    }[];
}
export interface NumberConversionResult {
    cjType: 'Length' | 'Float64' | 'Int32' | 'Int64';
    defaultValue: string;
    unit?: 'vp' | 'px' | 'fp' | 'percent' | 'lpx';
}
/**
 * 智能映射 TypeScript number 类型到 Cangjie 类型
 * 基于仓颉语言实际使用模式进行精确映射
 * @param context 映射上下文信息
 * @returns 对应的 Cangjie 类型名称
 */
export declare function mapNumberType(context: NumberMappingContext): 'Length' | 'Float64' | 'Int32' | 'Int64';
/**
 * 为 Length 类型选择合适的默认单位
 * 基于 Cangjie 实际使用模式进行单位选择
 * @param propertyName 属性名称
 * @returns 合适的单位字符串
 */
export declare function selectLengthUnit(propertyName: string): 'vp' | 'px' | 'fp' | 'percent' | 'lpx';
/**
 * 生成 Length 类型的默认值
 * @param propertyName 属性名称
 * @param unit 单位
 * @returns 格式化的默认值
 */
export declare function generateLengthDefault(propertyName: string, unit: string): string;
/**
 * 组合转换函数：类型 + 默认值
 * @param input 转换输入参数
 * @returns 转换结果，包含类型、默认值和单位信息
 */
export declare function convertNumberProperty(input: NumberConversionInput): NumberConversionResult;
//# sourceMappingURL=CJNumberConversion.d.ts.map