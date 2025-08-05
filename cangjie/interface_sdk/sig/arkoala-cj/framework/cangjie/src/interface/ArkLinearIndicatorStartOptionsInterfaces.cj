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
public interface LinearIndicatorStartOptionsInterfaces <:  {
    public mut open prop interval: Option<Float64>
    public mut open prop duration: Option<Float64>
}
public open class LinearIndicatorStartOptions <: LinearIndicatorStartOptionsInterfaces {
    private var interval_container: Option<Float64>
    public mut open prop interval: Option<Float64>
    {
        get() {
            return interval_container
        }
        set(interval) {
            interval_container = interval
        }
    }
    private var duration_container: Option<Float64>
    public mut open prop duration: Option<Float64>
    {
        get() {
            return duration_container
        }
        set(duration) {
            duration_container = duration
        }
    }
    LinearIndicatorStartOptions(interval: Option<Float64>, duration: Option<Float64>) {
        this.interval_container = interval
        this.duration_container = duration
    }
}
public open class LinearIndicatorStartOptions_serializer {
    public static func write(buffer: SerializerBase, value: LinearIndicatorStartOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForInterval = value.interval
        if (valueHolderForInterval.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIntervalTmpValue = valueHolderForInterval
            valueSerializer.writeNumber(valueHolderForIntervalTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDuration = value.duration
        if (valueHolderForDuration.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDurationTmpValue = valueHolderForDuration
            valueSerializer.writeNumber(valueHolderForDurationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LinearIndicatorStartOptions {
        var valueDeserializer: DeserializerBase = buffer
        let intervalTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var intervalTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(intervalTmpBuf_runtimeType))) {
            intervalTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let intervalTmpResult: Option<Float64> = intervalTmpBuf
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let durationTmpResult: Option<Float64> = durationTmpBuf
        var value: LinearIndicatorStartOptions = LinearIndicatorStartOptions(intervalTmpResult, durationTmpResult)
        return value
    }
}
