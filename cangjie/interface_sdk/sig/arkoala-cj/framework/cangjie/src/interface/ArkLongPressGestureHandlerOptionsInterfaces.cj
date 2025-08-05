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
public interface LongPressGestureHandlerOptionsInterfaces <: BaseHandlerOptionsInterfaces {
    public mut open prop fingers: Option<Float64>
    public mut open prop repeat: Option<Bool>
    public mut open prop duration: Option<Float64>
}
public open class LongPressGestureHandlerOptions <: LongPressGestureHandlerOptionsInterfaces {
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
    private var repeat_container: Option<Bool>
    public mut open prop repeat: Option<Bool>
    {
        get() {
            return repeat_container
        }
        set(repeat) {
            repeat_container = repeat
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
    LongPressGestureHandlerOptions(fingers: Option<Float64>, repeat: Option<Bool>, duration: Option<Float64>, isFingerCountLimited: Option<Bool>) {
        this.fingers_container = fingers
        this.repeat_container = repeat
        this.duration_container = duration
        this.isFingerCountLimited_container = isFingerCountLimited
    }
}
public open class LongPressGestureHandlerOptions_serializer {
    public static func write(buffer: SerializerBase, value: LongPressGestureHandlerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsFingerCountLimited = value.isFingerCountLimited
        if (valueHolderForIsFingerCountLimited.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsFingerCountLimitedTmpValue = valueHolderForIsFingerCountLimited
            valueSerializer.writeBoolean(valueHolderForIsFingerCountLimitedTmpValue);
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
        let valueHolderForRepeat = value.repeat
        if (valueHolderForRepeat.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRepeatTmpValue = valueHolderForRepeat
            valueSerializer.writeBoolean(valueHolderForRepeatTmpValue);
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
    public static func read(buffer: DeserializerBase): LongPressGestureHandlerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let isFingerCountLimitedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isFingerCountLimitedTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isFingerCountLimitedTmpBuf_runtimeType))) {
            isFingerCountLimitedTmpBuf = valueDeserializer.readBoolean()
        }
        let isFingerCountLimitedTmpResult: Option<Bool> = isFingerCountLimitedTmpBuf
        let fingersTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fingersTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fingersTmpBuf_runtimeType))) {
            fingersTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fingersTmpResult: Option<Float64> = fingersTmpBuf
        let repeatTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var repeatTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(repeatTmpBuf_runtimeType))) {
            repeatTmpBuf = valueDeserializer.readBoolean()
        }
        let repeatTmpResult: Option<Bool> = repeatTmpBuf
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let durationTmpResult: Option<Float64> = durationTmpBuf
        var value: LongPressGestureHandlerOptions = LongPressGestureHandlerOptions(fingersTmpResult, repeatTmpResult, durationTmpResult, isFingerCountLimitedTmpResult)
        return value
    }
}
