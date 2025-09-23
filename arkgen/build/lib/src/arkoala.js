"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.generateArkoalaFromIdl = exports.generateLibaceFromIdl = void 0;
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
const fs = require("fs");
const path = require("path");
const core_1 = require("@idlizer/core");
const libohos_1 = require("@idlizer/libohos");
const PeersPrinter_1 = require("./printers/PeersPrinter");
const ArkoalaInstall_1 = require("./ArkoalaInstall");
const ArkPrimitiveType_1 = require("./ArkPrimitiveType");
const ArkoalaInterfacePrinter_1 = require("./printers/ArkoalaInterfacePrinter");
const ComponentsPrinter_1 = require("./printers/ComponentsPrinter");
const JavaPrinter_1 = require("./printers/JavaPrinter");
const ModifierPrinter_1 = require("./printers/ModifierPrinter");
const ArkoalaLayout_1 = require("./ArkoalaLayout");
const External = path.join(__dirname, "../../external");
const ExternalStubs = path.join(External, "subset");
const Subset = path.join(__dirname, "../external-subset");
function generateLibaceFromIdl(config, peerLibrary) {
    peerLibrary.name = 'libace';
    const libace = config.libaceDestination ?
        new ArkoalaInstall_1.LibaceInstall(config.libaceDestination, false) :
        new ArkoalaInstall_1.LibaceInstall(config.outDir, true);
    const gniSources = (0, libohos_1.printGniSources)(peerLibrary);
    fs.writeFileSync(libace.gniComponents, (0, libohos_1.gniFile)(gniSources));
    // printDelegatesAsMultipleFiles(peerLibrary, libace, { namespace: "OHOS::Ace::NG::GeneratedModifier" })
    printRealModifiersAsMultipleFiles(peerLibrary, libace, {
        namespaces: {
            base: "OHOS::Ace::NG",
            generated: "OHOS::Ace::NG::GeneratedModifier"
        },
        basicVersion: 1,
        fullVersion: config.apiVersion,
        extendedVersion: 6,
        commentedCode: config.commentedCode,
    });
    const converterNamespace = "OHOS::Ace::NG::Converter";
    const { api, converterHeader } = printUserConverter(libace.userConverterHeader, converterNamespace, config.apiVersion, peerLibrary);
    fs.writeFileSync(libace.generatedArkoalaApi, api);
    fs.writeFileSync(libace.userConverterHeader, converterHeader);
    if (!config.libaceDestination) {
        const mesonBuild = (0, libohos_1.printMesonBuild)(peerLibrary);
        fs.writeFileSync(libace.mesonBuild, (0, libohos_1.mesonBuildFile)(mesonBuild));
    }
    copyToLibace(fs.existsSync(Subset) ? Subset : External, libace);
}
exports.generateLibaceFromIdl = generateLibaceFromIdl;
function copyArkoalaFiles(config, arkoala) {
    const subsetJson = path.join(fs.existsSync(Subset) ? Subset : ExternalStubs, 'subset.json');
    const subsetData = JSON.parse(fs.readFileSync(subsetJson).toString());
    if (!subsetData)
        throw new Error(`Cannot parse ${subsetJson}`);
    // const copyFiles = (files: string, ...fromFallbacks: string[]) => {
    //     for (const file of files) {
    //         let found = false
    //         for (const from of fromFallbacks) {
    //             const fromPath = path.join(from, file)
    //             if (fs.existsSync(fromPath)) {
    //                 found = true
    //                 copyFile(fromPath, path.join(arkoala.root, file))
    //                 break
    //             }
    //         }
    //         if (!found) {
    //             throw new Error(`Template for file ${file} was not found in paths ${fromFallbacks.join(':')}`)
    //         }
    //     }
    //     return
    // }
    const copyFiles = (files, ...fromFallbacks) => {
        for (const file of files) {
            let found = false;
            for (const from of fromFallbacks) {
                const fromPath = path.join(from, file);
                if (fs.existsSync(fromPath)) {
                    found = true;
                    let destPath;
                    const hasPeerDir = arkoala.peerDir !== undefined;
                    if (hasPeerDir) {
                        const baseName = path.basename(file);
                        switch (baseName) {
                            // 放入 peers 目录的文件
                            case 'CallbackKind.cj':
                            case 'ArkUINativeModule.cj':
                            case 'ComponentBase.cj':
                            case 'NativePeerNode.cj':
                            case 'PeerNode.cj':
                            case 'TestNativeModule.cj':
                                destPath = path.join(arkoala.peerDir, baseName);
                                break;
                            // 放入 commonPara 目录的文件
                            case 'CallbacksChecker.cj':
                            case 'CallbackTransformer.cj':
                                destPath = path.join(arkoala.commonParaDir, baseName);
                                break;
                            // 放入componentPara 目录的文件
                            case 'Handwritten.cj':
                                destPath = path.join(arkoala.componentDir, baseName);
                            default:
                                destPath = path.join(arkoala.root, file);
                                break;
                        }
                    }
                    else {
                        // 非 Cangjie 安装保持原有路径
                        destPath = path.join(arkoala.root, file);
                    }
                    // 确保目标目录存在
                    fs.mkdirSync(path.dirname(destPath), { recursive: true });
                    (0, libohos_1.copyFile)(fromPath, destPath);
                    // 如果是 CJ framework 的 Main 或 interfaces 模板文件，修正包名与导入
                    try {
                        const isFrameworkSrc = destPath.endsWith('/framework/cangjie/src/Main.cj');
                        const isInterfacesHelper = /\/cjv2\/src\/(interfaces|commonPara)\/(CallbackTransformer|CallbacksChecker)\.cj$/.test(destPath);
                        const isComponentsHelper = /\/cjv2\/src\/components\/Handwritten\.cj$/.test(destPath);
                        if (isFrameworkSrc || isInterfacesHelper || isComponentsHelper) {
                            let content = fs.readFileSync(destPath, 'utf-8');
                            // 修正包名
                            if (isFrameworkSrc) {
                                content = content.replace(/^package\s+\w+/m, 'package demo');
                            }
                            else if (isInterfacesHelper) {
                                content = content.replace(/^package\s+\S+/m, 'package idlize.commonPara');
                            }
                            else if (isComponentsHelper) {
                                content = content.replace(/^package\s+\S+/m, 'package idlize.components');
                            }
                            // 为 Main.cj 添加必要 imports（幂等处理）
                            if (destPath.endsWith('/Main.cj')) {
                                const ensure = (line) => (content.includes(line) ? '' : line + '\n');
                                const insertAt = content.indexOf('\n', content.indexOf('package')) + 1;
                                const extra = [
                                    ensure('import idlize.components.*'),
                                    ensure('import idlize.peers.*'),
                                    ensure('import idlize.commonPara.*'),
                                ].join('');
                                content = content.slice(0, insertAt) + extra + content.slice(insertAt);
                            }
                            if (isComponentsHelper) {
                                const ensure = (line) => (content.includes(line) ? '' : line + '\n');
                                const insertAt = content.indexOf('\n', content.indexOf('package')) + 1;
                                const extra = [
                                    ensure('import idlize.peers.*'),
                                    ensure('import idlize.commonPara.*'),
                                ].join('');
                                content = content.slice(0, insertAt) + extra + content.slice(insertAt);
                            }
                            // interfaces/commonPara 帮助类不应导入自身包，移除旧导入
                            if (isInterfacesHelper) {
                                content = content.replace(/^import\s+idlize\.(cores|interfaces|commonPara)\.\*\s*$/gm, '');
                            }
                            fs.writeFileSync(destPath, content);
                        }
                    }
                    catch (_a) { }
                    break;
                }
            }
            if (!found) {
                throw new Error(`Template for file ${file} was not found in paths ${fromFallbacks.join(':')}`);
            }
        }
        return;
    };
    if (config.onlyIntegrated) {
        copyFiles(subsetData.generatedSubset, fs.existsSync(Subset) ? Subset : ExternalStubs);
        return;
    }
    if (fs.existsSync(Subset)) {
        copyFiles(subsetData.subset, Subset);
    }
    else {
        copyFiles(subsetData.subset, ExternalStubs, External);
    }
}
function removeSuffix(path, suffix) {
    return path.endsWith(suffix) ? path.slice(0, -suffix.length) : path;
}
function generateArkoalaFromIdl(config, peerLibrary) {
    var _a, _b, _c;
    const arkoala = config.arkoalaDestination ?
        (0, ArkoalaInstall_1.createArkoalaInstall)({ outDir: config.arkoalaDestination, lang: config.lang, test: false, useMemoM3: peerLibrary.useMemoM3 }) :
        (0, ArkoalaInstall_1.createArkoalaInstall)({ outDir: config.outDir, lang: config.lang, test: true, useMemoM3: peerLibrary.useMemoM3 });
    // arkoala.createDirs([ARKOALA_PACKAGE_PATH, INTEROP_PACKAGE_PATH].map(dir => path.join(arkoala.javaDir, dir)))
    peerLibrary.name = 'arkoala';
    peerLibrary.setFileLayout((0, ArkoalaLayout_1.arkoalaLayout)(peerLibrary, 'Ark', libohos_1.ARKOALA_PACKAGE_PATH));
    const arkuiComponentsFiles = [];
    // const peers = printPeers(peerLibrary, config.dumpSerialized ?? false)
    // for (const [targetFile, peer] of peers) {
    //     const outPeerFile = arkoala.peer(targetFile)
    //     writeFile(outPeerFile, peer, {
    //         onlyIntegrated: config.onlyIntegrated,
    //         integrated: true,
    //         message: "producing"
    //     })
    // }
    const spreadIfLang = (langs, ...data) => {
        // 只生成指定语言的文件，避免生成其他语言文件
        if (langs.includes(peerLibrary.language))
            return data;
        return [];
    };
    const spreadIfNotLang = (langs, ...data) => {
        // 只生成指定语言的文件，避免生成其他语言文件
        if (!langs.includes(peerLibrary.language))
            return data;
        return [];
    };
    const installedFiles = core_1.ETSLanguageWriter.useTypeChecker(config.useTypeChecker, () => (0, libohos_1.install)(arkoala.managedDir, peerLibrary, [
        (0, libohos_1.createMaterializedPrinter)(config.dumpSerialized),
        (0, PeersPrinter_1.createPeersPrinter)(config.dumpSerialized),
        (0, ArkoalaInterfacePrinter_1.createInterfacePrinter)(false),
        ComponentsPrinter_1.printComponents,
        ...spreadIfNotLang([core_1.Language.KOTLIN], ModifierPrinter_1.printModifiers),
        libohos_1.printGlobal,
        libohos_1.printBuilderClasses,
        (0, libohos_1.createSerializerPrinter)(peerLibrary.language, ""),
        ...spreadIfNotLang([core_1.Language.JAVA], (0, libohos_1.createDeserializeAndCallPrinter)(peerLibrary.name, peerLibrary.language)),
        ...spreadIfNotLang([core_1.Language.ARKTS], (0, libohos_1.createGeneratedNativeModulePrinter)(libohos_1.NativeModule.Generated))
    ]));
    // 只生成指定语言的文件，避免生成其他语言文件
    if (peerLibrary.language === core_1.Language.ARKTS) {
        (0, libohos_1.install)(arkoala.managedDir, peerLibrary, [
            (0, libohos_1.createGeneratedNativeModulePrinter)(libohos_1.NativeModule.Generated),
            libohos_1.printArkTSTypeChecker,
        ], { customLayout: new core_1.LayoutManager(new ArkoalaLayout_1.ArkTSComponentsLayout(peerLibrary)) });
        if (peerLibrary.useMemoM3) {
            peerLibrary.withFileLayout(new ArkoalaLayout_1.ArkTsLayout(peerLibrary, 'Ark', true), () => {
                const installed = (0, libohos_1.install)(arkoala.managedSdkDir, peerLibrary, [
                    (0, ArkoalaInterfacePrinter_1.createInterfacePrinter)(true),
                    ComponentsPrinter_1.printComponentsDeclarations,
                ], {
                    isDeclared: true,
                });
                (0, libohos_1.writeFile)(path.join(arkoala.managedSdkDir, 'framework', 'index' + peerLibrary.language.extension), (0, libohos_1.makeArkuiModule)(installed, path.join(arkoala.managedSdkDir, 'framework')), {
                    onlyIntegrated: config.onlyIntegrated,
                    integrated: true
                });
            });
        }
    }
    // 只生成指定语言的文件，避免生成其他语言文件
    if (peerLibrary.language == core_1.Language.TS || peerLibrary.language == core_1.Language.ARKTS) {
        let enumImpls = peerLibrary.createLanguageWriter();
        (0, libohos_1.printEnumsImpl)(peerLibrary, enumImpls);
        enumImpls.printTo(path.join(arkoala.managedDir, 'framework', 'EnumsImpl' + peerLibrary.language.extension));
    }
    // 只生成指定语言的文件，避免生成其他语言文件
    if (peerLibrary.language == core_1.Language.TS) {
        const declarations = (0, libohos_1.printDeclarations)(peerLibrary);
        const index = new core_1.IndentedPrinter();
        // index-full.d.ts for ArkTS is a temporary solution for ets pre-processing.
        // So reuse the TS version for now.
        index.print((0, libohos_1.tsCopyrightAndWarning)((0, libohos_1.readLangTemplate)("index-full.d.ts", peerLibrary.language)));
        index.print((0, libohos_1.readLangTemplate)("platform.d.ts", peerLibrary.language));
        for (const data of declarations) {
            index.print(data);
        }
        index.printTo(path.join(arkoala.tsTypesDir, "index-full.d.ts"));
    }
    // 只生成指定语言的文件，避免生成其他语言文件
    if (peerLibrary.language == core_1.Language.TS) {
        const arkuiNativeModuleFile = (0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.ArkUI);
        (0, libohos_1.printArkUILibrariesLoader)(arkuiNativeModuleFile);
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.tsArkoalaDir, libohos_1.NativeModule.ArkUI.name + peerLibrary.language.extension), arkuiNativeModuleFile.printToString());
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.tsArkoalaDir, `${libohos_1.NativeModule.ArkUI.name}Empty${peerLibrary.language.extension}`), (0, libohos_1.printTSPredefinedEmptyNativeModule)(peerLibrary, libohos_1.NativeModule.ArkUI).printToString());
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.tsArkoalaDir, libohos_1.NativeModule.Test.name + peerLibrary.language.extension), (0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.Test).printToString());
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.tsArkoalaDir, `${libohos_1.NativeModule.Test.name}Empty${peerLibrary.language.extension}`), (0, libohos_1.printTSPredefinedEmptyNativeModule)(peerLibrary, libohos_1.NativeModule.Test).printToString());
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, 'framework', `${libohos_1.NativeModule.Generated.name}Empty${peerLibrary.language.extension}`), (0, libohos_1.printTSArkUIGeneratedEmptyNativeModule)(peerLibrary, libohos_1.NativeModule.Generated).printToString());
        // TODO restore me
        // writeFile(
        //     arkoala.tsLib(new TargetFile('NativeModuleRecorder')),
        //     printNativeModuleRecorder(peerLibrary),
        //     {
        //         onlyIntegrated: config.onlyIntegrated,
        //         integrated: true,
        //         message: "producing"
        //     }
        // )
        // index not printed
        (0, libohos_1.writeFile)(path.join(arkoala.managedDir, 'framework', 'index' + peerLibrary.language.extension), (0, libohos_1.makeArkuiModule)(arkuiComponentsFiles.concat(installedFiles), path.join(arkoala.managedDir, 'framework')), {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true
        });
        (0, libohos_1.writeFile)(path.join(arkoala.managedDir, 'framework', "peers", 'CallbackKind' + peerLibrary.language.extension), (0, libohos_1.makeCallbacksKinds)(peerLibrary, peerLibrary.language), {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true
        });
    }
    else if (peerLibrary.language === core_1.Language.ARKTS) {
        const arkuiNativeModuleFile = (0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.ArkUI);
        (0, libohos_1.printArkUILibrariesLoader)(arkuiNativeModuleFile);
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, 'framework', 'arkts', libohos_1.NativeModule.ArkUI.name + peerLibrary.language.extension), arkuiNativeModuleFile.printToString());
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, 'framework', 'arkts', libohos_1.NativeModule.Test.name + peerLibrary.language.extension), (0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.Test).printToString());
        // writeIntegratedFile(
        //     arkoala.arktsLib(new TargetFile(NativeModuleType.Interop.name, 'arkts')),
        //     printPredefinedNativeModule(peerLibrary, NativeModuleType.Interop).printToString(),
        // )
        (0, libohos_1.writeFile)(path.join(arkoala.managedDir, 'framework', 'index' + peerLibrary.language.extension), (0, libohos_1.makeArkuiModule)(arkuiComponentsFiles.concat(installedFiles), path.join(arkoala.managedDir, 'framework')), {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true
        });
        (0, libohos_1.writeFile)(path.join(arkoala.managedDir, 'framework', 'peers', 'CallbackKind' + peerLibrary.language.extension), (0, libohos_1.makeCallbacksKinds)(peerLibrary, peerLibrary.language), {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true
        });
    }
    else if (peerLibrary.language == core_1.Language.JAVA) {
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, libohos_1.ARKOALA_PACKAGE_PATH, libohos_1.NativeModule.ArkUI.name + peerLibrary.language.extension), (0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.ArkUI).printToString());
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, libohos_1.ARKOALA_PACKAGE_PATH, libohos_1.NativeModule.Test.name + peerLibrary.language.extension), (0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.Test).printToString());
        const arkComponents = (0, JavaPrinter_1.makeJavaArkComponents)(peerLibrary);
        arkComponents.writer.printTo(path.join(arkoala.managedDir, (_a = arkComponents.targetFile.path) !== null && _a !== void 0 ? _a : "", arkComponents.targetFile.name + peerLibrary.language.extension));
    }
    if (peerLibrary.language == core_1.Language.CJ) {
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, libohos_1.NativeModule.ArkUI.name + peerLibrary.language.extension), (0, libohos_1.printCJPredefinedNativeFunctions)(peerLibrary, libohos_1.NativeModule.ArkUI).printToString().concat((0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.ArkUI).content.getOutput().join('\n')));
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, libohos_1.NativeModule.Test.name + peerLibrary.language.extension), (0, libohos_1.printCJPredefinedNativeFunctions)(peerLibrary, libohos_1.NativeModule.Test).printToString().concat((0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.Test).content.getOutput().join('\n')));
        // writeIntegratedFile(
        //     arkoala.cjLib(new TargetFile(NativeModule.Interop.name)),
        //     printCJPredefinedNativeFunctions(peerLibrary, NativeModule.Interop).printToString().concat(
        //         printPredefinedNativeModule(peerLibrary, NativeModule.Interop).content.getOutput().join('\n')
        //     )
        // )
        (0, libohos_1.writeFile)(path.join(arkoala.managedDir, 'CallbackKind' + peerLibrary.language.extension), (0, libohos_1.makeCallbacksKinds)(peerLibrary, peerLibrary.language), {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true
        });
        // Generate cjpm.toml for cjv2 (idlize package)
        const cjv2Dir = path.join(arkoala.root, 'arkoala-cj/cjv2');
        const frameworkDir = path.join(arkoala.root, 'arkoala-cj/framework/cangjie');
        const externalRoot = path.join(__dirname, '../../external');
        const interopPath = path.join(externalRoot, 'interop/src/cangjie');
        const runtimePath = path.join(externalRoot, 'incremental-cj/runtime');
        const cjv2Toml = [
            '[package]',
            '  name = "idlize"',
            '  version = "1.0.0"',
            '  description = "Generated Cangjie v2 module"',
            '  cjc-version = "0.59.6"',
            '  src-dir = "./src"',
            '  target-dir = "./build"',
            '  output-type = "static"',
            '  compile-option = "--error-count-limit all --warn-off parser"',
            '  link-option = ""',
            '  package-configuration = {}',
            '',
            '[dependencies]',
            `  Interop = { path = "${interopPath}" }`,
            `  KoalaRuntime = { path = "${runtimePath}" }`,
            ''
        ].join('\n');
        (0, libohos_1.writeFile)(path.join(cjv2Dir, 'cjpm.toml'), cjv2Toml, {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true,
        });
        // Generate cjpm.toml for framework demo package and depend on idlize
        const frameworkToml = [
            '[package]',
            '  name = "demo"',
            '  version = "1.0.0"',
            '  description = "Cangjie framework demo module"',
            '  cjc-version = "0.59.6"',
            '  src-dir = "./src"',
            '  target-dir = "./build"',
            '  output-type = "static"',
            '  compile-option = "--error-count-limit all --warn-off parser"',
            '  link-option = ""',
            '  package-configuration = {}',
            '',
            '[dependencies]',
            `  Interop = { path = "${interopPath}" }`,
            `  KoalaRuntime = { path = "${runtimePath}" }`,
            `  idlize = { path = "${cjv2Dir}" }`,
            ''
        ].join('\n');
        (0, libohos_1.writeFile)(path.join(frameworkDir, 'cjpm.toml'), frameworkToml, {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true,
        });
    }
    if (peerLibrary.language == core_1.Language.KOTLIN) {
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, libohos_1.NativeModule.ArkUI.name + peerLibrary.language.extension), (0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.ArkUI).printToString());
        (0, libohos_1.writeIntegratedFile)(path.join(arkoala.managedDir, libohos_1.NativeModule.Test.name + peerLibrary.language.extension), (0, libohos_1.printPredefinedNativeModule)(peerLibrary, libohos_1.NativeModule.Test).printToString());
    }
    // native code
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'bridge_generated.cc'), (0, libohos_1.printBridgeCcGenerated)(peerLibrary, (_b = config.callLog) !== null && _b !== void 0 ? _b : false), {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true,
    });
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'bridge_custom.cc'), (0, libohos_1.printBridgeCcCustom)(peerLibrary, (_c = config.callLog) !== null && _c !== void 0 ? _c : false), {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true,
    });
    if (peerLibrary.language == core_1.Language.KOTLIN) {
        const bridgeHeaderGenerated = 'bridge_generated.h';
        const bridgeHeaderCustom = 'bridge_custom.h';
        (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, bridgeHeaderGenerated), (0, libohos_1.printBridgeHeaderGenerated)(peerLibrary), {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true,
        });
        (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, bridgeHeaderCustom), (0, libohos_1.printBridgeHeaderCustom)(peerLibrary), {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true,
        });
        (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'interop.def'), (0, libohos_1.printKotlinCInteropDefFile)([bridgeHeaderGenerated, bridgeHeaderCustom]), {
            onlyIntegrated: config.onlyIntegrated,
            integrated: true,
        });
    }
    const { api, serializers } = printSerializers(config.apiVersion, peerLibrary);
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'Serializers.h'), serializers, {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true,
    });
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'arkoala_api_generated.h'), api, {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true,
    });
    const modifiers = (0, libohos_1.printRealAndDummyModifiers)(peerLibrary, true);
    const accessors = (0, libohos_1.printRealAndDummyAccessors)(peerLibrary);
    const apiGenFile = "arkoala_api_generated";
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'dummy_impl.cc'), (0, libohos_1.dummyImplementations)(modifiers.dummy, accessors.dummy, 1, config.apiVersion, 6, apiGenFile).getOutput().join('\n'), {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true
    });
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'real_impl.cc'), (0, libohos_1.dummyImplementations)(modifiers.real, accessors.real, 1, config.apiVersion, 6, apiGenFile).getOutput().join('\n'), {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true,
    });
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'library.cc'), (0, libohos_1.libraryCcDeclaration)(), {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true
    });
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'callback_kind.h'), (0, libohos_1.makeCallbacksKinds)(peerLibrary, core_1.Language.CPP), {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true
    });
    const deserializeAndCallCPPContent = peerLibrary.createLanguageWriter(core_1.Language.CPP);
    deserializeAndCallCPPContent.writeLines(libohos_1.cStyleCopyright);
    deserializeAndCallCPPContent.print('#define KOALA_INTEROP_MODULE NotSpecifiedInteropModule');
    (0, libohos_1.createDeserializeAndCallPrinter)(peerLibrary.name, core_1.Language.CPP)(peerLibrary).forEach(it => deserializeAndCallCPPContent.concat(it.content));
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'callback_deserialize_call.cc'), deserializeAndCallCPPContent.printer.getOutput().join("\n"), {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true
    });
    (0, libohos_1.writeFile)(path.join(arkoala.nativeDir, 'callback_managed_caller.cc'), (0, libohos_1.printManagedCaller)('arkoala', peerLibrary).printToString(), {
        onlyIntegrated: config.onlyIntegrated,
        integrated: true
    });
    copyArkoalaFiles({ onlyIntegrated: config.onlyIntegrated }, arkoala);
    // 生成完成后执行包名一致性检查与修正（仅 CJ）
    if (peerLibrary.language == core_1.Language.CJ) {
        enforceCJPackageConventions({ root: arkoala.root });
    }
}
exports.generateArkoalaFromIdl = generateArkoalaFromIdl;
function copyToLibace(from, libace) {
    const macros = path.join(from, 'arkoala-arkts/framework/native/src/arkoala-macros.h');
    fs.copyFileSync(macros, libace.arkoalaMacros);
}
// 最终包名一致性检查（CJ）：按目录修正 package 行
function enforceCJPackageConventions(options) {
    const cjv2Src = path.join(options.root, 'arkoala-cj/cjv2/src');
    const frameworkSrc = path.join(options.root, 'arkoala-cj/framework/cangjie/src');
    const interfacesDir = path.join(cjv2Src, 'interfaces');
    const coresDir = path.join(cjv2Src, 'cores');
    const commonParaDir = path.join(cjv2Src, 'commonPara');
    const tryFixFilePackage = (filePath, expected) => {
        var _a, _b;
        if (!filePath.endsWith('.cj'))
            return;
        try {
            let content = fs.readFileSync(filePath, 'utf-8');
            const pkgRe = /^package\s+\S+/m;
            const current = (_b = (_a = content.match(pkgRe)) === null || _a === void 0 ? void 0 : _a[0]) !== null && _b !== void 0 ? _b : '';
            if (!current || current !== `package ${expected}`) {
                if (pkgRe.test(content)) {
                    content = content.replace(pkgRe, `package ${expected}`);
                }
                else {
                    content = `package ${expected}\n\n` + content;
                }
                fs.writeFileSync(filePath, content);
            }
        }
        catch (_c) { }
    };
    const ensureImports = (filePath, imports) => {
        if (!filePath.endsWith('.cj'))
            return;
        try {
            let content = fs.readFileSync(filePath, 'utf-8');
            const afterPackageIdx = content.indexOf('\n', content.indexOf('package')) + 1;
            const missing = [];
            for (const imp of imports) {
                const re = new RegExp(`^${imp.replace('.', '\\.').replace('*', '\\*')}$`, 'm');
                if (!re.test(content))
                    missing.push(imp);
            }
            if (missing.length > 0 && afterPackageIdx > 0) {
                content = content.slice(0, afterPackageIdx) + missing.join('\n') + '\n' + content.slice(afterPackageIdx);
                fs.writeFileSync(filePath, content);
            }
        }
        catch (_a) { }
    };
    const walk = (dir, onFile) => {
        if (!fs.existsSync(dir))
            return;
        for (const entry of fs.readdirSync(dir)) {
            const p = path.join(dir, entry);
            const st = fs.statSync(p);
            if (st.isDirectory())
                walk(p, onFile);
            else
                onFile(p);
        }
    };
    // 枚举序列化/反序列化修正：写入端使用 get()，读取端使用 parse()
    const applyEnumGetParseFixes = (filePath) => {
        if (!filePath.endsWith('.cj'))
            return;
        try {
            let content = fs.readFileSync(filePath, 'utf-8');
            let updated = content;
            // 1) 将表达式中的 ".value" 改为 ".get()"（在参数或表达式结尾位置，避免误伤中缀字段）
            // 覆盖示例：foo(value), foo(value); foo[value]; foo.value); foo.value, 以及行末
            updated = updated.replace(/([A-Za-z_][A-Za-z0-9_\.]*)\.value(?=\s*([,);}\]\|]|$))/g, '$1.get()');
            // 2) 读取端构造：EnumName(valueDeserializer.readInt32()/readString()) -> EnumName.parse(read...)
            // 也覆盖 Color(...), ThemeColorMode(...), 等所有大写开头的枚举类型
            updated = updated.replace(/\b([A-Z][A-Za-z0-9_]*)\(\s*((?:this|value)Deserializer\.read(?:Int32|String)\(\))\s*\)/g, '$1.parse($2)');
            // 3) return EnumName(retval) -> return EnumName.parse(retval)
            updated = updated.replace(/return\s+([A-Z][A-Za-z0-9_]*)\(\s*retval\s*\)/g, 'return $1.parse(retval)');
            if (updated !== content) {
                fs.writeFileSync(filePath, updated);
            }
        }
        catch (_a) { }
    };
    // cjv2: 根据子目录决定包名（统一到 commonPara）
    walk(cjv2Src, (p) => {
        if (!p.endsWith('.cj'))
            return;
        if (p.includes(path.sep + 'components' + path.sep)) {
            tryFixFilePackage(p, 'idlize.components');
            ensureImports(p, ['import idlize.commonPara.*']);
        }
        else if (p.includes(path.sep + 'peers' + path.sep)) {
            tryFixFilePackage(p, 'idlize.peers');
            ensureImports(p, ['import idlize.commonPara.*']);
        }
        else if (p.includes(path.sep + 'interfaces' + path.sep) || p.includes(path.sep + 'cores' + path.sep)) {
            tryFixFilePackage(p, 'idlize.commonPara');
            // 注意：commonPara 内不插入对自身包的导入，避免自循环
        }
        // 应用枚举 get/parse 修正
        applyEnumGetParseFixes(p);
        // 特例（精简版）：ArkUINativeModule.cj 仅需插入一行 import idlize.commonPara.*（若不存在）
        if (p.endsWith(path.sep + 'ArkUINativeModule.cj')) {
            try {
                let content = fs.readFileSync(p, 'utf-8');
                if (!/^import\s+idlize\.commonPara\.\*\s*$/m.test(content)) {
                    // 优先插入在 import Interop.* 之后；若未找到，则插在 package 行之后
                    const interopMatch = content.match(/^import\s+Interop\.\*\s*$/m);
                    if (interopMatch) {
                        content = content.replace(/^import\s+Interop\.\*\s*$/m, (m) => `${m}\nimport idlize.commonPara.*`);
                    }
                    else {
                        const pkgIdx = content.indexOf('\n', content.indexOf('package')) + 1;
                        if (pkgIdx > 0) {
                            content = content.slice(0, pkgIdx) + 'import idlize.commonPara.*\n' + content.slice(pkgIdx);
                        }
                        else {
                            content = 'import idlize.commonPara.*\n' + content;
                        }
                    }
                }
                fs.writeFileSync(p, content);
            }
            catch (_a) { }
        }
        if (p.endsWith(path.sep + 'ContentModifierHelper.cj')) {
            try {
                let content = fs.readFileSync(p, 'utf-8');
                // 找到所有 import 语句的结束位置
                const importRe = /^import\s+.*$/gm;
                let lastImportMatch;
                let lastImportIdx = -1;
                while ((lastImportMatch = importRe.exec(content)) !== null) {
                    lastImportIdx = lastImportMatch.index + lastImportMatch[0].length;
                }
                // 如果有 import，则在最后一个 import 后插入
                // 如果没有 import，则在 package 声明之后插入
                let insertAt = lastImportIdx > -1
                    ? content.indexOf('\n', lastImportIdx) + 1
                    : content.indexOf('\n', content.indexOf('package')) + 1;
                const extra = 'public interface ContentModifier<T> {}\n';
                if (!content.includes('public interface ContentModifier<T>')) {
                    content = content.slice(0, insertAt) + extra + content.slice(insertAt);
                    fs.writeFileSync(p, content);
                }
            }
            catch (_b) { }
        }
    });
    // framework: 所有文件都应为 demo 包
    walk(frameworkSrc, (p) => {
        if (!p.endsWith('.cj'))
            return;
        tryFixFilePackage(p, 'demo');
    });
    // 物理迁移：将 interfaces/ 与 cores/ 下的文件搬到 commonPara/
    try {
        fs.mkdirSync(commonParaDir, { recursive: true });
        const moveAll = (fromDir) => {
            if (!fs.existsSync(fromDir))
                return;
            for (const entry of fs.readdirSync(fromDir)) {
                const src = path.join(fromDir, entry);
                const dst = path.join(commonParaDir, entry);
                if (fs.statSync(src).isFile() && src.endsWith('.cj')) {
                    // 若目标已存在，覆盖写入（按照 commonPara 包名已修正）
                    fs.renameSync(src, dst);
                }
            }
            // 尝试清空空目录
            try {
                fs.rmdirSync(fromDir);
            }
            catch (_a) { }
        };
        moveAll(interfacesDir);
        moveAll(coresDir);
    }
    catch (_a) { }
    // 迁移完成后，再次全量扫描 commonPara/components/peers 目录，确保枚举修正生效（避免重命名后遗漏）
    ;
    [commonParaDir, path.join(cjv2Src, 'components'), path.join(cjv2Src, 'peers')].forEach(dir => {
        walk(dir, (p) => applyEnumGetParseFixes(p));
    });
}
class ArkoalaMultiFileModifiersVisitor extends libohos_1.MultiFileModifiersVisitor {
    emitRealSync(library, libace, options) {
        const getterDeclarations = library.createLanguageWriter(core_1.Language.CPP);
        for (const [slug, state] of this.modifierStateByFile) {
            printModifiersImplFile(libace.modifierCpp(slug), state, options);
            getterDeclarations.concat(state.getterDeclarations);
        }
        for (const [slug, state] of this.accessorStateByFile) {
            printModifiersImplFile(libace.accessorCpp(slug), state, options);
            getterDeclarations.concat(state.getterDeclarations);
        }
        const commonFilePath = libace.allModifiers;
        const commonFileContent = getterDeclarations
            .concat((0, libohos_1.modifierStructList)(this.modifierList))
            .concat((0, libohos_1.accessorStructList)(this.accessorList));
        printModifiersCommonImplFile(commonFilePath, commonFileContent, options);
    }
}
function printModifiersImplFile(filePath, state, options) {
    const writer = new core_1.CppLanguageWriter(new core_1.IndentedPrinter(), (0, core_1.createEmptyReferenceResolver)(), new core_1.CppConvertor((0, core_1.createEmptyReferenceResolver)()), ArkPrimitiveType_1.ArkPrimitiveTypesInstance);
    writer.writeLines(libohos_1.cStyleCopyright);
    writer.writeInclude(`core/components_ng/base/frame_node.h`);
    writer.writeInclude(`core/interfaces/native/utility/converter.h`);
    writer.writeInclude(`arkoala_api_generated.h`);
    writer.print("");
    if (options.namespaces) {
        writer.pushNamespace(options.namespaces.generated, { ident: false });
    }
    writer.concat(state.real);
    writer.concat(state.modifiers);
    writer.concat(state.accessors);
    if (options.namespaces) {
        writer.popNamespace({ ident: false });
    }
    writer.print("");
    writer.printTo(filePath);
}
function printModifiersCommonImplFile(filePath, content, options) {
    const writer = new core_1.CppLanguageWriter(new core_1.IndentedPrinter(), (0, core_1.createEmptyReferenceResolver)(), new core_1.CppConvertor((0, core_1.createEmptyReferenceResolver)()), ArkPrimitiveType_1.ArkPrimitiveTypesInstance);
    writer.writeLines(libohos_1.cStyleCopyright);
    writer.writeMultilineCommentBlock(libohos_1.warning);
    writer.print("");
    writer.writeInclude('arkoala-macros.h');
    writer.writeInclude('arkoala_api_generated.h');
    writer.writeInclude('node_api.h');
    writer.print("");
    if (options.namespaces) {
        writer.pushNamespace(options.namespaces.base, { ident: false });
    }
    writer.concat((0, libohos_1.appendModifiersCommonPrologue)());
    if (options.namespaces) {
        writer.popNamespace({ ident: false });
    }
    writer.print("");
    if (options.namespaces) {
        writer.pushNamespace(options.namespaces.generated, { ident: false });
    }
    writer.concat((0, libohos_1.completeModifiersContent)(content, options.basicVersion, options.fullVersion, options.extendedVersion));
    if (options.namespaces) {
        writer.popNamespace({ ident: false });
    }
    writer.print("");
    writer.printTo(filePath);
}
function printRealModifiersAsMultipleFiles(library, libace, options) {
    const visitor = new ArkoalaMultiFileModifiersVisitor(library);
    visitor.commentedCode = options.commentedCode;
    visitor.printRealAndDummyModifiers();
    visitor.emitRealSync(library, libace, options);
}
function printUserConverter(headerPath, namespace, apiVersion, peerLibrary) {
    const apiHeader = new core_1.IndentedPrinter();
    const modifierList = new core_1.IndentedPrinter();
    const accessorList = new core_1.IndentedPrinter();
    const eventsList = new core_1.IndentedPrinter();
    const nodeTypesList = new core_1.IndentedPrinter();
    const visitor = new libohos_1.HeaderVisitor(peerLibrary, apiHeader, modifierList, accessorList, eventsList, nodeTypesList);
    visitor.printApiAndDeserializer();
    const structs = new core_1.CppLanguageWriter(new core_1.IndentedPrinter(), peerLibrary, new core_1.CppConvertor(peerLibrary), ArkPrimitiveType_1.ArkPrimitiveTypesInstance);
    const typedefs = new core_1.IndentedPrinter();
    const converterHeader = makeConverterHeader(headerPath, namespace, peerLibrary).getOutput().join("\n");
    makeCSerializer(peerLibrary, structs, typedefs);
    const api = makeAPI(apiVersion, apiHeader, modifierList, accessorList, eventsList, nodeTypesList, structs, typedefs);
    return { api, converterHeader };
}
function printSerializers(apiVersion, peerLibrary) {
    const apiHeader = new core_1.IndentedPrinter();
    const modifierList = new core_1.IndentedPrinter();
    const accessorList = new core_1.IndentedPrinter();
    const eventsList = new core_1.IndentedPrinter();
    const nodeTypesList = new core_1.IndentedPrinter();
    const visitor = new libohos_1.HeaderVisitor(peerLibrary, apiHeader, modifierList, accessorList, eventsList, nodeTypesList);
    visitor.printApiAndDeserializer();
    const structs = new core_1.CppLanguageWriter(new core_1.IndentedPrinter(), peerLibrary, new core_1.CppConvertor(peerLibrary), ArkPrimitiveType_1.ArkPrimitiveTypesInstance);
    const typedefs = new core_1.IndentedPrinter();
    const serializers = makeCSerializer(peerLibrary, structs, typedefs);
    const api = makeAPI(apiVersion, apiHeader, modifierList, accessorList, eventsList, nodeTypesList, structs, typedefs);
    return { api, serializers };
}
function makeConverterHeader(path, namespace, library) {
    const converter = new core_1.CppLanguageWriter(new core_1.IndentedPrinter(), library, new core_1.CppConvertor(library), ArkPrimitiveType_1.ArkPrimitiveTypesInstance);
    converter.writeLines(libohos_1.cStyleCopyright);
    converter.writeLines(`/*
 * ${libohos_1.warning}
 */
`);
    const includeGuardDefine = (0, libohos_1.makeIncludeGuardDefine)(path);
    converter.print(`#ifndef ${includeGuardDefine}`);
    converter.print(`#define ${includeGuardDefine}`);
    converter.print("");
    converter.writeGlobalInclude('optional');
    converter.writeGlobalInclude('cstdlib');
    converter.writeInclude('arkoala_api_generated.h');
    converter.writeInclude('base/log/log_wrapper.h');
    converter.print("");
    const MAX_SELECTORS_IDS = 16;
    for (let i = 0; i < MAX_SELECTORS_IDS; i++) {
        converter.print(`#define ${libohos_1.SELECTOR_ID_PREFIX}${i} ${i}`);
    }
    converter.print("");
    converter.pushNamespace(namespace, { ident: false });
    converter.print("");
    (0, libohos_1.writeConvertors)(library, converter);
    converter.popNamespace({ ident: false });
    converter.print(`\n#endif // ${includeGuardDefine}`);
    converter.print("");
    return converter;
}
function makeCSerializer(library, structs, typedefs) {
    return `
${libohos_1.cStyleCopyright}
#ifndef _ARKOALA_SERIALIZERS_H
#define _ARKOALA_SERIALIZERS_H

#include "SerializerBase.h"
#include "DeserializerBase.h"
#include "callbacks.h"
#include "arkoala_api_generated.h"
#include <string>

${(0, libohos_1.makeCSerializers)(library, structs, typedefs)}
#endif
`;
}
function makeAPI(apiVersion, headers, modifiers, accessors, events, nodeTypes, structs, typedefs) {
    return `
${(0, libohos_1.readTemplate)('arkoala_api_prologue.h')
        .replaceAll(`%ARKUI_FULL_API_VERSION_VALUE%`, apiVersion.toString())
        .replaceAll(`%CPP_PREFIX%`, (0, libohos_1.peerGeneratorConfiguration)().cppPrefix)
        .replaceAll(`%INTEROP_TYPES_HEADER`, (0, libohos_1.readInteropTypesHeader)())}

${structs.getOutput().join("\n")}

${typedefs.getOutput().join("\n")}

${headers.getOutput().join("\n")}

/**
 * An API to control an implementation. When making changes modifying binary
 * layout, i.e. adding new events - increase ARKUI_API_VERSION above for binary
 * layout checks.
 */
typedef struct ${(0, libohos_1.peerGeneratorConfiguration)().cppPrefix}ArkUINodeModifiers {
${modifiers.getOutput().join("\n")}
} ${(0, libohos_1.peerGeneratorConfiguration)().cppPrefix}ArkUINodeModifiers;

typedef struct ${(0, libohos_1.peerGeneratorConfiguration)().cppPrefix}ArkUIAccessors {
${accessors.getOutput().join("\n")}
} ${(0, libohos_1.peerGeneratorConfiguration)().cppPrefix}ArkUIAccessors;

typedef struct ${(0, libohos_1.peerGeneratorConfiguration)().cppPrefix}ArkUIGraphicsAPI {
    ${ArkPrimitiveType_1.ArkPrimitiveTypesInstance.Int32.getText()} version;
} ${(0, libohos_1.peerGeneratorConfiguration)().cppPrefix}ArkUIGraphicsAPI;

typedef enum ${(0, libohos_1.peerGeneratorConfiguration)().cppPrefix}Ark_NodeType {
${nodeTypes.getOutput().join(",\n")}
} ${(0, libohos_1.peerGeneratorConfiguration)().cppPrefix}Ark_NodeType;

${(0, libohos_1.readTemplate)('arkoala_node_api.h')
        .replaceAll(`%CPP_PREFIX%`, (0, libohos_1.peerGeneratorConfiguration)().cppPrefix)}

${(0, libohos_1.readTemplate)("generic_service_api.h")}
${(0, libohos_1.readTemplate)('any_api.h')}

${(0, libohos_1.readTemplate)('arkoala_api_epilogue.h')
        .replaceAll("%CPP_PREFIX%", (0, libohos_1.peerGeneratorConfiguration)().cppPrefix)}
`;
}
//# sourceMappingURL=arkoala.js.map