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
exports.LibaceInstall = exports.createArkoalaInstall = void 0;
const path = require("path");
const core_1 = require("@idlizer/core");
const libohos_1 = require("@idlizer/libohos");
function createArkoalaInstall(options) {
    switch (options.lang) {
        case core_1.Language.TS:
            return new TSArkoalaInstall(options.outDir, options.test);
        case core_1.Language.ARKTS:
            return new ArkTSArkoalaInstall(options.outDir, options.test);
        case core_1.Language.JAVA:
            return new JavaArkoalaInstall(options.outDir, options.test);
        case core_1.Language.CJ:
            return new CJArkoalaInstall(options.outDir, options.test);
        case core_1.Language.KOTLIN:
            return new KotlinArkoalaInstall(options.outDir, options.test);
        default: throw new Error("Not implemented");
    }
}
exports.createArkoalaInstall = createArkoalaInstall;
class BaseArkoalaInstall {
    constructor(outDir, test) {
        this.outDir = outDir;
        this.test = test;
    }
    get root() {
        return this.test ? path.join(this.outDir, "sig") : this.outDir;
    }
    get nativeDir() {
        return path.join(this.root, "arkoala-arkts/framework/native/src/generated");
    }
}
class TSArkoalaInstall extends BaseArkoalaInstall {
    get managedDir() {
        return path.join(this.root, "arkoala/arkui/src");
    }
    get managedSdkDir() {
        throw new Error("Not implemented");
    }
    get tsTypesDir() {
        return path.join(this.root, "arkoala/arkui-types");
    }
    get tsArkoalaDir() {
        return path.join(this.root, "arkoala-arkts/framework/src/generated");
    }
}
class ArkTSArkoalaInstall extends BaseArkoalaInstall {
    get managedDir() {
        return path.join(this.root, "arkoala-arkts/arkui/generated");
    }
    get managedSdkDir() {
        return path.join(this.root, "arkoala-arkts/arkui/sdk");
    }
    get tsTypesDir() {
        return path.join(this.root, "arkoala-arkts/arkui/types/");
    }
    get tsArkoalaDir() {
        throw new Error("Not implemented");
    }
}
class JavaArkoalaInstall extends BaseArkoalaInstall {
    get managedDir() {
        return path.join(this.root, "arkoala-arkts/framework/java/src");
    }
    get managedSdkDir() {
        throw new Error("Not implemented");
    }
    get tsTypesDir() {
        throw new Error("Not implemented");
    }
    get tsArkoalaDir() {
        throw new Error("Not implemented");
    }
}
class CJArkoalaInstall extends BaseArkoalaInstall {
    get managedDir() {
        return path.join(this.root, "arkoala-cj/cjv2/src");
    }
    get managedSdkDir() {
        throw new Error("Not implemented");
    }
    get tsTypesDir() {
        throw new Error("Not implemented");
    }
    get tsArkoalaDir() {
        throw new Error("Not implemented");
    }
    // Cangjie specific directories
    get peerDir() {
        return path.join(this.managedDir, "peers");
    }
    get componentDir() {
        return path.join(this.managedDir, "components");
    }
    // interfaces/ 与 cores/ 已合并为 commonPara/
    get commonParaDir() {
        return path.join(this.managedDir, "commonPara");
    }
    get testDir() {
        return path.join(this.managedDir, "test");
    }
}
class KotlinArkoalaInstall extends BaseArkoalaInstall {
    get managedDir() {
        return path.join(this.root, "arkoala-kotlin/framework/kotlin/src");
    }
    get managedSdkDir() {
        throw new Error("Not implemented");
    }
    get tsTypesDir() {
        throw new Error("Not implemented");
    }
    get tsArkoalaDir() {
        throw new Error("Not implemented");
    }
}
class LibaceInstall extends libohos_1.Install {
    constructor(outDir, test) {
        super();
        this.outDir = outDir;
        this.test = test;
        this.libace = this.mkdir(this.test ? path.join(this.outDir, "libace") : this.outDir);
        this.implementationDir = this.mkdir(path.join(this.libace, "implementation"));
        this.generatedInterface = this.mkdir(path.join(this.libace, "generated", "interface"));
        this.generatedUtility = this.mkdir(path.join(this.libace, "utility", "generated"));
        this.userConverterHeader = path.join(this.generatedUtility, "converter_generated.h");
        this.mesonBuild = path.join(this.libace, "meson.build");
        this.arkoalaMacros = this.interface("arkoala-macros.h");
        this.generatedArkoalaApi = this.interface("arkoala_api_generated.h");
        this.gniComponents = this.interface("node_interface.gni");
        this.allModifiers = this.implementation("all_modifiers.cpp");
    }
    interface(name) {
        return path.join(this.generatedInterface, name);
    }
    implementation(name) {
        return path.join(this.implementationDir, name);
    }
    modifierHeader(component) {
        return this.interface(`${component}_modifier.h`);
    }
    modifierCpp(component) {
        return this.implementation(`${component}_modifier.cpp`);
    }
    accessorCpp(component) {
        return this.implementation(`${component}_accessor.cpp`);
    }
    delegateHeader(component) {
        return this.interface(`${component}_delegate.h`);
    }
    delegateCpp(component) {
        return this.implementation(`${component}_delegate.cpp`);
    }
}
exports.LibaceInstall = LibaceInstall;
//# sourceMappingURL=ArkoalaInstall.js.map