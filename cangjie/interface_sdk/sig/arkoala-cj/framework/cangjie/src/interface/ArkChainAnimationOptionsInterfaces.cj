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
public interface ChainAnimationOptionsInterfaces <:  {
    public mut open prop minSpace: Length
    public mut open prop maxSpace: Length
    public mut open prop conductivity: Option<Float64>
    public mut open prop intensity: Option<Float64>
    public mut open prop edgeEffect: Option<ChainEdgeEffect>
    public mut open prop stiffness: Option<Float64>
    public mut open prop damping: Option<Float64>
}
public open class ChainAnimationOptions <: ChainAnimationOptionsInterfaces {
    private var minSpace_container: Length
    public mut open prop minSpace: Length
    {
        get() {
            return minSpace_container
        }
        set(minSpace) {
            minSpace_container = minSpace
        }
    }
    private var maxSpace_container: Length
    public mut open prop maxSpace: Length
    {
        get() {
            return maxSpace_container
        }
        set(maxSpace) {
            maxSpace_container = maxSpace
        }
    }
    private var conductivity_container: Option<Float64>
    public mut open prop conductivity: Option<Float64>
    {
        get() {
            return conductivity_container
        }
        set(conductivity) {
            conductivity_container = conductivity
        }
    }
    private var intensity_container: Option<Float64>
    public mut open prop intensity: Option<Float64>
    {
        get() {
            return intensity_container
        }
        set(intensity) {
            intensity_container = intensity
        }
    }
    private var edgeEffect_container: Option<ChainEdgeEffect>
    public mut open prop edgeEffect: Option<ChainEdgeEffect>
    {
        get() {
            return edgeEffect_container
        }
        set(edgeEffect) {
            edgeEffect_container = edgeEffect
        }
    }
    private var stiffness_container: Option<Float64>
    public mut open prop stiffness: Option<Float64>
    {
        get() {
            return stiffness_container
        }
        set(stiffness) {
            stiffness_container = stiffness
        }
    }
    private var damping_container: Option<Float64>
    public mut open prop damping: Option<Float64>
    {
        get() {
            return damping_container
        }
        set(damping) {
            damping_container = damping
        }
    }
    ChainAnimationOptions(minSpace: Length, maxSpace: Length, conductivity: Option<Float64>, intensity: Option<Float64>, edgeEffect: Option<ChainEdgeEffect>, stiffness: Option<Float64>, damping: Option<Float64>) {
        this.minSpace_container = minSpace
        this.maxSpace_container = maxSpace
        this.conductivity_container = conductivity
        this.intensity_container = intensity
        this.edgeEffect_container = edgeEffect
        this.stiffness_container = stiffness
        this.damping_container = damping
    }
}
