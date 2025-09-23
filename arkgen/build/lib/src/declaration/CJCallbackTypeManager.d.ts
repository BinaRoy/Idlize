/**
 * 回调类型命名化管理器
 *
 * 职责：
 * 1. 识别函数类型并生成命名回调类型
 * 2. 管理回调类型定义的去重与缓存
 * 3. 提供统一的回调类型命名规则
 * 4. 支持基于仓颉语言类型系统的回调处理
 */
export declare class CJCallbackTypeManager {
    private callbackAliasBySignature;
    private componentCallbackDefinitions;
    /**
     * 清理当前组件的回调类型缓存
     */
    clearComponentCallbacks(componentName: string): void;
    /**
     * 尝试将内联函数类型转换为命名回调类型
     *
     * @param paramName 参数名称
     * @param typeName 原始类型名（可能是内联函数类型）
     * @param methodName 所属方法名
     * @param componentName 所属组件名
     * @returns 处理后的类型名（可能是命名回调类型或原始类型）
     */
    processCallbackType(paramName: string, typeName: string, methodName: string, componentName: string): string;
    /**
     * 字符串归一化：统一处理各种回调类型形态
     */
    private normalizeCallbackTypeName;
    /**
     * 字符串归一化：统一处理各种回调类型形态（静态版本）
     */
    static normalizeCallbackTypeName(typeName: string): string;
    /**
     * 获取或创建回调类型别名
     */
    private getOrCreateCallbackAlias;
    /**
     * 规范化函数签名
     */
    private normalizeFunctionSignature;
    /**
     * 生成回调类型别名名称
     *
     * 规则：
     * 1. 优先基于参数名：callback_ -> Callback, onXxx -> OnXxxCallback
     * 2. 其次基于方法名：onClick -> OnClickCallback
     * 3. 确保唯一性：添加数字后缀避免冲突
     */
    private generateCallbackAliasName;
    /**
     * 转换为 PascalCase
     */
    private toPascalCase;
    /**
     * 确保名称唯一性
     */
    private ensureUniqueName;
    /**
     * 获取指定组件的回调类型定义
     */
    getCallbackDefinitions(componentName: string): string[];
    /**
     * 检查是否为函数类型
     */
    static isFunctionType(typeName: string): boolean;
    private static stripOuterParens;
    private static readonly OPTION_WRAPPER_REGEX;
    /**
     * 检测是否为回调类型（命名回调或内联函数）
     */
    static isCallbackType(typeName: string): boolean;
    /**
     * 提取 Option<CallbackType> 中的基础回调类型
     */
    static extractBaseCallbackType(typeName: string): string;
    /**
     * 根据可选性包装回调类型
     */
    static wrapCallbackType(baseType: string, isOptional: boolean): string;
    /**
     * 格式化回调参数（统一入口）
     */
    static formatCallbackParameter(name: string, typeName: string, isOptional: boolean): string;
    /**
     * 确保回调类型被 Option<> 包装
     */
    static ensureOptionCallbackType(typeName: string): string;
    /**
     * 预扫描单个方法，收集其中的回调类型
     *
     * @param method 方法对象
     * @param componentName 组件名称
     * @param typeMapper 类型映射器，包含 convertParameterType 方法
     * @param typeRewriter 类型改写器，包含 rewriteTypeName 方法（可选）
     */
    prescanMethod(method: any, componentName: string, typeMapper: any, typeRewriter?: {
        rewriteTypeName: (typeName: string) => string;
    }): void;
    /**
     * 批量预扫描方法数组
     */
    prescanMethods(methods: any[], componentName: string, typeMapper: any, typeRewriter?: {
        rewriteTypeName: (typeName: string) => string;
    }): void;
}
//# sourceMappingURL=CJCallbackTypeManager.d.ts.map