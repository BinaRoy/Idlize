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
public interface OffsetResultInterfaces <:  {
    public mut open prop xOffset: Float64
    public mut open prop yOffset: Float64
}
public open class OffsetResult <: OffsetResultInterfaces {
    private var xOffset_container: Float64
    public mut open prop xOffset: Float64
    {
        get() {
            return xOffset_container
        }
        set(xOffset) {
            xOffset_container = xOffset
        }
    }
    private var yOffset_container: Float64
    public mut open prop yOffset: Float64
    {
        get() {
            return yOffset_container
        }
        set(yOffset) {
            yOffset_container = yOffset
        }
    }
    OffsetResult(xOffset: Float64, yOffset: Float64) {
        this.xOffset_container = xOffset
        this.yOffset_container = yOffset
    }
}
public open class OffsetResult_serializer {
    public static func write(buffer: SerializerBase, value: OffsetResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForXOffset = value.xOffset
        valueSerializer.writeNumber(valueHolderForXOffset);
        let valueHolderForYOffset = value.yOffset
        valueSerializer.writeNumber(valueHolderForYOffset);
    }
    public static func read(buffer: DeserializerBase): OffsetResult {
        var valueDeserializer: DeserializerBase = buffer
        let xOffsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yOffsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OffsetResult = OffsetResult(xOffsetTmpResult, yOffsetTmpResult)
        return value
    }
}
