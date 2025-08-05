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
public interface TransitionEffectsInterfaces <:  {
    public mut open prop identity: Unit
    public mut open prop opacity: Float64
    public mut open prop slideSwitch: Unit
    public mut open prop move: TransitionEdge
    public mut open prop translate: TranslateOptions
    public mut open prop rotate: RotateOptions
    public mut open prop scale: ScaleOptions
    public mut open prop asymmetric: Literal_TransitionEffect_appear_disappear
}
public open class TransitionEffects <: TransitionEffectsInterfaces {
    private var identity_container: Unit
    public mut open prop identity: Unit
    {
        get() {
            return identity_container
        }
        set(identity) {
            identity_container = identity
        }
    }
    private var opacity_container: Float64
    public mut open prop opacity: Float64
    {
        get() {
            return opacity_container
        }
        set(opacity) {
            opacity_container = opacity
        }
    }
    private var slideSwitch_container: Unit
    public mut open prop slideSwitch: Unit
    {
        get() {
            return slideSwitch_container
        }
        set(slideSwitch) {
            slideSwitch_container = slideSwitch
        }
    }
    private var move_container: TransitionEdge
    public mut open prop move: TransitionEdge
    {
        get() {
            return move_container
        }
        set(move) {
            move_container = move
        }
    }
    private var translate_container: TranslateOptions
    public mut open prop translate: TranslateOptions
    {
        get() {
            return translate_container
        }
        set(translate) {
            translate_container = translate
        }
    }
    private var rotate_container: RotateOptions
    public mut open prop rotate: RotateOptions
    {
        get() {
            return rotate_container
        }
        set(rotate) {
            rotate_container = rotate
        }
    }
    private var scale_container: ScaleOptions
    public mut open prop scale: ScaleOptions
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var asymmetric_container: Literal_TransitionEffect_appear_disappear
    public mut open prop asymmetric: Literal_TransitionEffect_appear_disappear
    {
        get() {
            return asymmetric_container
        }
        set(asymmetric) {
            asymmetric_container = asymmetric
        }
    }
    TransitionEffects(identity: Unit, opacity: Float64, slideSwitch: Unit, move: TransitionEdge, translate: TranslateOptions, rotate: RotateOptions, scale: ScaleOptions, asymmetric: Literal_TransitionEffect_appear_disappear) {
        this.identity_container = identity
        this.opacity_container = opacity
        this.slideSwitch_container = slideSwitch
        this.move_container = move
        this.translate_container = translate
        this.rotate_container = rotate
        this.scale_container = scale
        this.asymmetric_container = asymmetric
    }
}
