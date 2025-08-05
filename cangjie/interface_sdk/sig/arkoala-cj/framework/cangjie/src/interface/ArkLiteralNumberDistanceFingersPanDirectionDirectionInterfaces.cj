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
public interface Literal_Number_distance_fingers_PanDirection_directionInterfaces <:  {
    public mut open prop fingers: Option<Float64>
    public mut open prop direction: Option<PanDirection>
    public mut open prop distance: Option<Float64>
}
public open class Literal_Number_distance_fingers_PanDirection_direction <: Literal_Number_distance_fingers_PanDirection_directionInterfaces {
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
    private var direction_container: Option<PanDirection>
    public mut open prop direction: Option<PanDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var distance_container: Option<Float64>
    public mut open prop distance: Option<Float64>
    {
        get() {
            return distance_container
        }
        set(distance) {
            distance_container = distance
        }
    }
    Literal_Number_distance_fingers_PanDirection_direction(fingers: Option<Float64>, direction: Option<PanDirection>, distance: Option<Float64>) {
        this.fingers_container = fingers
        this.direction_container = direction
        this.distance_container = distance
    }
}
