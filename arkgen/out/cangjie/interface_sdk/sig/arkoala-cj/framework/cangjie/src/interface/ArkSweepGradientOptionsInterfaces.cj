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
public interface SweepGradientOptionsInterfaces <:  {
    public mut open prop center: Tuple_Length_Length
    public mut open prop start: Option<Union_Number_String>
    public mut open prop end: Option<Union_Number_String>
    public mut open prop rotation: Option<Union_Number_String>
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
    public mut open prop metricsColors: Option<ArrayList<Tuple_ColorMetrics_Number>>
    public mut open prop repeating: Option<Bool>
}
public open class SweepGradientOptions <: SweepGradientOptionsInterfaces {
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
    private var start_container: Option<Union_Number_String>
    public mut open prop start: Option<Union_Number_String>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Option<Union_Number_String>
    public mut open prop end: Option<Union_Number_String>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var rotation_container: Option<Union_Number_String>
    public mut open prop rotation: Option<Union_Number_String>
    {
        get() {
            return rotation_container
        }
        set(rotation) {
            rotation_container = rotation
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
    private var metricsColors_container: Option<ArrayList<Tuple_ColorMetrics_Number>>
    public mut open prop metricsColors: Option<ArrayList<Tuple_ColorMetrics_Number>>
    {
        get() {
            return metricsColors_container
        }
        set(metricsColors) {
            metricsColors_container = metricsColors
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
    SweepGradientOptions(center: Tuple_Length_Length, start: Option<Union_Number_String>, end: Option<Union_Number_String>, rotation: Option<Union_Number_String>, colors: ArrayList<Tuple_ResourceColor_Number>, metricsColors: Option<ArrayList<Tuple_ColorMetrics_Number>>, repeating: Option<Bool>) {
        this.center_container = center
        this.start_container = start
        this.end_container = end
        this.rotation_container = rotation
        this.colors_container = colors
        this.metricsColors_container = metricsColors
        this.repeating_container = repeating
    }
}
public open class SweepGradientOptions_serializer {
    public static func write(buffer: SerializerBase, value: SweepGradientOptions): Unit {
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
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            if (valueHolderForStartTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartTmpValueForIdx0 = valueHolderForStartTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForStartTmpValueForIdx0);
            } else if (valueHolderForStartTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartTmpValueForIdx1 = valueHolderForStartTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForStartTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            if (valueHolderForEndTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForEndTmpValueForIdx0 = valueHolderForEndTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForEndTmpValueForIdx0);
            } else if (valueHolderForEndTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForEndTmpValueForIdx1 = valueHolderForEndTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForEndTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRotation = value.rotation
        if (valueHolderForRotation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRotationTmpValue = valueHolderForRotation
            if (valueHolderForRotationTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRotationTmpValueForIdx0 = valueHolderForRotationTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForRotationTmpValueForIdx0);
            } else if (valueHolderForRotationTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRotationTmpValueForIdx1 = valueHolderForRotationTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForRotationTmpValueForIdx1);
            }
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
        let valueHolderForMetricsColors = value.metricsColors
        if (valueHolderForMetricsColors.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMetricsColorsTmpValue = valueHolderForMetricsColors
            valueSerializer.writeInt32(Int32(valueHolderForMetricsColorsTmpValue.size));
            for (valueHolderForMetricsColorsTmpValueCounterI in 0..valueHolderForMetricsColorsTmpValue.size) {
                let valueHolderForMetricsColorsTmpValueTmpElement: Tuple_ColorMetrics_Number = valueHolderForMetricsColorsTmpValue[Int64(valueHolderForMetricsColorsTmpValueCounterI)]
                let valueHolderForMetricsColorsTmpValueTmpElement_0 = valueHolderForMetricsColorsTmpValueTmpElement.value0
                valueSerializer.writeCustomObject("Any", valueHolderForMetricsColorsTmpValueTmpElement_0);
                let valueHolderForMetricsColorsTmpValueTmpElement_1 = valueHolderForMetricsColorsTmpValueTmpElement.value1
                valueSerializer.writeNumber(valueHolderForMetricsColorsTmpValueTmpElement_1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
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
    public static func read(buffer: DeserializerBase): SweepGradientOptions {
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
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            let startTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startTmpBuf_: Union_Number_String 
            if (startTmpBuf_UnionSelector == Int8(0)) {
                startTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startTmpBuf_UnionSelector == Int8(1)) {
                startTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for startTmpBuf_ has to be chosen through deserialisation.")
            }
            startTmpBuf = match (startTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startTmpResult: Option<Union_Number_String> = startTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            let endTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var endTmpBuf_: Union_Number_String 
            if (endTmpBuf_UnionSelector == Int8(0)) {
                endTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endTmpBuf_UnionSelector == Int8(1)) {
                endTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for endTmpBuf_ has to be chosen through deserialisation.")
            }
            endTmpBuf = match (endTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endTmpResult: Option<Union_Number_String> = endTmpBuf
        let rotationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rotationTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rotationTmpBuf_runtimeType))) {
            let rotationTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var rotationTmpBuf_: Union_Number_String 
            if (rotationTmpBuf_UnionSelector == Int8(0)) {
                rotationTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rotationTmpBuf_UnionSelector == Int8(1)) {
                rotationTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for rotationTmpBuf_ has to be chosen through deserialisation.")
            }
            rotationTmpBuf = match (rotationTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let rotationTmpResult: Option<Union_Number_String> = rotationTmpBuf
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
        let metricsColorsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var metricsColorsTmpBuf: Option<ArrayList<Tuple_ColorMetrics_Number>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(metricsColorsTmpBuf_runtimeType))) {
            let metricsColorsTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var metricsColorsTmpBuf_: ArrayList<Tuple_ColorMetrics_Number> = ArrayList<Tuple_ColorMetrics_Number>(Int64(metricsColorsTmpBuf_Length))
            metricsColorsTmpBuf_ = ArrayList<Tuple_ColorMetrics_Number>(Int64(metricsColorsTmpBuf_Length))
            for (metricsColorsTmpBuf_BufCounterI in 0..metricsColorsTmpBuf_Length) {
                let metricsColorsTmpBuf_TempBufValue0: ColorMetrics = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                let metricsColorsTmpBuf_TempBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                metricsColorsTmpBuf_[Int64(metricsColorsTmpBuf_BufCounterI)] = Tuple_ColorMetrics_Number(metricsColorsTmpBuf_TempBuf_value0, metricsColorsTmpBuf_TempBuf_value1)
            }
            metricsColorsTmpBuf = metricsColorsTmpBuf_
        }
        let metricsColorsTmpResult: Option<ArrayList<Tuple_ColorMetrics_Number>> = metricsColorsTmpBuf
        let repeatingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var repeatingTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(repeatingTmpBuf_runtimeType))) {
            repeatingTmpBuf = valueDeserializer.readBoolean()
        }
        let repeatingTmpResult: Option<Bool> = repeatingTmpBuf
        var value: SweepGradientOptions = SweepGradientOptions(centerTmpResult, startTmpResult, endTmpResult, rotationTmpResult, colorsTmpResult, metricsColorsTmpResult, repeatingTmpResult)
        return value
    }
}
