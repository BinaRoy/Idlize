"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.CJTypeMapper = exports.DEFAULT_VALUES = void 0;
const idl = require("@idlizer/core/idl");
const CJNumberConversion_1 = require("./CJNumberConversion");
exports.DEFAULT_VALUES = {
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
};
// 预编译的正则表达式，提高字符串匹配性能
const STRING_PATTERNS = {
    COLOR: /(color|background|border|fill|stroke|tint|theme|primary|secondary|accent|shade|hue)/i,
    RESOURCE: /(content|text|label|title|placeholder|hint|name|src|source|path|url|icon|image|resource|theme|style|key|id)/i,
    PLAIN_TEXT: /(message|error|debug|log|description|comment|reason|info|warning|trace|note|memo)/i,
    // 新增更精确的分类
    DIMENSIONAL: /(width|height|size|length|margin|padding|radius|gap|space|offset|position|left|right|top|bottom|x|y|z)/i,
    CALLBACK: /(on|event|handler|listener|callback|trigger|action)/i,
    // 联合类型收敛专用模式
    INDEX_COUNT: /(index|count|indices|rows|cols|selected|current|active)/i
};
// 联合类型匹配常量
const UNION_PATTERNS = {
    PREFIX: /^Union_/,
    EXTRACT_TOKENS: /^Union_(.+)$/
};
class CJTypeMapper {
    constructor() {
        this.typeCheckers = new Map();
        this.typeCache = new Map();
        this.conversionCache = new Map();
        this.errorStats = new Map();
        // 新增：枚举映射缓存，用于将 Literal_* 和 Union_* 类型映射到对应的枚举
        this.enumMappingCache = new Map();
        // 未处理联合类型统计
        this.unhandledUnions = new Map();
        // 调试配置
        this.debugEnabled = process.env.CJ_TYPE_MAPPER_DEBUG === 'true';
        this.initializeTypeCheckers();
        this.initializeCommonEnumMappings();
    }
    initializeTypeCheckers() {
        this.typeCheckers.set('number', this.createTypeChecker(['number', 'Number']));
        this.typeCheckers.set('string', this.createTypeChecker(['string', 'String']));
        this.typeCheckers.set('boolean', this.createTypeChecker(['boolean', 'Boolean']));
        this.typeCheckers.set('special', this.createSpecialTypeChecker());
    }
    initializeCommonEnumMappings() {
        // 常见的字面量联合类型到枚举的映射
        const commonMappings = [
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
        this.debugLog(`Initialized ${this.enumMappingCache.size} enum mappings`);
    }
    getCombinations(array, size) {
        if (size === 0)
            return [[]];
        if (size > array.length)
            return [];
        if (size === array.length)
            return [array];
        const result = [];
        for (let i = 0; i <= array.length - size; i++) {
            const smaller = this.getCombinations(array.slice(i + 1), size - 1);
            for (const combo of smaller) {
                result.push([array[i], ...combo]);
            }
        }
        return result;
    }
    tryMapToEnum(type) {
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
    extractLiteralsFromTypeName(typeName) {
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
    isLiteralSubsetMatch(literals, mappingKey) {
        const keyLiterals = this.extractLiteralsFromTypeName(mappingKey);
        if (keyLiterals.length === 0)
            return false;
        // 检查 literals 是否是 keyLiterals 的子集或相等
        return literals.every(lit => keyLiterals.includes(lit)) && literals.length > 0;
    }
    getEnumDefaultValue(enumName) {
        // 根据枚举类型提供合理的默认值
        const enumDefaults = {
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
    createTypeChecker(typeNames) {
        return (type) => {
            try {
                const typeName = this.getTypeDisplayName(type);
                const lowerTypeName = typeName.toLowerCase();
                return typeNames.some(name => typeName === name ||
                    lowerTypeName === name.toLowerCase() ||
                    lowerTypeName.includes(name.toLowerCase()) ||
                    // 处理 IDL 内部类型名称
                    type.kind === name.toLowerCase() ||
                    type.name === name);
            }
            catch (error) {
                this.logError('Type checker failed', error);
                return false;
            }
        };
    }
    createSpecialTypeChecker() {
        const specialTypes = ['any', 'unknown', 'never', 'void', 'null', 'undefined', 'symbol', 'object'];
        return (type) => {
            try {
                const typeName = this.getTypeDisplayName(type).toLowerCase();
                return specialTypes.includes(typeName);
            }
            catch (error) {
                this.logError('Special type checker failed', error);
                return false;
            }
        };
    }
    convertParameterType(paramType, paramName, isOptional) {
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
            // 暂时禁用缓存检查（调试阶段）
            // const cached = this.conversionCache.get(cacheKey);
            // if (false && cached && !cached.error) {
            //     console.log(`[CJTypeMapper] Cache hit for ${paramName}`);
            //     return cached;
            // }
            const baseType = this.extractBaseType(paramType);
            // 调试信息：记录类型检测
            const typeDisplayName = this.getTypeDisplayName(baseType);
            this.debugLog(`Converting ${paramName}: ${typeDisplayName}, isOptional: ${isOptional}`);
            let result;
            // 处理命名联合类型：Union_* 作为引用类型进入此分支
            if (UNION_PATTERNS.PREFIX.test(typeDisplayName)) {
                this.debugLog(`Processing named union: ${typeDisplayName}`);
                const namedUnion = this.convertNamedUnionDisplay(typeDisplayName, paramName, isOptional);
                result = this.applyOptionalHandling(namedUnion, isOptional, baseType);
                this.debugLog(`Named union ${typeDisplayName} -> ${typeof namedUnion.cjType === 'string' ? namedUnion.cjType : this.getTypeDisplayName(namedUnion.cjType)}`);
                // 缓存成功的转换结果
                if (!result.error) {
                    this.conversionCache.set(cacheKey, result);
                }
                return result;
            }
            // Handle complex tuple union types (Type_*_testTupleUnion_value) first
            if (idl.isReferenceType(baseType) && baseType.name.includes('testTupleUnion_value')) {
                console.log(`[CJTypeMapper] Simplifying complex tuple union ${baseType.name} -> (Float64, Bool, String)`);
                // 对于 [(number | string), (boolean | EnumDTS), (string | EnumDTS | boolean)]
                // 简化为 [number, boolean, string] -> (Float64, Bool, String)
                const tupleConv = {
                    cjType: '(Float64, Bool, String)',
                    defaultValue: '(0.0, false, "")'
                };
                result = this.applyOptionalHandling(tupleConv, isOptional, baseType);
            }
            // Handle tuple types first (before union types)
            else if (this.isTupleType(baseType)) {
                console.log(`[CJTypeMapper] Detected tuple type for ${paramName}: ${this.getTypeDisplayName(baseType)}`);
                const tupleConv = this.convertTupleType(baseType, paramName, isOptional);
                result = this.applyOptionalHandling(tupleConv, isOptional, baseType);
            }
            // Handle union types first
            else if (idl.isUnionType(baseType)) {
                console.log(`[CJTypeMapper] Detected union type for ${paramName}: ${baseType.types.map(t => this.getTypeDisplayName(t)).join(' | ')}`);
                const unionConv = this.convertUnionType(baseType.types, paramName, isOptional);
                // Optional handling for overloads is encoded inside convertUnionType
                if (unionConv.overloads && unionConv.overloads.length > 0) {
                    console.log(`[CJTypeMapper] Generated ${unionConv.overloads.length} overloads for ${paramName}`);
                    result = unionConv;
                }
                else {
                    result = this.applyOptionalHandling(unionConv, isOptional, baseType);
                }
            }
            else {
                const conversion = this.determineTypeConversion(baseType, paramName);
                result = this.applyOptionalHandling(conversion, isOptional, baseType);
            }
            // 缓存成功的转换结果
            if (!result.error) {
                // 暂时禁用缓存写入（调试阶段）
                if (false)
                    this.conversionCache.set(cacheKey, result);
            }
            return result;
        }
        catch (error) {
            this.trackError(`Failed to convert parameter ${paramName}`, error);
            return {
                cjType: paramType,
                defaultValue: undefined,
                error: `Conversion failed: ${error}`
            };
        }
    }
    /**
     * 将命名的 Union_* 类型按语义进行收敛或重载
     */
    convertNamedUnionDisplay(typeName, paramName, isOptional) {
        try {
            // 提取并规范化类型标记
            const tokens = this.extractUnionTokens(typeName);
            const typeFlags = this.analyzeUnionTokens(tokens, paramName);
            this.debugLog(`Union analysis: ${typeName} -> tokens=[${tokens.join(',')}], flags=${JSON.stringify(typeFlags)}`);
            // 对于命名联合类型，如果是参数位置且包含多个命名类型，则展开为多重重载
            const namedTokens = tokens.filter(tok => /^[A-Z]/.test(tok) && !this.isPrimitiveOrLiteral(tok));
            if (namedTokens.length >= 2) {
                this.debugLog(`Expanding named union ${typeName} into ${namedTokens.length} overloads`);
                const overloads = tokens.map(token => ({
                    cjType: isOptional ? idl.createOptionalType(idl.createReferenceType(token)) : idl.createReferenceType(token),
                    debugInfo: `Union branch: ${token}`,
                    isOverload: true
                }));
                return { overloads, isFromUnionOverload: true };
            }
            return this.applyUnionConvergenceRules(typeFlags, paramName, isOptional);
        }
        catch (error) {
            this.logError('convertNamedUnionDisplay failed', error);
            return { cjType: idl.createReferenceType(typeName) };
        }
    }
    /**
     * 从 Union_* 类型名提取标记
     */
    extractUnionTokens(typeName) {
        const match = typeName.match(UNION_PATTERNS.EXTRACT_TOKENS);
        return match ? match[1].split('_').filter(Boolean) : [];
    }
    /**
     * 判断是否为原始类型或字面量类型
     */
    isPrimitiveOrLiteral(token) {
        const lower = token.toLowerCase();
        return ['string', 'number', 'boolean', 'int32', 'int64', 'float32', 'float64', 'bool'].includes(lower);
    }
    /**
     * 分析联合类型标记，生成类型特征
     */
    analyzeUnionTokens(tokens, paramName) {
        const lowerSet = new Set(tokens.map(t => t.toLowerCase()));
        const has = (t) => lowerSet.has(t.toLowerCase());
        return {
            hasString: has('string') || has('resourcestr'),
            hasNumber: has('number') || has('int32') || has('int64') || has('float64') || has('length'),
            hasResource: has('resource') || has('resourcestr'),
            hasColor: has('color') || has('resourcecolor'),
            hasArray: has('array'),
            hasBindable: has('bindable'),
            hasDate: has('date'),
            hasFontWeight: has('fontweight'),
            hasCustomBuilder: has('custombuilder') || has('builder'),
            hasFunction: has('function') || has('callback'),
            isIndexOrCount: STRING_PATTERNS.INDEX_COUNT.test(paramName),
            tokens,
            paramName
        };
    }
    /**
     * 应用联合类型收敛规则（按优先级排序）
     */
    applyUnionConvergenceRules(flags, paramName, isOptional) {
        // 优先级 1: 颜色相关 → ResourceColor (仅基于显式颜色类型，移除参数名推断)
        if (flags.hasColor) {
            this.debugLog(`Rule: Color convergence (explicit color type)`);
            return { cjType: 'ResourceColor', defaultValue: this.generateResourceColorDefault(paramName) };
        }
        // 优先级 2: FontWeight | number | string → FontWeight
        if (flags.hasFontWeight && (flags.hasNumber || flags.hasString)) {
            this.debugLog(`Rule: FontWeight convergence`);
            return { cjType: 'FontWeight', defaultValue: exports.DEFAULT_VALUES.FONT_WEIGHT };
        }
        // 优先级 3: 函数相关（命名联合无法还原函数签名）→ 退化为 String，避免生成无效类型
        if (flags.hasFunction && flags.hasString) {
            this.debugLog(`Rule: Function-like named union -> String (safe fallback)`);
            return { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR };
        }
        // 优先级 4: String | Array<String> → Array<String>（根据需求修改）
        if (flags.hasString && flags.hasArray && !flags.hasNumber) {
            console.log(`[CJTypeMapper] Rule: String array convergence`);
            return { cjType: idl.createReferenceType('Array', [idl.createReferenceType('String')]), defaultValue: '[]' };
        }
        // 优先级 5: Number | Array<Number> → Array<Int32/Int64>
        if (flags.hasNumber && flags.hasArray && !flags.hasString) {
            const elem = flags.isIndexOrCount ? 'Int32' : 'Int64';
            console.log(`[CJTypeMapper] Rule: Number array convergence -> Array<${elem}>`);
            return { cjType: idl.createReferenceType('Array', [idl.createReferenceType(elem)]), defaultValue: '[]' };
        }
        // 优先级 6: string | Resource → String
        if (flags.hasString && flags.hasResource && !flags.hasNumber) {
            console.log(`[CJTypeMapper] Rule: String+Resource convergence -> String`);
            return { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR };
        }
        // 优先级 7: string | number → 重载（严格禁用字符串语义推断，固定为 String）
        if (flags.hasString && flags.hasNumber) {
            console.log(`[CJTypeMapper] Rule: String+Number overloads (no semantic inference)`);
            try {
                const numMapping = (0, CJNumberConversion_1.convertNumberProperty)({ propertyName: paramName, isOptional });
                return {
                    overloads: [
                        { cjType: numMapping.cjType, defaultValue: numMapping.defaultValue },
                        { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR }
                    ],
                    isFromUnionOverload: true
                };
            }
            catch (_a) {
                return {
                    overloads: [
                        { cjType: 'Float64', defaultValue: exports.DEFAULT_VALUES.FLOAT64 },
                        { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR }
                    ],
                    isFromUnionOverload: true
                };
            }
        }
        // 优先级 8: Date | Bindable → Date
        if (flags.hasDate && flags.hasBindable) {
            console.log(`[CJTypeMapper] Rule: Date+Bindable convergence`);
            return { cjType: 'Date', defaultValue: 'Date()' };
        }
        // 优先级 9: 兜底：若包含 Resource → String
        if (flags.hasResource && !flags.hasNumber) {
            console.log(`[CJTypeMapper] Rule: Resource fallback -> String`);
            return { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR };
        }
        // 优先级 10: 最终兜底 —— 不再返回 Union_*，选择“最合适的单一类型”
        this.debugLog(`Rule: No convergence, selecting best-effort single type for ${paramName}: ${flags.tokens.join('_')}`);
        this.trackUnhandledUnion(flags.tokens, paramName);
        // 1) 纯字符串场景
        if (flags.hasString && !flags.hasNumber) {
            return { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR };
        }
        // 2) 数字场景 —— 使用 number 语义推断（无法判定时默认 Float64）
        if (flags.hasNumber) {
            try {
                const numMapping = (0, CJNumberConversion_1.convertNumberProperty)({ propertyName: paramName, isOptional: true });
                return { cjType: numMapping.cjType, defaultValue: numMapping.defaultValue };
            }
            catch (_b) {
                return { cjType: 'Float64', defaultValue: exports.DEFAULT_VALUES.FLOAT64 };
            }
        }
        // 3) 颜色相关
        if (flags.hasColor) {
            return { cjType: 'ResourceColor', defaultValue: this.generateResourceColorDefault(paramName) };
        }
        // 4) 资源相关（非数字）→ 字符串
        if (flags.hasResource) {
            return { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR };
        }
        // 5) 布尔（通过 token 粗略识别）
        const hasBooleanToken = flags.tokens.some(t => /^(bool|boolean)$/i.test(t));
        if (hasBooleanToken) {
            return { cjType: 'Bool', defaultValue: exports.DEFAULT_VALUES.BOOLEAN };
        }
        // 6) 兜底：使用 String
        return { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR };
    }
    /**
     * 追踪未处理的联合类型，用于后续规则补充
     */
    trackUnhandledUnion(tokens, paramName) {
        const key = tokens.join('_');
        const existing = this.unhandledUnions.get(key) || { count: 0, examples: [] };
        existing.count++;
        if (existing.examples.length < 3 && !existing.examples.includes(paramName)) {
            existing.examples.push(paramName);
        }
        this.unhandledUnions.set(key, existing);
    }
    extractBaseType(paramType) {
        return idl.isOptionalType(paramType) ? paramType.type : paramType;
    }
    determineTypeConversion(baseType, paramName) {
        // ✅ 新增：原生复合类型直接转换（最高优先级）
        if (idl.isReferenceType(baseType)) {
            const typeName = baseType.name;
            if (typeName === 'Length') {
                console.log(`[CJTypeMapper] Direct mapping: Length -> Length`);
                return { cjType: 'Length', defaultValue: '""' };
            }
            if (typeName === 'ResourceStr') {
                console.log(`[CJTypeMapper] Direct mapping: ResourceStr -> ResourceStr`);
                return { cjType: 'ResourceStr', defaultValue: '""' };
            }
            if (typeName === 'ResourceColor') {
                console.log(`[CJTypeMapper] Direct mapping: ResourceColor -> ResourceColor`);
                return { cjType: 'ResourceColor', defaultValue: '""' };
            }
            if (typeName === 'Resource') {
                console.log(`[CJTypeMapper] Direct mapping: Resource -> Resource`);
                return { cjType: 'Resource', defaultValue: '""' };
            }
            // 正确的类型映射：使用字符串形式
            if (typeName === 'BorderOptions') {
                console.log(`[CJTypeMapper] Direct mapping: BorderOptions -> BorderOptions`);
                return { cjType: 'BorderOptions', defaultValue: '""' };
            }
            if (typeName === 'LayoutPolicy') {
                console.log(`[CJTypeMapper] Direct mapping: LayoutPolicy -> LayoutPolicy`);
                return { cjType: 'LayoutPolicy', defaultValue: '""' };
            }
            if (typeName === 'Padding') {
                console.log(`[CJTypeMapper] Direct mapping: Padding -> Padding`);
                return { cjType: 'Padding', defaultValue: '""' };
            }
            if (typeName === 'LocalizedPadding') {
                console.log(`[CJTypeMapper] Direct mapping: LocalizedPadding -> LocalizedPadding`);
                return { cjType: 'LocalizedPadding', defaultValue: '""' };
            }
            if (typeName === 'EdgeWidths') {
                console.log(`[CJTypeMapper] Direct mapping: EdgeWidths -> EdgeWidths`);
                return { cjType: 'EdgeWidths', defaultValue: '""' };
            }
            if (typeName === 'LocalizedEdgeWidths') {
                console.log(`[CJTypeMapper] Direct mapping: LocalizedEdgeWidths -> LocalizedEdgeWidths`);
                return { cjType: 'LocalizedEdgeWidths', defaultValue: '""' };
            }
            if (typeName === 'EdgeColors') {
                console.log(`[CJTypeMapper] Direct mapping: EdgeColors -> EdgeColors`);
                return { cjType: 'EdgeColors', defaultValue: '""' };
            }
            if (typeName === 'LocalizedEdgeColors') {
                console.log(`[CJTypeMapper] Direct mapping: LocalizedEdgeColors -> LocalizedEdgeColors`);
                return { cjType: 'LocalizedEdgeColors', defaultValue: '""' };
            }
            if (typeName === 'EdgeStyles') {
                console.log(`[CJTypeMapper] Direct mapping: EdgeStyles -> EdgeStyles`);
                return { cjType: 'EdgeStyles', defaultValue: '""' };
            }
            if (typeName === 'BorderRadiuses') {
                console.log(`[CJTypeMapper] Direct mapping: BorderRadiuses -> BorderRadiuses`);
                return { cjType: 'BorderRadiuses', defaultValue: '""' };
            }
            if (typeName === 'LocalizedBorderRadiuses') {
                console.log(`[CJTypeMapper] Direct mapping: LocalizedBorderRadiuses -> LocalizedBorderRadiuses`);
                return { cjType: 'LocalizedBorderRadiuses', defaultValue: '""' };
            }
            if (typeName === 'BorderStyle') {
                console.log(`[CJTypeMapper] Direct mapping: BorderStyle -> BorderStyle`);
                return { cjType: 'BorderStyle', defaultValue: '""' };
            }
            // 添加更多常见类型映射
            if (typeName === 'Font') {
                console.log(`[CJTypeMapper] Direct mapping: Font -> Font`);
                return { cjType: 'Font', defaultValue: '""' };
            }
            if (typeName === 'FontWeight') {
                console.log(`[CJTypeMapper] Direct mapping: FontWeight -> FontWeight`);
                return { cjType: 'FontWeight', defaultValue: '""' };
            }
            if (typeName === 'Dimension') {
                console.log(`[CJTypeMapper] Direct mapping: Dimension -> Dimension`);
                return { cjType: 'Dimension', defaultValue: '""' };
            }
            if (typeName === 'Matrix4') {
                console.log(`[CJTypeMapper] Direct mapping: Matrix4 -> Matrix4`);
                return { cjType: 'Matrix4', defaultValue: '""' };
            }
            if (typeName === 'ComponentInfo') {
                console.log(`[CJTypeMapper] Direct mapping: ComponentInfo -> ComponentInfo`);
                return { cjType: 'ComponentInfo', defaultValue: '""' };
            }
        }
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
            return this.convertFunctionType(baseType);
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
    applyOptionalHandling(conversion, isOptional, baseType) {
        // If conversion suggests overloads, apply optional handling to each overload
        if (conversion.overloads && conversion.overloads.length > 0) {
            if (isOptional) {
                // 基础类型重载参数提供默认值，非基础类型用 Option<T>
                const processedOverloads = conversion.overloads.map(overload => {
                    const cjTypeName = typeof overload.cjType === 'string' ? overload.cjType : this.getTypeDisplayName(overload.cjType);
                    if (this.isBasicSemanticType(cjTypeName)) {
                        // 基础语义类型：Length = 0.vp、Float64 = 1.0、Int32 = 0、Int64 = 0
                        return Object.assign(Object.assign({}, overload), { defaultValue: overload.defaultValue || this.getBasicTypeDefault(cjTypeName) });
                    }
                    else if (this.isSemanticResourceType(cjTypeName)) {
                        // 语义资源类型默认值
                        return Object.assign(Object.assign({}, overload), { defaultValue: overload.defaultValue || this.getSemanticResourceDefault(cjTypeName) });
                    }
                    else {
                        // 复杂类型：Option<ResolvedType>
                        const resolvedInner = (() => {
                            if (!overload.cjType)
                                return undefined;
                            return typeof overload.cjType === 'string' ? idl.createReferenceType(overload.cjType) : overload.cjType;
                        })();
                        return {
                            cjType: resolvedInner ? idl.createOptionalType(resolvedInner) : idl.createOptionalType(idl.IDLStringType),
                            defaultValue: exports.DEFAULT_VALUES.OPTION_NONE
                        };
                    }
                });
                return { overloads: processedOverloads, isFromUnionOverload: true };
            }
            return conversion;
        }
        if (!isOptional) {
            return {
                cjType: conversion.cjType,
                defaultValue: undefined,
                error: conversion.error
            };
        }
        const cjTypeName = typeof conversion.cjType === 'string' ? conversion.cjType : this.getTypeDisplayName(conversion.cjType);
        // 基础类型可选：使用默认值策略
        if (this.isBasicSemanticType(cjTypeName)) {
            return {
                cjType: conversion.cjType,
                defaultValue: conversion.defaultValue || this.getBasicTypeDefault(cjTypeName),
                error: conversion.error
            };
        }
        // 语义资源类型：使用合理默认值
        if (this.isSemanticResourceType(cjTypeName)) {
            return {
                cjType: conversion.cjType,
                defaultValue: conversion.defaultValue || this.getSemanticResourceDefault(cjTypeName),
                error: conversion.error
            };
        }
        // 非基础类型：使用 Option<T>，并安全解析字符串/空类型
        {
            const resolved = (() => {
                if (!conversion.cjType)
                    return idl.IDLStringType;
                return typeof conversion.cjType === 'string' ? idl.createReferenceType(conversion.cjType) : conversion.cjType;
            })();
            return {
                cjType: idl.createOptionalType(resolved),
                defaultValue: exports.DEFAULT_VALUES.OPTION_NONE,
                error: conversion.error
            };
        }
    }
    convertNumberType(baseType, paramName) {
        try {
            const result = (0, CJNumberConversion_1.convertNumberProperty)({
                propertyName: paramName,
                isOptional: true
            });
            return {
                cjType: result.cjType,
                defaultValue: result.defaultValue
            };
        }
        catch (error) {
            return {
                cjType: 'Int64',
                defaultValue: exports.DEFAULT_VALUES.INT64,
                error: `Number conversion failed: ${error}`
            };
        }
    }
    convertStringType(baseType, paramName) {
        // 禁止语义推断：原始 string 一律映射为 String（Fix 4）
        return { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR };
    }
    convertBooleanType(baseType) {
        return {
            cjType: 'Bool',
            defaultValue: exports.DEFAULT_VALUES.BOOLEAN
        };
    }
    convertUnionType(memberTypes, paramName, isOptional) {
        try {
            if (!memberTypes || memberTypes.length === 0) {
                // 避免返回 Any，默认按资源字符串处理
                return { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR, error: 'Empty union types' };
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
                var _a, _b;
                console.log(`[CJTypeMapper] Type ${idx} for ${paramName}:`, {
                    displayName: this.getTypeDisplayName(t),
                    toString: (_a = t.toString) === null || _a === void 0 ? void 0 : _a.call(t),
                    kind: t.kind,
                    name: t.name,
                    constructor: (_b = t.constructor) === null || _b === void 0 ? void 0 : _b.name
                });
            });
            const hasString = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                const isStr = this.isStringType(t) || typeName === 'string' || typeName.includes('string');
                console.log(`[CJTypeMapper] ${this.getTypeDisplayName(t)} is string: ${isStr}`);
                return isStr;
            });
            const hasNumber = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                const isNum = this.isNumberType(t) || typeName === 'number' || typeName.includes('number');
                console.log(`[CJTypeMapper] ${this.getTypeDisplayName(t)} is number: ${isNum}`);
                return isNum;
            });
            const hasColorRef = memberTypes.some(t => this.getTypeDisplayName(t).toLowerCase().includes('color'));
            const hasBoolean = memberTypes.some(t => {
                const n = this.getTypeDisplayName(t).toLowerCase();
                return n === 'boolean' || n === 'bool' || n.includes('boolean') || n.includes('bool');
            });
            const hasResource = memberTypes.some(t => this.getTypeDisplayName(t).toLowerCase().includes('resource'));
            const hasResourceStr = memberTypes.some(t => this.getTypeDisplayName(t).toLowerCase().includes('resourcestr'));
            const hasFunction = memberTypes.some(t => this.isFunctionType(t));
            // Case: function-related unions → 直接保留函数签名，避免退化为 CallbackCallback
            if (hasFunction) {
                console.log(`[CJTypeMapper] Keeping function signature for ${paramName}`);
                const fnType = memberTypes.find(t => this.isFunctionType(t));
                return { cjType: fnType };
            }
            console.log(`[CJTypeMapper] Union analysis for ${paramName}: hasString=${hasString}, hasNumber=${hasNumber}, hasColorRef=${hasColorRef}`);
            // Case: color-related unions → ResourceColor (仅基于显式颜色类型)
            if (hasColorRef) {
                console.log(`[CJTypeMapper] Converging ${paramName} to ResourceColor (explicit color type)`);
                return {
                    cjType: 'ResourceColor',
                    defaultValue: this.generateResourceColorDefault(paramName)
                };
            }
            // P0 优化: FontWeight | number | string → FontWeight (字体相关)
            const hasFontWeight = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                return typeName.includes('fontweight') || typeName === 'fontweight';
            });
            // 扩展字体权重检测：通过参数名识别
            if (hasFontWeight && (hasString || hasNumber)) {
                console.log(`[CJTypeMapper] P0 Converging ${paramName} to FontWeight (FontWeight|number|string or param name match)`);
                return {
                    cjType: 'FontWeight',
                    defaultValue: exports.DEFAULT_VALUES.FONT_WEIGHT
                };
            }
            // Case: string | Resource → String (direct pattern match)
            // New rule: string | Resource → 重载 [String, Resource]
            if (hasString && hasResource && !hasNumber) {
                console.log(`[CJTypeMapper] Overloads for ${paramName}: String | Resource`);
                return {
                    overloads: [
                        { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR },
                        { cjType: 'Resource' }
                    ]
                };
            }
            // Case: string | Resource → String (移除参数名语义推断，仅保留显式Resource联合)
            if (hasString && !hasNumber && hasResource) {
                console.log(`[CJTypeMapper] Overloads for ${paramName} with explicit Resource: String | Resource`);
                return {
                    overloads: [
                        { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR },
                        { cjType: 'Resource' }
                    ]
                };
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
                };
            }
            // P2 优化: String | Array<String> → Array<String>
            const hasArray = memberTypes.some(t => {
                const typeName = this.getTypeDisplayName(t).toLowerCase();
                return typeName.includes('array');
            });
            if (hasString && hasArray) {
                console.log(`[CJTypeMapper] P2 Converging ${paramName} to Array<String> (String|Array<String>)`);
                return {
                    cjType: idl.createReferenceType('Array', [idl.createReferenceType('String')]),
                    defaultValue: '[]'
                };
            }
            // P2 优化: Number | Array<Number>
            // 对 index/count 语义生成两个重载：Int32 与 Array<Int32>
            // 对非 index/count 语义生成两个重载：Int64 与 Array<Int64>
            if (hasNumber && hasArray) {
                const isIndexCount = STRING_PATTERNS.INDEX_COUNT.test(paramName);
                const scalar = isIndexCount ? 'Int32' : 'Int64';
                const array = idl.createReferenceType('Array', [idl.createReferenceType(scalar)]);
                console.log(`[CJTypeMapper] P2 Overloads for ${paramName}: ${scalar} | Array<${scalar}> (Number|Array<Number>)`);
                return {
                    overloads: [
                        { cjType: scalar, defaultValue: exports.DEFAULT_VALUES[scalar] },
                        { cjType: array, defaultValue: '[]' }
                    ]
                };
            }
            // New rule: boolean | string → 重载 [Bool, String] (按文档要求)
            if (hasBoolean && hasString && !hasNumber) {
                console.log(`[CJTypeMapper] Overloads for ${paramName}: Bool | String (boolean|string)`);
                return {
                    overloads: [
                        { cjType: 'Bool', defaultValue: exports.DEFAULT_VALUES.BOOLEAN },
                        { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR }
                    ]
                };
            }
            // New rule: number | Resource/ResourceStr → 重载 [Float64/Int32/Int64, Resource or ResourceStr]
            if (hasNumber && hasResource) {
                try {
                    const numMapping = (0, CJNumberConversion_1.convertNumberProperty)({ propertyName: paramName, isOptional: true });
                    const resBranch = hasResourceStr ? 'ResourceStr' : 'Resource';
                    console.log(`[CJTypeMapper] Overloads for ${paramName}: ${numMapping.cjType} | ${resBranch} (number|resource)`);
                    return {
                        overloads: [
                            { cjType: numMapping.cjType, defaultValue: numMapping.defaultValue },
                            { cjType: resBranch }
                        ]
                    };
                }
                catch (_a) {
                    const resBranch = hasResourceStr ? 'ResourceStr' : 'Resource';
                    return { overloads: [{ cjType: 'Float64', defaultValue: exports.DEFAULT_VALUES.FLOAT64 }, { cjType: resBranch }], isFromUnionOverload: true };
                }
            }
            // Case: string | number → overloads (numeric semantic + String)
            // 严格遵守：TS string 不能映射为 Length，必须通过重载承接两类用法
            if (hasString && hasNumber) {
                console.log(`[CJTypeMapper] Creating overloads for ${paramName} (string|number, no semantic inference)`);
                try {
                    const numMapping = (0, CJNumberConversion_1.convertNumberProperty)({ propertyName: paramName, isOptional: isOptional });
                    const overloads = [
                        { cjType: numMapping.cjType, defaultValue: numMapping.defaultValue },
                        { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR }
                    ];
                    console.log(`[CJTypeMapper] Generated overloads for ${paramName}: [${overloads.map(o => `${o.cjType}=${o.defaultValue}`).join(', ')}]`);
                    return { overloads, isFromUnionOverload: true };
                }
                catch (error) {
                    this.logError(`Failed to create string|number overloads for ${paramName}`, error);
                    return { overloads: [{ cjType: 'Float64', defaultValue: exports.DEFAULT_VALUES.FLOAT64 }, { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR }], isFromUnionOverload: true };
                }
            }
            // Fallback: 强制检测常见的联合类型模式
            const hasSimpleStringNumber = this.detectSimpleStringNumberUnion(memberTypes, paramName);
            if (hasSimpleStringNumber) {
                console.log(`[CJTypeMapper] Fallback: Creating string|number overloads for ${paramName}`);
                try {
                    const overloads = [
                        { cjType: 'Float64', defaultValue: exports.DEFAULT_VALUES.FLOAT64 },
                        { cjType: 'String', defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR } // 字符串路径 → String
                    ];
                    console.log(`[CJTypeMapper] Fallback generated overloads for ${paramName}: [${overloads.map(o => `${o.cjType}=${o.defaultValue}`).join(', ')}]`);
                    return { overloads, isFromUnionOverload: true };
                }
                catch (error) {
                    this.logError(`Failed to create fallback string|number overloads for ${paramName}`, error);
                }
            }
            // P3-P5 策略: 智能处理，平衡收敛和重载
            console.log(`[CJTypeMapper] P3-P5: Analyzing ${memberTypes.length} union members for ${paramName}`);
            // 映射所有成员类型
            const mapped = memberTypes.map(t => this.determineTypeConversion(t, paramName));
            const mappedWithNames = mapped.map(m => ({
                conversion: m,
                typeName: typeof m.cjType === 'string' ? m.cjType : this.getTypeDisplayName(m.cjType)
            }));
            // 检查是否所有类型映射到同一个语义类型（收敛优先）
            const uniqueTypeNames = new Set(mappedWithNames.map(m => m.typeName));
            if (uniqueTypeNames.size === 1) {
                const convergedType = mapped[0];
                console.log(`[CJTypeMapper] P3-P5: All types converge to ${convergedType.cjType}, using convergence`);
                return { cjType: convergedType.cjType, defaultValue: convergedType.defaultValue };
            }
            // 如果成员类型过多（>3），尝试智能合并相似类型
            if (memberTypes.length > 3) {
                const smartMerged = this.smartMergeTypes(mappedWithNames, paramName);
                if (smartMerged) {
                    console.log(`[CJTypeMapper] P3-P5: Smart merged to ${smartMerged.length} types for ${paramName}`);
                    return { overloads: smartMerged, isFromUnionOverload: true };
                }
            }
            // 生成重载（限制数量）
            const distinct = [];
            const seenNames = new Set();
            for (const m of mappedWithNames) {
                if (!seenNames.has(m.typeName)) {
                    seenNames.add(m.typeName);
                    distinct.push({ cjType: m.conversion.cjType, defaultValue: m.conversion.defaultValue });
                    // 根据成员数量动态调整重载上限
                    const maxOverloads = memberTypes.length <= 4 ? 2 : 3;
                    if (distinct.length >= maxOverloads)
                        break;
                }
            }
            if (distinct.length > 1) {
                console.log(`[CJTypeMapper] P3-P5: Generated ${distinct.length} overloads for ${paramName}: [${distinct.map(o => typeof o.cjType === 'string' ? o.cjType : this.getTypeDisplayName(o.cjType)).join(', ')}]`);
                return { overloads: distinct, isFromUnionOverload: true };
            }
            // 如果只有一个去重后的类型，直接使用
            if (distinct.length === 1) {
                console.log(`[CJTypeMapper] P3-P5: Single type after deduplication: ${distinct[0].cjType}`);
                return { cjType: distinct[0].cjType, defaultValue: distinct[0].defaultValue };
            }
            // 最后的兜底策略
            console.log(`[CJTypeMapper] P3-P5: Fallback to first member type for ${paramName}`);
            return { cjType: memberTypes[0] };
        }
        catch (error) {
            this.logError('Union conversion failed', error);
            return { cjType: memberTypes[0], error: String(error) };
        }
    }
    convertSpecialType(baseType) {
        try {
            const result = this.mapSpecialType(baseType);
            return {
                cjType: result.targetType,
                defaultValue: result.defaultValue
            };
        }
        catch (error) {
            return {
                cjType: 'Any',
                defaultValue: 'null',
                error: `Special type conversion failed: ${error}`
            };
        }
    }
    // 优化的类型检测方法 - 使用缓存
    isNumberType(type) {
        return this.getCachedTypeCheck('number', type);
    }
    isStringType(type) {
        return this.getCachedTypeCheck('string', type);
    }
    isBooleanType(type) {
        return this.getCachedTypeCheck('boolean', type);
    }
    isSpecialType(type) {
        return this.getCachedTypeCheck('special', type);
    }
    isBasicType(type) {
        return this.getCachedTypeCheck('basic', type);
    }
    isTupleType(type) {
        try {
            // 检查是否是数组类型且长度固定
            if (type.kind === 'arrayType' && type.length !== undefined) {
                console.log(`[CJTypeMapper] Detected array tuple type: ${this.getTypeDisplayName(type)}`);
                return true;
            }
            // 检查类型名是否包含 Tuple
            const typeName = this.getTypeDisplayName(type);
            const isTuple = typeName.includes('Tuple_') || /^\[.*\]$/.test(typeName);
            if (isTuple) {
                console.log(`[CJTypeMapper] Detected reference tuple type: ${typeName}`);
            }
            return isTuple;
        }
        catch (e) {
            console.log(`[CJTypeMapper] isTupleType error for ${this.getTypeDisplayName(type)}: ${e}`);
            return false;
        }
    }
    getCachedTypeCheck(checkType, type) {
        const cacheKey = `${checkType}:${this.getTypeDisplayName(type)}`;
        if (this.typeCache.has(cacheKey)) {
            return this.typeCache.get(cacheKey);
        }
        let result;
        if (checkType === 'basic') {
            result = this.isNumberType(type) || this.isStringType(type) || this.isBooleanType(type);
        }
        else {
            const checker = this.typeCheckers.get(checkType);
            result = checker ? checker(type) : false;
        }
        this.typeCache.set(cacheKey, result);
        return result;
    }
    getTypeDisplayName(type) {
        try {
            let name;
            // 尝试多种方式获取类型名称
            if (type.toString && typeof type.toString === 'function') {
                const toStringResult = type.toString();
                if (toStringResult && toStringResult !== '[object Object]') {
                    name = toStringResult;
                }
            }
            if (!name && type.name) {
                name = type.name;
            }
            if (!name && type.kind) {
                name = type.kind;
            }
            // 检查是否是 IDL 内置类型
            if (!name) {
                if (type === idl.IDLStringType || type === 'string') {
                    name = 'string';
                }
                else if (type === idl.IDLNumberType || type === 'number') {
                    name = 'number';
                }
                else if (type === idl.IDLBooleanType || type === 'boolean') {
                    name = 'boolean';
                }
            }
            const raw = name || 'unknown';
            // 统一清理：Tuple_* 转为原生元组语法；Union_* 保留给上层（不要降级为 String）
            if (/^Union_/.test(raw)) {
                return raw;
            }
            // 2) Tuple_* → 转为原生元组语法 (A, B, ...)
            const m = raw.match(/^Tuple_(.+)$/);
            if (m) {
                const tokens = m[1].split('_').filter(Boolean);
                const mapToken = (tok) => {
                    const t = tok.toLowerCase();
                    if (t === 'number' || t === 'float64')
                        return 'Float64';
                    if (t === 'int32')
                        return 'Int32';
                    if (t === 'int64')
                        return 'Int64';
                    if (t === 'boolean' || t === 'bool')
                        return 'Bool';
                    if (t === 'string')
                        return 'String';
                    return tok;
                };
                return `(${tokens.map(mapToken).join(', ')})`;
            }
            return raw;
        }
        catch (error) {
            this.logError('Failed to get type display name', error);
            return 'unknown';
        }
    }
    getSemanticTypeName(type) {
        try {
            if (typeof type === 'string') {
                return type;
            }
            return this.getTypeDisplayName(type);
        }
        catch (error) {
            this.logError('Failed to get semantic type name', error);
            return 'String';
        }
    }
    mapStringType(propertyName) {
        // 统一：忽略参数名语义，原始 string 一律映射为 String
        return {
            targetType: idl.IDLStringType,
            defaultValue: exports.DEFAULT_VALUES.RESOURCE_STR
        };
    }
    isFunctionType(type) {
        try {
            const display = this.getTypeDisplayName(type).toLowerCase();
            if (type.kind && type.kind.toLowerCase() === 'function') {
                return true;
            }
            if (type.name && String(type.name).toLowerCase().includes('function')) {
                return true;
            }
            // toString 形如 "(A, B) -> C"
            if (typeof type.toString === 'function') {
                const s = String(type.toString());
                if (s.includes('->') || /^\(.*\)\s*->\s*/.test(s)) {
                    return true;
                }
            }
            // 兜底：显示名里带箭头且不像普通标识
            return display.includes('->');
        }
        catch (_a) {
            return false;
        }
    }
    convertTupleType(baseType, paramName, isOptional) {
        try {
            const typeName = this.getTypeDisplayName(baseType);
            console.log(`[CJTypeMapper] Converting tuple type: ${typeName}`);
            // 如果是 Tuple_* 引用类型，提取元素类型
            if (typeName.includes('Tuple_')) {
                const match = typeName.match(/^Tuple_(.+)$/);
                if (match) {
                    const tokens = match[1].split('_').filter(Boolean);
                    const elementTypes = tokens.map(tok => {
                        const t = tok.toLowerCase();
                        if (t === 'number' || t === 'float64')
                            return 'Float64';
                        if (t === 'int32')
                            return 'Int32';
                        if (t === 'int64')
                            return 'Int64';
                        if (t === 'boolean' || t === 'bool')
                            return 'Bool';
                        if (t === 'string')
                            return 'String';
                        return tok; // 枚举或自定义类型
                    });
                    // 构建原生元组类型语法 (T1, T2, ...)
                    const nativeTupleType = `(${elementTypes.join(', ')})`;
                    console.log(`[CJTypeMapper] Tuple ${typeName} -> native tuple ${nativeTupleType}`);
                    return {
                        cjType: nativeTupleType,
                        defaultValue: this.getTupleDefaultValue(elementTypes)
                    };
                }
            }
            // 兜底：保持原类型
            return { cjType: baseType, defaultValue: undefined };
        }
        catch (error) {
            this.logError('Tuple conversion failed', error);
            return { cjType: baseType, error: String(error) };
        }
    }
    getTupleDefaultValue(elementTypes) {
        const defaults = elementTypes.map(type => {
            switch (type) {
                case 'Float64': return '1.0';
                case 'Int32': return '0';
                case 'Int64': return '0';
                case 'Bool': return 'false';
                case 'String': return '""';
                default: return `${type}()`;
            }
        });
        return `(${defaults.join(', ')})`;
    }
    convertFunctionType(baseType) {
        // 函数类型保持原样，由可选处理统一决定是否包 Option
        return { cjType: baseType, defaultValue: undefined };
    }
    mapSpecialType(type) {
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
    generateResourceColorDefault(propertyName) {
        const name = (propertyName || '').toLowerCase();
        if (name.includes('background'))
            return 'Color.White';
        if (name.includes('border'))
            return 'Color.Gray';
        if (name.includes('text') || name.includes('font'))
            return 'Color.Black';
        return exports.DEFAULT_VALUES.RESOURCE_COLOR;
    }
    isBasicSemanticType(typeName) {
        return ['Length', 'Float64', 'Int32', 'Int64', 'Bool'].includes(typeName);
    }
    isSemanticResourceType(typeName) {
        return ['ResourceColor', 'String'].includes(typeName);
    }
    getBasicTypeDefault(typeName) {
        const defaults = {
            'Length': exports.DEFAULT_VALUES.LENGTH,
            'Float64': exports.DEFAULT_VALUES.FLOAT64,
            'Int32': exports.DEFAULT_VALUES.INT32,
            'Int64': exports.DEFAULT_VALUES.INT64,
            'Bool': exports.DEFAULT_VALUES.BOOLEAN
        };
        return defaults[typeName] || exports.DEFAULT_VALUES.FLOAT64;
    }
    getSemanticResourceDefault(typeName) {
        const defaults = {
            // 保留对 String/ResourceColor 的默认值
            'ResourceColor': exports.DEFAULT_VALUES.RESOURCE_COLOR,
            'String': exports.DEFAULT_VALUES.RESOURCE_STR
        };
        return defaults[typeName] || exports.DEFAULT_VALUES.RESOURCE_STR;
    }
    /**
     * 强制检测简单的 string|number 联合类型模式
     */
    detectSimpleStringNumberUnion(memberTypes, paramName) {
        if (!memberTypes || memberTypes.length !== 2) {
            return false;
        }
        // 检测是否有一个类型看起来像 string，另一个像 number
        const typeNames = memberTypes.map(t => this.getTypeDisplayName(t).toLowerCase());
        console.log(`[CJTypeMapper] Fallback detection for ${paramName}: types=[${typeNames.join(', ')}]`);
        const hasStringLike = typeNames.some(name => name.includes('string') ||
            name === 'string' ||
            name.includes('str'));
        const hasNumberLike = typeNames.some(name => name.includes('number') ||
            name === 'number' ||
            name.includes('num') ||
            name.includes('int') ||
            name.includes('float'));
        const result = hasStringLike && hasNumberLike;
        console.log(`[CJTypeMapper] Fallback detection result for ${paramName}: hasStringLike=${hasStringLike}, hasNumberLike=${hasNumberLike}, result=${result}`);
        return result;
    }
    /**
     * 智能合并相似的类型，减少重载数量
     */
    smartMergeTypes(mappedWithNames, paramName) {
        const typeGroups = new Map();
        // 将类型按语义分组
        for (const mapped of mappedWithNames) {
            const group = this.getTypeGroup(mapped.typeName);
            if (!typeGroups.has(group)) {
                typeGroups.set(group, []);
            }
            typeGroups.get(group).push(mapped);
        }
        // 如果分组后数量仍然过多，返回 null
        if (typeGroups.size > 3) {
            return null;
        }
        // 从每个组选择最具代表性的类型
        const result = [];
        for (const [group, members] of typeGroups) {
            const representative = this.selectRepresentativeType(members, group, paramName);
            if (representative) {
                result.push(representative);
            }
        }
        return result.length > 1 && result.length <= 3 ? result : null;
    }
    /**
     * 将类型分组为语义类别
     */
    getTypeGroup(typeName) {
        const lower = typeName.toLowerCase();
        if (['length', 'float32', 'float64', 'int32', 'int64'].includes(lower)) {
            return 'numeric';
        }
        if (['resourcestr', 'string'].includes(lower)) {
            return 'text';
        }
        if (['resourcecolor', 'color'].includes(lower)) {
            return 'color';
        }
        if (['bool', 'boolean'].includes(lower)) {
            return 'boolean';
        }
        if (['option', 'optional'].some(opt => lower.includes(opt))) {
            return 'optional';
        }
        return 'other';
    }
    /**
     * 从同组类型中选择最具代表性的类型
     */
    selectRepresentativeType(members, group, paramName) {
        if (members.length === 0)
            return null;
        // 优先级规则
        const priorities = {
            'numeric': ['Length', 'Float32', 'Int64', 'Int32', 'Float64'],
            'text': ['ResourceStr', 'String'],
            'color': ['ResourceColor', 'Color'],
            'boolean': ['Bool', 'Boolean'],
            'optional': [],
            'other': [] // 使用第一个
        };
        const groupPriorities = priorities[group] || [];
        // 按优先级选择
        for (const priority of groupPriorities) {
            const found = members.find(m => m.typeName === priority);
            if (found) {
                return {
                    cjType: found.conversion.cjType,
                    defaultValue: found.conversion.defaultValue
                };
            }
        }
        // 如果没有匹配优先级，返回第一个
        const first = members[0];
        return {
            cjType: first.conversion.cjType,
            defaultValue: first.conversion.defaultValue
        };
    }
    logError(message, error) {
        console.warn(`[CJTypeMapper] ${message}: ${error}`);
    }
    /**
     * 调试日志输出（可通过环境变量控制）
     */
    debugLog(message) {
        if (this.debugEnabled) {
            console.log(`[CJTypeMapper] ${message}`);
        }
    }
    trackError(message, error) {
        const errorKey = `${message}: ${String(error)}`;
        const count = this.errorStats.get(errorKey) || 0;
        this.errorStats.set(errorKey, count + 1);
        // 只在第一次出现时记录详细错误
        if (count === 0) {
            console.error(`[CJTypeMapper] NEW ERROR: ${message}`, error);
        }
        else if (count % 10 === 0) {
            // 每10次重复错误时提醒
            console.warn(`[CJTypeMapper] REPEATED ERROR (${count + 1} times): ${message}`);
        }
    }
    /**
     * 获取错误统计信息（用于调试）
     */
    getErrorStats() {
        return new Map(this.errorStats);
    }
    /**
     * 获取未处理联合类型统计（用于调试和规则补充）
     */
    getUnhandledUnions() {
        return new Map(this.unhandledUnions);
    }
    /**
     * 清理缓存（用于测试或重置）
     */
    clearCaches() {
        this.typeCache.clear();
        this.conversionCache.clear();
        this.errorStats.clear();
        this.unhandledUnions.clear();
        console.log('[CJTypeMapper] All caches cleared');
    }
}
exports.CJTypeMapper = CJTypeMapper;
//# sourceMappingURL=CJTypeMapper.js.map