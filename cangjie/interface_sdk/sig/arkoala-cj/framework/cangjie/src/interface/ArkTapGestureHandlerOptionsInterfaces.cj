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
public interface TapGestureHandlerOptionsInterfaces <: BaseHandlerOptionsInterfaces {
    public mut open prop count: Option<Float64>
    public mut open prop fingers: Option<Float64>
}
public open class TapGestureHandlerOptions <: TapGestureHandlerOptionsInterfaces {
    private var count_container: Option<Float64>
    public mut open prop count: Option<Float64>
    {
        get() {
            return count_container
        }
        set(count) {
            count_container = count
        }
    }
    private var fingers_container: Option<Float64>
    public mut open prop fingers: Option<Float64>
    {
        get() {
            return fingers_container
        }
        set(fingers) {
            fingers_container = fingers
        }
    }
    private var isFingerCountLimited_container: Option<Bool>
    public mut open prop isFingerCountLimited: Option<Bool>
    {
        get() {
            return isFingerCountLimited_container
        }
        set(isFingerCountLimited) {
            isFingerCountLimited_container = isFingerCountLimited
        }
    }
    TapGestureHandlerOptions(count: Option<Float64>, fingers: Option<Float64>, isFingerCountLimited: Option<Bool>) {
        this.count_container = count
        this.fingers_container = fingers
        this.isFingerCountLimited_container = isFingerCountLimited
    }
}
