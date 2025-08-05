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
public interface ImageErrorInterfaces <:  {
    public mut open prop componentWidth: Float64
    public mut open prop componentHeight: Float64
    public mut open prop message: String
    public mut open prop error: Option<BusinessError>
}
public open class ImageError <: ImageErrorInterfaces {
    private var componentWidth_container: Float64
    public mut open prop componentWidth: Float64
    {
        get() {
            return componentWidth_container
        }
        set(componentWidth) {
            componentWidth_container = componentWidth
        }
    }
    private var componentHeight_container: Float64
    public mut open prop componentHeight: Float64
    {
        get() {
            return componentHeight_container
        }
        set(componentHeight) {
            componentHeight_container = componentHeight
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
    private var error_container: Option<BusinessError>
    public mut open prop error: Option<BusinessError>
    {
        get() {
            return error_container
        }
        set(error) {
            error_container = error
        }
    }
    ImageError(componentWidth: Float64, componentHeight: Float64, message: String, error: Option<BusinessError>) {
        this.componentWidth_container = componentWidth
        this.componentHeight_container = componentHeight
        this.message_container = message
        this.error_container = error
    }
}
public open class ImageError_serializer {
    public static func write(buffer: SerializerBase, value: ImageError): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForComponentWidth = value.componentWidth
        valueSerializer.writeNumber(valueHolderForComponentWidth);
        let valueHolderForComponentHeight = value.componentHeight
        valueSerializer.writeNumber(valueHolderForComponentHeight);
        let valueHolderForMessage = value.message
        valueSerializer.writeString(valueHolderForMessage);
        let valueHolderForError = value.error
        if (valueHolderForError.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForErrorTmpValue = valueHolderForError
            valueSerializer.writeCustomObject("Any", valueHolderForErrorTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ImageError {
        var valueDeserializer: DeserializerBase = buffer
        let componentWidthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let componentHeightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let messageTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let errorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var errorTmpBuf: Option<BusinessError> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(errorTmpBuf_runtimeType))) {
            errorTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let errorTmpResult: Option<BusinessError> = errorTmpBuf
        var value: ImageError = ImageError(componentWidthTmpResult, componentHeightTmpResult, messageTmpResult, errorTmpResult)
        return value
    }
}
