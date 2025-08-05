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
public interface DataDeleteOperationInterfaces <:  {
    public mut open prop type_: DataOperationType
    public mut open prop index: Float64
    public mut open prop count: Option<Float64>
}
public open class DataDeleteOperation <: DataDeleteOperationInterfaces {
    private var type_container: DataOperationType
    public mut open prop type_: DataOperationType
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var index_container: Float64
    public mut open prop index: Float64
    {
        get() {
            return index_container
        }
        set(index) {
            index_container = index
        }
    }
    private var count_container: Option<Float64>
    public mut open prop count: Option<Float64>
    {
        get() {
            return count_container
        }
        set(count) {
            count_container = count
        }
    }
    DataDeleteOperation(type_: DataOperationType, index: Float64, count: Option<Float64>) {
        this.type_container = type_
        this.index_container = index
        this.count_container = count
    }
}
