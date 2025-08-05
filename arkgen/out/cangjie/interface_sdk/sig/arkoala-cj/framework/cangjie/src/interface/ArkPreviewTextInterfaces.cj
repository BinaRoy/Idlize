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
public interface PreviewTextInterfaces <:  {
    public mut open prop offset: Float64
    public mut open prop value: String
}
public open class PreviewText <: PreviewTextInterfaces {
    private var offset_container: Float64
    public mut open prop offset: Float64
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    private var value_container: String
    public mut open prop value: String
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    PreviewText(offset: Float64, value: String) {
        this.offset_container = offset
        this.value_container = value
    }
}
public open class PreviewText_serializer {
    public static func write(buffer: SerializerBase, value: PreviewText): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffset = value.offset
        valueSerializer.writeNumber(valueHolderForOffset);
        let valueHolderForValue = value.value
        valueSerializer.writeString(valueHolderForValue);
    }
    public static func read(buffer: DeserializerBase): PreviewText {
        var valueDeserializer: DeserializerBase = buffer
        let offsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let valueTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: PreviewText = PreviewText(offsetTmpResult, valueTmpResult)
        return value
    }
}
