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
public interface ParticlePropertyAnimationInterfaces<T> <:  {
    public mut open prop from_: T
    public mut open prop to: T
    public mut open prop startMillis: Float64
    public mut open prop endMillis: Float64
    public mut open prop curve: Option<Union_Curve_ICurve>
}
public open class ParticlePropertyAnimation<T> <: ParticlePropertyAnimationInterfaces<T> {
    private var from_container: T
    public mut open prop from_: T
    {
        get() {
            return from_container
        }
        set(from_) {
            from_container = from_
        }
    }
    private var to_container: T
    public mut open prop to: T
    {
        get() {
            return to_container
        }
        set(to) {
            to_container = to
        }
    }
    private var startMillis_container: Float64
    public mut open prop startMillis: Float64
    {
        get() {
            return startMillis_container
        }
        set(startMillis) {
            startMillis_container = startMillis
        }
    }
    private var endMillis_container: Float64
    public mut open prop endMillis: Float64
    {
        get() {
            return endMillis_container
        }
        set(endMillis) {
            endMillis_container = endMillis
        }
    }
    private var curve_container: Option<Union_Curve_ICurve>
    public mut open prop curve: Option<Union_Curve_ICurve>
    {
        get() {
            return curve_container
        }
        set(curve) {
            curve_container = curve
        }
    }
    ParticlePropertyAnimation(from_: T, to: T, startMillis: Float64, endMillis: Float64, curve: Option<Union_Curve_ICurve>) {
        this.from_container = from_
        this.to_container = to
        this.startMillis_container = startMillis
        this.endMillis_container = endMillis
        this.curve_container = curve
    }
}
