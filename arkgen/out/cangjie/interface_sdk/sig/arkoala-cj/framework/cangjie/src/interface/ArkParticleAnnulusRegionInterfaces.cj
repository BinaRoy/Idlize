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
public interface ParticleAnnulusRegionInterfaces <:  {
    public mut open prop center: Option<PositionT<LengthMetrics>>
    public mut open prop outerRadius: LengthMetrics
    public mut open prop innerRadius: LengthMetrics
    public mut open prop startAngle: Option<Float64>
    public mut open prop endAngle: Option<Float64>
}
public open class ParticleAnnulusRegion <: ParticleAnnulusRegionInterfaces {
    private var center_container: Option<PositionT<LengthMetrics>>
    public mut open prop center: Option<PositionT<LengthMetrics>>
    {
        get() {
            return center_container
        }
        set(center) {
            center_container = center
        }
    }
    private var outerRadius_container: LengthMetrics
    public mut open prop outerRadius: LengthMetrics
    {
        get() {
            return outerRadius_container
        }
        set(outerRadius) {
            outerRadius_container = outerRadius
        }
    }
    private var innerRadius_container: LengthMetrics
    public mut open prop innerRadius: LengthMetrics
    {
        get() {
            return innerRadius_container
        }
        set(innerRadius) {
            innerRadius_container = innerRadius
        }
    }
    private var startAngle_container: Option<Float64>
    public mut open prop startAngle: Option<Float64>
    {
        get() {
            return startAngle_container
        }
        set(startAngle) {
            startAngle_container = startAngle
        }
    }
    private var endAngle_container: Option<Float64>
    public mut open prop endAngle: Option<Float64>
    {
        get() {
            return endAngle_container
        }
        set(endAngle) {
            endAngle_container = endAngle
        }
    }
    ParticleAnnulusRegion(center: Option<PositionT<LengthMetrics>>, outerRadius: LengthMetrics, innerRadius: LengthMetrics, startAngle: Option<Float64>, endAngle: Option<Float64>) {
        this.center_container = center
        this.outerRadius_container = outerRadius
        this.innerRadius_container = innerRadius
        this.startAngle_container = startAngle
        this.endAngle_container = endAngle
    }
}
