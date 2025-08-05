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
public interface OnScaleChangeEventInterfaces <:  {
    public mut open prop oldScale: Float64
    public mut open prop newScale: Float64
}
public open class OnScaleChangeEvent <: OnScaleChangeEventInterfaces {
    private var oldScale_container: Float64
    public mut open prop oldScale: Float64
    {
        get() {
            return oldScale_container
        }
        set(oldScale) {
            oldScale_container = oldScale
        }
    }
    private var newScale_container: Float64
    public mut open prop newScale: Float64
    {
        get() {
            return newScale_container
        }
        set(newScale) {
            newScale_container = newScale
        }
    }
    OnScaleChangeEvent(oldScale: Float64, newScale: Float64) {
        this.oldScale_container = oldScale
        this.newScale_container = newScale
    }
}
public open class OnScaleChangeEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnScaleChangeEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOldScale = value.oldScale
        valueSerializer.writeFloat64(valueHolderForOldScale);
        let valueHolderForNewScale = value.newScale
        valueSerializer.writeFloat64(valueHolderForNewScale);
    }
    public static func read(buffer: DeserializerBase): OnScaleChangeEvent {
        var valueDeserializer: DeserializerBase = buffer
        let oldScaleTmpResult: Float64 = valueDeserializer.readFloat64()
        let newScaleTmpResult: Float64 = valueDeserializer.readFloat64()
        var value: OnScaleChangeEvent = OnScaleChangeEvent(oldScaleTmpResult, newScaleTmpResult)
        return value
    }
}
