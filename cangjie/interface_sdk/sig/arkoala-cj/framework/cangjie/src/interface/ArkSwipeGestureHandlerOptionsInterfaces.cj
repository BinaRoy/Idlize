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
public interface SwipeGestureHandlerOptionsInterfaces <: BaseHandlerOptionsInterfaces {
    public mut open prop fingers: Option<Float64>
    public mut open prop direction: Option<SwipeDirection>
    public mut open prop speed: Option<Float64>
}
public open class SwipeGestureHandlerOptions <: SwipeGestureHandlerOptionsInterfaces {
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
    private var direction_container: Option<SwipeDirection>
    public mut open prop direction: Option<SwipeDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var speed_container: Option<Float64>
    public mut open prop speed: Option<Float64>
    {
        get() {
            return speed_container
        }
        set(speed) {
            speed_container = speed
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
    SwipeGestureHandlerOptions(fingers: Option<Float64>, direction: Option<SwipeDirection>, speed: Option<Float64>, isFingerCountLimited: Option<Bool>) {
        this.fingers_container = fingers
        this.direction_container = direction
        this.speed_container = speed
        this.isFingerCountLimited_container = isFingerCountLimited
    }
}
public open class SwipeGestureHandlerOptions_serializer {
    public static func write(buffer: SerializerBase, value: SwipeGestureHandlerOptions): Unit {
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
        let valueHolderForDirection = value.direction
        if (valueHolderForDirection.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDirectionTmpValue = valueHolderForDirection
            valueSerializer.writeInt32(valueHolderForDirectionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSpeed = value.speed
        if (valueHolderForSpeed.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSpeedTmpValue = valueHolderForSpeed
            valueSerializer.writeNumber(valueHolderForSpeedTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SwipeGestureHandlerOptions {
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
        let directionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var directionTmpBuf: Option<SwipeDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(directionTmpBuf_runtimeType))) {
            directionTmpBuf = SwipeDirection(valueDeserializer.readInt32())
        }
        let directionTmpResult: Option<SwipeDirection> = directionTmpBuf
        let speedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var speedTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(speedTmpBuf_runtimeType))) {
            speedTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let speedTmpResult: Option<Float64> = speedTmpBuf
        var value: SwipeGestureHandlerOptions = SwipeGestureHandlerOptions(fingersTmpResult, directionTmpResult, speedTmpResult, isFingerCountLimitedTmpResult)
        return value
    }
}
