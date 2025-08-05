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
public interface Literal_ResourceColor_colorInterfaces <:  {
    public mut open prop color: ResourceColor
}
public open class Literal_ResourceColor_color <: Literal_ResourceColor_colorInterfaces {
    private var color_container: ResourceColor
    public mut open prop color: ResourceColor
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    Literal_ResourceColor_color(color: ResourceColor) {
        this.color_container = color
    }
}
