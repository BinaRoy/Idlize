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
public interface EmitterParticleOptionsInterfaces<PARTICLE> <:  {
    public mut open prop type_: PARTICLE
    public mut open prop config: String
    public mut open prop count: Float64
    public mut open prop lifetime: Option<Float64>
    public mut open prop lifetimeRange: Option<Float64>
}
public open class EmitterParticleOptions<PARTICLE> <: EmitterParticleOptionsInterfaces<PARTICLE> {
    private var type_container: PARTICLE
    public mut open prop type_: PARTICLE
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var config_container: String
    public mut open prop config: String
    {
        get() {
            return config_container
        }
        set(config) {
            config_container = config
        }
    }
    private var count_container: Float64
    public mut open prop count: Float64
    {
        get() {
            return count_container
        }
        set(count) {
            count_container = count
        }
    }
    private var lifetime_container: Option<Float64>
    public mut open prop lifetime: Option<Float64>
    {
        get() {
            return lifetime_container
        }
        set(lifetime) {
            lifetime_container = lifetime
        }
    }
    private var lifetimeRange_container: Option<Float64>
    public mut open prop lifetimeRange: Option<Float64>
    {
        get() {
            return lifetimeRange_container
        }
        set(lifetimeRange) {
            lifetimeRange_container = lifetimeRange
        }
    }
    EmitterParticleOptions(type_: PARTICLE, config: String, count: Float64, lifetime: Option<Float64>, lifetimeRange: Option<Float64>) {
        this.type_container = type_
        this.config_container = config
        this.count_container = count
        this.lifetime_container = lifetime
        this.lifetimeRange_container = lifetimeRange
    }
}
