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
public interface BusinessErrorInterfaces <:  {
    public mut open prop name: String
    public mut open prop message: String
    public mut open prop stack: Option<String>
    public mut open prop code: Float64
}
public open class BusinessError <: BusinessErrorInterfaces {
    private var name_container: String
    public mut open prop name: String
    {
        get() {
            return name_container
        }
        set(name) {
            name_container = name
        }
    }
    private var message_container: String
    public mut open prop message: String
    {
        get() {
            return message_container
        }
        set(message) {
            message_container = message
        }
    }
    private var stack_container: Option<String>
    public mut open prop stack: Option<String>
    {
        get() {
            return stack_container
        }
        set(stack) {
            stack_container = stack
        }
    }
    private var code_container: Float64
    public mut open prop code: Float64
    {
        get() {
            return code_container
        }
        set(code) {
            code_container = code
        }
    }
    BusinessError(name: String, message: String, stack: Option<String>, code: Float64) {
        this.name_container = name
        this.message_container = message
        this.stack_container = stack
        this.code_container = code
    }
}
public open class BusinessError_serializer {
    public static func write(buffer: SerializerBase, value: BusinessError): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForName = value.name
        valueSerializer.writeString(valueHolderForName);
        let valueHolderForMessage = value.message
        valueSerializer.writeString(valueHolderForMessage);
        let valueHolderForStack = value.stack
        if (valueHolderForStack.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStackTmpValue = valueHolderForStack
            valueSerializer.writeString(valueHolderForStackTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCode = value.code
        valueSerializer.writeNumber(valueHolderForCode);
    }
    public static func read(buffer: DeserializerBase): BusinessError {
        var valueDeserializer: DeserializerBase = buffer
        let nameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let messageTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let stackTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var stackTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(stackTmpBuf_runtimeType))) {
            stackTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let stackTmpResult: Option<String> = stackTmpBuf
        let codeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: BusinessError = BusinessError(nameTmpResult, messageTmpResult, stackTmpResult, codeTmpResult)
        return value
    }
}
