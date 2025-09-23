"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.printETSDeclaration = void 0;
const idl = require("@idlizer/core");
const core_1 = require("@idlizer/core");
const libohos_1 = require("@idlizer/libohos");
const ComponentsPrinter_1 = require("./ComponentsPrinter");
function printETSComponent(library, peer, isDeclaration) {
    var _a;
    const writer = library.createLanguageWriter(core_1.Language.ARKTS);
    const component = (0, libohos_1.collectComponents)(library).find(it => it.name === peer.componentName);
    const callableMethods = peer.methods.filter(it => it.isCallSignature).map(it => it.method);
    const callableMethod = callableMethods.length ? (0, libohos_1.collapseSameNamedMethods)(callableMethods) : undefined;
    const mappedCallableParams = callableMethod === null || callableMethod === void 0 ? void 0 : callableMethod.signature.args.map((it, index) => `${callableMethod.signature.argName(index)}${idl.isOptionalType(it) ? "?" : ""}: ${writer.getNodeName(it)}`);
    const mappedCallableParamsValues = callableMethod === null || callableMethod === void 0 ? void 0 : callableMethod.signature.args.map((_, index) => callableMethod.signature.argName(index));
    const componentClassName = (0, ComponentsPrinter_1.generateArkComponentName)(peer.componentName);
    const peerClassName = (0, libohos_1.componentToPeerClass)(peer.componentName);
    writer.writeLines((0, libohos_1.readLangTemplate)(isDeclaration ? "ets_component_decl.d.ets" : "ets_component_impl.ets", core_1.Language.ARKTS)
        .replaceAll("%COMPONENT_NAME%", component.name)
        .replaceAll("%FUNCTION_PARAMETERS%", (_a = mappedCallableParams === null || mappedCallableParams === void 0 ? void 0 : mappedCallableParams.map(it => `${it}, `).join("")) !== null && _a !== void 0 ? _a : "")
        .replaceAll("%COMPONENT_CLASS_NAME%", componentClassName)
        .replaceAll("%PEER_CLASS_NAME%", peerClassName)
        .replaceAll("%PEER_CALLABLE_INVOKE%", (callableMethod === null || callableMethod === void 0 ? void 0 : callableMethod.name) ? `receiver.${callableMethod === null || callableMethod === void 0 ? void 0 : callableMethod.name}(${mappedCallableParamsValues})` : ""));
    return {
        over: {
            node: component.attributeDeclaration,
            role: core_1.LayoutNodeRole.INTERFACE,
        },
        collector: new libohos_1.ImportsCollector(),
        content: writer,
        weight: 99
    };
}
function printETSDeclaration(library) {
    return library.files.flatMap(file => (0, libohos_1.collectPeersForFile)(library, file).filter(it => it.originalInterfaceName).flatMap(peer => printETSComponent(library, peer, true)));
}
exports.printETSDeclaration = printETSDeclaration;
//# sourceMappingURL=StsComponentsPrinter.js.map