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
public interface ScrollSnapOptionsInterfaces <:  {
    public mut open prop snapAlign: ScrollSnapAlign
    public mut open prop snapPagination: Option<Union_Dimension_Array_Dimension>
    public mut open prop enableSnapToStart: Option<Bool>
    public mut open prop enableSnapToEnd: Option<Bool>
}
public open class ScrollSnapOptions <: ScrollSnapOptionsInterfaces {
    private var snapAlign_container: ScrollSnapAlign
    public mut open prop snapAlign: ScrollSnapAlign
    {
        get() {
            return snapAlign_container
        }
        set(snapAlign) {
            snapAlign_container = snapAlign
        }
    }
    private var snapPagination_container: Option<Union_Dimension_Array_Dimension>
    public mut open prop snapPagination: Option<Union_Dimension_Array_Dimension>
    {
        get() {
            return snapPagination_container
        }
        set(snapPagination) {
            snapPagination_container = snapPagination
        }
    }
    private var enableSnapToStart_container: Option<Bool>
    public mut open prop enableSnapToStart: Option<Bool>
    {
        get() {
            return enableSnapToStart_container
        }
        set(enableSnapToStart) {
            enableSnapToStart_container = enableSnapToStart
        }
    }
    private var enableSnapToEnd_container: Option<Bool>
    public mut open prop enableSnapToEnd: Option<Bool>
    {
        get() {
            return enableSnapToEnd_container
        }
        set(enableSnapToEnd) {
            enableSnapToEnd_container = enableSnapToEnd
        }
    }
    ScrollSnapOptions(snapAlign: ScrollSnapAlign, snapPagination: Option<Union_Dimension_Array_Dimension>, enableSnapToStart: Option<Bool>, enableSnapToEnd: Option<Bool>) {
        this.snapAlign_container = snapAlign
        this.snapPagination_container = snapPagination
        this.enableSnapToStart_container = enableSnapToStart
        this.enableSnapToEnd_container = enableSnapToEnd
    }
}
