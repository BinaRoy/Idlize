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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class Rectangle {
    public var x: Option<Length>
    public var y: Option<Length>
    public var width: Option<Length>
    public var height: Option<Length>
    init(x: Option<Length>, y: Option<Length>, width: Option<Length>, height: Option<Length>) {
        this.x = x
        this.y = y
        this.width = width
        this.height = height
    }
}
public class Rectangle_serializer {
    public  static func write(buffer: SerializerBase, value: Rectangle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        if (let Some(valueHolderForX) <- valueHolderForX) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForXTmpValue = valueHolderForX
            if (valueHolderForXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForXTmpValueForIdx0 = valueHolderForXTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForXTmpValueForIdx0)
            } else if (valueHolderForXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForXTmpValueForIdx1 = valueHolderForXTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForXTmpValueForIdx1)
            } else if (valueHolderForXTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForXTmpValueForIdx2 = valueHolderForXTmpValue.getValue2()
                Resource_serializer.write(valueSerializer, valueHolderForXTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueHolderForXTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForY = value.y
        if (let Some(valueHolderForY) <- valueHolderForY) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForYTmpValue = valueHolderForY
            if (valueHolderForYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForYTmpValueForIdx0 = valueHolderForYTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForYTmpValueForIdx0)
            } else if (valueHolderForYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForYTmpValueForIdx1 = valueHolderForYTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForYTmpValueForIdx1)
            } else if (valueHolderForYTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForYTmpValueForIdx2 = valueHolderForYTmpValue.getValue2()
                Resource_serializer.write(valueSerializer, valueHolderForYTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueHolderForYTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForWidth = value.width
        if (let Some(valueHolderForWidth) <- valueHolderForWidth) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0)
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx1)
            } else if (valueHolderForWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.getValue2()
                Resource_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueHolderForWidthTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForHeight = value.height
        if (let Some(valueHolderForHeight) <- valueHolderForHeight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForHeightTmpValue = valueHolderForHeight
            if (valueHolderForHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForHeightTmpValueForIdx0)
            } else if (valueHolderForHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx1)
            } else if (valueHolderForHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForHeightTmpValueForIdx2 = valueHolderForHeightTmpValue.getValue2()
                Resource_serializer.write(valueSerializer, valueHolderForHeightTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueHolderForHeightTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): Rectangle {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xTmpBuf_runtimeType))) {
            let xTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var xTmpBuf_: Length 
            if (xTmpBuf_UnionSelector == Int8(0)) {
                xTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xTmpBuf_UnionSelector == Int8(1)) {
                xTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xTmpBuf_UnionSelector == Int8(2)) {
                xTmpBuf_ = Length(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for xTmpBuf_ has to be chosen through deserialisation.")
            }
            xTmpBuf = match (xTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xTmpResult: Option<Length> = xTmpBuf
        let yTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yTmpBuf_runtimeType))) {
            let yTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var yTmpBuf_: Length 
            if (yTmpBuf_UnionSelector == Int8(0)) {
                yTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (yTmpBuf_UnionSelector == Int8(1)) {
                yTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (yTmpBuf_UnionSelector == Int8(2)) {
                yTmpBuf_ = Length(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for yTmpBuf_ has to be chosen through deserialisation.")
            }
            yTmpBuf = match (yTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let yTmpResult: Option<Length> = yTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBuf_: Length 
            if (widthTmpBuf_UnionSelector == Int8(0)) {
                widthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(1)) {
                widthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(2)) {
                widthTmpBuf_ = Length(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Length> = widthTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            let heightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var heightTmpBuf_: Length 
            if (heightTmpBuf_UnionSelector == Int8(0)) {
                heightTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBuf_UnionSelector == Int8(1)) {
                heightTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBuf_UnionSelector == Int8(2)) {
                heightTmpBuf_ = Length(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for heightTmpBuf_ has to be chosen through deserialisation.")
            }
            heightTmpBuf = match (heightTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Length> = heightTmpBuf
        var value: Rectangle = Rectangle(xTmpResult, yTmpResult, widthTmpResult, heightTmpResult)
        return value
    }
}
