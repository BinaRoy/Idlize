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
public interface ComputedBarAttributeInterfaces <:  {
    public mut open prop totalOffset: Float64
    public mut open prop totalLength: Float64
}
public open class ComputedBarAttribute <: ComputedBarAttributeInterfaces {
    private var totalOffset_container: Float64
    public mut open prop totalOffset: Float64
    {
        get() {
            return totalOffset_container
        }
        set(totalOffset) {
            totalOffset_container = totalOffset
        }
    }
    private var totalLength_container: Float64
    public mut open prop totalLength: Float64
    {
        get() {
            return totalLength_container
        }
        set(totalLength) {
            totalLength_container = totalLength
        }
    }
    ComputedBarAttribute(totalOffset: Float64, totalLength: Float64) {
        this.totalOffset_container = totalOffset
        this.totalLength_container = totalLength
    }
}
public open class ComputedBarAttribute_serializer {
    public static func write(buffer: SerializerBase, value: ComputedBarAttribute): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTotalOffset = value.totalOffset
        valueSerializer.writeNumber(valueHolderForTotalOffset);
        let valueHolderForTotalLength = value.totalLength
        valueSerializer.writeNumber(valueHolderForTotalLength);
    }
    public static func read(buffer: DeserializerBase): ComputedBarAttribute {
        var valueDeserializer: DeserializerBase = buffer
        let totalOffsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let totalLengthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: ComputedBarAttribute = ComputedBarAttribute(totalOffsetTmpResult, totalLengthTmpResult)
        return value
    }
}
