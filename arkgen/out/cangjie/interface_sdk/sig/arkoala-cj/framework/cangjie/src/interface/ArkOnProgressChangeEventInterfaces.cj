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
public interface OnProgressChangeEventInterfaces <:  {
    public mut open prop newProgress: Int32
}
public open class OnProgressChangeEvent <: OnProgressChangeEventInterfaces {
    private var newProgress_container: Int32
    public mut open prop newProgress: Int32
    {
        get() {
            return newProgress_container
        }
        set(newProgress) {
            newProgress_container = newProgress
        }
    }
    OnProgressChangeEvent(newProgress: Int32) {
        this.newProgress_container = newProgress
    }
}
public open class OnProgressChangeEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnProgressChangeEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForNewProgress = value.newProgress
        valueSerializer.writeInt32(valueHolderForNewProgress);
    }
    public static func read(buffer: DeserializerBase): OnProgressChangeEvent {
        var valueDeserializer: DeserializerBase = buffer
        let newProgressTmpResult: Int32 = valueDeserializer.readInt32()
        var value: OnProgressChangeEvent = OnProgressChangeEvent(newProgressTmpResult)
        return value
    }
}
