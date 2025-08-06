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

import * as path from 'path'
import { Language } from '@idlizer/core'
import { Install, TargetFile } from '@idlizer/libohos'

export interface ArkoalaInstall {
    get root(): string
    get managedDir(): string
    get managedSdkDir(): string
    get nativeDir(): string
    get tsTypesDir(): string
    get tsArkoalaDir(): string
}

export function createArkoalaInstall(options: {
    outDir: string,
    lang: Language,
    test: boolean,
    useMemoM3: boolean,
}): ArkoalaInstall {
    switch (options.lang) {
        case Language.TS:
            return new TSArkoalaInstall(options.outDir, options.test)
        case Language.ARKTS:
            return new ArkTSArkoalaInstall(options.outDir, options.test)
        case Language.JAVA:
            return new JavaArkoalaInstall(options.outDir, options.test)
        case Language.CJ:
            return new CJArkoalaInstall(options.outDir, options.test)
        case Language.KOTLIN:
            return new KotlinArkoalaInstall(options.outDir, options.test)
        default: throw new Error("Not implemented")
    }
}

abstract class BaseArkoalaInstall implements ArkoalaInstall {
    constructor(private outDir: string, private test: boolean) {}
    abstract get managedDir(): string
    abstract get managedSdkDir(): string
    abstract get tsTypesDir(): string
    abstract get tsArkoalaDir(): string
    get root(): string {
        return this.test ? path.join(this.outDir, "sig") : this.outDir
    }
    get nativeDir(): string {
        return path.join(this.root, "arkoala-arkts/framework/native/src/generated")
    }
}

class TSArkoalaInstall extends BaseArkoalaInstall {
    get managedDir(): string {
        return path.join(this.root, "arkoala/arkui/src")
    }
    get managedSdkDir(): string {
        throw new Error("Not implemented")
    }
    get tsTypesDir(): string {
        return path.join(this.root, "arkoala/arkui-types")
    }
    get tsArkoalaDir(): string {
        return path.join(this.root, "arkoala-arkts/framework/src/generated")
    }
}

class ArkTSArkoalaInstall extends BaseArkoalaInstall {
    get managedDir(): string {
        return path.join(this.root, "arkoala-arkts/arkui/generated")
    }
    get managedSdkDir(): string {
        return path.join(this.root, "arkoala-arkts/arkui/sdk")
    }
    get tsTypesDir(): string {
        return path.join(this.root, "arkoala-arkts/arkui/types/")
    }
    get tsArkoalaDir(): string {
        throw new Error("Not implemented")
    }
}

class JavaArkoalaInstall extends BaseArkoalaInstall {
    get managedDir(): string {
        return path.join(this.root, "arkoala-arkts/framework/java/src")
    }
    get managedSdkDir(): string {
        throw new Error("Not implemented")
    }
    get tsTypesDir(): string {
        throw new Error("Not implemented")
    }
    get tsArkoalaDir(): string {
        throw new Error("Not implemented")
    }
}

class CJArkoalaInstall extends BaseArkoalaInstall {
    get managedDir(): string {
        return path.join(this.root, "arkoala-cj/framework/cangjie/src")
    }
    get managedSdkDir(): string {
        throw new Error("Not implemented")
    }
    get tsTypesDir(): string {
        throw new Error("Not implemented")
    }
    get tsArkoalaDir(): string {
        throw new Error("Not implemented")
    }
    
    // Cangjie specific directories
    get peerDir(): string {
        return path.join(this.managedDir, "peer")
    }
    get componentDir(): string {
        return path.join(this.managedDir, "component")
    }
    get interfaceDir(): string {
        return path.join(this.managedDir, "interface")
    }
    get coreDir(): string {
        return path.join(this.managedDir, "core")
    }
    get testDir(): string {
        return path.join(this.managedDir, "test")
    }
}

class KotlinArkoalaInstall extends BaseArkoalaInstall {
    get managedDir(): string {
        return path.join(this.root, "arkoala-kotlin/framework/kotlin/src")
    }
    get managedSdkDir(): string {
        throw new Error("Not implemented")
    }
    get tsTypesDir(): string {
        throw new Error("Not implemented")
    }
    get tsArkoalaDir(): string {
        throw new Error("Not implemented")
    }
}

export class LibaceInstall extends Install {
    constructor(private outDir: string, private test: boolean) { super() }
    libace = this.mkdir(this.test ? path.join(this.outDir, "libace") : this.outDir)
    implementationDir = this.mkdir(path.join(this.libace, "implementation"))
    generatedInterface = this.mkdir(path.join(this.libace, "generated", "interface"))
    generatedUtility = this.mkdir(path.join(this.libace, "utility", "generated"))
    userConverterHeader = path.join(this.generatedUtility, "converter_generated.h")
    mesonBuild = path.join(this.libace, "meson.build")

    arkoalaMacros = this.interface("arkoala-macros.h")
    generatedArkoalaApi = this.interface("arkoala_api_generated.h")
    gniComponents = this.interface("node_interface.gni")
    allModifiers = this.implementation("all_modifiers.cpp")

    interface(name: string) {
        return path.join(this.generatedInterface, name)
    }
    implementation(name: string) {
        return path.join(this.implementationDir, name)
    }
    modifierHeader(component: string) {
        return this.interface(`${component}_modifier.h`)
    }
    modifierCpp(component: string) {
        return this.implementation(`${component}_modifier.cpp`)
    }
    accessorCpp(component: string) {
        return this.implementation(`${component}_accessor.cpp`)
    }
    delegateHeader(component: string) {
        return this.interface(`${component}_delegate.h`)
    }
    delegateCpp(component: string) {
        return this.implementation(`${component}_delegate.cpp`)
    }
}
