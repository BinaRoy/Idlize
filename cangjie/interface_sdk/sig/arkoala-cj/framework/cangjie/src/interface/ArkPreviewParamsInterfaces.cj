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
public interface PreviewParamsInterfaces <:  {
    public mut open prop title: Option<String>
    public mut open prop width: Option<Float64>
    public mut open prop height: Option<Float64>
    public mut open prop locale: Option<String>
    public mut open prop colorMode: Option<String>
    public mut open prop deviceType: Option<String>
    public mut open prop dpi: Option<Float64>
    public mut open prop orientation: Option<String>
    public mut open prop roundScreen: Option<Bool>
}
public open class PreviewParams <: PreviewParamsInterfaces {
    private var title_container: Option<String>
    public mut open prop title: Option<String>
    {
        get() {
            return title_container
        }
        set(title) {
            title_container = title
        }
    }
    private var width_container: Option<Float64>
    public mut open prop width: Option<Float64>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Float64>
    public mut open prop height: Option<Float64>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var locale_container: Option<String>
    public mut open prop locale: Option<String>
    {
        get() {
            return locale_container
        }
        set(locale) {
            locale_container = locale
        }
    }
    private var colorMode_container: Option<String>
    public mut open prop colorMode: Option<String>
    {
        get() {
            return colorMode_container
        }
        set(colorMode) {
            colorMode_container = colorMode
        }
    }
    private var deviceType_container: Option<String>
    public mut open prop deviceType: Option<String>
    {
        get() {
            return deviceType_container
        }
        set(deviceType) {
            deviceType_container = deviceType
        }
    }
    private var dpi_container: Option<Float64>
    public mut open prop dpi: Option<Float64>
    {
        get() {
            return dpi_container
        }
        set(dpi) {
            dpi_container = dpi
        }
    }
    private var orientation_container: Option<String>
    public mut open prop orientation: Option<String>
    {
        get() {
            return orientation_container
        }
        set(orientation) {
            orientation_container = orientation
        }
    }
    private var roundScreen_container: Option<Bool>
    public mut open prop roundScreen: Option<Bool>
    {
        get() {
            return roundScreen_container
        }
        set(roundScreen) {
            roundScreen_container = roundScreen
        }
    }
    PreviewParams(title: Option<String>, width: Option<Float64>, height: Option<Float64>, locale: Option<String>, colorMode: Option<String>, deviceType: Option<String>, dpi: Option<Float64>, orientation: Option<String>, roundScreen: Option<Bool>) {
        this.title_container = title
        this.width_container = width
        this.height_container = height
        this.locale_container = locale
        this.colorMode_container = colorMode
        this.deviceType_container = deviceType
        this.dpi_container = dpi
        this.orientation_container = orientation
        this.roundScreen_container = roundScreen
    }
}
