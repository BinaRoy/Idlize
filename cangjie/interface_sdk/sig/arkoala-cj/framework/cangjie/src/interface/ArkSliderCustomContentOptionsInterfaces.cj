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
public interface SliderCustomContentOptionsInterfaces <:  {
    public mut open prop accessibilityText: Option<ResourceStr>
    public mut open prop accessibilityDescription: Option<ResourceStr>
    public mut open prop accessibilityLevel: Option<String>
    public mut open prop accessibilityGroup: Option<Bool>
}
public open class SliderCustomContentOptions <: SliderCustomContentOptionsInterfaces {
    private var accessibilityText_container: Option<ResourceStr>
    public mut open prop accessibilityText: Option<ResourceStr>
    {
        get() {
            return accessibilityText_container
        }
        set(accessibilityText) {
            accessibilityText_container = accessibilityText
        }
    }
    private var accessibilityDescription_container: Option<ResourceStr>
    public mut open prop accessibilityDescription: Option<ResourceStr>
    {
        get() {
            return accessibilityDescription_container
        }
        set(accessibilityDescription) {
            accessibilityDescription_container = accessibilityDescription
        }
    }
    private var accessibilityLevel_container: Option<String>
    public mut open prop accessibilityLevel: Option<String>
    {
        get() {
            return accessibilityLevel_container
        }
        set(accessibilityLevel) {
            accessibilityLevel_container = accessibilityLevel
        }
    }
    private var accessibilityGroup_container: Option<Bool>
    public mut open prop accessibilityGroup: Option<Bool>
    {
        get() {
            return accessibilityGroup_container
        }
        set(accessibilityGroup) {
            accessibilityGroup_container = accessibilityGroup
        }
    }
    SliderCustomContentOptions(accessibilityText: Option<ResourceStr>, accessibilityDescription: Option<ResourceStr>, accessibilityLevel: Option<String>, accessibilityGroup: Option<Bool>) {
        this.accessibilityText_container = accessibilityText
        this.accessibilityDescription_container = accessibilityDescription
        this.accessibilityLevel_container = accessibilityLevel
        this.accessibilityGroup_container = accessibilityGroup
    }
}
