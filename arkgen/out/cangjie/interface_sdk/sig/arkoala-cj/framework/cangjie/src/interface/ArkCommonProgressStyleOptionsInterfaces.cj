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
public interface CommonProgressStyleOptionsInterfaces <:  {
    public mut open prop enableSmoothEffect: Option<Bool>
}
public open class CommonProgressStyleOptions <: CommonProgressStyleOptionsInterfaces {
    private var enableSmoothEffect_container: Option<Bool>
    public mut open prop enableSmoothEffect: Option<Bool>
    {
        get() {
            return enableSmoothEffect_container
        }
        set(enableSmoothEffect) {
            enableSmoothEffect_container = enableSmoothEffect
        }
    }
    CommonProgressStyleOptions(enableSmoothEffect: Option<Bool>) {
        this.enableSmoothEffect_container = enableSmoothEffect
    }
}
