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
public interface ErrorEventInterfaces <: EventInterfaces {
    public open prop message: String
    public open prop filename: String
    public open prop lineno: Float64
    public open prop colno: Float64
    public open prop error: Any
}
public open class ErrorEvent <: ErrorEventInterfaces {
    private var message_container: String
    public open prop message: String
    {
        get() {
            return message_container
        }
    }
    private var filename_container: String
    public open prop filename: String
    {
        get() {
            return filename_container
        }
    }
    private var lineno_container: Float64
    public open prop lineno: Float64
    {
        get() {
            return lineno_container
        }
    }
    private var colno_container: Float64
    public open prop colno: Float64
    {
        get() {
            return colno_container
        }
    }
    private var error_container: Any
    public open prop error: Any
    {
        get() {
            return error_container
        }
    }
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
    ErrorEvent(message: String, filename: String, lineno: Float64, colno: Float64, error: Any, type_: String, timeStamp: Int64) {
        this.message_container = message
        this.filename_container = filename
        this.lineno_container = lineno
        this.colno_container = colno
        this.error_container = error
        this.type_container = type_
        this.timeStamp_container = timeStamp
    }
}
public open class ErrorEvent_serializer {
    public static func write(buffer: SerializerBase, value: ErrorEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        valueSerializer.writeString(valueHolderForType);
        let valueHolderForTimeStamp = value.timeStamp
        valueSerializer.writeInt64(valueHolderForTimeStamp);
        let valueHolderForMessage = value.message
        valueSerializer.writeString(valueHolderForMessage);
        let valueHolderForFilename = value.filename
        valueSerializer.writeString(valueHolderForFilename);
        let valueHolderForLineno = value.lineno
        valueSerializer.writeNumber(valueHolderForLineno);
        let valueHolderForColno = value.colno
        valueSerializer.writeNumber(valueHolderForColno);
        let valueHolderForError = value.error
        valueSerializer.holdAndWriteObject(valueHolderForError);
    }
    public static func read(buffer: DeserializerBase): ErrorEvent {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let timeStampTmpResult: Int64 = valueDeserializer.readInt64()
        let messageTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let filenameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let linenoTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let colnoTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let errorTmpResult: Any = match (valueDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: ErrorEvent = ErrorEvent(messageTmpResult, filenameTmpResult, linenoTmpResult, colnoTmpResult, errorTmpResult, typeTmpResult, timeStampTmpResult)
        return value
    }
}
