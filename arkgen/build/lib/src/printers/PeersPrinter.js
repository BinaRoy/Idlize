"use strict";
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
Object.defineProperty(exports, "__esModule", { value: true });
exports.generateStyleParentClass = exports.createPeersPrinter = exports.componentToAttributesInterface = exports.componentToStyleClass = exports.componentToPeerClass = void 0;
const idl = require("@idlizer/core/idl");
const core_1 = require("@idlizer/core");
const libohos_1 = require("@idlizer/libohos");
const ArkoalaLayout_1 = require("../ArkoalaLayout");
const CJTypeMapper_1 = require("../declaration/CJTypeMapper");
function componentToPeerClass(component) {
    return `Ark${component}Peer`;
}
exports.componentToPeerClass = componentToPeerClass;
function componentToStyleClass(component) {
    if (component.endsWith("Attribute"))
        component = component.substring(0, component.length - 9);
    return `Ark${component}Style`;
}
exports.componentToStyleClass = componentToStyleClass;
function componentToAttributesInterface(component) {
    return `${component}`;
}
exports.componentToAttributesInterface = componentToAttributesInterface;
// For TS and ArkTS
class PeerFileVisitor {
    constructor(library, file, dumpSerialized) {
        this.library = library;
        this.file = file;
        this.dumpSerialized = dumpSerialized;
    }
    generatePeerParentName(peer) {
        var _b;
        if (!peer.originalClassName)
            throw new Error(`${peer.componentName} is not supported, use 'uselessConstructorInterfaces' for now`);
        const parentRole = (0, core_1.determineParentRole)(peer.originalClassName, peer.parentComponentName);
        if ([core_1.InheritanceRole.Finalizable, core_1.InheritanceRole.PeerNode].includes(parentRole)) {
            return core_1.InheritanceRole[parentRole];
        }
        const parent = (_b = peer.parentComponentName) !== null && _b !== void 0 ? _b : (0, core_1.throwException)(`Expected component to have parent`);
        return componentToPeerClass(parent);
    }
    printImports(peer, imports) {
        this.getDefaultPeerImports(this.library.language, imports);
        if (peer.originalParentFilename) {
            const parentComponent = (0, libohos_1.findComponentByName)(this.library, peer.parentComponentName);
            imports.addFeature(this.generatePeerParentName(peer), this.library.layout.resolve({ node: parentComponent.attributeDeclaration, role: core_1.LayoutNodeRole.PEER }));
        }
        const component = (0, libohos_1.findComponentByType)(this.library, idl.createReferenceType(peer.originalClassName));
        // 为 CJ 语言收敛联合类型，避免将 Union_* 拉入公共层
        if (this.library.language !== core_1.Language.CJ) {
            (0, libohos_1.collectDeclDependencies)(this.library, component.attributeDeclaration, imports, { expandTypedefs: true });
        }
        component.attributeDeclaration.methods.forEach(method => {
            if (this.library.language === core_1.Language.CJ) {
                const mapper = new CJTypeMapper_1.CJTypeMapper();
                // 先对参数与返回类型进行语义收敛，再参与依赖收集
                const mappedTypes = [];
                // 参数
                method.parameters.forEach((p, index) => {
                    var _b;
                    try {
                        const conv = mapper.convertParameterType(p.type, (_b = p.name) !== null && _b !== void 0 ? _b : `param${index}`, !!p.optional);
                        const addType = (t) => {
                            if (!t)
                                return;
                            // 检查是否是原生元组语法 (T1, T2, ...)
                            if (typeof t === 'string' && /^\(.+\)$/.test(t)) {
                                // 原生元组语法：创建特殊的引用类型，名称就是元组语法
                                const tupleRefType = idl.createReferenceType(t);
                                tupleRefType.__isTupleReference = true;
                                mappedTypes.push(tupleRefType);
                            }
                            else {
                                mappedTypes.push(typeof t === 'string' ? idl.createReferenceType(t) : t);
                            }
                        };
                        if (conv.overloads && conv.overloads.length > 0) {
                            conv.overloads.forEach(o => addType(o.cjType));
                        }
                        else {
                            addType(conv.cjType);
                        }
                    }
                    catch (_c) {
                        mappedTypes.push(p.type);
                    }
                });
                // 返回类型
                try {
                    const convRet = mapper.convertParameterType(method.returnType, `${method.name}_return`, false);
                    const addType = (t) => {
                        if (!t)
                            return;
                        // 检查是否是原生元组语法 (T1, T2, ...)
                        if (typeof t === 'string' && /^\(.+\)$/.test(t)) {
                            // 原生元组语法：创建特殊的引用类型，名称就是元组语法
                            const tupleRefType = idl.createReferenceType(t);
                            tupleRefType.__isTupleReference = true;
                            mappedTypes.push(tupleRefType);
                        }
                        else {
                            mappedTypes.push(typeof t === 'string' ? idl.createReferenceType(t) : t);
                        }
                    };
                    if (convRet.overloads && convRet.overloads.length > 0) {
                        convRet.overloads.forEach(o => addType(o.cjType));
                    }
                    else {
                        addType(convRet.cjType);
                    }
                }
                catch (_b) {
                    mappedTypes.push(method.returnType);
                }
                // 仅对收敛后的类型做依赖收集，避免引入 Union_*
                mappedTypes.forEach(type => {
                    (0, libohos_1.collectDeclDependencies)(this.library, type, (dep) => {
                        (0, libohos_1.collectDeclDependencies)(this.library, dep, imports, { expandTypedefs: true });
                    }, { expandTypedefs: true });
                });
            }
            else {
                method.parameters.map(p => p.type).concat([method.returnType]).forEach(type => {
                    (0, libohos_1.collectDeclDependencies)(this.library, type, (dep) => {
                        (0, libohos_1.collectDeclDependencies)(this.library, dep, imports, { expandTypedefs: true });
                    }, { expandTypedefs: true });
                });
            }
        });
        if (component.interfaceDeclaration)
            if (this.library.language !== core_1.Language.CJ) {
                (0, libohos_1.collectDeclDependencies)(this.library, component.interfaceDeclaration, imports, { expandTypedefs: true });
            }
        if (this.library.language === core_1.Language.TS) {
            imports.addFeature('GestureName', './framework/shared/generated-utils');
            imports.addFeature('GestureComponent', './framework/shared/generated-utils');
        }
        // 为 CJ 语言补充通用导入：cores 与 interfaces
        if (this.library.language === core_1.Language.CJ) {
            imports.addFeatures(['*'], 'idlize.commonPara');
        }
        if (this.library.language === core_1.Language.TS || this.library.language === core_1.Language.ARKTS) {
            (0, libohos_1.collectDeclItself)(this.library, idl.createReferenceType("CallbackKind"), imports);
            imports.addFeature('CallbackTransformer', './CallbackTransformer');
            (0, libohos_1.collectDeclItself)(this.library, idl.createReferenceType(libohos_1.NativeModule.Generated.name), imports);
            const hookClassName = peer.componentName == "CommonMethod"
                ? peer.componentName
                : `${peer.componentName}Attribute`;
            const hookMethods = (0, core_1.generatorConfiguration)().hooks.get(hookClassName);
            if (hookMethods) {
                for (const [methodName, hook] of hookMethods.entries()) {
                    const hookName = hook ? hook.hookName : `hook${peer.componentName}${(0, core_1.capitalize)(methodName)}`;
                    imports.addFeature(hookName, (0, ArkoalaLayout_1.HandwrittenModule)(this.library.language));
                }
            }
        }
        if (this.library.language == core_1.Language.TS) {
            imports.addFeature("unsafeCast", "@koalaui/common");
        }
        if (this.library.language == core_1.Language.ARKTS) {
            imports.addFeature("TypeChecker", "#components");
        }
        imports.addFeatures(["MaterializedBase", "toPeerPtr"], "@koalaui/interop");
        // collectMaterializedImports(imports, this.library)
    }
    printPeerConstructor(peer, printer) {
        // TODO: fully switch to writer!
        const parentRole = (0, core_1.determineParentRole)(peer.originalClassName, peer.originalParentName);
        const signature = new core_1.NamedMethodSignature(core_1.IDLVoidType, [core_1.IDLPointerType, core_1.IDLI32Type, core_1.IDLStringType, core_1.IDLI32Type], ['peerPtr', 'id', 'name', 'flags'], [undefined, undefined, '""', '0']);
        printer.writeConstructorImplementation(componentToPeerClass(peer.componentName), signature, (writer) => { }, { delegationArgs: ['peerPtr', 'id', 'name', 'flags'].map(it => printer.makeString(it)), delegationName: peer.parentComponentName }, [core_1.MethodModifier.PROTECTED]);
    }
    printCreateMethod(peer, writer) {
        const peerClass = componentToPeerClass(peer.componentName);
        const signature = new core_1.NamedMethodSignature((0, core_1.createReferenceType)(peerClass), [(0, core_1.createReferenceType)('ComponentBase'), core_1.IDLI32Type], ['component', 'flags'], [undefined, '0'], [[core_1.ArgumentModifier.OPTIONAL], undefined]);
        writer.makeStaticBlock(() => {
            writer.writeMethodImplementation(new core_1.Method('create', signature, [core_1.MethodModifier.STATIC, core_1.MethodModifier.PUBLIC]), (writer) => {
                const peerId = 'peerId';
                writer.writeStatement(writer.makeAssign(peerId, undefined, writer.makeString('PeerNode.nextId()'), true));
                const _peerPtr = '_peerPtr';
                writer.writeStatement(writer.makeAssign(_peerPtr, undefined, writer.makeNativeCall(libohos_1.NativeModule.Generated, `_${peer.componentName}_${(0, core_1.createConstructPeerMethod)(peer).sig.name}`, [writer.makeString(peerId), writer.makeString(signature.argName(1))]), true));
                const _peer = '_peer';
                writer.writeStatement(writer.makeAssign(_peer, undefined, writer.makeNewObject(peerClass, [
                    writer.makeString(_peerPtr),
                    writer.makeString(peerId),
                    writer.makeString(`"${peer.componentName}"`),
                    writer.makeString('flags')
                ]), true));
                writer.writeMethodCall(signature.argName(0), 'setPeer', [_peer], true);
                writer.writeStatement(writer.makeReturn(writer.makeString(_peer)));
            });
        });
    }
    printPeerMethod(method, printer) {
        var _b;
        this.library.setCurrentContext(`${method.originalParentName}.${method.sig.name}`);
        // CJ 兜底规范化：将 set_onChangeEvent_*/_onChangeEvent_* 统一为 onXxx
        const normalizeEventName = (name) => {
            let n = name;
            let m;
            if ((m = n.match(/^set_onChangeEvent_(.+)$/))) {
                const tail = m[1];
                return 'on' + tail.replace(/^(.)/, (c) => c.toUpperCase());
            }
            if ((m = n.match(/^_onChangeEvent_(.+)$/))) {
                const tail = m[1];
                return 'on' + tail.replace(/^(.)/, (c) => c.toUpperCase());
            }
            return name;
        };
        const isCJ = printer.language === core_1.Language.CJ;
        const originalSigName = (_b = method.sig) === null || _b === void 0 ? void 0 : _b.name;
        // 在 CJ 下统一化事件与 setter 的方法名，并去除编号重载后缀以生成同名重载
        const normalizeSetterName = (name) => name.replace(/^set([A-Z])(.*)$/, (_all, first, rest) => first.toLowerCase() + rest);
        const stripOverloadIndex = (name) => name.replace(/\d+$/, '');
        if (isCJ && originalSigName) {
            ;
            method.sig.name = stripOverloadIndex(normalizeSetterName(normalizeEventName(originalSigName)));
        }
        (0, libohos_1.writePeerMethod)(this.library, printer, method, true, this.dumpSerialized, "Attribute", "this.peer.ptr");
        if (isCJ && originalSigName) {
            method.sig.name = originalSigName;
        }
        this.library.setCurrentContext(undefined);
    }
    printPeer(peer, printer) {
        printer.writeClass(componentToPeerClass(peer.componentName), (writer) => {
            this.printPeerConstructor(peer, writer);
            this.printCreateMethod(peer, writer);
            // 预处理：检测同名方法并标记重载信息
            this.preprocessOverloadMethods(peer.methods);
            peer.methods
                .forEach(method => this.printPeerMethod(method, writer));
        }, this.generatePeerParentName(peer));
    }
    /**
     * 预处理方法列表，检测同名方法并标记重载信息
     */
    preprocessOverloadMethods(methods) {
        // 统计每个方法名的出现次数
        const methodNameCounts = new Map();
        const methodsByName = new Map();
        methods.forEach(method => {
            var _b;
            const methodName = (_b = method.sig) === null || _b === void 0 ? void 0 : _b.name;
            if (methodName) {
                methodNameCounts.set(methodName, (methodNameCounts.get(methodName) || 0) + 1);
                if (!methodsByName.has(methodName)) {
                    methodsByName.set(methodName, []);
                }
                methodsByName.get(methodName).push(method);
            }
        });
        // 标记重载方法
        methodNameCounts.forEach((count, methodName) => {
            if (count >= 2) {
                console.log(`[DEBUG] Detected overload method: ${methodName} (${count} overloads)`);
                const overloadMethods = methodsByName.get(methodName);
                overloadMethods.forEach((method, index) => {
                    ;
                    method.__isOverloadMethod = true;
                    method.__overloadOrdinal = index;
                    console.log(`[DEBUG] Marked method ${methodName}[${index}] as overload`);
                });
            }
        });
    }
    printFile() {
        return (0, libohos_1.collectPeersForFile)(this.library, this.file).map(peer => {
            const component = (0, libohos_1.findComponentByName)(this.library, peer.componentName);
            const imports = new libohos_1.ImportsCollector();
            const content = this.library.createLanguageWriter(this.library.language);
            this.printImports(peer, imports);
            this.printPeer(peer, content);
            return {
                over: {
                    node: component.attributeDeclaration,
                    role: core_1.LayoutNodeRole.PEER,
                },
                collector: imports,
                content
            };
        });
    }
    getDefaultPeerImports(lang, imports) {
        if (lang !== core_1.Language.TS && lang !== core_1.Language.ARKTS)
            return;
        imports.addFeatures(['int32', 'int64', 'float32'], "@koalaui/common");
        imports.addFeatures(['nullptr', 'KPointer', 'KInt', 'KBoolean', 'KStringPtr', 'runtimeType', 'RuntimeType'], "@koalaui/interop");
        // TODO Remove unnecessary imports for ohos libraries
        imports.addFeatures(['ComponentBase'], "./ComponentBase");
        imports.addFeatures(['PeerNode'], "./PeerNode");
        switch (lang) {
            case core_1.Language.TS: {
                imports.addFeature('isInstanceOf', "@koalaui/interop");
                break;
            }
            case core_1.Language.ARKTS: {
                imports.addFeature(libohos_1.NativeModule.Generated.name, "#components");
                break;
            }
        }
    }
}
class JavaPeerFileVisitor extends PeerFileVisitor {
    constructor(library, file, dumpSerialized) {
        super(library, file, dumpSerialized);
        this.library = library;
        this.file = file;
    }
    printPackage(printer) {
        printer.print(`package ${libohos_1.ARKOALA_PACKAGE};\n`);
    }
    printApplyMethod(peer, printer) {
        // TODO: attributes
        // const name = peer.originalClassName!
        // const typeParam = componentToAttributesClass(peer.componentName)
        // if (isRoot(name)) {
        //     printer.print(`void applyAttributes(${typeParam} attributes) {}`)
        //     return
        // }
        // printer.print(`void applyAttributes(${typeParam} attributes) {`)
        // printer.pushIndent()
        // printer.print(`super.applyAttributes(attributes)`)
        // printer.popIndent()
        // printer.print(`}`)
    }
    printFile() {
        return Array.from((0, libohos_1.collectPeersForFile)(this.library, this.file).values()).map(peer => {
            let printer = this.library.createLanguageWriter();
            this.printPackage(printer);
            const idlPeer = peer;
            const imports = (0, libohos_1.collectJavaImports)(idlPeer.methods.flatMap(method => method.method.signature.args));
            (0, libohos_1.printJavaImports)(printer, imports);
            this.printPeer(peer, printer);
            const component = (0, libohos_1.findComponentByName)(this.library, peer.componentName);
            return {
                over: {
                    node: component.attributeDeclaration,
                    role: core_1.LayoutNodeRole.PEER,
                },
                content: printer,
                collector: new libohos_1.ImportsCollector()
            };
            // TODO: attributes
            // printer = createLanguageWriter(this.library.declarationTable.language)
            // const attributesName = componentToAttributesClass(peer.componentName)
            // this.printers.set(new TargetFile(attributesName, ARKOALA_PACKAGE_PATH), printer)
            // this.printPackage(printer)
            // this.printAttributes(peer, printer)
        });
    }
}
class CJPeerFileVisitor extends PeerFileVisitor {
    constructor(library, file, dumpSerialized) {
        super(library, file, dumpSerialized);
        this.library = library;
        this.file = file;
        this.typeMapper = new CJTypeMapper_1.CJTypeMapper();
    }
    printApplyMethod(peer, printer) {
    }
    /**
     * 重写 printPeerMethod 以支持联合类型重载
     * 与 ComponentsPrinter 保持一致的重载策略
     */
    printPeerMethod(method, printer) {
        var _b;
        this.library.setCurrentContext(`${method.originalParentName}.${method.sig.name}`);
        const signature = method.method.signature;
        // 检查是否有参数需要重载
        const paramConversions = signature.args.map((paramType, index) => {
            const paramName = signature.argName(index);
            const isOptional = signature.isArgOptional(index);
            return this.typeMapper.convertParameterType(paramType, paramName, isOptional);
        });
        const hasOverloads = paramConversions.some(c => c.overloads && c.overloads.length > 0);
        const hasUnionOverload = paramConversions.some(c => c.isFromUnionOverload);
        // 检测是否是联合类型重载
        const originalSigName = (_b = method.sig) === null || _b === void 0 ? void 0 : _b.name;
        if (hasUnionOverload) {
            console.log(`[DEBUG] Detected union overload for method: ${originalSigName}`);
            method.__isUnionOverload = true;
        }
        if (hasOverloads || hasUnionOverload) {
            // 生成重载方法
            this.generatePeerOverloads(method, paramConversions, printer);
        }
        else {
            // 生成单个方法
            this.generateSinglePeerMethod(method, paramConversions, printer);
        }
        this.library.setCurrentContext(undefined);
    }
    /**
     * 生成 Peer 重载方法
     */
    generatePeerOverloads(method, paramConversions, printer) {
        const overloadParam = paramConversions.find(c => c.overloads && c.overloads.length > 0);
        const overloadIndex = paramConversions.findIndex(c => c.overloads && c.overloads.length > 0);
        if (overloadParam && overloadParam.overloads) {
            for (let __overloadOrdinal = 0; __overloadOrdinal < overloadParam.overloads.length; __overloadOrdinal++) {
                const alt = overloadParam.overloads[__overloadOrdinal];
                this.generateSinglePeerMethodWithOverride(method, paramConversions, overloadIndex, alt, printer, __overloadOrdinal);
            }
        }
    }
    /**
     * 生成单个 Peer 方法（无重载）
     */
    generateSinglePeerMethod(method, paramConversions, printer) {
        // 直接调用原始方法，因为 writePeerMethod 期望原始的 IDL 方法对象
        this.callOriginalWritePeerMethod(method, printer);
    }
    /**
     * 生成单个 Peer 方法（带重载参数）
     */
    generateSinglePeerMethodWithOverride(method, paramConversions, overloadIndex, overloadAlt, printer, __overloadOrdinal) {
        // 对于重载，我们需要创建一个新的方法对象
        const modifiedMethod = this.createOverloadedMethod(method, overloadIndex, overloadAlt);
        modifiedMethod.__overloadOrdinal = __overloadOrdinal;
        // 传递联合类型重载标志位
        if (method.__isUnionOverload) {
            ;
            modifiedMethod.__isUnionOverload = true;
        }
        this.callOriginalWritePeerMethod(modifiedMethod, printer);
    }
    /**

    * 创建重载方法对象
     */
    createOverloadedMethod(method, overloadIndex, overloadAlt) {
        const signature = method.method.signature;
        // 创建新的参数类型数组
        const newArgs = [...signature.args];
        if (overloadAlt.cjType) {
            newArgs[overloadIndex] = typeof overloadAlt.cjType === 'string'
                ? idl.createReferenceType(overloadAlt.cjType)
                : overloadAlt.cjType;
        }
        // 创建新的方法签名
        const newSignature = new core_1.NamedMethodSignature(signature.returnType, newArgs, signature.argsNames, signature.defaults, signature.argsModifiers);
        // 创建新的方法对象
        const newMethod = new core_1.Method(method.method.name, newSignature, method.method.modifiers, method.method.generics);
        // 创建新的 PeerMethod
        return Object.assign(Object.assign({}, method), { method: newMethod });
    }
    /**
     * 调用原始的 writePeerMethod 函数
     */
    callOriginalWritePeerMethod(method, printer) {
        var _b;
        // 生成原生桥接名所需的名称（保持 set/on/类型后缀/编号后缀），避免展示名规范化影响
        const toPascalCase = (s) => s.replace(/^([a-z])/, (_a, c) => c.toUpperCase());
        const startsWithOnEvent = (s) => /^on[A-Z].*/.test(s);
        // 少量原生即为 onXxx 的白名单
        const keepOnWhitelist = new Set(['onSelect', 'onText', 'onSelected', 'onValue']);
        // 根据参数类型推断类型后缀（仅必要时）
        const getTypeSuffix = (sig) => {
            var _b;
            if (!sig)
                return '';
            // 上下文方法名（原始 IDL 名称）
            const originalName = ((_b = method.sig) === null || _b === void 0 ? void 0 : _b.name) || '';
            const inUnionContext = /Union/i.test(originalName);
            // 先判断是否为重载或包含联合参数（避免被早退逻辑短路）
            const isOverloadMethod = method.__overloadOrdinal !== undefined || method.__isOverloadMethod;
            console.log(`[DEBUG] getTypeSuffix called for method: ${originalName}`);
            console.log(`[DEBUG] - inUnionContext: ${inUnionContext}`);
            console.log(`[DEBUG] - isOverloadMethod: ${isOverloadMethod}`);
            console.log(`[DEBUG] - __overloadOrdinal: ${method.__overloadOrdinal}`);
            let hasUnionParam = false;
            for (let i = 0; i < sig.args.length; i++) {
                const t = sig.args[i];
                const refName = (t && typeof t === 'object' && 'name' in t) ? t.name : undefined;
                const asString = refName || String(t);
                // 调试信息（定位特定问题方法）
                if (originalName.includes('scrollBarWidth') || originalName.includes('defaultPickerItemHeight')) {
                    console.log(`[DEBUG] Method: ${originalName}, Arg ${i}:`, {
                        type: t,
                        refName,
                        asString,
                        isUnion: /Union_/.test(asString) || (t && typeof t === 'object' && t.types && Array.isArray(t.types)) || asString.includes('|')
                    });
                }
                // 检测联合类型标记 - 增强检测逻辑
                if (/Union_/.test(asString) ||
                    (t && typeof t === 'object' && t.types && Array.isArray(t.types)) || // IDL UnionType
                    asString.includes('|') || // 直接的联合类型语法
                    /^(number|string|boolean)\s*\|\s*(number|string|boolean)/.test(asString) ||
                    (t && typeof t === 'object' && t.kind === 'UnionType') ||
                    (asString === 'number | string' || asString === 'string | number')) {
                    hasUnionParam = true;
                    console.log(`[DEBUG] Found union param at index ${i}: ${asString}`);
                    break;
                }
            }
            // 特殊处理：对于已知需要重载的方法，强制添加类型后缀
            const knownOverloadMethods = ['scrollBarWidth', 'defaultPickerItemHeight'];
            if (knownOverloadMethods.some(methodName => originalName.includes(methodName))) {
                hasUnionParam = true;
                console.log(`[DEBUG] Forcing union param for method: ${originalName}`);
            }
            // 检测参数类型是否为联合类型（number | string）
            // 只对已知需要重载的方法进行检测
            if (knownOverloadMethods.some(methodName => originalName.includes(methodName))) {
                for (let i = 0; i < sig.args.length; i++) {
                    const t = sig.args[i];
                    const refName = (t && typeof t === 'object' && 'name' in t) ? t.name : undefined;
                    const asString = refName || String(t);
                    // 检测是否为 number 或 String 类型（这些方法需要重载）
                    if (asString === 'number' || asString === 'String') {
                        hasUnionParam = true;
                        console.log(`[DEBUG] Detected number/String param for overload method: ${originalName}, arg: ${asString}`);
                        break;
                    }
                }
            }
            console.log(`[DEBUG] - hasUnionParam: ${hasUnionParam}`);
            // 在重载/联合场景下优先决定后缀，避免被"复杂类型免后缀"的早退短路
            if (inUnionContext || hasUnionParam || isOverloadMethod) {
                console.log(`[DEBUG] Entering union/overload suffix logic for: ${originalName}`);
                for (let i = 0; i < sig.args.length; i++) {
                    const t = sig.args[i];
                    const refName = (t && typeof t === 'object' && 'name' in t) ? t.name : undefined;
                    const asString = refName || String(t);
                    console.log(`[DEBUG] Checking arg ${i}: ${asString}`);
                    if (/EnumDTS$/.test(asString)) {
                        console.log(`[DEBUG] Matched EnumDTS, returning _EnumDTS`);
                        return '_EnumDTS';
                    }
                    if (/UnionInterfaceDTS$/.test(asString)) {
                        console.log(`[DEBUG] Matched UnionInterfaceDTS, returning _UnionInterfaceDTS`);
                        return '_UnionInterfaceDTS';
                    }
                    if (/UnionOptionalInterfaceDTS$/.test(asString)) {
                        console.log(`[DEBUG] Matched UnionOptionalInterfaceDTS, returning _UnionOptionalInterfaceDTS`);
                        return '_UnionOptionalInterfaceDTS';
                    }
                    if (/(^String$|KString(P|Ptr)?$)/i.test(asString)) {
                        console.log(`[DEBUG] Matched String type, returning _String`);
                        return '_String';
                    }
                    if (/^(Float|Float64|Double|Int|Int32|Int64|Number)$/i.test(asString)) {
                        console.log(`[DEBUG] Matched Number type, returning _number`);
                        return '_number';
                    }
                    if (/Bool(ean)?$/i.test(asString)) {
                        console.log(`[DEBUG] Matched Boolean type, returning _boolean`);
                        return '_boolean';
                    }
                }
                // 无法识别具体基础类型时，对重载按序号兜底映射（常见顺序：0 -> number，1 -> String）
                const ord = method.__overloadOrdinal;
                console.log(`[DEBUG] No specific type matched, checking overload ordinal: ${ord}`);
                if (typeof ord === 'number') {
                    if (ord === 0) {
                        console.log(`[DEBUG] Using ordinal 0 -> _number`);
                        return '_number';
                    }
                    if (ord === 1) {
                        console.log(`[DEBUG] Using ordinal 1 -> _String`);
                        return '_String';
                    }
                }
                // 无法识别具体基础类型时，不加后缀
                console.log(`[DEBUG] No ordinal match, returning empty suffix`);
                return '';
            }
            // 非联合/非重载：出现序列化或复杂语义类型 → 不加后缀
            for (let i = 0; i < sig.args.length; i++) {
                const argName = typeof sig.argName === 'function' ? sig.argName(i) : undefined;
                const t = sig.args[i];
                const refName = (t && typeof t === 'object' && 'name' in t) ? t.name : undefined;
                const asString = refName || String(t);
                if (/^(this(Array|Length))$/i.test(String(argName || ''))) {
                    return '';
                }
                if (/KSerializerBuffer/i.test(asString)) {
                    return '';
                }
                // 原生元组显示名：(A, B, ...)
                if (/^\(.*\)$/.test(asString)) {
                    return '';
                }
                // 明显的复杂/复合语义类型：统一视为走序列化 → 不加后缀
                if (/(Options$|Interface$|Tuple_|Struct$|Resource(Color|Str)?$|Length$|Padding$|Edge(Widths|Colors|Styles|Radiuses|)$|Border(Options|Radiuses|Styles)?$|Font(Weight)?$|Matrix4$|LayoutPolicy$|Dimension$)/.test(asString)) {
                    return '';
                }
            }
            // 默认不加后缀
            console.log(`[DEBUG] No union/overload detected, returning empty suffix for: ${originalName}`);
            return '';
        };
        const originalSigName = (_b = method.sig) === null || _b === void 0 ? void 0 : _b.name;
        const originalSignature = method.method.signature;
        // 语义收敛：统一处理复杂联合方法名到实际原生名
        const normalizeNativeBaseName = (name) => {
            let n = name || '';
            // 简化复杂联合：boolean|string|number|undefined → boolean|undefined
            n = n.replace(/testUnionBooleanStringNumberUndefined/g, 'testBooleanUndefined');
            // 事件方法名收敛：setOnChangeEvent_* → onXxx
            n = n.replace(/^setOnChangeEvent_(.+)$/, (_, tail) => 'on' + tail.replace(/^(.)/, (c) => c.toUpperCase()));
            return n;
        };
        // 计算应当用于原生桥接名的基名
        let nativeBase = normalizeNativeBaseName(originalSigName);
        // 处理 set_ 开头的特殊情况
        if (nativeBase.startsWith('set_')) {
            // set_onChangeEvent_select -> setOnChangeEvent_select
            nativeBase = 'set' + toPascalCase(nativeBase.substring(4));
        }
        else {
            // 检查是否已经以set开头，避免重复添加
            const alreadyHasSet = /^set[A-Z]/.test(nativeBase);
            if (startsWithOnEvent(nativeBase)) {
                // 事件：优先 setOnXxx，少量白名单保持 onXxx
                if (!keepOnWhitelist.has(nativeBase)) {
                    if (!alreadyHasSet) {
                        nativeBase = 'set' + toPascalCase(nativeBase);
                    }
                }
            }
            else {
                // 非事件：统一 setXxx
                if (!alreadyHasSet) {
                    nativeBase = 'set' + toPascalCase(nativeBase);
                }
            }
        }
        // 类型后缀（如 _number/_String/...）
        const typeSuffix = getTypeSuffix(originalSignature);
        console.log(`[DEBUG] Final typeSuffix for ${originalSigName}: "${typeSuffix}"`);
        // 重载编号（如 onClick0/1）
        const overloadOrdinal = method.__overloadOrdinal;
        let overloadSuffix = '';
        if (/^setOn[A-Z].*/.test(nativeBase) && Number.isInteger(overloadOrdinal)) {
            overloadSuffix = String(overloadOrdinal);
        }
        const nativeSigName = nativeBase + typeSuffix + overloadSuffix;
        console.log(`[DEBUG] Final nativeSigName for ${originalSigName}: "${nativeSigName}"`);
        console.log(`[DEBUG] - nativeBase: "${nativeBase}"`);
        console.log(`[DEBUG] - typeSuffix: "${typeSuffix}"`);
        console.log(`[DEBUG] - overloadSuffix: "${overloadSuffix}"`);
        console.log(`[DEBUG] - overloadOrdinal: ${overloadOrdinal}`);
        // 方法声明使用原始名称（无后缀），native调用使用带后缀的名称
        const methodNameForDeclaration = nativeBase + overloadSuffix; // 不包含typeSuffix
        const methodNameForNativeCall = nativeSigName; // 包含typeSuffix
        console.log(`[DEBUG] Method declaration name: "${methodNameForDeclaration}"`);
        console.log(`[DEBUG] Native call name: "${methodNameForNativeCall}"`);
        const backupName = originalSigName;
        if (backupName) {
            ;
            method.sig.name = methodNameForDeclaration;
        }
        // 将native调用名称传递给writePeerMethod
        ;
        method.__nativeMethodName = methodNameForNativeCall;
        (0, libohos_1.writePeerMethod)(this.library, printer, method, true, this.dumpSerialized, "Attribute", "this.peer.ptr");
        if (backupName) {
            method.sig.name = backupName;
        }
    }
    printFile() {
        return (0, libohos_1.collectPeersForFile)(this.library, this.file).map(peer => {
            const component = (0, libohos_1.findComponentByName)(this.library, peer.componentName);
            const printer = this.library.createLanguageWriter();
            const imports = new libohos_1.ImportsCollector();
            this.printImports(peer, imports);
            this.printPeer(peer, printer);
            return {
                over: {
                    node: component.attributeDeclaration,
                    role: core_1.LayoutNodeRole.PEER,
                },
                collector: imports,
                content: printer
            };
        });
    }
}
class KotlinPeerFileVisitor extends PeerFileVisitor {
    constructor(library, file, dumpSerialized) {
        super(library, file, dumpSerialized);
        this.library = library;
        this.file = file;
    }
    printFile() {
        return (0, libohos_1.collectPeersForFile)(this.library, this.file).map(peer => {
            const component = (0, libohos_1.findComponentByName)(this.library, peer.componentName);
            const printer = this.library.createLanguageWriter();
            this.printPeer(peer, printer);
            return {
                over: {
                    node: component.attributeDeclaration,
                    role: core_1.LayoutNodeRole.PEER,
                },
                content: printer,
                collector: new libohos_1.ImportsCollector()
            };
        });
    }
}
class PeersVisitor {
    constructor(library, dumpSerialized) {
        this.library = library;
        this.dumpSerialized = dumpSerialized;
        this.peers = new Map();
    }
    printPeers() {
        const results = [];
        for (const file of this.library.files.values()) {
            if (!(0, libohos_1.collectPeersForFile)(this.library, file).length)
                continue;
            const visitor = this.library.language == core_1.Language.JAVA
                ? new JavaPeerFileVisitor(this.library, file, this.dumpSerialized)
                : this.library.language == core_1.Language.CJ
                    ? new CJPeerFileVisitor(this.library, file, this.dumpSerialized)
                    : this.library.language == core_1.Language.KOTLIN
                        ? new KotlinPeerFileVisitor(this.library, file, this.dumpSerialized)
                        : new PeerFileVisitor(this.library, file, this.dumpSerialized);
            results.push(...visitor.printFile());
        }
        return results;
    }
}
function createPeersPrinter(dumpSerialized) {
    return (library) => new PeersVisitor(library, dumpSerialized).printPeers();
}
exports.createPeersPrinter = createPeersPrinter;
function generateStyleParentClass(peer) {
    if (!(0, core_1.isHeir)(peer.originalClassName))
        return undefined;
    return componentToStyleClass(peer.parentComponentName);
}
exports.generateStyleParentClass = generateStyleParentClass;
//# sourceMappingURL=PeersPrinter.js.map