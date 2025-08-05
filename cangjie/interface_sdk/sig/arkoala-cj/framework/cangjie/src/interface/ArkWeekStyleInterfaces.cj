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
public interface WeekStyleInterfaces <:  {
    public mut open prop weekColor: Option<ResourceColor>
    public mut open prop weekendDayColor: Option<ResourceColor>
    public mut open prop weekendLunarColor: Option<ResourceColor>
    public mut open prop weekFontSize: Option<Float64>
    public mut open prop weekHeight: Option<Float64>
    public mut open prop weekWidth: Option<Float64>
    public mut open prop weekAndDayRowSpace: Option<Float64>
}
public open class WeekStyle <: WeekStyleInterfaces {
    private var weekColor_container: Option<ResourceColor>
    public mut open prop weekColor: Option<ResourceColor>
    {
        get() {
            return weekColor_container
        }
        set(weekColor) {
            weekColor_container = weekColor
        }
    }
    private var weekendDayColor_container: Option<ResourceColor>
    public mut open prop weekendDayColor: Option<ResourceColor>
    {
        get() {
            return weekendDayColor_container
        }
        set(weekendDayColor) {
            weekendDayColor_container = weekendDayColor
        }
    }
    private var weekendLunarColor_container: Option<ResourceColor>
    public mut open prop weekendLunarColor: Option<ResourceColor>
    {
        get() {
            return weekendLunarColor_container
        }
        set(weekendLunarColor) {
            weekendLunarColor_container = weekendLunarColor
        }
    }
    private var weekFontSize_container: Option<Float64>
    public mut open prop weekFontSize: Option<Float64>
    {
        get() {
            return weekFontSize_container
        }
        set(weekFontSize) {
            weekFontSize_container = weekFontSize
        }
    }
    private var weekHeight_container: Option<Float64>
    public mut open prop weekHeight: Option<Float64>
    {
        get() {
            return weekHeight_container
        }
        set(weekHeight) {
            weekHeight_container = weekHeight
        }
    }
    private var weekWidth_container: Option<Float64>
    public mut open prop weekWidth: Option<Float64>
    {
        get() {
            return weekWidth_container
        }
        set(weekWidth) {
            weekWidth_container = weekWidth
        }
    }
    private var weekAndDayRowSpace_container: Option<Float64>
    public mut open prop weekAndDayRowSpace: Option<Float64>
    {
        get() {
            return weekAndDayRowSpace_container
        }
        set(weekAndDayRowSpace) {
            weekAndDayRowSpace_container = weekAndDayRowSpace
        }
    }
    WeekStyle(weekColor: Option<ResourceColor>, weekendDayColor: Option<ResourceColor>, weekendLunarColor: Option<ResourceColor>, weekFontSize: Option<Float64>, weekHeight: Option<Float64>, weekWidth: Option<Float64>, weekAndDayRowSpace: Option<Float64>) {
        this.weekColor_container = weekColor
        this.weekendDayColor_container = weekendDayColor
        this.weekendLunarColor_container = weekendLunarColor
        this.weekFontSize_container = weekFontSize
        this.weekHeight_container = weekHeight
        this.weekWidth_container = weekWidth
        this.weekAndDayRowSpace_container = weekAndDayRowSpace
    }
}
public open class WeekStyle_serializer {
    public static func write(buffer: SerializerBase, value: WeekStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWeekColor = value.weekColor
        if (valueHolderForWeekColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWeekColorTmpValue = valueHolderForWeekColor
            if (valueHolderForWeekColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWeekColorTmpValueForIdx0 = valueHolderForWeekColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForWeekColorTmpValueForIdx0.value);
            } else if (valueHolderForWeekColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWeekColorTmpValueForIdx1 = valueHolderForWeekColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWeekColorTmpValueForIdx1);
            } else if (valueHolderForWeekColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWeekColorTmpValueForIdx2 = valueHolderForWeekColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForWeekColorTmpValueForIdx2);
            } else if (valueHolderForWeekColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForWeekColorTmpValueForIdx3 = valueHolderForWeekColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForWeekColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWeekendDayColor = value.weekendDayColor
        if (valueHolderForWeekendDayColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWeekendDayColorTmpValue = valueHolderForWeekendDayColor
            if (valueHolderForWeekendDayColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWeekendDayColorTmpValueForIdx0 = valueHolderForWeekendDayColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForWeekendDayColorTmpValueForIdx0.value);
            } else if (valueHolderForWeekendDayColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWeekendDayColorTmpValueForIdx1 = valueHolderForWeekendDayColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWeekendDayColorTmpValueForIdx1);
            } else if (valueHolderForWeekendDayColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWeekendDayColorTmpValueForIdx2 = valueHolderForWeekendDayColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForWeekendDayColorTmpValueForIdx2);
            } else if (valueHolderForWeekendDayColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForWeekendDayColorTmpValueForIdx3 = valueHolderForWeekendDayColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForWeekendDayColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWeekendLunarColor = value.weekendLunarColor
        if (valueHolderForWeekendLunarColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWeekendLunarColorTmpValue = valueHolderForWeekendLunarColor
            if (valueHolderForWeekendLunarColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWeekendLunarColorTmpValueForIdx0 = valueHolderForWeekendLunarColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForWeekendLunarColorTmpValueForIdx0.value);
            } else if (valueHolderForWeekendLunarColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWeekendLunarColorTmpValueForIdx1 = valueHolderForWeekendLunarColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWeekendLunarColorTmpValueForIdx1);
            } else if (valueHolderForWeekendLunarColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWeekendLunarColorTmpValueForIdx2 = valueHolderForWeekendLunarColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForWeekendLunarColorTmpValueForIdx2);
            } else if (valueHolderForWeekendLunarColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForWeekendLunarColorTmpValueForIdx3 = valueHolderForWeekendLunarColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForWeekendLunarColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWeekFontSize = value.weekFontSize
        if (valueHolderForWeekFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWeekFontSizeTmpValue = valueHolderForWeekFontSize
            valueSerializer.writeNumber(valueHolderForWeekFontSizeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWeekHeight = value.weekHeight
        if (valueHolderForWeekHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWeekHeightTmpValue = valueHolderForWeekHeight
            valueSerializer.writeNumber(valueHolderForWeekHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWeekWidth = value.weekWidth
        if (valueHolderForWeekWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWeekWidthTmpValue = valueHolderForWeekWidth
            valueSerializer.writeNumber(valueHolderForWeekWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWeekAndDayRowSpace = value.weekAndDayRowSpace
        if (valueHolderForWeekAndDayRowSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWeekAndDayRowSpaceTmpValue = valueHolderForWeekAndDayRowSpace
            valueSerializer.writeNumber(valueHolderForWeekAndDayRowSpaceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): WeekStyle {
        var valueDeserializer: DeserializerBase = buffer
        let weekColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weekColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weekColorTmpBuf_runtimeType))) {
            let weekColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var weekColorTmpBuf_: ResourceColor 
            if (weekColorTmpBuf_UnionSelector == Int8(0)) {
                weekColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (weekColorTmpBuf_UnionSelector == Int8(1)) {
                weekColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (weekColorTmpBuf_UnionSelector == Int8(2)) {
                weekColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (weekColorTmpBuf_UnionSelector == Int8(3)) {
                weekColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for weekColorTmpBuf_ has to be chosen through deserialisation.")
            }
            weekColorTmpBuf = match (weekColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let weekColorTmpResult: Option<ResourceColor> = weekColorTmpBuf
        let weekendDayColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weekendDayColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weekendDayColorTmpBuf_runtimeType))) {
            let weekendDayColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var weekendDayColorTmpBuf_: ResourceColor 
            if (weekendDayColorTmpBuf_UnionSelector == Int8(0)) {
                weekendDayColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (weekendDayColorTmpBuf_UnionSelector == Int8(1)) {
                weekendDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (weekendDayColorTmpBuf_UnionSelector == Int8(2)) {
                weekendDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (weekendDayColorTmpBuf_UnionSelector == Int8(3)) {
                weekendDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for weekendDayColorTmpBuf_ has to be chosen through deserialisation.")
            }
            weekendDayColorTmpBuf = match (weekendDayColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let weekendDayColorTmpResult: Option<ResourceColor> = weekendDayColorTmpBuf
        let weekendLunarColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weekendLunarColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weekendLunarColorTmpBuf_runtimeType))) {
            let weekendLunarColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var weekendLunarColorTmpBuf_: ResourceColor 
            if (weekendLunarColorTmpBuf_UnionSelector == Int8(0)) {
                weekendLunarColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (weekendLunarColorTmpBuf_UnionSelector == Int8(1)) {
                weekendLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (weekendLunarColorTmpBuf_UnionSelector == Int8(2)) {
                weekendLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (weekendLunarColorTmpBuf_UnionSelector == Int8(3)) {
                weekendLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for weekendLunarColorTmpBuf_ has to be chosen through deserialisation.")
            }
            weekendLunarColorTmpBuf = match (weekendLunarColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let weekendLunarColorTmpResult: Option<ResourceColor> = weekendLunarColorTmpBuf
        let weekFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weekFontSizeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weekFontSizeTmpBuf_runtimeType))) {
            weekFontSizeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let weekFontSizeTmpResult: Option<Float64> = weekFontSizeTmpBuf
        let weekHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weekHeightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weekHeightTmpBuf_runtimeType))) {
            weekHeightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let weekHeightTmpResult: Option<Float64> = weekHeightTmpBuf
        let weekWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weekWidthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weekWidthTmpBuf_runtimeType))) {
            weekWidthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let weekWidthTmpResult: Option<Float64> = weekWidthTmpBuf
        let weekAndDayRowSpaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var weekAndDayRowSpaceTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(weekAndDayRowSpaceTmpBuf_runtimeType))) {
            weekAndDayRowSpaceTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let weekAndDayRowSpaceTmpResult: Option<Float64> = weekAndDayRowSpaceTmpBuf
        var value: WeekStyle = WeekStyle(weekColorTmpResult, weekendDayColorTmpResult, weekendLunarColorTmpResult, weekFontSizeTmpResult, weekHeightTmpResult, weekWidthTmpResult, weekAndDayRowSpaceTmpResult)
        return value
    }
}
