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
public interface GridLayoutOptionsInterfaces <:  {
    public mut open prop regularSize: Tuple_Number_Number
    public mut open prop irregularIndexes: Option<ArrayList<Float64>>
    public mut open prop onGetIrregularSizeByIndex: Option<((index: Float64) -> Tuple_Number_Number)>
    public mut open prop onGetRectByIndex: Option<((index: Float64) -> Tuple_Number_Number_Number_Number)>
}
public open class GridLayoutOptions <: GridLayoutOptionsInterfaces {
    private var regularSize_container: Tuple_Number_Number
    public mut open prop regularSize: Tuple_Number_Number
    {
        get() {
            return regularSize_container
        }
        set(regularSize) {
            regularSize_container = regularSize
        }
    }
    private var irregularIndexes_container: Option<ArrayList<Float64>>
    public mut open prop irregularIndexes: Option<ArrayList<Float64>>
    {
        get() {
            return irregularIndexes_container
        }
        set(irregularIndexes) {
            irregularIndexes_container = irregularIndexes
        }
    }
    private var onGetIrregularSizeByIndex_container: Option<((index: Float64) -> Tuple_Number_Number)>
    public mut open prop onGetIrregularSizeByIndex: Option<((index: Float64) -> Tuple_Number_Number)>
    {
        get() {
            return onGetIrregularSizeByIndex_container
        }
        set(onGetIrregularSizeByIndex) {
            onGetIrregularSizeByIndex_container = onGetIrregularSizeByIndex
        }
    }
    private var onGetRectByIndex_container: Option<((index: Float64) -> Tuple_Number_Number_Number_Number)>
    public mut open prop onGetRectByIndex: Option<((index: Float64) -> Tuple_Number_Number_Number_Number)>
    {
        get() {
            return onGetRectByIndex_container
        }
        set(onGetRectByIndex) {
            onGetRectByIndex_container = onGetRectByIndex
        }
    }
    GridLayoutOptions(regularSize: Tuple_Number_Number, irregularIndexes: Option<ArrayList<Float64>>, onGetIrregularSizeByIndex: Option<((index: Float64) -> Tuple_Number_Number)>, onGetRectByIndex: Option<((index: Float64) -> Tuple_Number_Number_Number_Number)>) {
        this.regularSize_container = regularSize
        this.irregularIndexes_container = irregularIndexes
        this.onGetIrregularSizeByIndex_container = onGetIrregularSizeByIndex
        this.onGetRectByIndex_container = onGetRectByIndex
    }
}
