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
import * as path from 'node:path';
import { isMaterialized, Language, LayoutNodeRole } from '@idlizer/core';
import * as idl from '@idlizer/core';
import { isComponentDeclaration, NativeModule, peerGeneratorConfiguration } from '@idlizer/libohos';
const BASE_PATH = 'framework';
const getGeneratedFilePath = (p) => path.join(BASE_PATH, p);
export const SyntheticModule = "./SyntheticDeclarations";
export function HandwrittenModule(language, isSdk = false) {
    // does this switch needed here?
    switch (language) {
        case Language.TS: return "./handwritten";
        case Language.ARKTS: return isSdk ? './handwritten' : "#handwritten";
        case Language.KOTLIN: return "./handwritten";
        default: throw new Error("Not implemented");
    }
}
function toFileName(name) {
    return name.split(/[_-]/gi).map(it => idl.capitalize(it)).join('');
}
function customPathSuggestion(pkg) {
    const suggestions = peerGeneratorConfiguration().currentModulePackagesPaths;
    if (!suggestions)
        return undefined;
    if ([...suggestions.keys()].filter(it => pkg.startsWith(it)).length > 1)
        throw new Error(`Can not select appropriate prefix for package "${pkg}": found more that variants in "currentModulePackagesPaths"`);
    for (const prefix of suggestions.keys()) {
        if (pkg === prefix)
            return suggestions.get(prefix);
        if (pkg.startsWith(prefix))
            return path.join(suggestions.get(prefix), pkg.substring(prefix.length + 1));
    }
    return undefined;
}
class CommonLayoutBase {
    constructor(library, prefix = "") {
        this.library = library;
        this.prefix = prefix;
    }
    handwrittenPackage() {
        return HandwrittenModule(this.library.language);
    }
}
function getModuleImport(node, role, lang) {
    var _a, _b;
    if (role == LayoutNodeRole.GLOBAL)
        return undefined;
    if (idl.isInCurrentModule(node))
        return undefined;
    if (idl.isInExternalModule(node)) {
        if (role == LayoutNodeRole.SERIALIZER)
            return undefined;
    }
    const conf = peerGeneratorConfiguration();
    // TBD: use idl.mapLibraryName(...) when the Arkoala imports printing is fixed
    // in ImportsCollector.printToLines(...)
    // return idl.mapLibraryName(node, lang, conf?.libraryNameMapping)
    const packageName = idl.getPackageName(node);
    const renamedPackageName = (_b = (_a = conf.libraryNameMapping) === null || _a === void 0 ? void 0 : _a.get(packageName)) === null || _b === void 0 ? void 0 : _b.get(lang.name);
    // Use '^' prefix as a workaround to distinguish outer module name from the current
    // in the ImportsCollector.printToLines(...)
    if (renamedPackageName)
        return `^${renamedPackageName}`;
    return `@${packageName}`;
}
export class TsLayout extends CommonLayoutBase {
    constructor() {
        super(...arguments);
        this.tsInternalPaths = new Map([
            ["SerializerBase", "@koalaui/interop"],
            ["DeserializerBase", "@koalaui/interop"],
            ["CallbackKind", getGeneratedFilePath("peers/CallbackKind")],
            ["deserializeAndCallCallback", getGeneratedFilePath("peers/CallbackDeserializeCall")],
            ["checkArkoalaCallbacks", "./CallbacksChecker"],
            ["CallbackTransformer", "./CallbackTransformer"],
        ]);
    }
    resolve(target) {
        var _a, _b, _c, _d;
        if (this.tsInternalPaths.has(target.node.name))
            return this.tsInternalPaths.get(target.node.name);
        if (target.node.name === NativeModule.Generated.name)
            return getGeneratedFilePath(`peers/${NativeModule.Generated.name}`);
        if (idl.isHandwritten(target.node) || peerGeneratorConfiguration().isHandWritten(target.node.name)) {
            return HandwrittenModule(this.library.language);
        }
        // if (idl.isSyntheticEntry(target.node)) {
        //     return SyntheticModule
        // }
        const moduleImport = getModuleImport(target.node, target.role, Language.TS);
        if (moduleImport)
            return moduleImport;
        if (idl.isInterface(target.node) && !isComponentDeclaration(this.library, target.node)) {
            // TODO currently rollup can wrongly order some declarations if all of them will be placed in common
            // files (button.ts, text_input.ts). So, materialized/builders were moved to ArkSmthMaterialized to resolve
            // that problem. That is just a hack and ideal solution will be to fix dependencies graph cycles
            if (idl.isBuilderClass(target.node)) {
                return `${this.prefix}${toFileName(target.node.name)}Builder`;
            }
        }
        let pureFileName = (_d = (_c = (_b = (_a = idl.getFileFor(target.node)) === null || _a === void 0 ? void 0 : _a.fileName) === null || _b === void 0 ? void 0 : _b.replaceAll('.d.ts', '')) === null || _c === void 0 ? void 0 : _c.replaceAll('.idl', '')) === null || _d === void 0 ? void 0 : _d.replaceAll('@', '');
        if (pureFileName) {
            pureFileName = path.basename(pureFileName);
        }
        const entryName = pureFileName !== null && pureFileName !== void 0 ? pureFileName : target.node.name;
        return getGeneratedFilePath(entryName);
    }
}
export class ArkTsLayout extends CommonLayoutBase {
    constructor(library, prefix, isSdk = false) {
        super(library, prefix);
        this.isSdk = isSdk;
        this.arkTSInternalPaths = new Map([
            ["TypeChecker", "#components"],
            ["SerializerBase", "@koalaui/interop"],
            ["DeserializerBase", "@koalaui/interop"],
            ["CallbackKind", getGeneratedFilePath("peers/CallbackKind")],
            ["deserializeAndCallCallback", getGeneratedFilePath("peers/CallbackDeserializeCall")],
            ["checkArkoalaCallbacks", "./CallbacksChecker"],
            ["CallbackTransformer", "./CallbackTransformer"],
        ]);
        // replace point symbol inside names, but not when it is a part of path
        this.replacePattern = /(\.)[^\.\/]/g;
    }
    handwrittenPackage() {
        return HandwrittenModule(Language.ARKTS, this.isSdk);
    }
    resolve(target) {
        var _a, _b, _c, _d;
        if (target.node.name === NativeModule.Generated.name)
            return `#components`;
        if (this.arkTSInternalPaths.has(target.node.name))
            return this.arkTSInternalPaths.get(target.node.name);
        if (idl.isHandwritten(target.node) || peerGeneratorConfiguration().isHandWritten(target.node.name)) {
            return HandwrittenModule(this.library.language, this.isSdk);
        }
        const packageName = idl.getPackageName(target.node);
        const moduleImport = getModuleImport(target.node, target.role, Language.ARKTS);
        if (moduleImport)
            return moduleImport;
        let customPath;
        if (packageName && (customPath = customPathSuggestion(packageName))) {
            return customPath;
        }
        let pureFileName = (_d = (_c = (_b = (_a = idl.getFileFor(target.node)) === null || _a === void 0 ? void 0 : _a.fileName) === null || _b === void 0 ? void 0 : _b.replaceAll('.d.ts', '')) === null || _c === void 0 ? void 0 : _c.replaceAll('.idl', '')) === null || _d === void 0 ? void 0 : _d.replaceAll('@', '');
        if (pureFileName) {
            pureFileName = path.basename(pureFileName);
        }
        const entryName = pureFileName !== null && pureFileName !== void 0 ? pureFileName : target.node.name;
        return getGeneratedFilePath(entryName);
    }
}
export class ArkTSComponentsLayout extends ArkTsLayout {
    constructor() {
        super(...arguments);
        this.arkTSInternalPaths = new Map([
            ["TSTypeChecker", getGeneratedFilePath("ts/type_check")],
            ["ArkTSTypeChecker", getGeneratedFilePath("arkts/type_check")],
        ]);
    }
    resolve(target) {
        if (target.node.name === NativeModule.Generated.name)
            return getGeneratedFilePath(`arkts/${NativeModule.Generated.name}`);
        return super.resolve(target);
    }
}
export class JavaLayout extends CommonLayoutBase {
    constructor(library, prefix, packagePath) {
        super(library, prefix);
        this.packagePath = packagePath;
    }
    getPath(file) {
        return path.join(this.packagePath, file);
    }
    resolve({ node, role }) {
        switch (role) {
            case LayoutNodeRole.SERIALIZER:
            case LayoutNodeRole.INTERFACE: {
                if (idl.isEntry(node)) {
                    const ns = idl.getNamespaceName(node);
                    if (ns !== '') {
                        return this.getPath(`${this.prefix}${ns.split('.').map(it => idl.capitalize(it)).join('')}Namespace`);
                    }
                }
                if (idl.isInterface(node)) {
                    if (isComponentDeclaration(this.library, node)) {
                        return this.getPath(`${this.prefix}${toFileName(node.name)}`);
                    }
                    if (idl.isBuilderClass(node)) {
                        return this.getPath(`${this.prefix}${toFileName(node.name)}Builder`);
                    }
                    if (isMaterialized(node, this.library)) {
                        if (idl.isInterfaceSubkind(node)) {
                            return this.getPath(node.name + 'Internal');
                        }
                        return this.getPath(node.name);
                    }
                    return this.getPath(`${this.prefix}${toFileName(node.name)}Interfaces`);
                }
                return this.getPath(`Common`);
            }
            case LayoutNodeRole.PEER: {
                if (idl.isInterface(node)) {
                    if (isComponentDeclaration(this.library, node)) {
                        return this.getPath(`peers/${this.prefix}${toFileName(node.name)}Peer`);
                    }
                    return this.getPath(toFileName(node.name));
                }
                return this.getPath(`CommonPeer`);
            }
            case LayoutNodeRole.GLOBAL: {
                return 'GlobalScope';
            }
            case LayoutNodeRole.COMPONENT: {
                return 'Ark' + node.name;
            }
        }
    }
}
export class CJLayout extends CommonLayoutBase {
    getPath(file, subdir) {
        if (subdir) {
            return path.join(subdir, file);
        }
        return path.join('.', file);
    }
    resolve({ node, role }) {
        switch (role) {
            case LayoutNodeRole.SERIALIZER:
            case LayoutNodeRole.INTERFACE: {
                if (idl.isEntry(node)) {
                    const ns = idl.getNamespaceName(node);
                    if (ns !== '') {
                        return this.getPath(`${this.prefix}${ns.split('.').map(it => idl.capitalize(it)).join('')}Namespace`, 'commonPara');
                    }
                }
                if (idl.isInterface(node)) {
                    if (isComponentDeclaration(this.library, node)) {
                        return this.getPath(`${this.prefix}${toFileName(node.name)}`, 'components');
                    }
                    if (idl.isBuilderClass(node)) {
                        return this.getPath(`${this.prefix}${toFileName(node.name)}Builder`, 'components');
                    }
                    if (isMaterialized(node, this.library)) {
                        if (idl.isInterfaceSubkind(node)) {
                            return this.getPath(toFileName(node.name) + 'Internal', 'commonPara');
                        }
                        return this.getPath(toFileName(node.name), 'commonPara');
                    }
                    return this.getPath(`${this.prefix}${toFileName(node.name)}`, 'commonPara');
                }
                return this.getPath(`Common`, 'commonPara');
            }
            case LayoutNodeRole.PEER: {
                if (idl.isInterface(node)) {
                    if (isComponentDeclaration(this.library, node)) {
                        return this.getPath(`${this.prefix}${toFileName(node.name)}Peer`, 'peers');
                    }
                }
                return this.getPath(`CommonPeer`, 'commonPara');
            }
            case LayoutNodeRole.GLOBAL: {
                return this.getPath('GlobalScope', 'commonPara');
            }
            case LayoutNodeRole.COMPONENT: {
                let componentName = node.name;
                if (node.name.endsWith("Attribute")) {
                    componentName = node.name.replaceAll("Attribute", "");
                }
                return this.getPath('Ark' + componentName, 'components');
            }
        }
    }
}
export class KotlinLayout extends CommonLayoutBase {
    constructor() {
        super(...arguments);
        this.KotlinInternalPaths = new Map([
            ["TypeChecker", "#components"],
            ["Serializer", "Serializer"],
            ["Deserializer", "Deserializer"],
            ["CallbackKind", "CallbackKind"],
            ["deserializeAndCallCallback", "CallbackDeserializeCall"],
            ["checkArkoalaCallbacks", "./CallbacksChecker"],
            ["CallbackTransformer", "./CallbackTransformer"],
        ]);
    }
    resolve(target) {
        var _a, _b, _c, _d;
        if (this.KotlinInternalPaths.has(target.node.name))
            return this.KotlinInternalPaths.get(target.node.name);
        if (idl.isHandwritten(target.node) || peerGeneratorConfiguration().isHandWritten(target.node.name)) {
            return HandwrittenModule(this.library.language);
        }
        if (idl.isSyntheticEntry(target.node)) {
            return SyntheticModule;
        }
        if (idl.isTypedef(target.node)) {
            return SyntheticModule;
        }
        if (idl.isInterface(target.node) && !isComponentDeclaration(this.library, target.node)) {
            if (idl.isBuilderClass(target.node)) {
                return `${this.prefix}${toFileName(target.node.name)}Builder`;
            }
        }
        let pureFileName = (_d = (_c = (_b = (_a = idl.getFileFor(target.node)) === null || _a === void 0 ? void 0 : _a.fileName) === null || _b === void 0 ? void 0 : _b.replaceAll('.d.ts', '')) === null || _c === void 0 ? void 0 : _c.replaceAll('.idl', '')) === null || _d === void 0 ? void 0 : _d.replaceAll('@', '');
        if (pureFileName) {
            pureFileName = path.basename(pureFileName);
        }
        const entryName = pureFileName !== null && pureFileName !== void 0 ? pureFileName : target.node.name;
        return entryName;
    }
}
////////////////////////////////////////////////////////
export function arkoalaLayout(library, prefix = '', packagePath = '') {
    switch (library.language) {
        case idl.Language.TS: return new TsLayout(library, prefix);
        case idl.Language.ARKTS: return new ArkTsLayout(library, prefix);
        case idl.Language.JAVA: return new JavaLayout(library, prefix, packagePath);
        case idl.Language.CJ: return new CJLayout(library, prefix);
        case idl.Language.KOTLIN: return new KotlinLayout(library, prefix);
    }
    throw new Error(`Unimplemented language "${library.language}"`);
}
//# sourceMappingURL=ArkoalaLayout.js.map