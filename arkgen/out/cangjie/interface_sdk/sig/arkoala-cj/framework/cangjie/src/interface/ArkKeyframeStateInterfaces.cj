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
public interface KeyframeStateInterfaces <:  {
    public mut open prop duration: Float64
    public mut open prop curve: Option<Union_Curve_String_ICurve>
    public mut open prop event: (() -> Unit)
}
public open class KeyframeState <: KeyframeStateInterfaces {
    private var duration_container: Float64
    public mut open prop duration: Float64
    {
        get() {
            return duration_container
        }
        set(duration) {
            duration_container = duration
        }
    }
    private var curve_container: Option<Union_Curve_String_ICurve>
    public mut open prop curve: Option<Union_Curve_String_ICurve>
    {
        get() {
            return curve_container
        }
        set(curve) {
            curve_container = curve
        }
    }
    private var event_container: (() -> Unit)
    public mut open prop event: (() -> Unit)
    {
        get() {
            return event_container
        }
        set(event) {
            event_container = event
        }
    }
    KeyframeState(duration: Float64, curve: Option<Union_Curve_String_ICurve>, event: (() -> Unit)) {
        this.duration_container = duration
        this.curve_container = curve
        this.event_container = event
    }
}
