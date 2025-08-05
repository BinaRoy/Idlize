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
public interface PopupBorderLinearGradientInterfaces <:  {
    public mut open prop direction: Option<GradientDirection>
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
}
public open class PopupBorderLinearGradient <: PopupBorderLinearGradientInterfaces {
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
    PopupBorderLinearGradient(direction: Option<GradientDirection>, colors: ArrayList<Tuple_ResourceColor_Number>) {
        this.direction_container = direction
        this.colors_container = colors
    }
}
public open class PopupBorderLinearGradient_serializer {
    public static func write(buffer: SerializerBase, value: PopupBorderLinearGradient): Unit {
        var valueSerializer: SerializerBase = buffer
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
    }
    public static func read(buffer: DeserializerBase): PopupBorderLinearGradient {
        var valueDeserializer: DeserializerBase = buffer
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
        var value: PopupBorderLinearGradient = PopupBorderLinearGradient(directionTmpResult, colorsTmpResult)
        return value
    }
}
