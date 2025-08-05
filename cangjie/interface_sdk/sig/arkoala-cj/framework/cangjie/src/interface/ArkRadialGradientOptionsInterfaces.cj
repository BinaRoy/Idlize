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
public interface RadialGradientOptionsInterfaces <:  {
    public mut open prop center: Tuple_Length_Length
    public mut open prop radius: Length
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
    public mut open prop repeating: Option<Bool>
}
public open class RadialGradientOptions <: RadialGradientOptionsInterfaces {
    private var center_container: Tuple_Length_Length
    public mut open prop center: Tuple_Length_Length
    {
        get() {
            return center_container
        }
        set(center) {
            center_container = center
        }
    }
    private var radius_container: Length
    public mut open prop radius: Length
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var colors_container: ArrayList<Tuple_ResourceColor_Number>
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
    {
        get() {
            return colors_container
        }
        set(colors) {
            colors_container = colors
        }
    }
    private var repeating_container: Option<Bool>
    public mut open prop repeating: Option<Bool>
    {
        get() {
            return repeating_container
        }
        set(repeating) {
            repeating_container = repeating
        }
    }
    RadialGradientOptions(center: Tuple_Length_Length, radius: Length, colors: ArrayList<Tuple_ResourceColor_Number>, repeating: Option<Bool>) {
        this.center_container = center
        this.radius_container = radius
        this.colors_container = colors
        this.repeating_container = repeating
    }
}
public open class RadialGradientOptions_serializer {
    public static func write(buffer: SerializerBase, value: RadialGradientOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForCenter = value.center
        let valueHolderForCenter_0 = valueHolderForCenter.value0
        if (valueHolderForCenter_0.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForCenter_0ForIdx0 = valueHolderForCenter_0.getValue0()
            valueSerializer.writeString(valueHolderForCenter_0ForIdx0);
        } else if (valueHolderForCenter_0.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForCenter_0ForIdx1 = valueHolderForCenter_0.getValue1()
            valueSerializer.writeNumber(valueHolderForCenter_0ForIdx1);
        } else if (valueHolderForCenter_0.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForCenter_0ForIdx2 = valueHolderForCenter_0.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForCenter_0ForIdx2);
        }
        let valueHolderForCenter_1 = valueHolderForCenter.value1
        if (valueHolderForCenter_1.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForCenter_1ForIdx0 = valueHolderForCenter_1.getValue0()
            valueSerializer.writeString(valueHolderForCenter_1ForIdx0);
        } else if (valueHolderForCenter_1.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForCenter_1ForIdx1 = valueHolderForCenter_1.getValue1()
            valueSerializer.writeNumber(valueHolderForCenter_1ForIdx1);
        } else if (valueHolderForCenter_1.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForCenter_1ForIdx2 = valueHolderForCenter_1.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForCenter_1ForIdx2);
        }
        let valueHolderForRadius = value.radius
        if (valueHolderForRadius.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForRadiusForIdx0 = valueHolderForRadius.getValue0()
            valueSerializer.writeString(valueHolderForRadiusForIdx0);
        } else if (valueHolderForRadius.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForRadiusForIdx1 = valueHolderForRadius.getValue1()
            valueSerializer.writeNumber(valueHolderForRadiusForIdx1);
        } else if (valueHolderForRadius.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForRadiusForIdx2 = valueHolderForRadius.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForRadiusForIdx2);
        }
        let valueHolderForColors = value.colors
        valueSerializer.writeInt32(Int32(valueHolderForColors.size));
        for (valueHolderForColorsCounterI in 0..valueHolderForColors.size) {
            let valueHolderForColorsTmpElement: Tuple_ResourceColor_Number = valueHolderForColors[Int64(valueHolderForColorsCounterI)]
            let valueHolderForColorsTmpElement_0 = valueHolderForColorsTmpElement.value0
            if (valueHolderForColorsTmpElement_0.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColorsTmpElement_0ForIdx0 = valueHolderForColorsTmpElement_0.getValue0()
                valueSerializer.writeInt32(valueHolderForColorsTmpElement_0ForIdx0.value);
            } else if (valueHolderForColorsTmpElement_0.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorsTmpElement_0ForIdx1 = valueHolderForColorsTmpElement_0.getValue1()
                valueSerializer.writeNumber(valueHolderForColorsTmpElement_0ForIdx1);
            } else if (valueHolderForColorsTmpElement_0.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorsTmpElement_0ForIdx2 = valueHolderForColorsTmpElement_0.getValue2()
                valueSerializer.writeString(valueHolderForColorsTmpElement_0ForIdx2);
            } else if (valueHolderForColorsTmpElement_0.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForColorsTmpElement_0ForIdx3 = valueHolderForColorsTmpElement_0.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForColorsTmpElement_0ForIdx3);
            }
            let valueHolderForColorsTmpElement_1 = valueHolderForColorsTmpElement.value1
            valueSerializer.writeNumber(valueHolderForColorsTmpElement_1);
        }
        let valueHolderForRepeating = value.repeating
        if (valueHolderForRepeating.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRepeatingTmpValue = valueHolderForRepeating
            valueSerializer.writeBoolean(valueHolderForRepeatingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RadialGradientOptions {
        var valueDeserializer: DeserializerBase = buffer
        let centerTmpBufValue0TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var centerTmpBufValue0TempBuf: Length 
        if (centerTmpBufValue0TempBufUnionSelector == Int8(0)) {
            centerTmpBufValue0TempBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (centerTmpBufValue0TempBufUnionSelector == Int8(1)) {
            centerTmpBufValue0TempBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (centerTmpBufValue0TempBufUnionSelector == Int8(2)) {
            centerTmpBufValue0TempBuf = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for centerTmpBufValue0TempBuf has to be chosen through deserialisation.")
        }
        let centerTmpBufValue0: Length = match (centerTmpBufValue0TempBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let centerTmpBufValue1TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var centerTmpBufValue1TempBuf: Length 
        if (centerTmpBufValue1TempBufUnionSelector == Int8(0)) {
            centerTmpBufValue1TempBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (centerTmpBufValue1TempBufUnionSelector == Int8(1)) {
            centerTmpBufValue1TempBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (centerTmpBufValue1TempBufUnionSelector == Int8(2)) {
            centerTmpBufValue1TempBuf = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for centerTmpBufValue1TempBuf has to be chosen through deserialisation.")
        }
        let centerTmpBufValue1: Length = match (centerTmpBufValue1TempBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let centerTmpResult: Tuple_Length_Length = Tuple_Length_Length(centerTmpBuf_value0, centerTmpBuf_value1)
        let radiusTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var radiusTmpBuf: Length 
        if (radiusTmpBufUnionSelector == Int8(0)) {
            radiusTmpBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (radiusTmpBufUnionSelector == Int8(1)) {
            radiusTmpBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (radiusTmpBufUnionSelector == Int8(2)) {
            radiusTmpBuf = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for radiusTmpBuf has to be chosen through deserialisation.")
        }
        let radiusTmpResult: Length = match (radiusTmpBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let colorsTmpBufLength: Int32 = valueDeserializer.readInt32()
        var colorsTmpBuf: ArrayList<Tuple_ResourceColor_Number> = ArrayList<Tuple_ResourceColor_Number>(Int64(colorsTmpBufLength))
        colorsTmpBuf = ArrayList<Tuple_ResourceColor_Number>(Int64(colorsTmpBufLength))
        for (colorsTmpBufBufCounterI in 0..colorsTmpBufLength) {
            let colorsTmpBufTempBufValue0TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var colorsTmpBufTempBufValue0TempBuf: ResourceColor 
            if (colorsTmpBufTempBufValue0TempBufUnionSelector == Int8(0)) {
                colorsTmpBufTempBufValue0TempBuf = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (colorsTmpBufTempBufValue0TempBufUnionSelector == Int8(1)) {
                colorsTmpBufTempBufValue0TempBuf = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorsTmpBufTempBufValue0TempBufUnionSelector == Int8(2)) {
                colorsTmpBufTempBufValue0TempBuf = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorsTmpBufTempBufValue0TempBufUnionSelector == Int8(3)) {
                colorsTmpBufTempBufValue0TempBuf = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for colorsTmpBufTempBufValue0TempBuf has to be chosen through deserialisation.")
            }
            let colorsTmpBufTempBufValue0: ResourceColor = match (colorsTmpBufTempBufValue0TempBuf as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let colorsTmpBufTempBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            colorsTmpBuf[Int64(colorsTmpBufBufCounterI)] = Tuple_ResourceColor_Number(colorsTmpBufTempBuf_value0, colorsTmpBufTempBuf_value1)
        }
        let colorsTmpResult: ArrayList<Tuple_ResourceColor_Number> = colorsTmpBuf
        let repeatingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var repeatingTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(repeatingTmpBuf_runtimeType))) {
            repeatingTmpBuf = valueDeserializer.readBoolean()
        }
        let repeatingTmpResult: Option<Bool> = repeatingTmpBuf
        var value: RadialGradientOptions = RadialGradientOptions(centerTmpResult, radiusTmpResult, colorsTmpResult, repeatingTmpResult)
        return value
    }
}
