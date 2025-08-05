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
public interface DataMoveOperationInterfaces <:  {
    public mut open prop type_: DataOperationType
    public mut open prop index: MoveIndex
    public mut open prop key: Option<String>
}
public open class DataMoveOperation <: DataMoveOperationInterfaces {
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
    private var index_container: MoveIndex
    public mut open prop index: MoveIndex
    {
        get() {
            return index_container
        }
        set(index) {
            index_container = index
        }
    }
    private var key_container: Option<String>
    public mut open prop key: Option<String>
    {
        get() {
            return key_container
        }
        set(key) {
            key_container = key
        }
    }
    DataMoveOperation(type_: DataOperationType, index: MoveIndex, key: Option<String>) {
        this.type_container = type_
        this.index_container = index
        this.key_container = key
    }
}
