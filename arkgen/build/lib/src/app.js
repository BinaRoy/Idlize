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
exports.defaultConfigPath = exports.arkgen = void 0;
const commander_1 = require("commander");
const fs = require("fs");
const path = require("path");
const core_1 = require("@idlizer/core");
const idl_1 = require("@idlizer/core/idl");
const libohos_1 = require("@idlizer/libohos");
const arkoala_1 = require("./arkoala");
const ArkoalaPeerLibrary_1 = require("./ArkoalaPeerLibrary");
const InteropBridges_1 = require("./InteropBridges");
const knownReferences_1 = require("./knownReferences");
const interfaces_1 = require("@idlizer/interfaces");
function arkgen(argv) {
    var _a, _b, _c, _d, _e, _f, _g;
    const command = (0, commander_1.createCommand)()
        .option('--show-config-schema', 'Prints JSON schema for config')
        .option('--dts2test', 'Generate tests from .d.ts to .h')
        .option('--dts2peer', 'Convert .d.ts to peer drafts')
        .option('--ets2ts', 'Convert .ets to .ts')
        .option('--input-dir <path>', 'Path to input dir(s), comma separated')
        .option('--aux-input-dir <path>', 'Path to aux input dir(s), comma separated')
        .option('--base-dir <path>', 'Base directories, for the purpose of packetization of IDL modules, comma separated, defaulted to --input-dir if missing')
        .option('--output-dir <path>', 'Path to output dir')
        .option('--input-files <files...>', 'Comma-separated list of specific files to process')
        .option('--aux-input-files <files...>', 'Comma-separated list of specific aux files to process')
        .option('--library-packages <packages>', 'Comma separated list of packages included into library')
        .option('--idl2peer', 'Convert IDL to peer drafts')
        .option('--dts2skoala', 'Convert DTS to skoala definitions')
        .option('--verbose', 'Verbose processing')
        .option('--verify-idl', 'Verify produced IDL')
        .option('--common-to-attributes', 'Transform common attributes as IDL attributes')
        .option('--test-interface <name>', 'Interfaces to test (comma separated)')
        .option('--test-method <name>', 'Methods to test (comma separated)')
        .option('--test-property <name>', 'Properties to test (comma separated)')
        .option('--generate-interface <name>', 'Interfaces to generate (comma separated)')
        .option('--disable-enum-initializers', "Don't include enum member initializers in the interface")
        .option('--native-bridge-path <name>', "Path to native bridge")
        .option('--api-version <version>', "API version for generated peers")
        .option('--dump-serialized', "Dump serialized data")
        .option('--call-log', "Call log")
        .option('--docs [all|opt|none]', 'How to handle documentation: include, optimize, or skip')
        .option('--language [ts|ts|java|cangjie|kotlin]', 'Output language')
        .option('--api-prefix <string>', 'Cpp prefix to be compatible with manual arkoala implementation')
        .option('--only-integrated', 'Generate only thoose files that can be integrated to target', false)
        .option('--version')
        .option('--generator-target <all|arkoala|libace|none>', 'Copy peers to arkoala or libace (use with --dts2peer)', "all")
        .option('--arkoala-destination <path>', 'Location of arkoala repository')
        .option('--libace-destination <path>', 'Location of libace repository')
        .option('--copy-peers-components <name...>', 'List of components to copy (omit to copy all)')
        .option('--tracker-status <file>', 'Tracker status file)')
        .option('--plugin <file>', 'File with generator\'s plugin')
        .option('--default-idl-package <name>', 'Name of the default package for generated IDL')
        .option('--no-commented-code', 'Do not generate commented code in modifiers')
        .option('--enable-log', 'Enable logging')
        .option('--options-file <path>', 'Path to generator configuration options file (appends to defaults). Use --ignore-default-config to override default options.')
        .option('--ignore-default-config', 'Use with --options-file to override default generator configuration options.', false)
        .option('--arkts-extension <string> [.ts|.ets]', "Generated ArkTS language files extension.", ".ts")
        .option('--interop-bridges <string>', "Generate interop bridges macros")
        .option('--use-memo-m3', "Generate code with m3 @memo annotations and functions with @ComponentBuilder", false)
        .option('--use-component-optional', 'Make all component\'s properties nullable')
        .option('--reference-names <string>', 'Provides reference mapping', path.resolve(__dirname, '..', 'generation-config', 'references', 'dts-sdk.refs.json'))
        .option('--no-type-checker', "Use TypeChecker or generate ArkTS specific syntax")
        .option('--no-implicit-predefined', "Removes predefined from the generator input");
    const options = command
        .parse(argv, { from: 'user' })
        .opts();
    let didJob = false;
    if (options.showConfigSchema) {
        console.log(core_1.D.printJSONSchema(libohos_1.PeerGeneratorConfigurationSchema));
        didJob = true;
    }
    if (options.interopBridges) {
        console.log((0, InteropBridges_1.makeInteropBridges)(options.interopBridges));
        didJob = true;
    }
    let apiVersion = (_a = options.apiVersion) !== null && _a !== void 0 ? _a : 9999;
    core_1.Language.ARKTS.extension = options.arktsExtension;
    (0, core_1.setDefaultConfiguration)((0, libohos_1.loadPeerConfiguration)(options.optionsFile, options.ignoreDefaultConfig));
    (0, knownReferences_1.loadKnownReferences)(path.resolve(options.referenceNames));
    if (process.env.npm_package_version && !options.showConfigSchema) {
        console.log(`IDLize version ${(0, core_1.findVersion)()}`);
    }
    if (options.dts2skoala) {
        (0, core_1.patchDefaultConfiguration)({
            ApiVersion: apiVersion,
            TypePrefix: "",
            LibraryPrefix: "",
            OptionalPrefix: "Opt_",
        });
        console.log(`Processing all .d.ts from directory: ${(_b = options.inputDir) !== null && _b !== void 0 ? _b : "undefined"}`);
        const outputDir = (_c = options.outputDir) !== null && _c !== void 0 ? _c : "./out/skoala";
        if (!fs.existsSync(outputDir)) {
            fs.mkdirSync(outputDir, { recursive: true });
        }
        const generatedIDLMap = new Map();
        const skoalaLibrary = new libohos_1.IdlSkoalaLibrary();
        const { baseDirs, inputDirs, auxInputDirs, inputFiles, auxInputFiles } = (0, libohos_1.formatInputPaths)(options);
        (0, libohos_1.validatePaths)(baseDirs, "dir");
        (0, libohos_1.validatePaths)(inputDirs, "dir");
        (0, libohos_1.validatePaths)(auxInputDirs, "dir");
        (0, libohos_1.validatePaths)(inputFiles, "file");
        (0, libohos_1.validatePaths)(auxInputFiles, "file");
        const dtsInputFiles = (0, core_1.scanInputDirs)(inputDirs, '.d.ts').concat(inputFiles);
        const dtsAuxInputFiles = auxInputFiles;
        if (dtsInputFiles.length === 0) {
            console.error("Error: No input directory or files provided.");
            process.exit(1);
        }
        (0, core_1.generate)(baseDirs, [...inputDirs, ...auxInputDirs], dtsInputFiles, dtsAuxInputFiles, outputDir, path.resolve(__dirname, "..", "stdlib.d.ts"), (sourceFile, program, compilerHost) => new libohos_1.IDLVisitor(baseDirs, sourceFile, program, compilerHost, options, skoalaLibrary), {
            compilerOptions: Object.assign(Object.assign({}, core_1.defaultCompilerOptions), { paths: {
                    "@koalaui/common": ["../external/incremental/common/src"],
                    "@koalaui/compat": ["../external/incremental/compat/src/typescript"],
                    "@koalaui/interop": ["../external/interop/src/interop"],
                    "@koalaui/arkoala": ["../external/arkoala-arkts/framework/src"],
                } }),
            onSingleFile: (file, outputDirectory, sourceFile) => {
                var _a;
                const fileName = path.basename(sourceFile.fileName, ".d.ts");
                if (!generatedIDLMap.has(fileName)) {
                    generatedIDLMap.set(fileName, []);
                }
                (_a = generatedIDLMap.get(fileName)) === null || _a === void 0 ? void 0 : _a.push(...file.entries);
                skoalaLibrary.files.push(file);
                skoalaLibrary.outFiles.push(new libohos_1.IldSkoalaOutFile(file));
            },
            onEnd: (outDir) => {
                const wrapperProcessor = new libohos_1.IdlWrapperProcessor(skoalaLibrary);
                wrapperProcessor.process();
                (0, libohos_1.generateIdlSkoala)(outDir, skoalaLibrary, options);
                try {
                    libohos_1.SkoalaDeserializerPrinter.generateDeserializer(outputDir, generatedIDLMap);
                }
                catch (error) {
                    console.error("Error during deserializer generation:", error);
                }
                console.log("All files processed.");
            }
        });
        didJob = true;
    }
    if (options.idl2peer) {
        const outDir = (_d = options.outputDir) !== null && _d !== void 0 ? _d : "./out";
        const language = core_1.Language.fromString((_e = options.language) !== null && _e !== void 0 ? _e : "ts");
        const { inputFiles, inputDirs } = (0, libohos_1.formatInputPaths)(options);
        const idlLibrary = new ArkoalaPeerLibrary_1.ArkoalaPeerLibrary(language, libohos_1.NativeModule.Interop, options.useMemoM3 && language === core_1.Language.ARKTS);
        const allInputFiles = (0, core_1.scanInputDirs)(inputDirs)
            .concat(inputFiles)
            .concat((0, libohos_1.libohosPredefinedFiles)())
            .concat(options.implicitPredefined ? (0, interfaces_1.readLibrary)("arkuiExtra") : []);
        const idlInputFiles = allInputFiles.filter(it => it.endsWith('.idl'));
        idlInputFiles.forEach(idlFilename => {
            idlFilename = path.resolve(idlFilename);
            const [file] = (0, core_1.toIDLFile)(idlFilename);
            (0, idl_1.linearizeNamespaceMembers)(file.entries).forEach(idl_1.transformMethodsAsync2ReturnPromise);
            idlLibrary.files.push(file);
        });
        if (options.verifyIdl) {
            idlLibrary.files.forEach(file => {
                (0, core_1.verifyIDLLinter)(file, idlLibrary, (0, libohos_1.peerGeneratorConfiguration)().linter);
            });
        }
        inplaceArkoalaGenerics(idlLibrary);
        (0, libohos_1.fillSyntheticDeclarations)(idlLibrary);
        idlLibrary.enableCache();
        new libohos_1.IdlPeerProcessor(idlLibrary).process();
        generateTarget(idlLibrary, outDir, language);
        didJob = true;
    }
    if (options.dts2peer) {
        const generatedPeersDir = (_f = options.outputDir) !== null && _f !== void 0 ? _f : "./out/ts-peers/generated";
        const lang = core_1.Language.fromString((_g = options.language) !== null && _g !== void 0 ? _g : "ts");
        const { baseDirs, inputDirs, auxInputDirs, inputFiles, auxInputFiles } = (0, libohos_1.formatInputPaths)(options);
        (0, libohos_1.validatePaths)(baseDirs, "dir");
        (0, libohos_1.validatePaths)(inputDirs, "dir");
        (0, libohos_1.validatePaths)(auxInputDirs, "dir");
        (0, libohos_1.validatePaths)(inputFiles, "file");
        (0, libohos_1.validatePaths)(auxInputFiles, "file");
        const allInputFiles = (0, core_1.scanInputDirs)(inputDirs)
            .concat(inputFiles)
            .concat((0, libohos_1.libohosPredefinedFiles)())
            .concat(options.implicitPredefined ? (0, interfaces_1.readLibrary)("arkuiExtra") : []);
        const allAuxInputFiles = auxInputFiles;
        const dtsInputFiles = allInputFiles.filter(it => it.endsWith('.d.ts'));
        const dtsAuxInputFiles = allAuxInputFiles.filter(it => it.endsWith('.d.ts'));
        const idlInputFiles = allInputFiles.filter(it => it.endsWith('.idl'));
        const idlAuxInputFiles = allAuxInputFiles.filter(it => it.endsWith('.idl'));
        const idlLibrary = new ArkoalaPeerLibrary_1.ArkoalaPeerLibrary(lang, libohos_1.NativeModule.Interop, options.useMemoM3);
        {
            const pushOne = (idlFilename, resultFilesArray) => {
                idlFilename = path.resolve(idlFilename);
                const [file] = (0, core_1.toIDLFile)(idlFilename);
                resultFilesArray.push(file);
            };
            idlInputFiles.forEach(idlFilename => pushOne(idlFilename, idlLibrary.files));
            idlAuxInputFiles.forEach(auxIdlFilename => pushOne(auxIdlFilename, idlLibrary.auxFiles));
        }
        (0, core_1.generate)(baseDirs, [...inputDirs, ...auxInputDirs], dtsInputFiles, dtsAuxInputFiles, generatedPeersDir, path.resolve(__dirname, "..", "stdlib.d.ts"), (sourceFile, program, compilerHost) => new libohos_1.IDLVisitor(baseDirs, sourceFile, program, compilerHost, options, idlLibrary), {
            compilerOptions: core_1.defaultCompilerOptions,
            onSingleFile(file, outputDir, sourceFile, isAux) {
                // TODO: this hack must be removed
                file.entries = file.entries.filter(newEntry => !idlLibrary.files.find(peerFile => peerFile.entries.find(entry => {
                    if (([newEntry, entry].every(idl_1.isInterface)
                        || [newEntry, entry].every(idl_1.isEnum)
                        || [newEntry, entry].every(idl_1.isSyntheticEntry))) {
                        if (newEntry.name === entry.name) {
                            console.error("Removed duplicate", newEntry.name, 'from', file.fileName, ', another declaration found at', peerFile.fileName);
                            return true;
                        }
                    }
                    return false;
                })));
                (0, idl_1.linearizeNamespaceMembers)(file.entries).forEach(idl_1.transformMethodsAsync2ReturnPromise);
                (0, idl_1.linkParentBack)(file);
                if (isAux)
                    idlLibrary.auxFiles.push(file);
                else
                    idlLibrary.files.push(file);
            },
            onEnd(outDir) {
                if (options.verifyIdl) {
                    idlLibrary.files.forEach(file => {
                        (0, core_1.verifyIDLLinter)(file, idlLibrary, (0, libohos_1.peerGeneratorConfiguration)().linter);
                    });
                }
                (0, libohos_1.fillSyntheticDeclarations)(idlLibrary);
                idlLibrary.enableCache();
                const peerProcessor = new libohos_1.IdlPeerProcessor(idlLibrary);
                peerProcessor.process();
                generateTarget(idlLibrary, outDir, lang);
            }
        });
        didJob = true;
    }
    if (!didJob) {
        command.help();
    }
    function generateTarget(idlLibrary, outDir, lang) {
        var _a, _b, _c, _d, _e;
        if (options.generatorTarget == "arkoala" || options.generatorTarget == "all") {
            (0, arkoala_1.generateArkoalaFromIdl)({
                outDir: outDir,
                arkoalaDestination: options.arkoalaDestination,
                nativeBridgeFile: options.nativeBridgePath,
                apiVersion: apiVersion,
                verbose: (_a = options.verbose) !== null && _a !== void 0 ? _a : false,
                onlyIntegrated: (_b = options.onlyIntegrated) !== null && _b !== void 0 ? _b : false,
                dumpSerialized: (_c = options.dumpSerialized) !== null && _c !== void 0 ? _c : false,
                callLog: (_d = options.callLog) !== null && _d !== void 0 ? _d : false,
                lang: lang,
                useTypeChecker: (_e = options.typeChecker) !== null && _e !== void 0 ? _e : true,
            }, idlLibrary);
        }
        if (options.generatorTarget == "libace" ||
            options.generatorTarget == "all") {
            (0, arkoala_1.generateLibaceFromIdl)({
                outDir: outDir,
                libaceDestination: options.libaceDestination,
                apiVersion: apiVersion,
                commentedCode: options.commentedCode,
            }, idlLibrary);
        }
        if (options.generatorTarget == "tracker") {
            (0, libohos_1.generateTracker)(outDir, idlLibrary, options.trackerStatus, options.verbose);
        }
        if (options.plugin) {
            (0, libohos_1.loadPlugin)(options.plugin)
                .then(plugin => plugin.process({ outDir: outDir }, idlLibrary))
                .then(result => {
                console.log(`Plugin ${options.plugin} process returned ${result}`);
            })
                .catch(error => console.error(`Plugin ${options.plugin} not found: ${error}`));
        }
    }
}
exports.arkgen = arkgen;
function defaultConfigPath() {
    return path.resolve(__dirname, '..', 'generation-config');
}
exports.defaultConfigPath = defaultConfigPath;
function inplaceArkoalaGenerics(library) {
    library.files.forEach(file => (0, core_1.inplaceGenerics)(file, library, { ignore: [
            ignoreComponentRule,
        ] }));
}
function ignoreComponentRule(node) {
    return (0, idl_1.hasExtAttribute)(node, idl_1.IDLExtendedAttributes.Component) || (0, idl_1.hasExtAttribute)(node, idl_1.IDLExtendedAttributes.ComponentInterface);
}
//# sourceMappingURL=app.js.map