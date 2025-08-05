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
public interface MaxLinesOptionsInterfaces <:  {
    public mut open prop overflowMode: Option<MaxLinesMode>
}
public open class MaxLinesOptions <: MaxLinesOptionsInterfaces {
    private var overflowMode_container: Option<MaxLinesMode>
    public mut open prop overflowMode: Option<MaxLinesMode>
    {
        get() {
            return overflowMode_container
        }
        set(overflowMode) {
            overflowMode_container = overflowMode
        }
    }
    MaxLinesOptions(overflowMode: Option<MaxLinesMode>) {
        this.overflowMode_container = overflowMode
    }
}
public open class MaxLinesOptions_serializer {
    public static func write(buffer: SerializerBase, value: MaxLinesOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOverflowMode = value.overflowMode
        if (valueHolderForOverflowMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOverflowModeTmpValue = valueHolderForOverflowMode
            valueSerializer.writeInt32(valueHolderForOverflowModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): MaxLinesOptions {
        var valueDeserializer: DeserializerBase = buffer
        let overflowModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var overflowModeTmpBuf: Option<MaxLinesMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(overflowModeTmpBuf_runtimeType))) {
            overflowModeTmpBuf = MaxLinesMode(valueDeserializer.readInt32())
        }
        let overflowModeTmpResult: Option<MaxLinesMode> = overflowModeTmpBuf
        var value: MaxLinesOptions = MaxLinesOptions(overflowModeTmpResult)
        return value
    }
}
