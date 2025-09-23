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

public class Font {
    public var size: Option<Length>
    public var weight: Option<FontWeight>
    public var family: Option<String>
    public var style: Option<FontStyle>
    init(size: Option<Length>, weight: Option<FontWeight>, family: Option<String>, style: Option<FontStyle>) {
        this.size = size
        this.weight = weight
        this.family = family
        this.style = style
    }
}
public class Font_serializer {
    public  static func write(buffer: SerializerBase, value: Font): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSize = value.size
        if (let Some(valueHolderForSize) <- valueHolderForSize) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSizeTmpValue = valueHolderForSize
            if (valueHolderForSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForSizeTmpValueForIdx0 = valueHolderForSizeTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSizeTmpValueForIdx0)
            } else if (valueHolderForSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForSizeTmpValueForIdx1 = valueHolderForSizeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSizeTmpValueForIdx1)
            } else if (valueHolderForSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForSizeTmpValueForIdx2 = valueHolderForSizeTmpValue.getValue2()
                Resource_serializer.write(valueSerializer, valueHolderForSizeTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueHolderForSizeTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForWeight = value.weight
        if (let Some(valueHolderForWeight) <- valueHolderForWeight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForWeightTmpValue = valueHolderForWeight
            valueSerializer.writeInt32(valueHolderForWeightTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForFamily = value.family
        if (let Some(valueHolderForFamily) <- valueHolderForFamily) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForFamilyTmpValue = valueHolderForFamily
            valueSerializer.writeString(valueHolderForFamilyTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForStyle = value.style
        if (let Some(valueHolderForStyle) <- valueHolderForStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): Font {
        var valueDeserializer: DeserializerBase = buffer
        let sizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sizeTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sizeTmpBuf_runtimeType))) {
            let sizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var sizeTmpBuf_: Length 
            if (sizeTmpBuf_UnionSelector == Int8(0)) {
                sizeTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_UnionSelector == Int8(1)) {
                sizeTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_UnionSelector == Int8(2)) {
                sizeTmpBuf_ = Length(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for sizeTmpBuf_ has to be chosen through deserialisation.")
            }
            sizeTmpBuf = match (sizeTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sizeTmpResult: Option<Length> = sizeTmpBuf
        let weightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weightTmpBuf: Option<FontWeight> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weightTmpBuf_runtimeType))) {
            weightTmpBuf = FontWeight.parse(valueDeserializer.readInt32())
        }
        let weightTmpResult: Option<FontWeight> = weightTmpBuf
        let familyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var familyTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(familyTmpBuf_runtimeType))) {
            familyTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let familyTmpResult: Option<String> = familyTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<FontStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = FontStyle.parse(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<FontStyle> = styleTmpBuf
        var value: Font = Font(sizeTmpResult, weightTmpResult, familyTmpResult, styleTmpResult)
        return value
    }
}
