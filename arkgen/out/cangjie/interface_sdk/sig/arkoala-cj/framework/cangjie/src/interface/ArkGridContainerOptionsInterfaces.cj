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
public interface GridContainerOptionsInterfaces <:  {
    public mut open prop columns: Option<Union_Number_String>
    public mut open prop sizeType: Option<SizeType>
    public mut open prop gutter: Option<Union_Number_String>
    public mut open prop margin: Option<Union_Number_String>
}
public open class GridContainerOptions <: GridContainerOptionsInterfaces {
    private var columns_container: Option<Union_Number_String>
    public mut open prop columns: Option<Union_Number_String>
    {
        get() {
            return columns_container
        }
        set(columns) {
            columns_container = columns
        }
    }
    private var sizeType_container: Option<SizeType>
    public mut open prop sizeType: Option<SizeType>
    {
        get() {
            return sizeType_container
        }
        set(sizeType) {
            sizeType_container = sizeType
        }
    }
    private var gutter_container: Option<Union_Number_String>
    public mut open prop gutter: Option<Union_Number_String>
    {
        get() {
            return gutter_container
        }
        set(gutter) {
            gutter_container = gutter
        }
    }
    private var margin_container: Option<Union_Number_String>
    public mut open prop margin: Option<Union_Number_String>
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    GridContainerOptions(columns: Option<Union_Number_String>, sizeType: Option<SizeType>, gutter: Option<Union_Number_String>, margin: Option<Union_Number_String>) {
        this.columns_container = columns
        this.sizeType_container = sizeType
        this.gutter_container = gutter
        this.margin_container = margin
    }
}
