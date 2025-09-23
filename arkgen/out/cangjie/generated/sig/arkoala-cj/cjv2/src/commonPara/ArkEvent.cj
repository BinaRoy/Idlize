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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public open class Event {
    public var type_: String
    public var timeStamp: Option<Int64>
    init(type_: String, timeStamp: Option<Int64>) {
        this.type_ = type_
        this.timeStamp = timeStamp
    }
}
public class Event_serializer {
    public  static func write(buffer: SerializerBase, value: Event): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        valueSerializer.writeString(valueHolderForType)
        let valueHolderForTimeStamp = value.timeStamp
        if (let Some(valueHolderForTimeStamp) <- valueHolderForTimeStamp) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTimeStampTmpValue = valueHolderForTimeStamp
            valueSerializer.writeInt64(valueHolderForTimeStampTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): Event {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let timeStampTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var timeStampTmpBuf: Option<Int64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(timeStampTmpBuf_runtimeType))) {
            timeStampTmpBuf = valueDeserializer.readInt64()
        }
        let timeStampTmpResult: Option<Int64> = timeStampTmpBuf
        var value: Event = Event(typeTmpResult, timeStampTmpResult)
        return value
    }
}
