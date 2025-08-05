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
public interface EventTargetInterfaces <:  {
    public mut open prop area: Area
    public mut open prop id: Option<String>
}
public open class EventTarget <: EventTargetInterfaces {
    private var area_container: Area
    public mut open prop area: Area
    {
        get() {
            return area_container
        }
        set(area) {
            area_container = area
        }
    }
    private var id_container: Option<String>
    public mut open prop id: Option<String>
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    EventTarget(area: Area, id: Option<String>) {
        this.area_container = area
        this.id_container = id
    }
}
public open class EventTarget_serializer {
    public static func write(buffer: SerializerBase, value: EventTarget): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForArea = value.area
        Area_serializer.write(valueSerializer, valueHolderForArea);
        let valueHolderForId = value.id
        if (valueHolderForId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIdTmpValue = valueHolderForId
            valueSerializer.writeString(valueHolderForIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): EventTarget {
        var valueDeserializer: DeserializerBase = buffer
        let areaTmpResult: Area = Area_serializer.read(valueDeserializer)
        let idTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var idTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(idTmpBuf_runtimeType))) {
            idTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let idTmpResult: Option<String> = idTmpBuf
        var value: EventTarget = EventTarget(areaTmpResult, idTmpResult)
        return value
    }
}
