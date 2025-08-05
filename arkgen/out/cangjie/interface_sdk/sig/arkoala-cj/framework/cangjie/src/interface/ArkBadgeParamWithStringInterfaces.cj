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
public interface BadgeParamWithStringInterfaces <: BadgeParamInterfaces {
    public mut open prop value: ResourceStr
}
public open class BadgeParamWithString <: BadgeParamWithStringInterfaces {
    private var value_container: ResourceStr
    public mut open prop value: ResourceStr
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
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
    BadgeParamWithString(value: ResourceStr, position: Option<Union_BadgePosition_Position>, style: BadgeStyle) {
        this.value_container = value
        this.position_container = position
        this.style_container = style
    }
}
public open class BadgeParamWithString_serializer {
    public static func write(buffer: SerializerBase, value: BadgeParamWithString): Unit {
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
        let valueHolderForValue = value.value
        if (valueHolderForValue.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForValueForIdx0 = valueHolderForValue.getValue0()
            valueSerializer.writeString(valueHolderForValueForIdx0);
        } else if (valueHolderForValue.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForValueForIdx1 = valueHolderForValue.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForValueForIdx1);
        }
    }
    public static func read(buffer: DeserializerBase): BadgeParamWithString {
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
        let valueTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var valueTmpBuf: ResourceStr 
        if (valueTmpBufUnionSelector == Int8(0)) {
            valueTmpBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (valueTmpBufUnionSelector == Int8(1)) {
            valueTmpBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
        }
        let valueTmpResult: ResourceStr = match (valueTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: BadgeParamWithString = BadgeParamWithString(valueTmpResult, positionTmpResult, styleTmpResult)
        return value
    }
}
