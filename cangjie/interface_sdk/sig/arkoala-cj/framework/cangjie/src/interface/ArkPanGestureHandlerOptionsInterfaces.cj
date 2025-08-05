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
public interface PanGestureHandlerOptionsInterfaces <: BaseHandlerOptionsInterfaces {
    public mut open prop fingers: Option<Float64>
    public mut open prop direction: Option<PanDirection>
    public mut open prop distance: Option<Float64>
    public mut open prop distanceMap: Option<HashMap<Int64, Float64>>
}
public open class PanGestureHandlerOptions <: PanGestureHandlerOptionsInterfaces {
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
    private var direction_container: Option<PanDirection>
    public mut open prop direction: Option<PanDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var distance_container: Option<Float64>
    public mut open prop distance: Option<Float64>
    {
        get() {
            return distance_container
        }
        set(distance) {
            distance_container = distance
        }
    }
    private var distanceMap_container: Option<HashMap<Int64, Float64>>
    public mut open prop distanceMap: Option<HashMap<Int64, Float64>>
    {
        get() {
            return distanceMap_container
        }
        set(distanceMap) {
            distanceMap_container = distanceMap
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
    PanGestureHandlerOptions(fingers: Option<Float64>, direction: Option<PanDirection>, distance: Option<Float64>, distanceMap: Option<HashMap<Int64, Float64>>, isFingerCountLimited: Option<Bool>) {
        this.fingers_container = fingers
        this.direction_container = direction
        this.distance_container = distance
        this.distanceMap_container = distanceMap
        this.isFingerCountLimited_container = isFingerCountLimited
    }
}
public open class PanGestureHandlerOptions_serializer {
    public static func write(buffer: SerializerBase, value: PanGestureHandlerOptions): Unit {
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
        let valueHolderForDistance = value.distance
        if (valueHolderForDistance.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDistanceTmpValue = valueHolderForDistance
            valueSerializer.writeNumber(valueHolderForDistanceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDistanceMap = value.distanceMap
        if (valueHolderForDistanceMap.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDistanceMapTmpValue = valueHolderForDistanceMap
            valueSerializer.writeInt32(Int32(valueHolderForDistanceMapTmpValue.size));
            for ((valueHolderForDistanceMapTmpValueKeyVar, valueHolderForDistanceMapTmpValueValueVar) in valueHolderForDistanceMapTmpValue) {
                valueSerializer.writeInt32(valueHolderForDistanceMapTmpValueKeyVar.value);
                valueSerializer.writeNumber(valueHolderForDistanceMapTmpValueValueVar);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PanGestureHandlerOptions {
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
        var directionTmpBuf: Option<PanDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(directionTmpBuf_runtimeType))) {
            directionTmpBuf = PanDirection(valueDeserializer.readInt32())
        }
        let directionTmpResult: Option<PanDirection> = directionTmpBuf
        let distanceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var distanceTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(distanceTmpBuf_runtimeType))) {
            distanceTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let distanceTmpResult: Option<Float64> = distanceTmpBuf
        let distanceMapTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var distanceMapTmpBuf: Option<HashMap<Int64, Float64>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(distanceMapTmpBuf_runtimeType))) {
            let distanceMapTmpBuf_SizeVar: Int32 = valueDeserializer.readInt32()
            var distanceMapTmpBuf_: HashMap<Int64, Float64> = HashMap<Int64, Float64>()
            // TODO: TS map resize;
            for (distanceMapTmpBuf_IVar in 0..distanceMapTmpBuf_SizeVar) {
                let distanceMapTmpBuf_KeyVar: SourceTool = SourceTool(valueDeserializer.readInt32())
                let distanceMapTmpBuf_ValueVar: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                distanceMapTmpBuf_.add(distanceMapTmpBuf_KeyVar, distanceMapTmpBuf_ValueVar);
            }
            distanceMapTmpBuf = distanceMapTmpBuf_
        }
        let distanceMapTmpResult: Option<HashMap<Int64, Float64>> = distanceMapTmpBuf
        var value: PanGestureHandlerOptions = PanGestureHandlerOptions(fingersTmpResult, directionTmpResult, distanceTmpResult, distanceMapTmpResult, isFingerCountLimitedTmpResult)
        return value
    }
}
