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
public interface BlurStyleOptionsInterfaces <:  {
    public mut open prop colorMode: Option<ThemeColorMode>
    public mut open prop adaptiveColor: Option<AdaptiveColor>
    public mut open prop scale: Option<Float64>
    public mut open prop blurOptions: Option<BlurOptions>
}
public open class BlurStyleOptions <: BlurStyleOptionsInterfaces {
    private var colorMode_container: Option<ThemeColorMode>
    public mut open prop colorMode: Option<ThemeColorMode>
    {
        get() {
            return colorMode_container
        }
        set(colorMode) {
            colorMode_container = colorMode
        }
    }
    private var adaptiveColor_container: Option<AdaptiveColor>
    public mut open prop adaptiveColor: Option<AdaptiveColor>
    {
        get() {
            return adaptiveColor_container
        }
        set(adaptiveColor) {
            adaptiveColor_container = adaptiveColor
        }
    }
    private var scale_container: Option<Float64>
    public mut open prop scale: Option<Float64>
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var blurOptions_container: Option<BlurOptions>
    public mut open prop blurOptions: Option<BlurOptions>
    {
        get() {
            return blurOptions_container
        }
        set(blurOptions) {
            blurOptions_container = blurOptions
        }
    }
    BlurStyleOptions(colorMode: Option<ThemeColorMode>, adaptiveColor: Option<AdaptiveColor>, scale: Option<Float64>, blurOptions: Option<BlurOptions>) {
        this.colorMode_container = colorMode
        this.adaptiveColor_container = adaptiveColor
        this.scale_container = scale
        this.blurOptions_container = blurOptions
    }
}
