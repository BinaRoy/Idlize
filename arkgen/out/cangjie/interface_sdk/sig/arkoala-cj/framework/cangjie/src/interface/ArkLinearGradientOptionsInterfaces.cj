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
public interface LinearGradientOptionsInterfaces <:  {
    public mut open prop angle: Option<Union_Number_String>
    public mut open prop direction: Option<GradientDirection>
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
    public mut open prop repeating: Option<Bool>
}
public open class LinearGradientOptions <: LinearGradientOptionsInterfaces {
    private var angle_container: Option<Union_Number_String>
    public mut open prop angle: Option<Union_Number_String>
    {
        get() {
            return angle_container
        }
        set(angle) {
            angle_container = angle
        }
    }
    private var direction_container: Option<GradientDirection>
    public mut open prop direction: Option<GradientDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
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
    LinearGradientOptions(angle: Option<Union_Number_String>, direction: Option<GradientDirection>, colors: ArrayList<Tuple_ResourceColor_Number>, repeating: Option<Bool>) {
        this.angle_container = angle
        this.direction_container = direction
        this.colors_container = colors
        this.repeating_container = repeating
    }
}
public open class LinearGradientOptions_serializer {
    public static func write(buffer: SerializerBase, value: LinearGradientOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAngle = value.angle
        if (valueHolderForAngle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAngleTmpValue = valueHolderForAngle
            if (valueHolderForAngleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForAngleTmpValueForIdx0 = valueHolderForAngleTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForAngleTmpValueForIdx0);
            } else if (valueHolderForAngleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForAngleTmpValueForIdx1 = valueHolderForAngleTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForAngleTmpValueForIdx1);
            }
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
    public static func read(buffer: DeserializerBase): LinearGradientOptions {
        var valueDeserializer: DeserializerBase = buffer
        let angleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var angleTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(angleTmpBuf_runtimeType))) {
            let angleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var angleTmpBuf_: Union_Number_String 
            if (angleTmpBuf_UnionSelector == Int8(0)) {
                angleTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (angleTmpBuf_UnionSelector == Int8(1)) {
                angleTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for angleTmpBuf_ has to be chosen through deserialisation.")
            }
            angleTmpBuf = match (angleTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let angleTmpResult: Option<Union_Number_String> = angleTmpBuf
        let directionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var directionTmpBuf: Option<GradientDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(directionTmpBuf_runtimeType))) {
            directionTmpBuf = GradientDirection(valueDeserializer.readInt32())
        }
        let directionTmpResult: Option<GradientDirection> = directionTmpBuf
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
        var value: LinearGradientOptions = LinearGradientOptions(angleTmpResult, directionTmpResult, colorsTmpResult, repeatingTmpResult)
        return value
    }
}
