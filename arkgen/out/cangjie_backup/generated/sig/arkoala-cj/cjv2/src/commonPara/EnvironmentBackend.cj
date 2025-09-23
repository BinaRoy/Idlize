/*
 * Copyright (c) 2024-2025 Huawei Device Co., Ltd.
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


// WARNING! THIS FILE IS AUTO-GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class EnvironmentBackend {
    private  static func isAccessibilityEnabled_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._EnvironmentBackend_isAccessibilityEnabled()
        return retval
    }
    private  static func getColorMode_serialize(): Int32 {
        let retval = ArkUIGeneratedNativeModule._EnvironmentBackend_getColorMode()
        return retval
    }
    private  static func getFontScale_serialize(): Float32 {
        let retval = ArkUIGeneratedNativeModule._EnvironmentBackend_getFontScale()
        return retval
    }
    private  static func getFontWeightScale_serialize(): Float32 {
        let retval = ArkUIGeneratedNativeModule._EnvironmentBackend_getFontWeightScale()
        return retval
    }
    private  static func getLayoutDirection_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._EnvironmentBackend_getLayoutDirection()
        return retval
    }
    private  static func getLanguageCode_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._EnvironmentBackend_getLanguageCode()
        return retval
    }
    public  static func isAccessibilityEnabled(): Bool {
        return EnvironmentBackend.isAccessibilityEnabled_serialize()
    }
    public  static func getColorMode(): Int32 {
        return EnvironmentBackend.getColorMode_serialize()
    }
    public  static func getFontScale(): Float32 {
        return EnvironmentBackend.getFontScale_serialize()
    }
    public  static func getFontWeightScale(): Float32 {
        return EnvironmentBackend.getFontWeightScale_serialize()
    }
    public  static func getLayoutDirection(): String {
        return EnvironmentBackend.getLayoutDirection_serialize()
    }
    public  static func getLanguageCode(): String {
        return EnvironmentBackend.getLanguageCode_serialize()
    }
}
