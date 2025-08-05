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
public interface AreaInterfaces <:  {
    public mut open prop width: Length
    public mut open prop height: Length
    public mut open prop position: Position
    public mut open prop globalPosition: Position
}
public open class Area <: AreaInterfaces {
    private var width_container: Length
    public mut open prop width: Length
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Length
    public mut open prop height: Length
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var position_container: Position
    public mut open prop position: Position
    {
        get() {
            return position_container
        }
        set(position) {
            position_container = position
        }
    }
    private var globalPosition_container: Position
    public mut open prop globalPosition: Position
    {
        get() {
            return globalPosition_container
        }
        set(globalPosition) {
            globalPosition_container = globalPosition
        }
    }
    Area(width: Length, height: Length, position: Position, globalPosition: Position) {
        this.width_container = width
        this.height_container = height
        this.position_container = position
        this.globalPosition_container = globalPosition
    }
}
public open class Area_serializer {
    public static func write(buffer: SerializerBase, value: Area): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForWidthForIdx0 = valueHolderForWidth.getValue0()
            valueSerializer.writeString(valueHolderForWidthForIdx0);
        } else if (valueHolderForWidth.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForWidthForIdx1 = valueHolderForWidth.getValue1()
            valueSerializer.writeNumber(valueHolderForWidthForIdx1);
        } else if (valueHolderForWidth.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForWidthForIdx2 = valueHolderForWidth.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForWidthForIdx2);
        }
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForHeightForIdx0 = valueHolderForHeight.getValue0()
            valueSerializer.writeString(valueHolderForHeightForIdx0);
        } else if (valueHolderForHeight.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForHeightForIdx1 = valueHolderForHeight.getValue1()
            valueSerializer.writeNumber(valueHolderForHeightForIdx1);
        } else if (valueHolderForHeight.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForHeightForIdx2 = valueHolderForHeight.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForHeightForIdx2);
        }
        let valueHolderForPosition = value.position
        Position_serializer.write(valueSerializer, valueHolderForPosition);
        let valueHolderForGlobalPosition = value.globalPosition
        Position_serializer.write(valueSerializer, valueHolderForGlobalPosition);
    }
    public static func read(buffer: DeserializerBase): Area {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var widthTmpBuf: Length 
        if (widthTmpBufUnionSelector == Int8(0)) {
            widthTmpBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (widthTmpBufUnionSelector == Int8(1)) {
            widthTmpBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (widthTmpBufUnionSelector == Int8(2)) {
            widthTmpBuf = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for widthTmpBuf has to be chosen through deserialisation.")
        }
        let widthTmpResult: Length = match (widthTmpBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var heightTmpBuf: Length 
        if (heightTmpBufUnionSelector == Int8(0)) {
            heightTmpBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (heightTmpBufUnionSelector == Int8(1)) {
            heightTmpBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (heightTmpBufUnionSelector == Int8(2)) {
            heightTmpBuf = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for heightTmpBuf has to be chosen through deserialisation.")
        }
        let heightTmpResult: Length = match (heightTmpBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let positionTmpResult: Position = Position_serializer.read(valueDeserializer)
        let globalPositionTmpResult: Position = Position_serializer.read(valueDeserializer)
        var value: Area = Area(widthTmpResult, heightTmpResult, positionTmpResult, globalPositionTmpResult)
        return value
    }
}
