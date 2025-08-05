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
public interface FontInterfaces <:  {
    public mut open prop size: Option<Length>
    public mut open prop weight: Option<Union_FontWeight_Number_String>
    public mut open prop family: Option<Union_String_Resource>
    public mut open prop style: Option<FontStyle>
}
public open class Font <: FontInterfaces {
    private var size_container: Option<Length>
    public mut open prop size: Option<Length>
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    private var weight_container: Option<Union_FontWeight_Number_String>
    public mut open prop weight: Option<Union_FontWeight_Number_String>
    {
        get() {
            return weight_container
        }
        set(weight) {
            weight_container = weight
        }
    }
    private var family_container: Option<Union_String_Resource>
    public mut open prop family: Option<Union_String_Resource>
    {
        get() {
            return family_container
        }
        set(family) {
            family_container = family
        }
    }
    private var style_container: Option<FontStyle>
    public mut open prop style: Option<FontStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    Font(size: Option<Length>, weight: Option<Union_FontWeight_Number_String>, family: Option<Union_String_Resource>, style: Option<FontStyle>) {
        this.size_container = size
        this.weight_container = weight
        this.family_container = family
        this.style_container = style
    }
}
public open class Font_serializer {
    public static func write(buffer: SerializerBase, value: Font): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSize = value.size
        if (valueHolderForSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSizeTmpValue = valueHolderForSize
            if (valueHolderForSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSizeTmpValueForIdx0 = valueHolderForSizeTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSizeTmpValueForIdx0);
            } else if (valueHolderForSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSizeTmpValueForIdx1 = valueHolderForSizeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSizeTmpValueForIdx1);
            } else if (valueHolderForSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSizeTmpValueForIdx2 = valueHolderForSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSizeTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWeight = value.weight
        if (valueHolderForWeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWeightTmpValue = valueHolderForWeight
            if (valueHolderForWeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWeightTmpValueForIdx0 = valueHolderForWeightTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForWeightTmpValueForIdx0.value);
            } else if (valueHolderForWeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWeightTmpValueForIdx1 = valueHolderForWeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWeightTmpValueForIdx1);
            } else if (valueHolderForWeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWeightTmpValueForIdx2 = valueHolderForWeightTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForWeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFamily = value.family
        if (valueHolderForFamily.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFamilyTmpValue = valueHolderForFamily
            if (valueHolderForFamilyTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFamilyTmpValueForIdx0 = valueHolderForFamilyTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForFamilyTmpValueForIdx0);
            } else if (valueHolderForFamilyTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFamilyTmpValueForIdx1 = valueHolderForFamilyTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForFamilyTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): Font {
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
                sizeTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for sizeTmpBuf_ has to be chosen through deserialisation.")
            }
            sizeTmpBuf = match (sizeTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sizeTmpResult: Option<Length> = sizeTmpBuf
        let weightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weightTmpBuf: Option<Union_FontWeight_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weightTmpBuf_runtimeType))) {
            let weightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var weightTmpBuf_: Union_FontWeight_Number_String 
            if (weightTmpBuf_UnionSelector == Int8(0)) {
                weightTmpBuf_ = Union_FontWeight_Number_String(FontWeight(valueDeserializer.readInt32()))
            } else if (weightTmpBuf_UnionSelector == Int8(1)) {
                weightTmpBuf_ = Union_FontWeight_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (weightTmpBuf_UnionSelector == Int8(2)) {
                weightTmpBuf_ = Union_FontWeight_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for weightTmpBuf_ has to be chosen through deserialisation.")
            }
            weightTmpBuf = match (weightTmpBuf_ as Union_FontWeight_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let weightTmpResult: Option<Union_FontWeight_Number_String> = weightTmpBuf
        let familyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var familyTmpBuf: Option<Union_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(familyTmpBuf_runtimeType))) {
            let familyTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var familyTmpBuf_: Union_String_Resource 
            if (familyTmpBuf_UnionSelector == Int8(0)) {
                familyTmpBuf_ = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (familyTmpBuf_UnionSelector == Int8(1)) {
                familyTmpBuf_ = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for familyTmpBuf_ has to be chosen through deserialisation.")
            }
            familyTmpBuf = match (familyTmpBuf_ as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let familyTmpResult: Option<Union_String_Resource> = familyTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<FontStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = FontStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<FontStyle> = styleTmpBuf
        var value: Font = Font(sizeTmpResult, weightTmpResult, familyTmpResult, styleTmpResult)
        return value
    }
}
