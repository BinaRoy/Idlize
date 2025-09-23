"use strict";
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
Object.defineProperty(exports, "__esModule", { value: true });
exports.createInterfacePrinter = void 0;
const idl = require("@idlizer/core/idl");
const libohos_1 = require("@idlizer/libohos");
const libohos_2 = require("@idlizer/libohos");
const CJTypeMapper_1 = require("../declaration/CJTypeMapper");
const core_1 = require("@idlizer/core");
const ComponentsPrinter_1 = require("./ComponentsPrinter");
const PeersPrinter_1 = require("./PeersPrinter");
//
function collectParentsPropertiesNames(int, resolver) {
    const result = new Set();
    function go(int) {
        int.inheritance.forEach(parent => {
            const found = resolver.resolveTypeReference(parent);
            if (found && idl.isInterface(found)) {
                found.properties.forEach(prop => {
                    result.add(prop.name);
                });
                go(found);
            }
        });
    }
    go(int);
    return result;
}
class ArkoalaTSDeclConvertor extends libohos_2.TSDeclConvertor {
    printComponent(idlInterface) {
        const component = (0, libohos_1.findComponentByDeclaration)(this.peerLibrary, idlInterface);
        if (idlInterface !== (component === null || component === void 0 ? void 0 : component.attributeDeclaration))
            return [];
        const peer = (0, libohos_1.collectPeers)(this.peerLibrary).find(it => it.componentName === component.name);
        if (!peer)
            throw new Error(`Peer for component ${component.name} was not found`);
        const printer = this.peerLibrary.createLanguageWriter();
        const declaredPrefix = this.isDeclared && this.peerLibrary.language !== core_1.Language.ARKTS ? "declare " : "";
        const superType = (0, core_1.getSuper)(idlInterface, this.peerLibrary);
        const extendsClause = superType ? `extends ${(0, PeersPrinter_1.componentToAttributesInterface)(superType.name)} ` : "";
        printer.print(`export ${declaredPrefix}interface ${(0, PeersPrinter_1.componentToAttributesInterface)(idlInterface.name)} ${extendsClause}{`);
        printer.pushIndent();
        const filteredMethods = peer.methods
            .filter(it => !it.isCallSignature);
        const collapsedMethods = (0, libohos_1.groupOverloads)(filteredMethods, this.peerLibrary.language)
            .map(group => (0, libohos_1.collapseIdlPeerMethods)(this.peerLibrary, group));
        const parentMethods = collectParentsPropertiesNames(idlInterface, this.peerLibrary);
        collapsedMethods.forEach(method => {
            var _a;
            if (this.peerLibrary.language === core_1.Language.ARKTS && !parentMethods.has(method.method.name)) {
                const nonPublic = new core_1.Method(method.method.name, method.method.signature, (_a = method.method.modifiers) === null || _a === void 0 ? void 0 : _a.filter(it => it !== core_1.MethodModifier.PUBLIC));
                printer.writeMethodImplementation(nonPublic, w => {
                    w.writeStatement(w.makeThrowError(`Unimplemented method ${method.method.name}`));
                });
            }
            else {
                printer.writeMethodDeclaration(method.method.name, method.method.signature);
            }
        });
        const attributeModifierSignature = (0, ComponentsPrinter_1.generateAttributeModifierSignature)(this.peerLibrary, component);
        if (this.peerLibrary.language === core_1.Language.ARKTS && !parentMethods.has('attributeModifier')) {
            printer.writeMethodImplementation(new core_1.Method('attributeModifier', attributeModifierSignature), w => {
                w.writeStatement(w.makeThrowError(`Unimplemented method attributeModifier`));
            });
        }
        else {
            printer.writeMethodDeclaration('attributeModifier', attributeModifierSignature);
        }
        printer.popIndent();
        printer.print('}');
        const stylePrinter = this.peerLibrary.createLanguageWriter();
        const parentStyle = (0, PeersPrinter_1.generateStyleParentClass)(peer);
        stylePrinter.writeClass((0, libohos_1.componentToStyleClass)(idlInterface.name), (writer) => {
            for (const field of peer.attributesFields) {
                writer.writeFieldDeclaration(field.name + "_value", field.type, [], true);
            }
            collapsedMethods.forEach(method => {
                // TODO: temporary hack
                stylePrinter.writeMethodImplementation(method.method, (writer) => {
                    if (method.method.signature.returnType == idl.IDLThisType) {
                        writer.writeStatement(writer.makeReturn(writer.makeThis()));
                    }
                });
            });
            stylePrinter.writeMethodImplementation(new core_1.Method('attributeModifier', attributeModifierSignature, [core_1.MethodModifier.PUBLIC]), writer => {
                writer.writeStatement(writer.makeThrowError("Not implemented"));
            });
        }, parentStyle, [(0, PeersPrinter_1.componentToAttributesInterface)(idlInterface.name)]);
        return printer.getOutput().concat(stylePrinter.getOutput());
    }
    convertInterface(node) {
        if ((0, libohos_1.isComponentDeclaration)(this.peerLibrary, node)) {
            this.writer.writeLines(this.printComponent(node).join("\n"));
            return;
        }
        return super.convertInterface(node);
    }
}
class ArkoalaTSInterfacesVisitor extends libohos_2.TSInterfacesVisitor {
    getDeclConvertor(writer, library, isDeclared) {
        return new ArkoalaTSDeclConvertor(writer, library, isDeclared);
    }
}
class ArkoalaArkTSDeclConvertor extends ArkoalaTSDeclConvertor {
    printMethod(method) {
        const staticPrefix = method.isStatic ? "static " : "";
        return [
            ...this.printExtendedAttributes(method),
            (0, core_1.indentedBy)(`${staticPrefix}${method.name}${this.printTypeParameters(method.typeParameters)}(${this.printParameters(method.parameters)}): ${this.convertType(method.returnType)}`, 1)
        ];
    }
}
class ArkoalaArkTSInterfacesVisitor extends libohos_2.ArkTSInterfacesVisitor {
    getDeclConvertor(writer, library, isDeclared) {
        return new ArkoalaArkTSDeclConvertor(writer, library, isDeclared);
    }
}
function getVisitor(peerLibrary, isDeclarations) {
    if (peerLibrary.language == core_1.Language.TS) {
        return new ArkoalaTSInterfacesVisitor(peerLibrary, true);
    }
    if (peerLibrary.language == core_1.Language.JAVA) {
        return new libohos_2.JavaInterfacesVisitor(peerLibrary);
    }
    if (peerLibrary.language == core_1.Language.ARKTS) {
        return new ArkoalaArkTSInterfacesVisitor(peerLibrary, isDeclarations, true);
    }
    if (peerLibrary.language == core_1.Language.CJ) {
        const inner = new libohos_2.CJInterfacesVisitor(peerLibrary);
        const mapper = new CJTypeMapper_1.CJTypeMapper();
        // 将 CJ 基础类型字符串映射回 IDL 原生 primitive，避免后续被当作引用类型导致在 CJ 端退化为 Any
        function toIdlTypeFromCjString(cj) {
            switch (cj) {
                case 'Float64': return idl.IDLNumberType;
                case 'Float32': return idl.IDLF32Type;
                case 'Int32': return idl.IDLI32Type;
                case 'Int64': return idl.IDLI64Type;
                case 'UInt8': return idl.IDLU8Type;
                case 'UInt16': return idl.IDLU16Type;
                case 'UInt32': return idl.IDLU32Type;
                case 'Bool': return idl.IDLBooleanType;
                case 'String': return idl.IDLStringType;
                case 'Unit': return idl.IDLVoidType;
                case 'Array<UInt8>': return idl.IDLBufferType;
                default: return idl.createReferenceType(cj);
            }
        }
        return {
            printInterfaces() {
                // 在调用inner.printInterfaces()之前，直接修改peerLibrary.files来过滤掉Tuple_*接口
                for (const file of peerLibrary.files.values()) {
                    const originalEntries = [...file.entries]; // 备份原始entries
                    // 过滤掉Tuple_*接口
                    file.entries = file.entries.filter((node) => {
                        if (idl.isInterface(node)) {
                            const ifaceName = node.name;
                            if (ifaceName && /^Tuple_(.+)$/.test(ifaceName)) {
                                console.log(`[ArkoalaInterfacePrinter] Filtering out tuple interface: ${ifaceName}`);
                                return false; // 过滤掉Tuple_*接口
                            }
                        }
                        return true; // 保留其他所有接口
                    });
                    // 对保留的接口进行类型转换处理
                    file.entries.forEach((node) => {
                        if (idl.isInterface(node)) {
                            node.properties.forEach(prop => {
                                var _a, _b, _c;
                                try {
                                    // 字段：不发生重载，若为联合类型则取第一个成员类型
                                    const rawType = prop.type;
                                    let chosenType = rawType;
                                    if (idl.isUnionType(rawType)) {
                                        const unionMembers = rawType.types;
                                        if (unionMembers && unionMembers.length > 0) {
                                            chosenType = unionMembers[0];
                                        }
                                    }
                                    // 使用 CJTypeMapper 对选中的类型做一次转换（可选为 true）
                                    const conv = mapper.convertParameterType(chosenType, prop.name, true);
                                    const cj = (_a = conv.cjType) !== null && _a !== void 0 ? _a : (_c = (_b = conv.overloads) === null || _b === void 0 ? void 0 : _b[0]) === null || _c === void 0 ? void 0 : _c.cjType;
                                    if (cj) {
                                        const assigned = typeof cj === 'string' ? toIdlTypeFromCjString(cj) : cj;
                                        // 字段层面：保持 Option 承载由上游 Optional 决定，这里不强制拆包
                                        prop.type = assigned;
                                    }
                                }
                                catch (_d) { }
                            });
                            // 方法：将参数中的 Union_* 展开为多个方法重载；返回类型与参数一致做去Union处理
                            const expanded = [];
                            for (const method of node.methods) {
                                try {
                                    // 为每个参数计算候选类型列表
                                    const paramTypeOptions = method.parameters.map((param, idx) => {
                                        try {
                                            const name = param.name || `param${idx}`;
                                            // 先用 CJTypeMapper 做一次语义收敛（可能给出更贴近目标语言的类型）
                                            const conv = mapper.convertParameterType(param.type, name, !!param.isOptional);
                                            const direct = [];
                                            if (conv.overloads && conv.overloads.length > 0) {
                                                for (const o of conv.overloads) {
                                                    const tt = typeof o.cjType === 'string' ? idl.createReferenceType(o.cjType) : o.cjType;
                                                    direct.push(tt);
                                                }
                                                return direct;
                                            }
                                            if (conv.cjType) {
                                                const t = typeof conv.cjType === 'string' ? idl.createReferenceType(conv.cjType) : conv.cjType;
                                                return [t];
                                            }
                                            // 若仍为联合，使用通用 Union 处理器做兜底展开
                                            if (idl.isUnionType(param.type)) {
                                                const unionMembers = param.type.types;
                                                const result = core_1.unionTypeProcessor.convertUnionType(unionMembers, name);
                                                const types = core_1.unionTypeProcessor.convertToIDLTypes(result);
                                                return types;
                                            }
                                        }
                                        catch (_a) { }
                                        // 兜底：保留原型，防止 Union_ 泄漏
                                        if (idl.isUnionType(param.type)) {
                                            const members = param.type.types;
                                            return members && members.length ? [members[0]] : [idl.createReferenceType('String')];
                                        }
                                        return [param.type];
                                    });
                                    // 生成参数类型组合（限制组合总数，避免爆炸）
                                    const combinations = [];
                                    const limit = 12;
                                    const backtrack = (i, acc) => {
                                        if (combinations.length >= limit)
                                            return;
                                        if (i === paramTypeOptions.length) {
                                            combinations.push(acc.slice());
                                            return;
                                        }
                                        for (const t of paramTypeOptions[i]) {
                                            acc.push(t);
                                            backtrack(i + 1, acc);
                                            acc.pop();
                                        }
                                    };
                                    backtrack(0, []);
                                    // 若没有组合（无参数），保留原方法；否则为每个组合复制一个方法
                                    if (!combinations.length) {
                                        expanded.push(method);
                                    }
                                    else {
                                        for (const combo of combinations) {
                                            const clonedParams = method.parameters.map((p, idx) => (Object.assign(Object.assign({}, p), { type: combo[idx] })));
                                            const cloned = Object.assign(Object.assign({}, method), { parameters: clonedParams });
                                            expanded.push(cloned);
                                        }
                                    }
                                    // 返回类型：做一次去 Union 处理，防止 Union_ 泄漏
                                    try {
                                        const convRet = mapper.convertParameterType(method.returnType, `${method.name}_return`, false);
                                        if (convRet.overloads && convRet.overloads.length > 0) {
                                            const t = convRet.overloads[0].cjType;
                                            if (t) {
                                                const assigned = typeof t === 'string' ? idl.createReferenceType(t) : t;
                                                const last = expanded[expanded.length - 1];
                                                if (last)
                                                    last.returnType = assigned.kind === 'optionalType' ? assigned.type : assigned;
                                            }
                                        }
                                        else if (convRet.cjType) {
                                            const assigned = typeof convRet.cjType === 'string' ? idl.createReferenceType(convRet.cjType) : convRet.cjType;
                                            const last = expanded[expanded.length - 1];
                                            if (last)
                                                last.returnType = assigned.kind === 'optionalType' ? assigned.type : assigned;
                                        }
                                        else if (idl.isUnionType(method.returnType)) {
                                            const members = method.returnType.types;
                                            const assigned = members && members.length ? members[0] : idl.createReferenceType('String');
                                            const last = expanded[expanded.length - 1];
                                            if (last)
                                                last.returnType = assigned;
                                        }
                                    }
                                    catch (_a) { }
                                }
                                catch (_b) {
                                    expanded.push(method);
                                }
                            }
                            if (expanded.length) {
                                node.methods = expanded;
                            }
                        }
                    });
                }
                // 现在调用inner.printInterfaces()，它将使用过滤后的entries
                return inner.printInterfaces();
            }
        };
    }
    if (peerLibrary.language == core_1.Language.KOTLIN) {
        return new libohos_1.KotlinInterfacesVisitor(peerLibrary);
    }
    throw new Error(`Need to implement InterfacesVisitor for ${peerLibrary.language} language`);
}
function createInterfacePrinter(isDeclarations) {
    return (library) => getVisitor(library, isDeclarations).printInterfaces();
}
exports.createInterfacePrinter = createInterfacePrinter;
//# sourceMappingURL=ArkoalaInterfacePrinter.js.map