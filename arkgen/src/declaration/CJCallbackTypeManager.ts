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
    
    /**
     * 清理当前组件的回调类型缓存
     */
    public clearComponentCallbacks(componentName: string): void {
        this.componentCallbackDefinitions.delete(componentName)
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
        // 字符串归一化：去掉可空前缀、剥外层括号、展开 Option 内层类型
        const normalized = this.normalizeCallbackTypeName(typeName)

        // 核心函数签名匹配（放宽返回类型）
        const fnMatch = normalized.match(/^\([^)]*\)\s*->\s*[\w?<>,\s\[\]\.]+$/)
        if (fnMatch) {
            const functionSignature = fnMatch[0]
            const aliasName = this.getOrCreateCallbackAlias(functionSignature, paramName, methodName, componentName)
            console.log(`[CJCallbackTypeManager] Converted inline function to named callback: ${typeName} -> ${aliasName}`)
            return aliasName
        }
        return typeName
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
        // 规范化函数签名作为缓存键
        const normalizedSignature = this.normalizeFunctionSignature(functionSignature)
        
        // 检查是否已存在别名
        let aliasName = this.callbackAliasBySignature.get(normalizedSignature)
        if (aliasName) {
            return aliasName
        }
        
        // 生成新的别名名称（带组件名，确保 onChange 命名化：OnTextPickerChangeCallback）
        aliasName = this.generateCallbackAliasName(paramName, methodName, componentName)
        
        // 注册别名
        this.callbackAliasBySignature.set(normalizedSignature, aliasName)
        
        // 记录到组件定义中
        if (!this.componentCallbackDefinitions.has(componentName)) {
            this.componentCallbackDefinitions.set(componentName, new Set())
        }
        this.componentCallbackDefinitions.get(componentName)!.add(
            `public type ${aliasName} = ${normalizedSignature}`
        )
        
        return aliasName
    }
    
    /**
     * 规范化函数签名
     */
    private normalizeFunctionSignature(signature: string): string {
        return signature
            .replace(/\s+/g, ' ')           // 统一空白字符
            .replace(/\s*\(\s*/g, '(')      // 移除括号内的空格
            .replace(/\s*\)\s*/g, ')')      
            .replace(/\s*->\s*/g, ' -> ')   // 统一箭头格式
            .replace(/\s*,\s*/g, ', ')      // 统一逗号格式
            .trim()
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
        // 其次使用“参数名 onXxx”规则
        else if (paramName.startsWith('on') && paramName.length > 2) {
            baseName = this.toPascalCase(paramName) + 'Callback'
        }
        // 再次使用“参数名包含 callback”规则：callback_ → CallbackCallback（保持历史行为）
        else if (paramName.toLowerCase().includes('callback')) {
            baseName = this.toPascalCase(paramName.replace(/[_\-]/g, '')) + 'Callback'
        }
        // 退化为“方法名 onXxx”规则
        else if (methodName.startsWith('on') && methodName.length > 2) {
            baseName = this.toPascalCase(methodName) + 'Callback'
        }
        // 最后默认：参数名 + Callback
        else {
            baseName = this.toPascalCase(paramName) + 'Callback'
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
     */
    private ensureUniqueName(baseName: string): string {
        const existingNames = new Set(this.callbackAliasBySignature.values())
        
        if (!existingNames.has(baseName)) {
            return baseName
        }
        
        // 添加数字后缀
        let counter = 1
        let candidateName = `${baseName}${counter}`
        while (existingNames.has(candidateName)) {
            counter++
            candidateName = `${baseName}${counter}`
        }
        
        return candidateName
    }
    
    /**
     * 获取指定组件的回调类型定义
     */
    public getCallbackDefinitions(componentName: string): string[] {
        const definitions = this.componentCallbackDefinitions.get(componentName)
        return definitions ? Array.from(definitions).sort() : []
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
        return CJCallbackTypeManager.isFunctionType(s)
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

        const perParamConversions = method.signature.args.map((paramType: any, idx: number) => {
            const paramName = method.signature.argName(idx)
            const isOptional = method.signature.isArgOptional(idx)
            return typeMapper.convertParameterType(paramType, paramName, isOptional)
        })

        // 预扫描每个参数，收集回调类型
        perParamConversions.forEach((pc: any, idx: number) => {
            const name = method.signature.argName(idx)
            let tName = typeof pc.cjType === 'string' ? pc.cjType : 'UnknownType'
            
            // 应用类型收敛（如果提供了 typeRewriter）
            if (typeRewriter) {
                tName = typeRewriter.rewriteTypeName(tName)
            }
            
            // 预扫描回调类型（只收集，不修改参数）
            if (CJCallbackTypeManager.isFunctionType(tName)) {
                this.processCallbackType(name, tName, method.name, componentName)
            }
        })
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
