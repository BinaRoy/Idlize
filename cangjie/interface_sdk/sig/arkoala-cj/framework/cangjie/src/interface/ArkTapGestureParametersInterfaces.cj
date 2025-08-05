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
public interface TapGestureParametersInterfaces <: BaseHandlerOptionsInterfaces {
    public mut open prop count: Option<Float64>
    public mut open prop fingers: Option<Float64>
    public mut open prop distanceThreshold: Option<Float64>
}
public open class TapGestureParameters <: TapGestureParametersInterfaces {
    private var count_container: Option<Float64>
    public mut open prop count: Option<Float64>
    {
        get() {
            return count_container
        }
        set(count) {
            count_container = count
        }
    }
    private var fingers_container: Option<Float64>
    public mut open prop fingers: Option<Float64>
    {
        get() {
            return fingers_container
        }
        set(fingers) {
            fingers_container = fingers
        }
    }
    private var distanceThreshold_container: Option<Float64>
    public mut open prop distanceThreshold: Option<Float64>
    {
        get() {
            return distanceThreshold_container
        }
        set(distanceThreshold) {
            distanceThreshold_container = distanceThreshold
        }
    }
    private var isFingerCountLimited_container: Option<Bool>
    public mut open prop isFingerCountLimited: Option<Bool>
    {
        get() {
            return isFingerCountLimited_container
        }
        set(isFingerCountLimited) {
            isFingerCountLimited_container = isFingerCountLimited
        }
    }
    TapGestureParameters(count: Option<Float64>, fingers: Option<Float64>, distanceThreshold: Option<Float64>, isFingerCountLimited: Option<Bool>) {
        this.count_container = count
        this.fingers_container = fingers
        this.distanceThreshold_container = distanceThreshold
        this.isFingerCountLimited_container = isFingerCountLimited
    }
}
public open class TapGestureParameters_serializer {
    public static func write(buffer: SerializerBase, value: TapGestureParameters): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsFingerCountLimited = value.isFingerCountLimited
        if (valueHolderForIsFingerCountLimited.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsFingerCountLimitedTmpValue = valueHolderForIsFingerCountLimited
            valueSerializer.writeBoolean(valueHolderForIsFingerCountLimitedTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCount = value.count
        if (valueHolderForCount.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCountTmpValue = valueHolderForCount
            valueSerializer.writeNumber(valueHolderForCountTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFingers = value.fingers
        if (valueHolderForFingers.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFingersTmpValue = valueHolderForFingers
            valueSerializer.writeNumber(valueHolderForFingersTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDistanceThreshold = value.distanceThreshold
        if (valueHolderForDistanceThreshold.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDistanceThresholdTmpValue = valueHolderForDistanceThreshold
            valueSerializer.writeNumber(valueHolderForDistanceThresholdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TapGestureParameters {
        var valueDeserializer: DeserializerBase = buffer
        let isFingerCountLimitedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isFingerCountLimitedTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isFingerCountLimitedTmpBuf_runtimeType))) {
            isFingerCountLimitedTmpBuf = valueDeserializer.readBoolean()
        }
        let isFingerCountLimitedTmpResult: Option<Bool> = isFingerCountLimitedTmpBuf
        let countTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var countTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(countTmpBuf_runtimeType))) {
            countTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let countTmpResult: Option<Float64> = countTmpBuf
        let fingersTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fingersTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fingersTmpBuf_runtimeType))) {
            fingersTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fingersTmpResult: Option<Float64> = fingersTmpBuf
        let distanceThresholdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var distanceThresholdTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(distanceThresholdTmpBuf_runtimeType))) {
            distanceThresholdTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let distanceThresholdTmpResult: Option<Float64> = distanceThresholdTmpBuf
        var value: TapGestureParameters = TapGestureParameters(countTmpResult, fingersTmpResult, distanceThresholdTmpResult, isFingerCountLimitedTmpResult)
        return value
    }
}
