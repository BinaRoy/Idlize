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
public interface VisibleAreaEventOptionsInterfaces <:  {
    public mut open prop ratios: ArrayList<Float64>
    public mut open prop expectedUpdateInterval: Option<Float64>
}
public open class VisibleAreaEventOptions <: VisibleAreaEventOptionsInterfaces {
    private var ratios_container: ArrayList<Float64>
    public mut open prop ratios: ArrayList<Float64>
    {
        get() {
            return ratios_container
        }
        set(ratios) {
            ratios_container = ratios
        }
    }
    private var expectedUpdateInterval_container: Option<Float64>
    public mut open prop expectedUpdateInterval: Option<Float64>
    {
        get() {
            return expectedUpdateInterval_container
        }
        set(expectedUpdateInterval) {
            expectedUpdateInterval_container = expectedUpdateInterval
        }
    }
    VisibleAreaEventOptions(ratios: ArrayList<Float64>, expectedUpdateInterval: Option<Float64>) {
        this.ratios_container = ratios
        this.expectedUpdateInterval_container = expectedUpdateInterval
    }
}
public open class VisibleAreaEventOptions_serializer {
    public static func write(buffer: SerializerBase, value: VisibleAreaEventOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRatios = value.ratios
        valueSerializer.writeInt32(Int32(valueHolderForRatios.size));
        for (valueHolderForRatiosCounterI in 0..valueHolderForRatios.size) {
            let valueHolderForRatiosTmpElement: Float64 = valueHolderForRatios[Int64(valueHolderForRatiosCounterI)]
            valueSerializer.writeNumber(valueHolderForRatiosTmpElement);
        }
        let valueHolderForExpectedUpdateInterval = value.expectedUpdateInterval
        if (valueHolderForExpectedUpdateInterval.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForExpectedUpdateIntervalTmpValue = valueHolderForExpectedUpdateInterval
            valueSerializer.writeNumber(valueHolderForExpectedUpdateIntervalTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): VisibleAreaEventOptions {
        var valueDeserializer: DeserializerBase = buffer
        let ratiosTmpBufLength: Int32 = valueDeserializer.readInt32()
        var ratiosTmpBuf: ArrayList<Float64> = ArrayList<Float64>(Int64(ratiosTmpBufLength))
        ratiosTmpBuf = ArrayList<Float64>(Int64(ratiosTmpBufLength))
        for (ratiosTmpBufBufCounterI in 0..ratiosTmpBufLength) {
            ratiosTmpBuf[Int64(ratiosTmpBufBufCounterI)] = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let ratiosTmpResult: ArrayList<Float64> = ratiosTmpBuf
        let expectedUpdateIntervalTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var expectedUpdateIntervalTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(expectedUpdateIntervalTmpBuf_runtimeType))) {
            expectedUpdateIntervalTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let expectedUpdateIntervalTmpResult: Option<Float64> = expectedUpdateIntervalTmpBuf
        var value: VisibleAreaEventOptions = VisibleAreaEventOptions(ratiosTmpResult, expectedUpdateIntervalTmpResult)
        return value
    }
}
