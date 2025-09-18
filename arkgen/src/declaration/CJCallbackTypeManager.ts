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

/**
 * 回调类型命名化管理器
 * 
 * 职责：
 * 1. 识别函数类型并生成命名回调类型
 * 2. 管理回调类型定义的去重与缓存
 * 3. 提供统一的回调类型命名规则
 * 4. 支持基于仓颉语言类型系统的回调处理
 */
export class CJCallbackTypeManager {
    // 回调别名注册表：规范化函数签名 -> 命名类型
    private callbackAliasBySignature: Map<string, string> = new Map()
    // 组件级别的回调类型定义
    private componentCallbackDefinitions: Map<string, Set<string>> = new Map()
    // 跟踪实际使用的回调类型
    private usedCallbackTypes: Map<string, Set<string>> = new Map()
    
    /**
     * 清理当前组件的回调类型缓存
     */
    public clearComponentCallbacks(componentName: string): void {
        this.componentCallbackDefinitions.delete(componentName)
        this.usedCallbackTypes.delete(componentName)
    }
    
    /**
     * 尝试将内联函数类型转换为命名回调类型
     * 
     * @param paramName 参数名称
     * @param typeName 原始类型名（可能是内联函数类型）
     * @param methodName 所属方法名
     * @param componentName 所属组件名
     * @returns 处理后的类型名（可能是命名回调类型或原始类型）
     */
    public processCallbackType(
        paramName: string, 
        typeName: string, 
        methodName: string, 
        componentName: string
    ): string {
        // 特殊处理：对于已知的回调模式，即使类型未知也生成回调类型
        if (this.isKnownCallbackPattern(typeName, paramName, methodName)) {
            const defaultSignature = this.generateDefaultCallbackSignature(paramName, methodName, componentName)
            const aliasName = this.getOrCreateCallbackAlias(defaultSignature, paramName, methodName, componentName)
            // 标记为已使用
            this.markCallbackTypeUsed(componentName, aliasName)
            return aliasName
        }
        
        // 字符串归一化：去掉可空前缀、剥外层括号、展开 Option 内层类型
        const normalized = this.normalizeCallbackTypeName(typeName)

        // 核心函数签名匹配（放宽返回类型）
        const fnMatch = normalized.match(/^\([^)]*\)\s*->\s*[\w?<>,\s\[\]\.]+$/)
        if (fnMatch) {
            const functionSignature = fnMatch[0]
            const aliasName = this.getOrCreateCallbackAlias(functionSignature, paramName, methodName, componentName)
            // 标记为已使用
            this.markCallbackTypeUsed(componentName, aliasName)
            console.log(`[CJCallbackTypeManager] Converted inline function to named callback: ${typeName} -> ${aliasName}`)
            return aliasName
        }
        return typeName
    }

    /**
     * 检查是否为已知的回调模式
     */
    private isKnownCallbackPattern(typeName: string, paramName: string, methodName: string): boolean {
        // 对于UnknownType类型，检查是否是已知的回调模式
        if (typeName === 'UnknownType') {
            // onClick事件模式
            if (methodName === 'onClick' && paramName === 'event') return true
            
            // 通用的on*回调模式
            if (methodName && methodName.startsWith('on')) {
                // 常见的回调参数名模式
                if (['callback', 'callback_', 'handler', 'listener', 'event'].includes(paramName)) {
                    return true
                }
            }
        }
        
        // 对于String类型，如果是callback相关的参数名和on*方法，也认为是回调模式
        if (typeName === 'String') {
            if (methodName && methodName.startsWith('on')) {
                // 常见的回调参数名模式
                if (['callback', 'callback_', 'handler', 'listener'].includes(paramName)) {
                    return true
                }
            }
        }
        
        // 对于Bool类型，如果是callback相关的参数名和on*方法，也认为是回调模式
        if (typeName === 'Bool') {
            if (methodName && methodName.startsWith('on')) {
                // 常见的回调参数名模式
                if (['callback', 'callback_', 'handler', 'listener'].includes(paramName)) {
                    return true
                }
            }
        }
        
        // 对于Float64类型，如果是callback相关的参数名和on*方法，也认为是回调模式
        if (typeName === 'Float64') {
            if (methodName && methodName.startsWith('on')) {
                // 常见的回调参数名模式
                if (['callback', 'callback_', 'handler', 'listener'].includes(paramName)) {
                    return true
                }
            }
        }
        
        // 对于重写后的已命名回调类型，也认为是回调模式
        if (typeName === 'OnTextPickerScrollStopCallback') {
            return true
        }
        
        // 通用的 On*Callback 类型都认为是回调模式
        if (typeName.startsWith('On') && typeName.endsWith('Callback')) {
            return true
        }
        
        return false
    }

    /**
     * 为已知的回调模式生成默认的函数签名
     */
    private generateDefaultCallbackSignature(paramName: string, methodName: string, componentName?: string): string {
        // 根据方法名和参数名生成合适的默认签名
        if (methodName === 'onClick' && paramName === 'event') {
            return '(event: ClickEvent) -> Unit'
        }
        
        if (methodName === 'onTitleModeChange' && paramName === 'callback_') {
            return '(titleMode: NavigationTitleMode) -> Unit'
        }
        
        // 特殊的回调方法处理
        if (methodName === 'onCopy' && paramName === 'callback_') {
            return '(text: String) -> Unit'
        }
        
        // 根据组件名和方法名生成特定签名
        if (componentName && methodName.startsWith('on') && paramName === 'callback_') {
            // Checkbox 特定回调
            if (componentName === 'Checkbox') {
                if (methodName === 'onChange') {
                    return '(value: Bool) -> Unit'
                }
            }
            
            // 移除硬编码规则 - 使用动态智能转换，与实际处理阶段保持一致
            // 这样即使 .d.ts 文件变化，也能动态适应，无需修改代码
        }
        
        // 特殊情况的硬编码规则也已移除 - 使用动态转换
        
        // 对于重写后的已命名回调类型，根据类型名推导签名
        if (paramName === 'callback_' && methodName === 'onScrollStop') {
            return '(value: Array<String>, index: Array<Int32>) -> Unit'
        }
        // 通用默认签名：尝试从方法名推导参数类型
        if (methodName && methodName.startsWith('on') && paramName) {
            // 从方法名推导可能的参数名和类型
            // 例如：onTitleModeChange -> titleMode: TitleMode, onValueChange -> value: Value
            const eventSuffix = methodName.slice(2) // 去掉 "on" 前缀
            if (eventSuffix.endsWith('Change')) {
                const propertyName = eventSuffix.slice(0, -6) // 去掉 "Change" 后缀
                const lowerPropertyName = propertyName.charAt(0).toLowerCase() + propertyName.slice(1)
                const typeName = propertyName
                return `(${lowerPropertyName}: ${typeName}) -> Unit`
            }
            
            // 对于其他on*方法，尝试推导合理的参数
            if (eventSuffix.toLowerCase().includes('copy')) {
                return '(text: String) -> Unit'
            }
            if (eventSuffix.toLowerCase().includes('text')) {
                return '(text: String) -> Unit'
            }
            if (eventSuffix.toLowerCase().includes('value')) {
                return '(value: String) -> Unit'
            }
        }
        
        // 通用默认签名
        return `(${paramName}: Object) -> Unit`
    }

    /**
     * 字符串归一化：统一处理各种回调类型形态
     */
    private normalizeCallbackTypeName(typeName: string): string {
        return CJCallbackTypeManager.normalizeCallbackTypeName(typeName)
    }

    /**
     * 字符串归一化：统一处理各种回调类型形态（静态版本）
     */
    public static normalizeCallbackTypeName(typeName: string): string {
        let normalized = typeName.trim()
        
        // 去掉可空前缀 ?
        normalized = normalized.replace(/^\?\s*/, '')
        
        // 提取 Option<> 包裹的内部类型
        const optionInnerMatch = normalized.match(/^Option<\s*(.+)\s*>$/)
        if (optionInnerMatch) {
            normalized = optionInnerMatch[1].trim()
        }
        
        // 剥除最外层多余括号：((a) -> B) → (a) -> B
        normalized = CJCallbackTypeManager.stripOuterParens(normalized)
        
        return normalized
    }
    
    /**
     * 获取或创建回调类型别名
     */
    private getOrCreateCallbackAlias(
        functionSignature: string, 
        paramName: string, 
        methodName: string, 
        componentName: string
    ): string {
        // 规范化函数签名作为缓存键，但也包含方法名以确保唯一性
        const normalizedSignature = this.normalizeFunctionSignature(functionSignature)
        // 使用类型签名而非参数名，避免预扫描和实际处理阶段参数名不一致的问题
        const typeOnlySignature = this.extractTypeOnlySignature(normalizedSignature)
        const cacheKey = `${componentName}.${methodName}:${typeOnlySignature}`
        
        // 检查是否已存在别名
        let aliasName = this.callbackAliasBySignature.get(cacheKey)
        if (aliasName) {
            return aliasName
        }
        
        // 生成新的别名名称（带组件名，确保 onChange 命名化：OnTextPickerChangeCallback）
        aliasName = this.generateCallbackAliasName(paramName, methodName, componentName)
        
        // 注册别名
        this.callbackAliasBySignature.set(cacheKey, aliasName)
        
        // 记录到组件定义中
        if (!this.componentCallbackDefinitions.has(componentName)) {
            this.componentCallbackDefinitions.set(componentName, new Set())
        }
        const typeDefinition = `public type ${aliasName} = ${normalizedSignature}`
        this.componentCallbackDefinitions.get(componentName)!.add(typeDefinition)
        
        console.log(`[CJCallbackTypeManager] Added callback definition: ${typeDefinition}`)
        
        return aliasName
    }
    
    /**
     * 规范化函数签名
     */
    private normalizeFunctionSignature(signature: string): string {
        let normalized = signature
            .replace(/\s+/g, ' ')           // 统一空白字符
            .replace(/\s*\(\s*/g, '(')      // 移除括号内的空格
            .replace(/\s*\)\s*/g, ')')      
            .replace(/\s*->\s*/g, ' -> ')   // 统一箭头格式
            .replace(/\s*,\s*/g, ', ')      // 统一逗号格式
            .trim()
        
        // 处理双重括号的函数类型：((param: Type) -> ReturnType) -> (param: Type) -> ReturnType
        if (normalized.startsWith('((') && normalized.includes(') -> ')) {
            // 提取内层函数签名
            const match = normalized.match(/^\(\(([^)]+)\) -> ([^)]+)\)$/)
            if (match) {
                const innerParams = match[1]
                const returnType = match[2]
                normalized = `(${innerParams}) -> ${returnType}`
            }
        }
        
        // 统一参数名：将 parameter: Type 格式统一为更语义化的参数名
        // 这样可以避免预扫描时生成的 (text: String) 和实际生成时的 (parameter: String) 不匹配
        normalized = normalized.replace(
            /\(parameter:\s*([^)]+)\)/g, 
            (match, type) => {
                // 根据类型推断合适的参数名
                if (type.trim() === 'String') {
                    return '(text: String)'
                }
                return match
            }
        )
        
        return normalized
    }
    
    /**
     * 提取仅包含类型信息的签名，忽略参数名差异
     * 支持单参数和多参数：
     * - (value: Bool) -> Unit 和 (parameter: Bool) -> Unit 都变成 (Bool) -> Unit
     * - (value: Array<String>, index: Array<Int32>) -> Unit 变成 (Array<String>, Array<Int32>) -> Unit
     */
    private extractTypeOnlySignature(signature: string): string {
        // 匹配函数签名模式：(param1: Type1, param2: Type2, ...) -> ReturnType
        const match = signature.match(/^\s*\(([^)]*)\)\s*->\s*(.+)\s*$/)
        if (match) {
            const paramsString = match[1].trim()
            const returnType = match[2].trim()
            
            if (!paramsString) {
                // 无参数函数：() -> Unit
                return `() -> ${returnType}`
            }
            
            // 提取每个参数的类型，忽略参数名
            const paramTypes = paramsString
                .split(',')
                .map(param => {
                    const paramMatch = param.trim().match(/^\s*\w+\s*:\s*(.+)$/)
                    return paramMatch ? paramMatch[1].trim() : param.trim()
                })
                .join(', ')
            
            return `(${paramTypes}) -> ${returnType}`
        }
        
        // 如果不匹配标准模式，返回原签名
        console.log(`[CJCallbackTypeManager] Warning: Cannot extract type-only signature from: ${signature}`)
        return signature
    }
    
    /**
     * 将IDL类型名映射到CJ类型名
     */
    private mapIDLTypeToCJType(idlTypeName: string): string {
        const typeMap: { [key: string]: string } = {
            'Number': 'Float64',
            'String': 'String',
            'Boolean': 'Bool',
            'Void': 'Unit',
            'Bool': 'Bool',
            'Float64': 'Float64',
            'Int32': 'Int32',
            'Array': 'Array',
            'Option': 'Option'
        }
        
        return typeMap[idlTypeName] || idlTypeName
    }
    
    /**
     * 生成回调类型别名名称
     * 
     * 规则：
     * 1. 优先基于参数名：callback_ -> Callback, onXxx -> OnXxxCallback
     * 2. 其次基于方法名：onClick -> OnClickCallback
     * 3. 确保唯一性：添加数字后缀避免冲突
     */
    private generateCallbackAliasName(paramName: string, methodName: string, componentName?: string): string {
        let baseName = ''

        // 优先使用“组件名 + 方法名”规则：onXxx → On{Component}XxxCallback
        if (methodName.startsWith('on') && methodName.length > 2 && componentName && componentName.length > 0) {
            const suffix = methodName.slice(2) // 去掉前缀 on
            // 去掉组件名结尾的 Attribute/Component 再组名
            const sanitized = componentName.replace(/(Attribute|Component)$/,'')
            baseName = `On${this.toPascalCase(sanitized)}${this.toPascalCase(suffix)}Callback`
        }
        // 处理内部事件：_onChangeEvent_foo → On{Component}FooCallback
        else if (/^_onChangeEvent_/.test(methodName) && componentName && componentName.length > 0) {
            const tail = methodName.replace(/^_onChangeEvent_/, '')
            const sanitized = componentName.replace(/(Attribute|Component)$/,'')
            baseName = `On${this.toPascalCase(sanitized)}${this.toPascalCase(tail)}Callback`
        }
        // 其次使用“参数名 onXxx”规则
        else if (paramName.startsWith('on') && paramName.length > 2) {
            baseName = this.toPascalCase(paramName) + 'Callback'
        }
        // 退化为“方法名 onXxx”规则
        else if (methodName.startsWith('on') && methodName.length > 2) {
            baseName = this.toPascalCase(methodName) + 'Callback'
        }
        // 最后默认：参数名 + Callback，如果有组件名则加前缀避免冲突
        else {
            if (componentName && componentName.length > 0) {
                const sanitized = componentName.replace(/(Attribute|Component)$/, '')
                baseName = this.toPascalCase(sanitized) + this.toPascalCase(paramName) + 'Callback'
            } else {
                baseName = this.toPascalCase(paramName) + 'Callback'
            }
        }

        // 避免生成 CallbackCallback 这类无信息量别名，回退到组件+方法名策略
        if (/^CallbackCallback$/.test(baseName) && componentName && componentName.length > 0) {
            const sanitized = componentName.replace(/(Attribute|Component)$/,'')
            if (methodName.startsWith('on') && methodName.length > 2) {
                const suffix = methodName.slice(2)
                baseName = `On${this.toPascalCase(sanitized)}${this.toPascalCase(suffix)}Callback`
            } else if (/^_onChangeEvent_/.test(methodName)) {
                const tail = methodName.replace(/^_onChangeEvent_/, '')
                baseName = `On${this.toPascalCase(sanitized)}${this.toPascalCase(tail)}Callback`
            } else {
                baseName = `On${this.toPascalCase(sanitized)}EventCallback`
            }
        }

        return this.ensureUniqueName(baseName)
    }
    
    /**
     * 转换为 PascalCase
     */
    private toPascalCase(str: string): string {
        return str
            .replace(/[_\-\s]+(.)/g, (_, char) => char.toUpperCase())
            .replace(/^(.)/, char => char.toUpperCase())
    }
    
    /**
     * 确保名称唯一性
     * 增加调试信息以便追踪类型冲突
     */
    private ensureUniqueName(baseName: string): string {
        const existingNames = new Set(this.callbackAliasBySignature.values())
        
        if (!existingNames.has(baseName)) {
            return baseName
        }
        
        // 记录类型冲突的调试信息
        console.log(`[CJCallbackTypeManager] Type name conflict detected for: ${baseName}`)
        console.log(`[CJCallbackTypeManager] Existing names:`, Array.from(existingNames))
        
        // 添加数字后缀
        let counter = 1
        let candidateName = `${baseName}${counter}`
        while (existingNames.has(candidateName)) {
            counter++
            candidateName = `${baseName}${counter}`
        }
        
        console.log(`[CJCallbackTypeManager] Generated unique name: ${candidateName}`)
        return candidateName
    }
    
    /**
     * 标记回调类型为已使用
     */
    public markCallbackTypeUsed(componentName: string, typeName: string): void {
        if (!this.usedCallbackTypes.has(componentName)) {
            this.usedCallbackTypes.set(componentName, new Set())
        }
        this.usedCallbackTypes.get(componentName)!.add(typeName)
    }
    
    /**
     * 获取指定组件的回调类型定义（仅返回实际使用的）
     */
    public getCallbackDefinitions(componentName: string): string[] {
        const allDefinitions = this.componentCallbackDefinitions.get(componentName)
        const usedTypes = this.usedCallbackTypes.get(componentName)
        
        if (!allDefinitions || !usedTypes || usedTypes.size === 0) {
            return []
        }
        
        // 只返回实际使用的回调类型定义
        const result = Array.from(allDefinitions).filter(def => {
            const typeName = def.match(/public type (\w+)/)?.[1]
            return typeName && usedTypes.has(typeName)
        }).sort()
        
        console.log(`[CJCallbackTypeManager] getCallbackDefinitions for ${componentName}: ${result.length}/${allDefinitions.size} definitions (used/total)`)
        if (result.length > 0) {
            console.log(`[CJCallbackTypeManager] Used definitions for ${componentName}:`, result)
        }
        
        return result
    }

    /**
     * 从TypeScript声明文件中提取回调类型信息并生成CJ回调类型定义
     * 
     * @param methodName 方法名
     * @param callbackSignature TypeScript回调函数签名
     * @param componentName 组件名
     * @returns 生成的CJ回调类型定义字符串
     */
    public generateCallbackTypeFromTSDeclaration(
        methodName: string, 
        callbackSignature: string, 
        componentName: string
    ): string {
        console.log(`[CJCallbackTypeManager] generateCallbackTypeFromTSDeclaration: methodName=${methodName}, callbackSignature=${callbackSignature}, componentName=${componentName}`)
        
        // 解析TypeScript回调函数签名
        const parsed = this.parseTSCallbackSignature(callbackSignature)
        if (!parsed) {
            console.log(`[CJCallbackTypeManager] Failed to parse callback signature: ${callbackSignature}`)
            return ''
        }
        
        // 生成CJ回调类型名称
        const callbackTypeName = this.generateCallbackAliasName(parsed.paramName, methodName, componentName)
        
        // 转换TypeScript类型到CJ类型
        const cjParamType = this.convertTSTypeToCJType(parsed.paramType)
        
        // 生成CJ回调类型定义
        const cjCallbackDef = `public type ${callbackTypeName} = (${parsed.paramName}: ${cjParamType}) -> Unit`
        
        // 记录到组件定义中
        if (!this.componentCallbackDefinitions.has(componentName)) {
            this.componentCallbackDefinitions.set(componentName, new Set())
        }
        this.componentCallbackDefinitions.get(componentName)!.add(cjCallbackDef)
        
        console.log(`[CJCallbackTypeManager] Generated callback type: ${cjCallbackDef}`)
        return cjCallbackDef
    }
    
    /**
     * 解析TypeScript回调函数签名
     * 例如: "(titleMode: NavigationTitleMode) => void" -> { paramName: "titleMode", paramType: "NavigationTitleMode" }
     */
    private parseTSCallbackSignature(signature: string): { paramName: string, paramType: string } | null {
        // 匹配模式: (paramName: paramType) => returnType
        const match = signature.match(/^\s*\(\s*(\w+)\s*:\s*([^)]+)\s*\)\s*=>\s*\w+\s*$/)
        if (match) {
            return {
                paramName: match[1].trim(),
                paramType: match[2].trim()
            }
        }
        
        // 匹配模式: (paramName: paramType) => void
        const voidMatch = signature.match(/^\s*\(\s*(\w+)\s*:\s*([^)]+)\s*\)\s*=>\s*void\s*$/)
        if (voidMatch) {
            return {
                paramName: voidMatch[1].trim(),
                paramType: voidMatch[2].trim()
            }
        }
        
        return null
    }
    
    /**
     * 将TypeScript类型转换为CJ类型
     */
    private convertTSTypeToCJType(tsType: string): string {
        // 基础类型映射
        const typeMap: Record<string, string> = {
            'string': 'String',
            'number': 'Float64',
            'boolean': 'Bool',
            'void': 'Unit',
            'any': 'Object',
            'object': 'Object',
            'Array': 'Array',
            'Promise': 'Promise'
        }
        
        // 检查是否为已知的基础类型
        if (typeMap[tsType.toLowerCase()]) {
            return typeMap[tsType.toLowerCase()]
        }
        
        // 检查是否为数组类型
        if (tsType.includes('Array<') || tsType.includes('[]')) {
            const innerType = tsType.replace(/Array<|>/g, '').replace(/\[\]/g, '').trim()
            const convertedInnerType = this.convertTSTypeToCJType(innerType)
            return `Array<${convertedInnerType}>`
        }
        
        // 检查是否为联合类型
        if (tsType.includes('|')) {
            const types = tsType.split('|').map(t => t.trim())
            const convertedTypes = types.map(t => this.convertTSTypeToCJType(t))
            // 对于联合类型，选择第一个非基础类型，如果没有则使用Object
            const nonBasicTypes = convertedTypes.filter(t => !['String', 'Float64', 'Bool', 'Unit'].includes(t))
            return nonBasicTypes.length > 0 ? nonBasicTypes[0] : 'Object'
        }
        
        // 对于其他类型，保持原样（假设是已定义的CJ类型）
        return tsType
    }

    public addCallbackDefinitions(componentName: string, definitions: string[]): void {
        if (!this.componentCallbackDefinitions.has(componentName)) {
            this.componentCallbackDefinitions.set(componentName, new Set())
        }
        const existingDefinitions = this.componentCallbackDefinitions.get(componentName)!
        definitions.forEach(def => existingDefinitions.add(def))
        console.log(`[CJCallbackTypeManager] Added ${definitions.length} definitions to ${componentName}`)
    }
    
    /**
     * 查找已存在的回调类型，避免重复注册
     * @param paramName 参数名
     * @param functionSignature 函数签名
     * @param methodName 方法名
     * @param componentName 组件名
     * @returns 已存在的回调类型名称，如果不存在则返回undefined
     */
    public findExistingCallbackType(
        paramName: string,
        functionSignature: string,
        methodName: string,
        componentName: string
    ): string | undefined {
        // 构造与processCallbackType相同的缓存键
        const normalizedSignature = this.normalizeFunctionSignature(functionSignature)
        // 使用类型签名而非参数名，避免预扫描和实际处理阶段参数名不一致的问题
        const typeOnlySignature = this.extractTypeOnlySignature(normalizedSignature)
        const cacheKey = `${componentName}.${methodName}:${typeOnlySignature}`
        
        // 查找是否已存在
        const existingAlias = this.callbackAliasBySignature.get(cacheKey)
        if (existingAlias) {
            console.log(`[CJCallbackTypeManager] Found existing callback type for key ${cacheKey}: ${existingAlias}`)
            return existingAlias
        }
        
        console.log(`[CJCallbackTypeManager] No existing callback type found for key ${cacheKey}`)
        return undefined
    }
    
    /**
     * 检查是否为函数类型
     */
    public static isFunctionType(typeName: string): boolean {
        if (!typeName || typeof typeName !== 'string') return false
        
        // 使用归一化逻辑
        const normalized = CJCallbackTypeManager.normalizeCallbackTypeName(typeName)
        
        // 检查是否为函数签名模式（放宽返回类型匹配）
        return /^\([^)]*\)\s*->\s*[\w?<>,\s\[\]\.]+$/.test(normalized)
    }

    private static stripOuterParens(s: string): string {
        let t = s
        // 仅剥一层最外层括号对，直到不再成对包裹
        while (t.startsWith('(') && t.endsWith(')')) {
            const inner = t.slice(1, -1).trim()
            // 简单平衡性检查：若去掉一层后仍像函数或存在 '->'，继续；否则停止
            if (inner.includes('->') || inner.startsWith('(')) {
                t = inner
            } else {
                break
            }
        }
        return t
    }

    // Option包装正则，编译一次复用
    private static readonly OPTION_WRAPPER_REGEX = /^Option<\s*(.+)\s*>$/;
    
    /**
     * 检测是否为回调类型（命名回调或内联函数）
     */
    public static isCallbackType(typeName: string): boolean {
        const s = typeName.trim()
        // 1) 命名回调类型：OnXxxCallback
        if (/\b\w+Callback\b$/.test(s)) return true
        // 2) Option<OnXxxCallback>
        if (/^Option<\s*\w+Callback\s*>$/.test(s)) return true
        // 3) 内联函数类型
        if (CJCallbackTypeManager.isFunctionType(s)) return true
        // 4) 历史遗留 CallbackCallback 也视为回调，便于替换
        if (/\bCallbackCallback\b$/.test(s)) return true
        return false
    }
    
    /**
     * 提取 Option<CallbackType> 中的基础回调类型
     */
    public static extractBaseCallbackType(typeName: string): string {
        const match = typeName.match(this.OPTION_WRAPPER_REGEX);
        return match ? match[1] : typeName;
    }
    
    /**
     * 根据可选性包装回调类型
     */
    public static wrapCallbackType(baseType: string, isOptional: boolean): string {
        return isOptional ? `Option<${baseType}>` : baseType;
    }
    
    /**
     * 格式化回调参数（统一入口）
     */
    public static formatCallbackParameter(name: string, typeName: string, isOptional: boolean): string {
        const baseType = this.extractBaseCallbackType(typeName);
        const wrappedType = this.wrapCallbackType(baseType, isOptional);
        return isOptional ? `${name}: ${wrappedType} = None` : `${name}: ${wrappedType}`;
    }

    /**
     * 确保回调类型被 Option<> 包装
     */
    public static ensureOptionCallbackType(typeName: string): string {
        // 如果已经是 Option<...> 形式，直接返回
        if (/^\s*Option<.+>\s*$/.test(typeName)) {
            return typeName
        }
        // 否则包装为 Option<>
        return `Option<${typeName}>`
    }



    /**
     * 预扫描单个方法，收集其中的回调类型
     * 
     * @param method 方法对象
     * @param componentName 组件名称
     * @param typeMapper 类型映射器，包含 convertParameterType 方法
     * @param typeRewriter 类型改写器，包含 rewriteTypeName 方法（可选）
     */
    public prescanMethod(
        method: any, 
        componentName: string, 
        typeMapper: any, 
        typeRewriter?: { rewriteTypeName: (typeName: string) => string }
    ): void {
        if (!method) return

        // 调试：记录正在预扫描的方法
        console.log(`[CJCallbackTypeManager] prescanMethod called: ${componentName}.${method.name}`)

        // 检查IDL原始参数类型，识别回调类型
        method.signature.args.forEach((paramType: any, idx: number) => {
            const name = method.signature.argName(idx)
            
            // 调试：显示IDL原始类型信息
            if (method.name === 'testFunctionNumberVoid' || method.name === 'onTitleModeChange') {
                console.log(`[CJCallbackTypeManager] IDL param[${idx}]: ${name}, kind: ${paramType.kind}, name: ${paramType.name}`)
            }
            
            // 跳过IDL回调类型在预扫描阶段的处理
            // 让实际处理阶段使用动态智能转换来处理所有回调类型
            if (paramType.kind === 'ReferenceType' && paramType.name && paramType.name.includes('Callback')) {
                console.log(`[CJCallbackTypeManager] Skipping IDL callback type in prescan: ${paramType.name}, will be handled in actual processing stage`)
                return // 跳过处理
            }
        })

        // 兜底：使用转换后的类型进行检查（保留原有逻辑）
        const perParamConversions = method.signature.args.map((paramType: any, idx: number) => {
            const paramName = method.signature.argName(idx)
            const isOptional = method.signature.isArgOptional(idx)
            return typeMapper.convertParameterType(paramType, paramName, isOptional)
        })

        perParamConversions.forEach((pc: any, idx: number) => {
            const name = method.signature.argName(idx)
            let tName = typeof pc.cjType === 'string' ? pc.cjType : 'UnknownType'
            
            // 调试：记录参数类型转换
            if (method.name === 'onTitleModeChange' || componentName === 'Navigation') {
                console.log(`[CJCallbackTypeManager] ${componentName}.${method.name} param[${idx}]: ${name} -> ${tName}`)
            }
            
            // 应用类型收敛（如果提供了 typeRewriter）
            if (typeRewriter) {
                const originalTName = tName
                tName = typeRewriter.rewriteTypeName(tName)
                if (method.name === 'onTitleModeChange' || componentName === 'Navigation') {
                    console.log(`[CJCallbackTypeManager] Type rewritten: ${originalTName} -> ${tName}`)
                }
            }
            
            // 跳过预扫描阶段的回调类型处理，让实际处理阶段使用动态转换
            // 这样可以避免类型名冲突和不一致的问题
            const isCallbackRelated = CJCallbackTypeManager.isFunctionType(tName) || 
                                    this.isLikelyCallbackType(tName, name, method.name) ||
                                    name.toLowerCase().includes('callback')
            
            if (isCallbackRelated) {
                console.log(`[CJCallbackTypeManager] Skipping callback-related type in prescan: ${componentName}.${method.name}(${name}: ${tName}), will be handled dynamically`)
                return // 跳过处理
            }
            
            // 其他非回调类型的处理保持不变
            console.log(`[CJCallbackTypeManager] Processing non-callback type in prescan: ${componentName}.${method.name}(${name}: ${tName})`)
            // 这里可以加入其他类型的处理逻辑
        })
    }

    /**
     * 检查是否为可能的回调类型
     * 用于预扫描阶段识别尚未转换为标准格式的回调类型
     */
    private isLikelyCallbackType(typeName: string, paramName: string, methodName: string): boolean {
        if (!typeName || typeof typeName !== 'string') return false
        
        // 检查特定的模式
        // 1. 包含 "function" 关键字
        if (/\bfunction\b/i.test(typeName)) return true
        
        // 2. 已经是回调类型命名格式
        if (/\w+Callback\b/.test(typeName)) return true
        
        // 3. 特殊的onClick模式：参数名为event且方法名为onClick
        if (methodName === 'onClick' && paramName === 'event') return true
        
        // 4. 通用回调方法模式：以on开头的方法名，且参数名包含常见的回调参数名
        if (methodName && methodName.startsWith('on')) {
            // 常见的回调参数名模式
            if (['callback', 'callback_', 'handler', 'listener', 'event'].includes(paramName)) {
                return true
            }
            // 参数名以callback开头或结尾
            if (paramName && (paramName.startsWith('callback') || paramName.endsWith('callback') || 
                             paramName.startsWith('handler') || paramName.endsWith('handler'))) {
                return true
            }
        }
        
        // 5. 包含箭头函数语法的类型
        if (typeName.includes('=>') || typeName.includes('->')) return true
        
        // 6. Option包装的可能回调类型
        if (typeName.startsWith('Option<') && typeName.endsWith('>')) {
            const innerType = typeName.slice(7, -1).trim()
            return this.isLikelyCallbackType(innerType, paramName, methodName)
        }
        
        return false
    }

    /**
     * 批量预扫描方法数组
     */
    public prescanMethods(
        methods: any[], 
        componentName: string, 
        typeMapper: any, 
        typeRewriter?: { rewriteTypeName: (typeName: string) => string }
    ): void {
        methods.forEach(methodGroup => {
            const method = methodGroup.method
            this.prescanMethod(method, componentName, typeMapper, typeRewriter)
        })
    }
}
