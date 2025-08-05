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
public interface ParticleColorOptionsInterfaces <:  {
    public mut open prop r: ParticleTuple<Float64, Float64>
    public mut open prop g: ParticleTuple<Float64, Float64>
    public mut open prop b: ParticleTuple<Float64, Float64>
    public mut open prop a: ParticleTuple<Float64, Float64>
}
public open class ParticleColorOptions <: ParticleColorOptionsInterfaces {
    private var r_container: ParticleTuple<Float64, Float64>
    public mut open prop r: ParticleTuple<Float64, Float64>
    {
        get() {
            return r_container
        }
        set(r) {
            r_container = r
        }
    }
    private var g_container: ParticleTuple<Float64, Float64>
    public mut open prop g: ParticleTuple<Float64, Float64>
    {
        get() {
            return g_container
        }
        set(g) {
            g_container = g
        }
    }
    private var b_container: ParticleTuple<Float64, Float64>
    public mut open prop b: ParticleTuple<Float64, Float64>
    {
        get() {
            return b_container
        }
        set(b) {
            b_container = b
        }
    }
    private var a_container: ParticleTuple<Float64, Float64>
    public mut open prop a: ParticleTuple<Float64, Float64>
    {
        get() {
            return a_container
        }
        set(a) {
            a_container = a
        }
    }
    ParticleColorOptions(r: ParticleTuple<Float64, Float64>, g: ParticleTuple<Float64, Float64>, b: ParticleTuple<Float64, Float64>, a: ParticleTuple<Float64, Float64>) {
        this.r_container = r
        this.g_container = g
        this.b_container = b
        this.a_container = a
    }
}
