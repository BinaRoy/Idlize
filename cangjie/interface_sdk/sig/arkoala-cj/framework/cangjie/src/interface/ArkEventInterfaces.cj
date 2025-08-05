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
public interface EventInterfaces <:  {
    public open prop type_: String
    public open prop timeStamp: Int64
}
public open class Event <: EventInterfaces {
    private var type_container: String
    public open prop type_: String
    {
        get() {
            return type_container
        }
    }
    private var timeStamp_container: Int64
    public open prop timeStamp: Int64
    {
        get() {
            return timeStamp_container
        }
    }
    Event(type_: String, timeStamp: Int64) {
        this.type_container = type_
        this.timeStamp_container = timeStamp
    }
}
public open class Event_serializer {
    public static func write(buffer: SerializerBase, value: Event): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        valueSerializer.writeString(valueHolderForType);
        let valueHolderForTimeStamp = value.timeStamp
        valueSerializer.writeInt64(valueHolderForTimeStamp);
    }
    public static func read(buffer: DeserializerBase): Event {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let timeStampTmpResult: Int64 = valueDeserializer.readInt64()
        var value: Event = Event(typeTmpResult, timeStampTmpResult)
        return value
    }
}
