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

public class Position {
    public var x: Option<Length>
    public var y: Option<Length>
    init(x: Option<Length>, y: Option<Length>) {
        this.x = x
        this.y = y
    }
}
public class Position_serializer {
    public  static func write(buffer: SerializerBase, value: Position): Unit {
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
    }
    public  static func read(buffer: DeserializerBase): Position {
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
        var value: Position = Position(xTmpResult, yTmpResult)
        return value
    }
}
