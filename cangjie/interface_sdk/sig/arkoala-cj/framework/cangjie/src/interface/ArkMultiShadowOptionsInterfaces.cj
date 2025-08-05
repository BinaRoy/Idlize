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
public interface MultiShadowOptionsInterfaces <:  {
    public mut open prop radius: Option<Union_Number_Resource>
    public mut open prop offsetX: Option<Union_Number_Resource>
    public mut open prop offsetY: Option<Union_Number_Resource>
}
public open class MultiShadowOptions <: MultiShadowOptionsInterfaces {
    private var radius_container: Option<Union_Number_Resource>
    public mut open prop radius: Option<Union_Number_Resource>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var offsetX_container: Option<Union_Number_Resource>
    public mut open prop offsetX: Option<Union_Number_Resource>
    {
        get() {
            return offsetX_container
        }
        set(offsetX) {
            offsetX_container = offsetX
        }
    }
    private var offsetY_container: Option<Union_Number_Resource>
    public mut open prop offsetY: Option<Union_Number_Resource>
    {
        get() {
            return offsetY_container
        }
        set(offsetY) {
            offsetY_container = offsetY
        }
    }
    MultiShadowOptions(radius: Option<Union_Number_Resource>, offsetX: Option<Union_Number_Resource>, offsetY: Option<Union_Number_Resource>) {
        this.radius_container = radius
        this.offsetX_container = offsetX
        this.offsetY_container = offsetY
    }
}
