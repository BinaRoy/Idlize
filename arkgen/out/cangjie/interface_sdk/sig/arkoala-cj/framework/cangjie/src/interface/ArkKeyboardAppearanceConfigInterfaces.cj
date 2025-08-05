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

package idlize
import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime
public interface KeyboardAppearanceConfigInterfaces <:  {
    public mut open prop gradientMode: Option<KeyboardGradientMode>
    public mut open prop fluidLightMode: Option<KeyboardFluidLightMode>
}
public open class KeyboardAppearanceConfig <: KeyboardAppearanceConfigInterfaces {
    private var gradientMode_container: Option<KeyboardGradientMode>
    public mut open prop gradientMode: Option<KeyboardGradientMode>
    {
        get() {
            return gradientMode_container
        }
        set(gradientMode) {
            gradientMode_container = gradientMode
        }
    }
    private var fluidLightMode_container: Option<KeyboardFluidLightMode>
    public mut open prop fluidLightMode: Option<KeyboardFluidLightMode>
    {
        get() {
            return fluidLightMode_container
        }
        set(fluidLightMode) {
            fluidLightMode_container = fluidLightMode
        }
    }
    KeyboardAppearanceConfig(gradientMode: Option<KeyboardGradientMode>, fluidLightMode: Option<KeyboardFluidLightMode>) {
        this.gradientMode_container = gradientMode
        this.fluidLightMode_container = fluidLightMode
    }
}
