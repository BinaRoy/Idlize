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
public interface ListOptionsInterfaces <:  {
    public mut open prop initialIndex: Option<Float64>
    public mut open prop space: Option<Union_Number_String>
    public mut open prop scroller: Option<Scroller>
}
public open class ListOptions <: ListOptionsInterfaces {
    private var initialIndex_container: Option<Float64>
    public mut open prop initialIndex: Option<Float64>
    {
        get() {
            return initialIndex_container
        }
        set(initialIndex) {
            initialIndex_container = initialIndex
        }
    }
    private var space_container: Option<Union_Number_String>
    public mut open prop space: Option<Union_Number_String>
    {
        get() {
            return space_container
        }
        set(space) {
            space_container = space
        }
    }
    private var scroller_container: Option<Scroller>
    public mut open prop scroller: Option<Scroller>
    {
        get() {
            return scroller_container
        }
        set(scroller) {
            scroller_container = scroller
        }
    }
    ListOptions(initialIndex: Option<Float64>, space: Option<Union_Number_String>, scroller: Option<Scroller>) {
        this.initialIndex_container = initialIndex
        this.space_container = space
        this.scroller_container = scroller
    }
}
