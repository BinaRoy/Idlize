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

import * as idl from '@idlizer/core/idl'
import {
    Language, isCommonMethod,
    LanguageWriter, PeerClass, PeerLibrary,
    createReferenceType, IDLVoidType,
    Method,
    MethodSignature,
    MethodModifier,
    NamedMethodSignature,
    LayoutNodeRole,
    getSuper
} from '@idlizer/core'
import {
    ARKOALA_PACKAGE,
    ARKOALA_PACKAGE_PATH,
    allowsOverloads,
    collapseSameNamedMethods,
    collectComponents,
    collectDeclDependencies,
    collectJavaImports,
    collectPeersForFile,
    COMPONENT_BASE,
    componentToPeerClass,
    findComponentByName,
    findComponentByType,
    groupOverloads,
    IdlComponentDeclaration,
    ImportsCollector,
    OverloadsPrinter,
    PrinterResult,
    printJavaImports,
    readLangTemplate,
    TargetFile,
    collectDeclItself,
    findComponentByDeclaration,
    componentToStyleClass,
} from '@idlizer/libohos'
import { getReferenceTo } from '../knownReferences'
import { componentToAttributesInterface } from './PeersPrinter'
import { HandwrittenModule } from '../ArkoalaLayout'
import { convertNumberProperty } from '../declaration/CJNumberConversion'
import { CJTypeMapper, TypeConversionResult, DEFAULT_VALUES } from '../declaration/CJTypeMapper'

export function generateArkComponentName(component: string) {
    return `Ark${component}Component`
}

function expandComponentWithSupers(library: PeerLibrary, decl: idl.IDLInterface): idl.IDLInterface[] {
    const result: idl.IDLInterface[] = []
    while (decl) {
        const superResolved = getSuper(decl, library)
        result.push(decl)
        decl = superResolved as idl.IDLInterface
    }
    return result
}

export function generateAttributeModifierSignature(library: PeerLibrary, component: IdlComponentDeclaration): MethodSignature {
    const modifiers = expandComponentWithSupers(library, component.attributeDeclaration).map(it =>
        idl.createReferenceType(getReferenceTo('AttributeModifier'),
            [idl.createReferenceType(componentToAttributesInterface(it.name))],
        )
    )
    return new NamedMethodSignature(
        idl.IDLThisType,
        [idl.createUnionType([...modifiers, idl.IDLUndefinedType])],
        // [idl.createOptionalType(modifiers.length > 1 ? idl.createUnionType(modifiers) : modifiers[0])],
        ['value']
    )
}

class ComponentPrintResult {
    constructor(public targetFile: TargetFile, public writer: LanguageWriter) { }
}

interface ComponentFileVisitor {
    visit(): PrinterResult[]
}

class TSComponentFileVisitor implements ComponentFileVisitor {

    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        protected readonly options: {
            isDeclared: boolean,
        }
    ) { }

    private overloadsPrinter(printer:LanguageWriter) {
        return new OverloadsPrinter(this.library, printer, this.library.language, true, this.library.useMemoM3)
    }

    visit(): PrinterResult[] {
        const result: PrinterResult[] = []
        collectPeersForFile(this.library, this.file).forEach(peer => {
            if (!this.options.isDeclared)
                result.push(...this.printComponent(peer))
            result.push(...this.printComponentFunctions(peer))
        })
        return result
    }

    private printImports(peer: PeerClass, component:IdlComponentDeclaration): ImportsCollector {
        const imports = new ImportsCollector()
        imports.addFeatures(['int32', 'float32'], '@koalaui/common')
        imports.addFeatures(["KStringPtr", "KBoolean"], "@koalaui/interop")
        collectDeclItself(this.library, idl.createReferenceType(getReferenceTo('AttributeModifier')), imports)
        collectDeclItself(this.library, idl.createReferenceType(getReferenceTo('AttributeUpdater')), imports)
        if (!this.options.isDeclared) {
            imports.addFeatures(["RuntimeType", "runtimeType"], "@koalaui/interop")
            imports.addFeatures(["NodeAttach", "remember"], "@koalaui/runtime")
            imports.addFeature('ComponentBase', './ComponentBase')
            if (this.library.language === Language.TS) {
                imports.addFeature("isInstanceOf", "@koalaui/interop")
            }
            imports.addFeature(componentToPeerClass(peer.componentName), this.library.layout.resolve({node: component.attributeDeclaration, role: LayoutNodeRole.PEER}))
        }
        if (peer.originalParentFilename) {
            let [parentRef] = component.attributeDeclaration.inheritance
            let parentDecl = this.library.resolveTypeReference(parentRef)
            while (parentDecl) {
                const parentComponent = findComponentByDeclaration(this.library, parentDecl as idl.IDLInterface)!
                const parentGeneratedPath = this.library.layout.resolve({
                    node: parentDecl,
                    role: LayoutNodeRole.COMPONENT
                })
                if (!this.options.isDeclared)
                    imports.addFeature(generateArkComponentName(parentComponent.name), `./${parentGeneratedPath}`)

                imports.addFeatures([
                    componentToStyleClass(parentComponent.attributeDeclaration.name),
                    componentToAttributesInterface(parentComponent.attributeDeclaration.name),
                ], `./${parentGeneratedPath}`)
                if (parentComponent.attributeDeclaration.inheritance.length) {
                    let [parentRef] = parentComponent.attributeDeclaration.inheritance
                    parentDecl = this.library.resolveTypeReference(parentRef)
                } else {
                    parentDecl = undefined
                }
            }
        }
        this.populateImports(imports)

        collectDeclDependencies(this.library, component.attributeDeclaration, imports)
        if (component.interfaceDeclaration)
            collectDeclDependencies(this.library, component.interfaceDeclaration, imports)
        return imports
    }

    protected populateImports(imports: ImportsCollector) {
        if (!this.options.isDeclared)
            imports.addFeature('unsafeCast', '@koalaui/common')
    }

    private printComponent(peer: PeerClass): PrinterResult[] {

        const component = findComponentByType(this.library, idl.createReferenceType(peer.originalClassName!))!

        const imports = this.printImports(peer, component)
        const printer = this.library.createLanguageWriter()

        const componentClassName = generateArkComponentName(peer.componentName)
        const parentComponentClassName = peer.parentComponentName ? generateArkComponentName(peer.parentComponentName!) : `ComponentBase`
        const peerClassName = componentToPeerClass(peer.componentName)

        printer.writeClass(componentClassName, (writer) => {
            writer.writeMethodImplementation(
                new Method('getPeer',
                    new MethodSignature(createReferenceType(peerClassName), []
                    ), [MethodModifier.PROTECTED], []),
                writer => writer.writeStatement(
                    writer.makeReturn(
                        writer.makeCast(
                            writer.makeFieldAccess("this", "peer"),
                            createReferenceType(peerClassName),
                            { optional: true }
                        )
                    )
                )
            )
            for (const grouped of groupOverloads(peer.methods, this.library.language))
                this.overloadsPrinter(printer).printGroupedComponentOverloads(peer.originalClassName!, grouped)
            // todo stub until we can process AttributeModifier
            writer.writeMethodImplementation(new Method('attributeModifier', generateAttributeModifierSignature(this.library, component), [MethodModifier.PUBLIC]), writer => {
                writer.writeStatement(writer.makeReturn(writer.makeThis()))
            })

            const attributesFinishSignature = new MethodSignature(IDLVoidType, [])
            const applyAttributesFinish = 'applyAttributesFinish'
            writer.writeMethodImplementation(new Method(applyAttributesFinish, attributesFinishSignature, [MethodModifier.PUBLIC]), (writer) => {
                writer.print('// we call this function outside of class, so need to make it public')
                writer.writeMethodCall('super', applyAttributesFinish, [])
            })
        }, parentComponentClassName, [componentToAttributesInterface(peer.originalClassName!)])

        return [{
            collector: imports,
            content: printer,
            over: {
                node: component.attributeDeclaration,
                role: LayoutNodeRole.COMPONENT,
                hint: 'component.implementation'
            }
        }]
    }

    protected printComponentFunctions(peer: PeerClass): PrinterResult[] {
        const printer = this.library.createLanguageWriter()
        const component = findComponentByName(this.library, peer.componentName)!
        const componentInterfaceName = componentToAttributesInterface(peer.originalClassName!)
        const componentClassImplName = generateArkComponentName(peer.componentName)
        const callableMethods = peer.methods.filter(it => it.isCallSignature).map(it => it.method)
        const collapsedCallables = allowsOverloads(this.library.language)
            ? callableMethods
            : callableMethods.length > 0
                ? [collapseSameNamedMethods(callableMethods)]
                : []
        collapsedCallables.forEach(callableMethod => {
            const mappedCallableParams = callableMethod?.signature.args.map((it, index) => `${callableMethod.signature.argName(index)}${callableMethod.signature.isArgOptional(index) ? "?" : ""}: ${printer.getNodeName(it)}`)
            const mappedCallableParamsValues = callableMethod?.signature.args.map((_, index) => callableMethod.signature.argName(index))
            const callableInvocation = callableMethod?.name ? `receiver.${callableMethod?.name}(${mappedCallableParamsValues})` : ""
            const peerClassName = componentToPeerClass(peer.componentName)
            if (!collectComponents(this.library).find(it => it.name === component.name)?.interfaceDeclaration)
                return [{
                    collector: this.printImports(peer, component),
                    content: printer,
                    over: {
                        node: component.attributeDeclaration,
                        role: LayoutNodeRole.COMPONENT,
                        hint: 'component.function'
                    }
                }]
            const declaredPostrix = this.options.isDeclared ? "decl_" : ""
            const stagePostfix = this.library.useMemoM3 ? "m3" : "m1"
            let paramsList = mappedCallableParams?.join(", ")
            if (paramsList) paramsList += ","
            printer.writeLines(readLangTemplate(`component_builder_${declaredPostrix}${stagePostfix}`, this.library.language)
                .replaceAll("%COMPONENT_NAME%", component.name)
                .replaceAll("%COMPONENT_ATTRIBUTE_NAME%", componentInterfaceName)
                .replaceAll("%FUNCTION_PARAMETERS%", paramsList ?? "")
                .replaceAll("%COMPONENT_CLASS_NAME%", componentClassImplName)
                .replaceAll("%PEER_CLASS_NAME%", peerClassName)
                .replaceAll("%PEER_CALLABLE_INVOKE%", callableInvocation))
        })
        return [{
            collector: this.printImports(peer, component),
            content: printer,
            over: {
                node: component.attributeDeclaration,
                role: LayoutNodeRole.COMPONENT,
                hint: 'component.function'
            }
        }]
    }
}

class ArkTsComponentFileVisitor extends TSComponentFileVisitor {
    protected populateImports(imports: ImportsCollector) {
        if (!this.options.isDeclared)
            imports.addFeature('TypeChecker', '#components')
        if (this.library.useMemoM3) {
            imports.addFeatures(['memo', 'memo_stable'], '@koalaui/runtime/annotations')
            imports.addFeatures(['ComponentBuilder'], '@koalaui/builderLambda')
        }
    }
}

class JavaComponentFileVisitor implements ComponentFileVisitor {
    private readonly results: ComponentPrintResult[] = []

    constructor(
        private readonly library: PeerLibrary,
        private readonly file: idl.IDLFile,
    ) { }

    visit(): PrinterResult[] {
        collectPeersForFile(this.library, this.file).forEach(peer => this.printComponent(peer))
        return []
    }
    getComponentResults(): ComponentPrintResult[] {
        return []
    }

    private printComponent(peer: PeerClass) {
        const componentClassName = generateArkComponentName(peer.componentName)
        const componentType = createReferenceType(componentClassName)
        const parentComponentClassName = peer.parentComponentName ? generateArkComponentName(peer.parentComponentName!) : COMPONENT_BASE
        const peerClassName = componentToPeerClass(peer.componentName)

        const result = this.library.createLanguageWriter(Language.JAVA)
        result.print(`package ${ARKOALA_PACKAGE};\n`)
        const imports = collectJavaImports(peer.methods.flatMap(method => method.method.signature.args))
        printJavaImports(result, imports)

        result.writeClass(componentClassName, (writer) => {
            peer.methods.forEach(peerMethod => {
                const originalSignature = peerMethod.method.signature as NamedMethodSignature
                const signature = new NamedMethodSignature(componentType, originalSignature.args, originalSignature.argsNames, originalSignature.defaults)
                const method = new Method(peerMethod.method.name, signature, [MethodModifier.PUBLIC])
                writer.writeMethodImplementation(method, writer => {
                    const thiz = writer.makeThis()
                    writer.writeStatement(writer.makeCondition(
                        writer.makeString(`checkPriority("${method.name}")`),
                        writer.makeBlock([
                            writer.makeStatement(writer.makeMethodCall(`((${peerClassName})peer)`, `${peerMethod.sig.name}Attribute`, signature.argsNames.map(it => writer.makeString(it)))),
                            writer.makeReturn(thiz),
                        ])))
                    writer.writeStatement(writer.makeReturn(thiz))
                }
                )
            })

            const attributesFinishSignature = new MethodSignature(IDLVoidType, [])
            const applyAttributesFinish = 'applyAttributesFinish'
            writer.writeMethodImplementation(new Method(applyAttributesFinish, attributesFinishSignature, [MethodModifier.PUBLIC]), (writer) => {
                writer.writeMethodCall('super', applyAttributesFinish, [])
            })

            const applyAttributesSignature = new MethodSignature(IDLVoidType, [])
            const applyAttributes = 'applyAttributes'
            writer.writeMethodImplementation(new Method(applyAttributes, applyAttributesSignature, [MethodModifier.PUBLIC]), (writer) => {
                writer.writeMethodCall('super', applyAttributes, [])
                writer.writeStatement(writer.makeStatement(writer.makeString(`throw new RuntimeException("not implemented")`)))
            })
        }, parentComponentClassName)

        this.results.push(new ComponentPrintResult(new TargetFile(componentClassName + Language.JAVA.extension, ARKOALA_PACKAGE_PATH), result))
    }
}

class CJComponentFileVisitor implements ComponentFileVisitor {
    private readonly typeMapper: CJTypeMapper

    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        protected readonly options: {
            isDeclared: boolean,
        }
    ) {
        this.typeMapper = new CJTypeMapper()
    }

    private overloadsPrinter(printer:LanguageWriter) {
        return new OverloadsPrinter(this.library, printer, this.library.language, true, this.library.useMemoM3)
    }

    /**
     * CJ 专用的组件方法重载打印器
     * 应用类型映射规则到方法参数
     */
    private printCjComponentOverloads(className: string, methods: any[], writer: LanguageWriter) {
        methods.forEach(methodGroup => {
            const method = methodGroup.method
            if (!method) return

            // 先尝试收集每个参数的转换结果，若任一参数给出 overloads，则需要生成多个重载
            const perParamConversions: Array<TypeConversionResult> = method.signature.args.map((paramType: idl.IDLType, index: number) => {
                const paramName = method.signature.argName(index)
                const isOptional = method.signature.isArgOptional(index)
                return this.convertCjParameterType(paramType, paramName, isOptional)
            })

            const hasOverloads = perParamConversions.some(c => c.overloads && c.overloads.length > 0)
            
            // 移除过于冗长的调试日志，保留关键信息
            if (hasOverloads) {
                console.log(`[ComponentsPrinter] Method ${method.name} has overloads`);
            }

            const peerClassName = this.getPeerClassName(className)
            const argNames = method.signature.args.map((_: idl.IDLType, index: number) => method.signature.argName(index))
            const returnTypeName = writer.getNodeName(method.signature.returnType)

            if (hasOverloads) {
                // 简化处理：当前只支持单参数重载，找出第一个有重载的参数
                const overloadParam = perParamConversions.find(c => c.overloads && c.overloads.length > 0)
                const overloadIndex = perParamConversions.findIndex(c => c.overloads && c.overloads.length > 0)
                
                if (overloadParam && overloadParam.overloads) {
                    for (const alt of overloadParam.overloads) {
                        this.printSingleMethod(method, perParamConversions, overloadIndex, alt, className, writer)
                    }
                }
            } else {
                const params = this.buildParameterList(perParamConversions, method, writer);
                this.printSingleMethodImplementation(method, params, argNames, peerClassName, returnTypeName, writer);
            }
        })
    }

    visit(): PrinterResult[] {
        const result: PrinterResult[] = []
        collectPeersForFile(this.library, this.file).forEach(peer => {
            if (!this.options.isDeclared)
                result.push(...this.printComponent(peer))
            result.push(...this.printComponentFunction(peer))
        })
        return result
    }

    private printImports(peer: PeerClass, component:IdlComponentDeclaration): ImportsCollector {
        const imports = new ImportsCollector()
        return imports
    }

    /**
     * 打印单个方法重载版本
     */
    /**
     * 打印单个方法重载版本
     * 符合《基础类型映射与联合类型优化规则》的重载生成策略
     */
    private printSingleMethod(
        method: any, 
        allConversions: TypeConversionResult[], 
        overloadIndex: number, 
        overloadAlt: { cjType: idl.IDLType | string; defaultValue?: string; useOption?: boolean }, 
        className: string, 
        writer: LanguageWriter
    ): void {
        const peerClassName = this.getPeerClassName(className);
        const argNames = method.signature.args.map((_: idl.IDLType, index: number) => method.signature.argName(index));
        const returnTypeName = writer.getNodeName(method.signature.returnType);
        
        const params = this.buildOverloadParameterList(allConversions, method, overloadIndex, overloadAlt, writer);
        this.printSingleMethodImplementation(method, params, argNames, peerClassName, returnTypeName, writer);
    }
    
    /**
     * 构建重载方法的参数列表
     */
    private buildOverloadParameterList(
        allConversions: TypeConversionResult[], 
        method: any,
        overloadIndex: number,
        overloadAlt: { cjType: idl.IDLType | string; defaultValue?: string; useOption?: boolean },
        writer: LanguageWriter
    ): string[] {
        const params: string[] = [];
        
        allConversions.forEach((pc: TypeConversionResult, idx: number) => {
            const name = method.signature.argName(idx);
            const isOptional = method.signature.isArgOptional(idx);
            
            let tName: string;
            let defaultValue: string | undefined;
            
            if (idx === overloadIndex) {
                // 使用重载的替代类型
                tName = typeof overloadAlt.cjType === 'string' ? overloadAlt.cjType : writer.getNodeName(overloadAlt.cjType);
                defaultValue = overloadAlt.defaultValue;
            } else {
                // 使用原有转换结果
                tName = typeof pc.cjType === 'string' ? pc.cjType : writer.getNodeName(pc.cjType as idl.IDLType);
                defaultValue = pc.defaultValue;
            }
            
            // 应用高频联合类型收敛
            tName = this.rewriteTypeName(tName);
            
            // 根据《规则》优先使用默认值而非可选语法
            params.push(this.formatParameter(name, tName, defaultValue, isOptional));
        });
        
        return params;
    }
    
    /**
     * 构建标准方法的参数列表
     */
    private buildParameterList(
        perParamConversions: TypeConversionResult[], 
        method: any, 
        writer: LanguageWriter
    ): string[] {
        const params: string[] = [];
        
        perParamConversions.forEach((pc: TypeConversionResult, idx: number) => {
            const name = method.signature.argName(idx);
            const isOptional = method.signature.isArgOptional(idx);
            let tName = typeof pc.cjType === 'string' ? pc.cjType : writer.getNodeName(pc.cjType as idl.IDLType);
            
            // 应用高频联合类型收敛
            tName = this.rewriteTypeName(tName);
            
            // 根据《规则》优先使用默认值而非可选语法
            params.push(this.formatParameter(name, tName, pc.defaultValue, isOptional));
        });
        
        return params;
    }
    
    /**
     * 格式化单个参数，符合《基础类型映射与联合类型优化规则》
     * 优先使用默认值，基础类型避免使用 ? 语法
     */
    private formatParameter(name: string, typeName: string, defaultValue: string | undefined, isOptional: boolean): string {
        // 优先使用默认值（基础类型可选：使用默认值）
        if (defaultValue && defaultValue !== 'None') {
            return `${name}: ${typeName} = ${defaultValue}`;
        }
        // 只有在没有默认值时才使用可选语法（非基础类型可选：使用 Option<T>）
        else if (isOptional) {
            return `${name}?: ${typeName}`;
        }
        // 必需参数
        else {
            return `${name}: ${typeName}`;
        }
    }
    
    /**
     * 打印方法实现体
     */
    private printSingleMethodImplementation(
        method: any, 
        params: string[], 
        argNames: string[], 
        peerClassName: string, 
        returnTypeName: string, 
        writer: LanguageWriter
    ): void {
        const paramsStr = params.join(', ');
        writer.print(`public func ${method.name}(${paramsStr}): ${returnTypeName} {`);
        writer.pushIndent();
        
        const argList = argNames.join(', ');
        writer.print(`if (this.checkPriority("${method.name}")) {`);
        writer.pushIndent();
        writer.print(`(this.getPeer() as ${peerClassName}).${method.name}Attribute(${argList})`);
        writer.popIndent();
        writer.print('}');
        writer.print('return this');
        
        writer.popIndent();
        writer.print('}');
    }

    /**
     * 转换 Cangjie 参数类型，委托给 CJTypeMapper 处理
     * 符合《基础类型映射与联合类型优化规则》
     */
    private convertCjParameterType(paramType: idl.IDLType, paramName: string, isOptional: boolean): TypeConversionResult {
        return this.typeMapper.convertParameterType(paramType, paramName, isOptional);
    }

    /**
     * 在最终打印前，对类型名进行高频联合类型收敛改写，确保组件层不暴露 Union_*。
     * 基于《基础类型映射与联合类型优化规则》的 P0-P2 收敛策略：
     * P0: FontWeight|number|string → FontWeight, string|Resource → ResourceStr
     * P1: Date|Bindable → Date
     * P2: String|Array<String> → Array<ResourceStr>, Number|Array<Number> → Array<Int64>
     * 其他: string|number|Color → ResourceColor
     */
    private rewriteTypeName(typeName: string): string {
        if (!typeName) return typeName;
        
        let s = typeName.replace(/\s+/g, ' '); // 规范化空白符
        
        // P0 高优先级收敛
        s = this.applyP0Convergence(s);
        
        // P1 特殊类型收敛  
        s = this.applyP1Convergence(s);
        
        // P2 数组类型收敛
        s = this.applyP2Convergence(s);
        
        // 其他高频模式收敛
        s = this.applyOtherConvergence(s);
        
        return s;
    }
    
    /**
     * P0 高优先级收敛规则
     */
    private applyP0Convergence(s: string): string {
        // FontWeight | number | string → FontWeight
        s = s.replace(/Union_FontWeight_Number_String/g, 'FontWeight');
        s = s.replace(/FontWeight\s*\|\s*[Nn]umber\s*\|\s*[Ss]tring/g, 'FontWeight');
        s = s.replace(/[Ss]tring\s*\|\s*[Nn]umber\s*\|\s*FontWeight/g, 'FontWeight');
        
        // string | Resource → ResourceStr
        s = s.replace(/Union_String_Resource/g, 'ResourceStr');
        s = s.replace(/[Ss]tring\s*\|\s*Resource/g, 'ResourceStr');
        s = s.replace(/Resource\s*\|\s*[Ss]tring/g, 'ResourceStr');
        
        return s;
    }
    
    /**
     * P1 特殊类型收敛规则
     */
    private applyP1Convergence(s: string): string {
        // Date | Bindable → Date
        s = s.replace(/Union_Date_Bindable/g, 'Date');
        s = s.replace(/Date\s*\|\s*Bindable(?:<[^>]*>)?/g, 'Date');
        s = s.replace(/Bindable(?:<\s*Date\s*>)?\s*\|\s*Date/g, 'Date');
        
        return s;
    }
    
    /**
     * P2 数组类型收敛规则
     */
    private applyP2Convergence(s: string): string {
        // String | Array<String> → Array<ResourceStr>
        s = s.replace(/Union_String_Array_String/g, 'Array<ResourceStr>');
        s = s.replace(/[Ss]tring\s*\|\s*Array<\s*[Ss]tring\s*>/g, 'Array<ResourceStr>');
        s = s.replace(/Array<\s*[Ss]tring\s*>\s*\|\s*[Ss]tring/g, 'Array<ResourceStr>');
        
        // Number | Array<Number> → Array<Int64>
        s = s.replace(/Union_Number_Array_Number/g, 'Array<Int64>');
        s = s.replace(/[Nn]umber\s*\|\s*Array<\s*[Nn]umber\s*>/g, 'Array<Int64>');
        s = s.replace(/Array<\s*[Nn]umber\s*>\s*\|\s*[Nn]umber/g, 'Array<Int64>');
        
        return s;
    }
    
    /**
     * 其他高频模式收敛
     */
    private applyOtherConvergence(s: string): string {
        // string | number | Color → ResourceColor
        s = s.replace(/Union_String_Number_Color/g, 'ResourceColor');
        s = s.replace(/[Ss]tring\s*\|\s*[Nn]umber\s*\|\s*Color/g, 'ResourceColor');
        s = s.replace(/Color\s*\|\s*[Nn]umber\s*\|\s*[Ss]tring/g, 'ResourceColor');
        
        return s;
    }

    /**
     * 获取类型显示名称，委托给 CJTypeMapper 处理
     */
    private getTypeDisplayName(type: idl.IDLType): string {
        return this.typeMapper.getTypeDisplayName(type);
    }

    /**
     * 生成 Peer 类名称
     */
    private getPeerClassName(componentClassName: string): string {
        if (componentClassName.endsWith('Component')) {
            return componentClassName.slice(0, -9) + 'Peer';
        }
        return componentClassName + 'Peer';
    }

    private printComponent(peer: PeerClass): PrinterResult[] {

        const component = findComponentByType(this.library, idl.createReferenceType(peer.originalClassName!))!

        const imports = this.printImports(peer, component)
        const printer = this.library.createLanguageWriter()

        const componentClassName = generateArkComponentName(peer.componentName)
        const parentComponentClassName = peer.parentComponentName ? generateArkComponentName(peer.parentComponentName!) : `ComponentBase`
        const peerClassName = componentToPeerClass(peer.componentName)


        printer.writeClass(componentClassName, (writer) => {
            writer.writeMethodImplementation(
                new Method('getPeer',
                    new MethodSignature(createReferenceType(peerClassName), []
                    ), [MethodModifier.PROTECTED], []),
                writer => {
                    writer.print('if (let Some(peer) <- this.peer) {')
                    writer.pushIndent()
                    writer.writeStatement(
                        writer.makeReturn(
                            writer.makeCast(
                                writer.makeString("peer"),
                                createReferenceType(peerClassName),
                                { optional: true }
                            )
                        )
                    )
                    writer.popIndent()
                    writer.print('} else { throw Exception()}')
                }
            )
            // 使用 CJ 专用的类型映射处理方法参数
            this.printCjComponentOverloads(peer.originalClassName!, peer.methods, writer)
            // todo stub until we can process AttributeModifier
            if (isCommonMethod(peer.originalClassName!) || peer.originalClassName == "ContainerSpanAttribute")
                writer.print(`public func attributeModifier(modifier: AttributeModifier<Object>) { throw Exception("not implemented") }`)

            const attributesFinishSignature = new MethodSignature(IDLVoidType, [])
            const applyAttributesFinish = 'applyAttributesFinish'
            writer.writeMethodImplementation(new Method(applyAttributesFinish, attributesFinishSignature, [MethodModifier.PUBLIC]), (writer) => {
                writer.print('// we call this function outside of class, so need to make it public')
                writer.writeMethodCall('super', applyAttributesFinish, [])
            })
        }, parentComponentClassName, undefined)

        return [{
            collector: imports,
            content: printer,
            over: {
                node: component.attributeDeclaration,
                role: LayoutNodeRole.COMPONENT,
                hint: 'component.implementation'
            }
        }]
    }

    protected printComponentFunction(peer: PeerClass): PrinterResult[] {
        const printer = this.library.createLanguageWriter()
        const component = findComponentByName(this.library, peer.componentName)!
        const componentInterfaceName = componentToAttributesInterface(peer.originalClassName!)
        const componentClassImplName = generateArkComponentName(peer.componentName)
        const callableMethods = peer.methods.filter(it => it.isCallSignature).map(it => it.method)
        const callableMethod = callableMethods.length ? collapseSameNamedMethods(callableMethods) : undefined
        
        // 应用 CJ 类型映射到构建函数参数
        const mappedCallableParams = callableMethod?.signature.args.map((paramType, index) => {
            const paramName = callableMethod.signature.argName(index)
            const isOptional = callableMethod.signature.isArgOptional(index)
            
            const converted = this.convertCjParameterType(paramType, paramName, isOptional)
            // 选择首选类型（单一类型或重载的第一个）
            const chosenType = converted.cjType ?? converted.overloads?.[0]?.cjType ?? idl.IDLAnyType
            const chosenDefault = converted.defaultValue ?? converted.overloads?.[0]?.defaultValue
            const cjTypeName = typeof chosenType === 'string' ? chosenType : printer.getNodeName(chosenType)

            if (chosenDefault) {
                return `${paramName}: ${cjTypeName} = ${chosenDefault}`
            } else if (isOptional) {
                return `${paramName}?: ${cjTypeName}`
            } else {
                return `${paramName}: ${cjTypeName}`
            }
        })
        
        const mappedCallableParamsValues = callableMethod?.signature.args.map((_, index) => callableMethod.signature.argName(index))
        const callableInvocation = callableMethod?.name ? `receiver.${callableMethod?.name}(${mappedCallableParamsValues})` : ""
        const peerClassName = componentToPeerClass(peer.componentName)
        if (!collectComponents(this.library).find(it => it.name === component.name)?.interfaceDeclaration)
            return []
        const declaredPostrix = this.options.isDeclared ? "decl_" : ""
        const stagePostfix = this.library.useMemoM3 ? "m3" : "m1"
        let paramsList = mappedCallableParams?.join(", ")
        printer.writeLines(readLangTemplate(`component_builder_${declaredPostrix}${stagePostfix}`, this.library.language)
            .replaceAll("%COMPONENT_NAME%", component.name)
            .replaceAll("%COMPONENT_ATTRIBUTE_NAME%", componentInterfaceName)
            .replaceAll("%FUNCTION_PARAMETERS%", paramsList ? `,\n${paramsList}`: "")
            .replaceAll("%COMPONENT_CLASS_NAME%", componentClassImplName)
            .replaceAll("%PEER_CLASS_NAME%", peerClassName)
            .replaceAll("%PEER_CALLABLE_INVOKE%", callableInvocation))
        return [{
            collector: this.printImports(peer, component),
            content: printer,
            over: {
                node: component.attributeDeclaration,
                role: LayoutNodeRole.COMPONENT,
                hint: 'component.function'
            }
        }]
    }
}

class KotlinComponentFileVisitor implements ComponentFileVisitor {

    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        protected readonly options: {
            isDeclared: boolean,
        }
    ) { }

    private overloadsPrinter(printer:LanguageWriter) {
        return new OverloadsPrinter(this.library, printer, this.library.language, true, this.library.useMemoM3)
    }

    visit(): PrinterResult[] {
        const result: PrinterResult[] = []
        collectPeersForFile(this.library, this.file).forEach(peer => {
            // if (!this.options.isDeclared)
            //     result.push(...this.printComponent(peer))
            // result.push(...this.printComponentFunction(peer))
        })
        return result
    }
}
class ComponentsVisitor {
    readonly components: Map<TargetFile, LanguageWriter> = new Map()
    private readonly language = this.peerLibrary.language

    constructor(
        private readonly peerLibrary: PeerLibrary,
        private options: {
            isDeclared: boolean
        }
    ) { }

    printComponents(): PrinterResult[] {
        const result: PrinterResult[] = []
        for (const file of this.peerLibrary.files.values()) {
            if (!collectPeersForFile(this.peerLibrary, file).length)
                continue
            let visitor: ComponentFileVisitor
            if (this.language == Language.TS) {
                visitor = new TSComponentFileVisitor(this.peerLibrary, file, this.options)
            }
            else if (this.language == Language.ARKTS) {
                visitor = new ArkTsComponentFileVisitor(this.peerLibrary, file, this.options)
            }
            else if (this.language == Language.JAVA) {
                visitor = new JavaComponentFileVisitor(this.peerLibrary, file)
            }
            else if (this.language == Language.CJ) {
                visitor = new CJComponentFileVisitor(this.peerLibrary, file, this.options)
            }
            else if (this.language == Language.KOTLIN) {
                visitor = new KotlinComponentFileVisitor(this.peerLibrary, file, this.options)
            }
            else {
                throw new Error(`ComponentsVisitor not implemented for ${this.language.toString()}`)
            }
            result.push(...visitor.visit())
        }
        return result
    }
}

export function printComponents(peerLibrary: PeerLibrary): PrinterResult[] {
    return new ComponentsVisitor(peerLibrary, { isDeclared: false }).printComponents()
}

export function printComponentsDeclarations(peerLibrary: PeerLibrary): PrinterResult[] {
    // TODO: support other output languages
    if (![Language.TS, Language.ARKTS, Language.JAVA].includes(peerLibrary.language))
        return []

    return new ComponentsVisitor(peerLibrary, { isDeclared: true }).printComponents()
}
