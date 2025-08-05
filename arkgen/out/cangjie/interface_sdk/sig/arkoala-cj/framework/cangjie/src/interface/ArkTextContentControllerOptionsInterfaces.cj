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
public interface TextContentControllerOptionsInterfaces <:  {
    public mut open prop offset: Option<Float64>
}
public open class TextContentControllerOptions <: TextContentControllerOptionsInterfaces {
    private var offset_container: Option<Float64>
    public mut open prop offset: Option<Float64>
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    TextContentControllerOptions(offset: Option<Float64>) {
        this.offset_container = offset
    }
}
public open class TextContentControllerOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextContentControllerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            valueSerializer.writeNumber(valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextContentControllerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetTmpResult: Option<Float64> = offsetTmpBuf
        var value: TextContentControllerOptions = TextContentControllerOptions(offsetTmpResult)
        return value
    }
}
