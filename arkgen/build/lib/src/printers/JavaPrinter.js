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
exports.makeJavaArkComponents = void 0;
const idl = require("@idlizer/core/idl");
const core_1 = require("@idlizer/core");
const libohos_1 = require("@idlizer/libohos");
const ComponentsPrinter_1 = require("./ComponentsPrinter");
function makeJavaArkComponents(library) {
    const ark = 'Ark';
    const receiver = 'receiver';
    const create = 'create';
    const update = 'update';
    const imports = [
        { feature: 'java.util.function.Consumer', module: '' },
        { feature: 'java.util.function.Supplier', module: '' },
    ];
    const writer = library.createLanguageWriter();
    writer.writeClass(ark, writer => {
        library.files.forEach(file => {
            (0, libohos_1.collectPeersForFile)(library, file).forEach(peer => {
                const arkComponent = (0, ComponentsPrinter_1.generateArkComponentName)(peer.componentName);
                const arkPeer = (0, libohos_1.componentToPeerClass)(peer.componentName);
                const arkPeerType = idl.createReferenceType(arkPeer);
                const paramTypes = [idl.createReferenceType(`Consumer<${arkComponent}>`), idl.createReferenceType('Runnable')];
                const paramNames = ['style', 'content'];
                const callableMethods = peer.methods.filter(it => it.isCallSignature);
                let callableMethod;
                if (callableMethods.length > 1) {
                    throw new Error(`More than 1 method with callSignature in ${peer.componentName}`);
                }
                else if (callableMethods.length == 1) {
                    callableMethod = callableMethods[0];
                    imports.push(...(0, libohos_1.collectJavaImports)(callableMethod.method.signature.args));
                    const callableSignature = callableMethod.method.signature;
                    callableSignature.args.forEach((it, index) => {
                        paramTypes.push(it);
                        paramNames.push(callableSignature.argName(index));
                    });
                }
                const signature = new core_1.NamedMethodSignature(idl.IDLVoidType, paramTypes, paramNames);
                const method = new core_1.Method(`Ark${peer.componentName}`, signature, [core_1.MethodModifier.PUBLIC, core_1.MethodModifier.STATIC]);
                writer.writeMethodImplementation(method, writer => {
                    writer.writeStatement(writer.makeAssign(receiver, undefined, writer.makeFunctionCall('remember', [
                        writer.makeLambda(new core_1.MethodSignature(idl.createReferenceType(arkComponent), []), [
                            writer.makeReturn(writer.makeString(`new ${arkComponent}()`))
                        ])
                    ]), true));
                    writer.writeStatement(writer.makeAssign(create, idl.createReferenceType(`Supplier<${arkPeer}>`), writer.makeLambda(new core_1.MethodSignature(arkPeerType, []), [
                        writer.makeReturn(writer.makeString(`${arkPeer}.create(${receiver}, 0)`))
                    ]), true));
                    writer.writeStatement(writer.makeAssign(update, idl.createReferenceType(`Consumer<${arkPeer}>`), writer.makeLambda(new core_1.NamedMethodSignature(idl.IDLVoidType, [arkPeerType], ['peer']), (callableMethod ?
                        [writer.makeStatement(writer.makeMethodCall(receiver, callableMethod.method.name, signature.argsNames.slice(2).map(it => writer.makeString(it))))] : []).concat(writer.makeCondition(writer.makeDefinedCheck(signature.argName(0)), writer.makeStatement(writer.makeMethodCall(signature.argName(0), 'accept', [writer.makeString(receiver)]))), writer.makeCondition(writer.makeDefinedCheck(signature.argName(1)), writer.makeStatement(writer.makeMethodCall(signature.argName(1), 'run', []))), writer.makeStatement(writer.makeMethodCall(receiver, 'applyAttributesFinish', [])))), true));
                    writer.writeStatement(writer.makeStatement(writer.makeFunctionCall('nodeAttach', [create, update].map(it => writer.makeString(it)))));
                });
            });
        });
    }, libohos_1.ARK_BASE);
    const result = library.createLanguageWriter();
    result.print(`package ${libohos_1.ARKOALA_PACKAGE};\n`);
    (0, libohos_1.printJavaImports)(result, imports);
    result.concat(writer);
    return { targetFile: new libohos_1.TargetFile(ark, libohos_1.ARKOALA_PACKAGE_PATH), writer: result };
}
exports.makeJavaArkComponents = makeJavaArkComponents;
//# sourceMappingURL=JavaPrinter.js.map