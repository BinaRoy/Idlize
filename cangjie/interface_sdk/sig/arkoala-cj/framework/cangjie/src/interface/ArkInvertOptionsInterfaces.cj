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
public interface InvertOptionsInterfaces <:  {
    public mut open prop low: Float64
    public mut open prop high: Float64
    public mut open prop threshold: Float64
    public mut open prop thresholdRange: Float64
}
public open class InvertOptions <: InvertOptionsInterfaces {
    private var low_container: Float64
    public mut open prop low: Float64
    {
        get() {
            return low_container
        }
        set(low) {
            low_container = low
        }
    }
    private var high_container: Float64
    public mut open prop high: Float64
    {
        get() {
            return high_container
        }
        set(high) {
            high_container = high
        }
    }
    private var threshold_container: Float64
    public mut open prop threshold: Float64
    {
        get() {
            return threshold_container
        }
        set(threshold) {
            threshold_container = threshold
        }
    }
    private var thresholdRange_container: Float64
    public mut open prop thresholdRange: Float64
    {
        get() {
            return thresholdRange_container
        }
        set(thresholdRange) {
            thresholdRange_container = thresholdRange
        }
    }
    InvertOptions(low: Float64, high: Float64, threshold: Float64, thresholdRange: Float64) {
        this.low_container = low
        this.high_container = high
        this.threshold_container = threshold
        this.thresholdRange_container = thresholdRange
    }
}
public open class InvertOptions_serializer {
    public static func write(buffer: SerializerBase, value: InvertOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForLow = value.low
        valueSerializer.writeNumber(valueHolderForLow);
        let valueHolderForHigh = value.high
        valueSerializer.writeNumber(valueHolderForHigh);
        let valueHolderForThreshold = value.threshold
        valueSerializer.writeNumber(valueHolderForThreshold);
        let valueHolderForThresholdRange = value.thresholdRange
        valueSerializer.writeNumber(valueHolderForThresholdRange);
    }
    public static func read(buffer: DeserializerBase): InvertOptions {
        var valueDeserializer: DeserializerBase = buffer
        let lowTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let highTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let thresholdTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let thresholdRangeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: InvertOptions = InvertOptions(lowTmpResult, highTmpResult, thresholdTmpResult, thresholdRangeTmpResult)
        return value
    }
}
