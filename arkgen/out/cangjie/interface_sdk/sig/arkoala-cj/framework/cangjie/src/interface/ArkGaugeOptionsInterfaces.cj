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
public interface GaugeOptionsInterfaces <:  {
    public mut open prop value: Float64
    public mut open prop min: Option<Float64>
    public mut open prop max: Option<Float64>
}
public open class GaugeOptions <: GaugeOptionsInterfaces {
    private var value_container: Float64
    public mut open prop value: Float64
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var min_container: Option<Float64>
    public mut open prop min: Option<Float64>
    {
        get() {
            return min_container
        }
        set(min) {
            min_container = min
        }
    }
    private var max_container: Option<Float64>
    public mut open prop max: Option<Float64>
    {
        get() {
            return max_container
        }
        set(max) {
            max_container = max
        }
    }
    GaugeOptions(value: Float64, min: Option<Float64>, max: Option<Float64>) {
        this.value_container = value
        this.min_container = min
        this.max_container = max
    }
}
public open class GaugeOptions_serializer {
    public static func write(buffer: SerializerBase, value: GaugeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValue = value.value
        valueSerializer.writeNumber(valueHolderForValue);
        let valueHolderForMin = value.min
        if (valueHolderForMin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMinTmpValue = valueHolderForMin
            valueSerializer.writeNumber(valueHolderForMinTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMax = value.max
        if (valueHolderForMax.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxTmpValue = valueHolderForMax
            valueSerializer.writeNumber(valueHolderForMaxTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GaugeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let minTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var minTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(minTmpBuf_runtimeType))) {
            minTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let minTmpResult: Option<Float64> = minTmpBuf
        let maxTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxTmpBuf_runtimeType))) {
            maxTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxTmpResult: Option<Float64> = maxTmpBuf
        var value: GaugeOptions = GaugeOptions(valueTmpResult, minTmpResult, maxTmpResult)
        return value
    }
}
