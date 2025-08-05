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
public interface Literal_Boolean_next_Axis_directionInterfaces <:  {
    public mut open prop next: Bool
    public mut open prop direction: Option<Axis>
}
public open class Literal_Boolean_next_Axis_direction <: Literal_Boolean_next_Axis_directionInterfaces {
    private var next_container: Bool
    public mut open prop next: Bool
    {
        get() {
            return next_container
        }
        set(next) {
            next_container = next
        }
    }
    private var direction_container: Option<Axis>
    public mut open prop direction: Option<Axis>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    Literal_Boolean_next_Axis_direction(next: Bool, direction: Option<Axis>) {
        this.next_container = next
        this.direction_container = direction
    }
}
