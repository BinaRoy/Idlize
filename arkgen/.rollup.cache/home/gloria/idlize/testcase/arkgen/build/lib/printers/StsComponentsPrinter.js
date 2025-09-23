import * as idl from "@idlizer/core";
import { Language, LayoutNodeRole } from "@idlizer/core";
import { collapseSameNamedMethods, collectComponents, componentToPeerClass, ImportsCollector, readLangTemplate, collectPeersForFile } from "@idlizer/libohos";
import { generateArkComponentName } from "./ComponentsPrinter";
function printETSComponent(library, peer, isDeclaration) {
    var _a;
    const writer = library.createLanguageWriter(Language.ARKTS);
    const component = collectComponents(library).find(it => it.name === peer.componentName);
    const callableMethods = peer.methods.filter(it => it.isCallSignature).map(it => it.method);
    const callableMethod = callableMethods.length ? collapseSameNamedMethods(callableMethods) : undefined;
    const mappedCallableParams = callableMethod === null || callableMethod === void 0 ? void 0 : callableMethod.signature.args.map((it, index) => `${callableMethod.signature.argName(index)}${idl.isOptionalType(it) ? "?" : ""}: ${writer.getNodeName(it)}`);
    const mappedCallableParamsValues = callableMethod === null || callableMethod === void 0 ? void 0 : callableMethod.signature.args.map((_, index) => callableMethod.signature.argName(index));
    const componentClassName = generateArkComponentName(peer.componentName);
    const peerClassName = componentToPeerClass(peer.componentName);
    writer.writeLines(readLangTemplate(isDeclaration ? "ets_component_decl.d.ets" : "ets_component_impl.ets", Language.ARKTS)
        .replaceAll("%COMPONENT_NAME%", component.name)
        .replaceAll("%FUNCTION_PARAMETERS%", (_a = mappedCallableParams === null || mappedCallableParams === void 0 ? void 0 : mappedCallableParams.map(it => `${it}, `).join("")) !== null && _a !== void 0 ? _a : "")
        .replaceAll("%COMPONENT_CLASS_NAME%", componentClassName)
        .replaceAll("%PEER_CLASS_NAME%", peerClassName)
        .replaceAll("%PEER_CALLABLE_INVOKE%", (callableMethod === null || callableMethod === void 0 ? void 0 : callableMethod.name) ? `receiver.${callableMethod === null || callableMethod === void 0 ? void 0 : callableMethod.name}(${mappedCallableParamsValues})` : ""));
    return {
        over: {
            node: component.attributeDeclaration,
            role: LayoutNodeRole.INTERFACE,
        },
        collector: new ImportsCollector(),
        content: writer,
        weight: 99
    };
}
export function printETSDeclaration(library) {
    return library.files.flatMap(file => collectPeersForFile(library, file).filter(it => it.originalInterfaceName).flatMap(peer => printETSComponent(library, peer, true)));
}
//# sourceMappingURL=StsComponentsPrinter.js.map