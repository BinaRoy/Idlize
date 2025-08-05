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
public interface BadgeParamWithNumberInterfaces <: BadgeParamInterfaces {
    public mut open prop count: Float64
    public mut open prop maxCount: Option<Float64>
}
public open class BadgeParamWithNumber <: BadgeParamWithNumberInterfaces {
    private var count_container: Float64
    public mut open prop count: Float64
    {
        get() {
            return count_container
        }
        set(count) {
            count_container = count
        }
    }
    private var maxCount_container: Option<Float64>
    public mut open prop maxCount: Option<Float64>
    {
        get() {
            return maxCount_container
        }
        set(maxCount) {
            maxCount_container = maxCount
        }
    }
    private var position_container: Option<Union_BadgePosition_Position>
    public mut open prop position: Option<Union_BadgePosition_Position>
    {
        get() {
            return position_container
        }
        set(position) {
            position_container = position
        }
    }
    private var style_container: BadgeStyle
    public mut open prop style: BadgeStyle
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    BadgeParamWithNumber(count: Float64, maxCount: Option<Float64>, position: Option<Union_BadgePosition_Position>, style: BadgeStyle) {
        this.count_container = count
        this.maxCount_container = maxCount
        this.position_container = position
        this.style_container = style
    }
}
public open class BadgeParamWithNumber_serializer {
    public static func write(buffer: SerializerBase, value: BadgeParamWithNumber): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPosition = value.position
        if (valueHolderForPosition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPositionTmpValue = valueHolderForPosition
            if (valueHolderForPositionTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPositionTmpValueForIdx0 = valueHolderForPositionTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForPositionTmpValueForIdx0.value);
            } else if (valueHolderForPositionTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPositionTmpValueForIdx1 = valueHolderForPositionTmpValue.getValue1()
                Position_serializer.write(valueSerializer, valueHolderForPositionTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        BadgeStyle_serializer.write(valueSerializer, valueHolderForStyle);
        let valueHolderForCount = value.count
        valueSerializer.writeNumber(valueHolderForCount);
        let valueHolderForMaxCount = value.maxCount
        if (valueHolderForMaxCount.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxCountTmpValue = valueHolderForMaxCount
            valueSerializer.writeNumber(valueHolderForMaxCountTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BadgeParamWithNumber {
        var valueDeserializer: DeserializerBase = buffer
        let positionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var positionTmpBuf: Option<Union_BadgePosition_Position> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(positionTmpBuf_runtimeType))) {
            let positionTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var positionTmpBuf_: Union_BadgePosition_Position 
            if (positionTmpBuf_UnionSelector == Int8(0)) {
                positionTmpBuf_ = Union_BadgePosition_Position(BadgePosition(valueDeserializer.readInt32()))
            } else if (positionTmpBuf_UnionSelector == Int8(1)) {
                positionTmpBuf_ = Union_BadgePosition_Position(Position_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for positionTmpBuf_ has to be chosen through deserialisation.")
            }
            positionTmpBuf = match (positionTmpBuf_ as Union_BadgePosition_Position) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let positionTmpResult: Option<Union_BadgePosition_Position> = positionTmpBuf
        let styleTmpResult: BadgeStyle = BadgeStyle_serializer.read(valueDeserializer)
        let countTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let maxCountTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxCountTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxCountTmpBuf_runtimeType))) {
            maxCountTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxCountTmpResult: Option<Float64> = maxCountTmpBuf
        var value: BadgeParamWithNumber = BadgeParamWithNumber(countTmpResult, maxCountTmpResult, positionTmpResult, styleTmpResult)
        return value
    }
}
