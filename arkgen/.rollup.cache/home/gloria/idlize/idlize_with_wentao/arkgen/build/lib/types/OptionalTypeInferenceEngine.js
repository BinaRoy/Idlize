/**
 * 可选类型推断引擎
 * 智能分析 TypeScript 可选属性，决定使用默认值语法还是 Option<T> 类型
 * 基于仓颉语言的 Option<T> 类型系统和语义化类型进行智能推断
 */
export class OptionalTypeInferenceEngine {
    constructor() {
        // UI 组件常见属性的默认值映射表（基于仓颉语言语义化类型）
        this.uiDefaults = new Map([
            // 字体相关默认值（基于仓颉语言 Length 类型）
            ['fontSize', 'Length.of(16)'],
            ['fontWeight', 'FontWeight.Normal'],
            ['fontFamily', 'FontFamily.Default'],
            ['fontStyle', 'FontStyle.Normal'],
            // 可见性和状态默认值（基于仓颉语言 Bool 类型）
            ['visible', 'true'],
            ['enabled', 'true'],
            ['opacity', '1.0'],
            ['clickable', 'true'],
            ['focusable', 'true'],
            // 尺寸相关默认值（基于仓颉语言 Length 类型）
            ['width', 'Length.wrapContent()'],
            ['height', 'Length.wrapContent()'],
            ['maxWidth', 'Length.infinity()'],
            ['maxHeight', 'Length.infinity()'],
            ['minWidth', 'Length.of(0)'],
            ['minHeight', 'Length.of(0)'],
            // 边距和内边距默认值（基于仓颉语言 Length 类型）
            ['margin', 'Margin.zero()'],
            ['padding', 'Padding.zero()'],
            ['borderWidth', 'Length.of(0)'],
            ['borderRadius', 'Length.of(0)'],
            // 对齐相关默认值（基于仓颉语言枚举类型）
            ['textAlign', 'TextAlign.Start'],
            ['verticalAlign', 'VerticalAlign.Top'],
            ['gravity', 'Gravity.TopStart'],
            // 布局相关默认值（基于仓颉语言数值类型）
            ['flexGrow', '0'],
            ['flexShrink', '1'],
            ['flexBasis', 'Length.auto()'],
            // 动画相关默认值（基于仓颉语言 Duration 类型）
            ['duration', 'Duration.of(300)'],
            ['curve', 'Curve.ease()'],
            ['delay', 'Duration.of(0)'],
            // 交互相关默认值（基于仓颉语言枚举类型）
            ['hitTestBehavior', 'HitTestBehavior.Auto'],
            ['userInteractionEnabled', 'true'],
            // 颜色相关默认值（基于仓颉语言 ResourceColor 类型）
            ['backgroundColor', 'Color.transparent()'],
            ['foregroundColor', 'Color.primary()'],
            ['borderColor', 'Color.gray()'],
            // 阴影相关默认值（基于仓颉语言 Length 和 Float64 类型）
            ['shadowOpacity', '0.0'],
            ['shadowRadius', 'Length.of(0)'],
            ['shadowOffset', 'Offset.zero()'],
            // 变换相关默认值（基于仓颉语言 Float64 类型）
            ['scale', '1.0'],
            ['rotation', '0.0'],
            ['translation', 'Offset.zero()'],
            // 滚动相关默认值（基于仓颉语言枚举类型）
            ['scrollEnabled', 'true'],
            ['scrollDirection', 'ScrollDirection.Vertical'],
            ['bounces', 'true'],
            // 输入相关默认值（基于仓颉语言 ResourceStr 类型）
            ['placeholder', 'String.empty()'],
            ['maxLength', 'Int64.max()'],
            ['keyboardType', 'KeyboardType.Default'],
            // 选择相关默认值（基于仓颉语言 Bool 和 Int32 类型）
            ['multipleSelection', 'false'],
            ['selectedIndex', '-1'],
            ['defaultValue', 'String.empty()'], // 默认值为空
        ]);
        // 语义模式匹配规则 - 根据属性名模式推断默认值（基于仓颉语言语义化类型）
        this.semanticPatterns = [
            // 尺寸相关模式（基于仓颉语言 Length 类型）
            { pattern: /size$/i, defaultValue: 'Length.of(16)', type: 'Length' },
            { pattern: /width$/i, defaultValue: 'Length.wrapContent()', type: 'Length' },
            { pattern: /height$/i, defaultValue: 'Length.wrapContent()', type: 'Length' },
            { pattern: /radius$/i, defaultValue: 'Length.of(0)', type: 'Length' },
            { pattern: /margin$/i, defaultValue: 'Length.of(0)', type: 'Length' },
            { pattern: /padding$/i, defaultValue: 'Length.of(0)', type: 'Length' },
            { pattern: /gap$/i, defaultValue: 'Length.of(0)', type: 'Length' },
            { pattern: /offset$/i, defaultValue: 'Length.of(0)', type: 'Length' },
            // 可见性相关模式（基于仓颉语言 Bool 类型）
            { pattern: /visible$/i, defaultValue: 'true', type: 'Bool' },
            { pattern: /enabled$/i, defaultValue: 'true', type: 'Bool' },
            { pattern: /disabled$/i, defaultValue: 'false', type: 'Bool' },
            { pattern: /hidden$/i, defaultValue: 'false', type: 'Bool' },
            { pattern: /show$/i, defaultValue: 'true', type: 'Bool' },
            // 透明度和颜色相关模式（基于仓颉语言 Float64 和 ResourceColor 类型）
            { pattern: /opacity$/i, defaultValue: '1.0', type: 'Float64' },
            { pattern: /alpha$/i, defaultValue: '1.0', type: 'Float64' },
            { pattern: /transparent$/i, defaultValue: 'true', type: 'Bool' },
            // 数量和索引相关模式（基于仓颉语言 Int32 和 Int64 类型）
            { pattern: /count$/i, defaultValue: '0', type: 'Int64' },
            { pattern: /index$/i, defaultValue: '-1', type: 'Int64' },
            { pattern: /position$/i, defaultValue: '0', type: 'Int64' },
            { pattern: /length$/i, defaultValue: '0', type: 'Int64' },
            // 角度和旋转相关模式（基于仓颉语言 Float64 类型）
            { pattern: /angle$/i, defaultValue: '0.0', type: 'Float64' },
            { pattern: /rotation$/i, defaultValue: '0.0', type: 'Float64' },
            { pattern: /degree$/i, defaultValue: '0.0', type: 'Float64' },
            // 比例和缩放相关模式（基于仓颉语言 Float64 类型）
            { pattern: /scale$/i, defaultValue: '1.0', type: 'Float64' },
            { pattern: /ratio$/i, defaultValue: '1.0', type: 'Float64' },
            { pattern: /factor$/i, defaultValue: '1.0', type: 'Float64' },
            { pattern: /percent$/i, defaultValue: '0.0', type: 'Float64' },
            // 时间相关模式（基于仓颉语言 Duration 类型）
            { pattern: /duration$/i, defaultValue: 'Duration.of(300)', type: 'Duration' },
            { pattern: /delay$/i, defaultValue: 'Duration.of(0)', type: 'Duration' },
            { pattern: /timeout$/i, defaultValue: 'Duration.of(5000)', type: 'Duration' },
            // 文本相关模式（基于仓颉语言 ResourceStr 类型）
            { pattern: /text$/i, defaultValue: 'String.empty()', type: 'String' },
            { pattern: /content$/i, defaultValue: 'String.empty()', type: 'String' },
            { pattern: /placeholder$/i, defaultValue: 'String.empty()', type: 'String' },
            { pattern: /title$/i, defaultValue: 'String.empty()', type: 'String' },
            { pattern: /label$/i, defaultValue: 'String.empty()', type: 'String' },
            // 交互相关模式（基于仓颉语言 Bool 类型）
            { pattern: /clickable$/i, defaultValue: 'true', type: 'Bool' },
            { pattern: /selectable$/i, defaultValue: 'true', type: 'Bool' },
            { pattern: /focusable$/i, defaultValue: 'true', type: 'Bool' },
            { pattern: /touchable$/i, defaultValue: 'true', type: 'Bool' },
            // 选中状态模式（基于仓颉语言 Bool 类型）
            { pattern: /selected$/i, defaultValue: 'false', type: 'Bool' },
            { pattern: /checked$/i, defaultValue: 'false', type: 'Bool' },
            { pattern: /active$/i, defaultValue: 'false', type: 'Bool' },
            { pattern: /current$/i, defaultValue: 'false', type: 'Bool' },
        ];
    }
    /**
     * 推断可选属性的处理策略（基于仓颉语言 Option<T> 类型系统）
     * @param propertyName 属性名称
     * @param propertyType 属性类型
     * @param hasInitializer 是否有显式初始化器
     * @param isRequired 是否为必需属性
     * @returns 处理策略
     */
    inferOptionalHandling(propertyName, propertyType, hasInitializer, isRequired = false) {
        // 策略 1: 如果是必需属性，不使用可选处理
        if (isRequired) {
            return {
                strategy: 'required',
                syntax: `${propertyName}: ${propertyType}`,
                explanation: '必需属性，不使用默认值或 Option 类型'
            };
        }
        // 策略 2: 检查显式默认值（优先级最高）
        if (hasInitializer) {
            return {
                strategy: 'explicit_default',
                syntax: `public var ${propertyName}!: ${propertyType} = /* 从 TS 初始化器提取 */`,
                explanation: '使用 TypeScript 中定义的显式默认值'
            };
        }
        // 策略 3: 检查内置 UI 默认值（优先级第二）
        const uiDefault = this.uiDefaults.get(propertyName);
        if (uiDefault) {
            return {
                strategy: 'ui_default',
                syntax: `public var ${propertyName}!: ${propertyType} = ${uiDefault}`,
                explanation: `使用 UI 组件的标准默认值: ${uiDefault}`
            };
        }
        // 策略 4: 检查语义模式匹配（优先级第三）
        for (const { pattern, defaultValue, type } of this.semanticPatterns) {
            if (pattern.test(propertyName)) {
                // 检查类型是否匹配
                if (this.isTypeCompatible(propertyType, type)) {
                    return {
                        strategy: 'semantic_default',
                        syntax: `public var ${propertyName}!: ${propertyType} = ${defaultValue}`,
                        explanation: `根据属性名语义推断的默认值: ${defaultValue}`
                    };
                }
            }
        }
        // 策略 5: 检查是否为回调函数类型
        if (this.isCallbackType(propertyType)) {
            return {
                strategy: 'callback_option',
                syntax: `${propertyName}: Option<${propertyType}>`,
                explanation: '回调函数使用 Option 类型，允许为空'
            };
        }
        // 策略 6: 检查是否为枚举或联合类型
        if (this.isEnumOrUnionType(propertyType)) {
            const enumDefault = this.getEnumDefaultValue(propertyType);
            if (enumDefault) {
                return {
                    strategy: 'enum_default',
                    syntax: `public var ${propertyName}!: ${propertyType} = ${enumDefault}`,
                    explanation: `枚举类型使用默认值: ${enumDefault}`
                };
            }
        }
        // 策略 7: 回退到 Option 类型（最后的选择）
        return {
            strategy: 'option_type',
            syntax: `${propertyName}: Option<${propertyType}>`,
            explanation: '无法确定合适的默认值，使用 Option 类型表示可选'
        };
    }
    /**
     * 生成便利方法（基于仓颉语言 Option<T> 类型系统）
     * @param propertyName 属性名称
     * @param propertyType 属性类型
     * @param componentName 组件名称
     * @returns 便利方法代码行数组
     */
    generateConvenienceMethods(propertyName, propertyType, componentName) {
        const methods = [];
        const capitalizedName = this.capitalize(propertyName);
        // 为 Option 类型的属性生成便利方法
        methods.push(`  /**`);
        methods.push(`   * 设置 ${propertyName} 属性`);
        methods.push(`   * @param value ${propertyName} 的值`);
        methods.push(`   * @returns 当前组件实例，支持链式调用`);
        methods.push(`   */`);
        methods.push(`  public func set${capitalizedName}(value: ${propertyType}): ${componentName} {`);
        methods.push(`    this.${propertyName} = Some(value)`);
        methods.push(`    return this`);
        methods.push(`  }`);
        methods.push(``);
        // 为 Option 类型生成清除方法
        methods.push(`  /**`);
        methods.push(`   * 清除 ${propertyName} 属性（设为 None）`);
        methods.push(`   * @returns 当前组件实例，支持链式调用`);
        methods.push(`   */`);
        methods.push(`  public func clear${capitalizedName}(): ${componentName} {`);
        methods.push(`    this.${propertyName} = None`);
        methods.push(`    return this`);
        methods.push(`  }`);
        methods.push(``);
        // 为 Option 类型生成设置可选值的方法
        methods.push(`  /**`);
        methods.push(`   * 设置 ${propertyName} 的可选值`);
        methods.push(`   * @param value 可选的 ${propertyName} 值`);
        methods.push(`   * @returns 当前组件实例，支持链式调用`);
        methods.push(`   */`);
        methods.push(`  public func set${capitalizedName}Optional(value: Option<${propertyType}>): ${componentName} {`);
        methods.push(`    this.${propertyName} = value`);
        methods.push(`    return this`);
        methods.push(`  }`);
        return methods;
    }
    /**
     * 检查类型兼容性（基于仓颉语言类型系统）
     * @param actualType 实际类型
     * @param expectedType 期望类型
     * @returns 是否兼容
     */
    isTypeCompatible(actualType, expectedType) {
        // 简单的类型兼容性检查
        if (actualType === expectedType)
            return true;
        // 检查语义化类型的兼容性（基于仓颉语言类型系统）
        const typeCompatibilityMap = {
            'Length': ['Int64', 'Float64', 'number'],
            'Duration': ['Int64', 'Float64', 'number'],
            'String': ['string'],
            'ResourceStr': ['string', 'String'],
            'ResourceColor': ['string', 'String', 'Color'],
            'Bool': ['boolean'],
            'Int64': ['number', 'integer'],
            'Int32': ['number', 'integer'],
            'Float64': ['number', 'float']
        };
        const compatibleTypes = typeCompatibilityMap[expectedType];
        return compatibleTypes ? compatibleTypes.includes(actualType) : false;
    }
    /**
     * 检查是否为回调函数类型
     * @param type 类型字符串
     * @returns 是否为回调类型
     */
    isCallbackType(type) {
        return type.includes('->') ||
            type.includes('() =>') ||
            type.includes('Callback') ||
            type.includes('Handler') ||
            type.includes('Listener') ||
            type.startsWith('(') && type.includes(') =>');
    }
    /**
     * 检查是否为枚举或联合类型
     * @param type 类型字符串
     * @returns 是否为枚举或联合类型
     */
    isEnumOrUnionType(type) {
        return type.includes('|') ||
            type.includes('Union_') ||
            /^[A-Z][a-zA-Z]*$/.test(type); // 简单的枚举命名检查
    }
    /**
     * 获取枚举类型的默认值（基于仓颉语言枚举类型系统）
     * @param enumType 枚举类型名称
     * @returns 默认值或 null
     */
    getEnumDefaultValue(enumType) {
        // 常见枚举类型的默认值映射（基于仓颉语言枚举类型系统）
        const enumDefaults = {
            'TextAlign': 'TextAlign.Start',
            'VerticalAlign': 'VerticalAlign.Top',
            'FontWeight': 'FontWeight.Normal',
            'FontStyle': 'FontStyle.Normal',
            'BorderStyle': 'BorderStyle.Solid',
            'FlexDirection': 'FlexDirection.Row',
            'JustifyContent': 'JustifyContent.Start',
            'AlignItems': 'AlignItems.Start',
            'Visibility': 'Visibility.Visible',
            'ScrollDirection': 'ScrollDirection.Vertical',
            'ImageFit': 'ImageFit.Cover',
            'BlendMode': 'BlendMode.Normal',
            'GestureDirection': 'GestureDirection.All',
            'HitTestBehavior': 'HitTestBehavior.Auto'
        };
        return enumDefaults[enumType] || null;
    }
    /**
     * 首字母大写
     * @param str 输入字符串
     * @returns 首字母大写的字符串
     */
    capitalize(str) {
        return str.charAt(0).toUpperCase() + str.slice(1);
    }
    /**
     * 生成策略决策报告
     * @param decisions 决策数组
     * @returns 决策报告
     */
    generateStrategyReport(decisions) {
        const report = [];
        report.push('// =====================================================');
        report.push('// 可选类型处理策略报告（基于仓颉语言 Option<T> 类型系统）');
        report.push('// =====================================================');
        report.push('');
        // 统计各种策略的使用情况
        const strategyCount = decisions.reduce((acc, decision) => {
            acc[decision.strategy] = (acc[decision.strategy] || 0) + 1;
            return acc;
        }, {});
        report.push('// 策略使用统计:');
        Object.entries(strategyCount).forEach(([strategy, count]) => {
            report.push(`// - ${strategy}: ${count} 个属性`);
        });
        report.push('');
        report.push('// 详细决策记录:');
        decisions.forEach((decision, index) => {
            report.push(`// ${index + 1}. 策略: ${decision.strategy}`);
            report.push(`//    语法: ${decision.syntax}`);
            report.push(`//    原因: ${decision.explanation}`);
            report.push('');
        });
        return report;
    }
}
//# sourceMappingURL=OptionalTypeInferenceEngine.js.map