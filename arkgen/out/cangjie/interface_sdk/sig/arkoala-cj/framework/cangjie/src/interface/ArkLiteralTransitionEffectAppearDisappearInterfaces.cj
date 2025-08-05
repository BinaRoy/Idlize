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
public interface Literal_TransitionEffect_appear_disappearInterfaces <:  {
    public mut open prop appear: TransitionEffect
    public mut open prop disappear: TransitionEffect
}
public open class Literal_TransitionEffect_appear_disappear <: Literal_TransitionEffect_appear_disappearInterfaces {
    private var appear_container: TransitionEffect
    public mut open prop appear: TransitionEffect
    {
        get() {
            return appear_container
        }
        set(appear) {
            appear_container = appear
        }
    }
    private var disappear_container: TransitionEffect
    public mut open prop disappear: TransitionEffect
    {
        get() {
            return disappear_container
        }
        set(disappear) {
            disappear_container = disappear
        }
    }
    Literal_TransitionEffect_appear_disappear(appear: TransitionEffect, disappear: TransitionEffect) {
        this.appear_container = appear
        this.disappear_container = disappear
    }
}
