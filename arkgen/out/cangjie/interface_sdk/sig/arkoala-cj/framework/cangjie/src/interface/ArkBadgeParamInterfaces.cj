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
public interface BadgeParamInterfaces <:  {
    public mut open prop position: Option<Union_BadgePosition_Position>
    public mut open prop style: BadgeStyle
}
public open class BadgeParam <: BadgeParamInterfaces {
    private var position_container: Option<Union_BadgePosition_Position>
    public mut open prop position: Option<Union_BadgePosition_Position>
    {
        get() {
            return position_container
        }
        set(position) {
            position_container = position
        }
    }
    private var style_container: BadgeStyle
    public mut open prop style: BadgeStyle
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    BadgeParam(position: Option<Union_BadgePosition_Position>, style: BadgeStyle) {
        this.position_container = position
        this.style_container = style
    }
}
