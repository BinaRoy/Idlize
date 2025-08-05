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
public interface CurrentDayStyleInterfaces <:  {
    public mut open prop dayColor: Option<ResourceColor>
    public mut open prop lunarColor: Option<ResourceColor>
    public mut open prop markLunarColor: Option<ResourceColor>
    public mut open prop dayFontSize: Option<Float64>
    public mut open prop lunarDayFontSize: Option<Float64>
    public mut open prop dayHeight: Option<Float64>
    public mut open prop dayWidth: Option<Float64>
    public mut open prop gregorianCalendarHeight: Option<Float64>
    public mut open prop dayYAxisOffset: Option<Float64>
    public mut open prop lunarDayYAxisOffset: Option<Float64>
    public mut open prop underscoreXAxisOffset: Option<Float64>
    public mut open prop underscoreYAxisOffset: Option<Float64>
    public mut open prop scheduleMarkerXAxisOffset: Option<Float64>
    public mut open prop scheduleMarkerYAxisOffset: Option<Float64>
    public mut open prop colSpace: Option<Float64>
    public mut open prop dailyFiveRowSpace: Option<Float64>
    public mut open prop dailySixRowSpace: Option<Float64>
    public mut open prop lunarHeight: Option<Float64>
    public mut open prop underscoreWidth: Option<Float64>
    public mut open prop underscoreLength: Option<Float64>
    public mut open prop scheduleMarkerRadius: Option<Float64>
    public mut open prop boundaryRowOffset: Option<Float64>
    public mut open prop boundaryColOffset: Option<Float64>
}
public open class CurrentDayStyle <: CurrentDayStyleInterfaces {
    private var dayColor_container: Option<ResourceColor>
    public mut open prop dayColor: Option<ResourceColor>
    {
        get() {
            return dayColor_container
        }
        set(dayColor) {
            dayColor_container = dayColor
        }
    }
    private var lunarColor_container: Option<ResourceColor>
    public mut open prop lunarColor: Option<ResourceColor>
    {
        get() {
            return lunarColor_container
        }
        set(lunarColor) {
            lunarColor_container = lunarColor
        }
    }
    private var markLunarColor_container: Option<ResourceColor>
    public mut open prop markLunarColor: Option<ResourceColor>
    {
        get() {
            return markLunarColor_container
        }
        set(markLunarColor) {
            markLunarColor_container = markLunarColor
        }
    }
    private var dayFontSize_container: Option<Float64>
    public mut open prop dayFontSize: Option<Float64>
    {
        get() {
            return dayFontSize_container
        }
        set(dayFontSize) {
            dayFontSize_container = dayFontSize
        }
    }
    private var lunarDayFontSize_container: Option<Float64>
    public mut open prop lunarDayFontSize: Option<Float64>
    {
        get() {
            return lunarDayFontSize_container
        }
        set(lunarDayFontSize) {
            lunarDayFontSize_container = lunarDayFontSize
        }
    }
    private var dayHeight_container: Option<Float64>
    public mut open prop dayHeight: Option<Float64>
    {
        get() {
            return dayHeight_container
        }
        set(dayHeight) {
            dayHeight_container = dayHeight
        }
    }
    private var dayWidth_container: Option<Float64>
    public mut open prop dayWidth: Option<Float64>
    {
        get() {
            return dayWidth_container
        }
        set(dayWidth) {
            dayWidth_container = dayWidth
        }
    }
    private var gregorianCalendarHeight_container: Option<Float64>
    public mut open prop gregorianCalendarHeight: Option<Float64>
    {
        get() {
            return gregorianCalendarHeight_container
        }
        set(gregorianCalendarHeight) {
            gregorianCalendarHeight_container = gregorianCalendarHeight
        }
    }
    private var dayYAxisOffset_container: Option<Float64>
    public mut open prop dayYAxisOffset: Option<Float64>
    {
        get() {
            return dayYAxisOffset_container
        }
        set(dayYAxisOffset) {
            dayYAxisOffset_container = dayYAxisOffset
        }
    }
    private var lunarDayYAxisOffset_container: Option<Float64>
    public mut open prop lunarDayYAxisOffset: Option<Float64>
    {
        get() {
            return lunarDayYAxisOffset_container
        }
        set(lunarDayYAxisOffset) {
            lunarDayYAxisOffset_container = lunarDayYAxisOffset
        }
    }
    private var underscoreXAxisOffset_container: Option<Float64>
    public mut open prop underscoreXAxisOffset: Option<Float64>
    {
        get() {
            return underscoreXAxisOffset_container
        }
        set(underscoreXAxisOffset) {
            underscoreXAxisOffset_container = underscoreXAxisOffset
        }
    }
    private var underscoreYAxisOffset_container: Option<Float64>
    public mut open prop underscoreYAxisOffset: Option<Float64>
    {
        get() {
            return underscoreYAxisOffset_container
        }
        set(underscoreYAxisOffset) {
            underscoreYAxisOffset_container = underscoreYAxisOffset
        }
    }
    private var scheduleMarkerXAxisOffset_container: Option<Float64>
    public mut open prop scheduleMarkerXAxisOffset: Option<Float64>
    {
        get() {
            return scheduleMarkerXAxisOffset_container
        }
        set(scheduleMarkerXAxisOffset) {
            scheduleMarkerXAxisOffset_container = scheduleMarkerXAxisOffset
        }
    }
    private var scheduleMarkerYAxisOffset_container: Option<Float64>
    public mut open prop scheduleMarkerYAxisOffset: Option<Float64>
    {
        get() {
            return scheduleMarkerYAxisOffset_container
        }
        set(scheduleMarkerYAxisOffset) {
            scheduleMarkerYAxisOffset_container = scheduleMarkerYAxisOffset
        }
    }
    private var colSpace_container: Option<Float64>
    public mut open prop colSpace: Option<Float64>
    {
        get() {
            return colSpace_container
        }
        set(colSpace) {
            colSpace_container = colSpace
        }
    }
    private var dailyFiveRowSpace_container: Option<Float64>
    public mut open prop dailyFiveRowSpace: Option<Float64>
    {
        get() {
            return dailyFiveRowSpace_container
        }
        set(dailyFiveRowSpace) {
            dailyFiveRowSpace_container = dailyFiveRowSpace
        }
    }
    private var dailySixRowSpace_container: Option<Float64>
    public mut open prop dailySixRowSpace: Option<Float64>
    {
        get() {
            return dailySixRowSpace_container
        }
        set(dailySixRowSpace) {
            dailySixRowSpace_container = dailySixRowSpace
        }
    }
    private var lunarHeight_container: Option<Float64>
    public mut open prop lunarHeight: Option<Float64>
    {
        get() {
            return lunarHeight_container
        }
        set(lunarHeight) {
            lunarHeight_container = lunarHeight
        }
    }
    private var underscoreWidth_container: Option<Float64>
    public mut open prop underscoreWidth: Option<Float64>
    {
        get() {
            return underscoreWidth_container
        }
        set(underscoreWidth) {
            underscoreWidth_container = underscoreWidth
        }
    }
    private var underscoreLength_container: Option<Float64>
    public mut open prop underscoreLength: Option<Float64>
    {
        get() {
            return underscoreLength_container
        }
        set(underscoreLength) {
            underscoreLength_container = underscoreLength
        }
    }
    private var scheduleMarkerRadius_container: Option<Float64>
    public mut open prop scheduleMarkerRadius: Option<Float64>
    {
        get() {
            return scheduleMarkerRadius_container
        }
        set(scheduleMarkerRadius) {
            scheduleMarkerRadius_container = scheduleMarkerRadius
        }
    }
    private var boundaryRowOffset_container: Option<Float64>
    public mut open prop boundaryRowOffset: Option<Float64>
    {
        get() {
            return boundaryRowOffset_container
        }
        set(boundaryRowOffset) {
            boundaryRowOffset_container = boundaryRowOffset
        }
    }
    private var boundaryColOffset_container: Option<Float64>
    public mut open prop boundaryColOffset: Option<Float64>
    {
        get() {
            return boundaryColOffset_container
        }
        set(boundaryColOffset) {
            boundaryColOffset_container = boundaryColOffset
        }
    }
    CurrentDayStyle(dayColor: Option<ResourceColor>, lunarColor: Option<ResourceColor>, markLunarColor: Option<ResourceColor>, dayFontSize: Option<Float64>, lunarDayFontSize: Option<Float64>, dayHeight: Option<Float64>, dayWidth: Option<Float64>, gregorianCalendarHeight: Option<Float64>, dayYAxisOffset: Option<Float64>, lunarDayYAxisOffset: Option<Float64>, underscoreXAxisOffset: Option<Float64>, underscoreYAxisOffset: Option<Float64>, scheduleMarkerXAxisOffset: Option<Float64>, scheduleMarkerYAxisOffset: Option<Float64>, colSpace: Option<Float64>, dailyFiveRowSpace: Option<Float64>, dailySixRowSpace: Option<Float64>, lunarHeight: Option<Float64>, underscoreWidth: Option<Float64>, underscoreLength: Option<Float64>, scheduleMarkerRadius: Option<Float64>, boundaryRowOffset: Option<Float64>, boundaryColOffset: Option<Float64>) {
        this.dayColor_container = dayColor
        this.lunarColor_container = lunarColor
        this.markLunarColor_container = markLunarColor
        this.dayFontSize_container = dayFontSize
        this.lunarDayFontSize_container = lunarDayFontSize
        this.dayHeight_container = dayHeight
        this.dayWidth_container = dayWidth
        this.gregorianCalendarHeight_container = gregorianCalendarHeight
        this.dayYAxisOffset_container = dayYAxisOffset
        this.lunarDayYAxisOffset_container = lunarDayYAxisOffset
        this.underscoreXAxisOffset_container = underscoreXAxisOffset
        this.underscoreYAxisOffset_container = underscoreYAxisOffset
        this.scheduleMarkerXAxisOffset_container = scheduleMarkerXAxisOffset
        this.scheduleMarkerYAxisOffset_container = scheduleMarkerYAxisOffset
        this.colSpace_container = colSpace
        this.dailyFiveRowSpace_container = dailyFiveRowSpace
        this.dailySixRowSpace_container = dailySixRowSpace
        this.lunarHeight_container = lunarHeight
        this.underscoreWidth_container = underscoreWidth
        this.underscoreLength_container = underscoreLength
        this.scheduleMarkerRadius_container = scheduleMarkerRadius
        this.boundaryRowOffset_container = boundaryRowOffset
        this.boundaryColOffset_container = boundaryColOffset
    }
}
public open class CurrentDayStyle_serializer {
    public static func write(buffer: SerializerBase, value: CurrentDayStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDayColor = value.dayColor
        if (valueHolderForDayColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDayColorTmpValue = valueHolderForDayColor
            if (valueHolderForDayColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForDayColorTmpValueForIdx0 = valueHolderForDayColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForDayColorTmpValueForIdx0.value);
            } else if (valueHolderForDayColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForDayColorTmpValueForIdx1 = valueHolderForDayColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForDayColorTmpValueForIdx1);
            } else if (valueHolderForDayColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForDayColorTmpValueForIdx2 = valueHolderForDayColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForDayColorTmpValueForIdx2);
            } else if (valueHolderForDayColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForDayColorTmpValueForIdx3 = valueHolderForDayColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForDayColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLunarColor = value.lunarColor
        if (valueHolderForLunarColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLunarColorTmpValue = valueHolderForLunarColor
            if (valueHolderForLunarColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLunarColorTmpValueForIdx0 = valueHolderForLunarColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForLunarColorTmpValueForIdx0.value);
            } else if (valueHolderForLunarColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLunarColorTmpValueForIdx1 = valueHolderForLunarColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForLunarColorTmpValueForIdx1);
            } else if (valueHolderForLunarColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForLunarColorTmpValueForIdx2 = valueHolderForLunarColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForLunarColorTmpValueForIdx2);
            } else if (valueHolderForLunarColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForLunarColorTmpValueForIdx3 = valueHolderForLunarColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForLunarColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMarkLunarColor = value.markLunarColor
        if (valueHolderForMarkLunarColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarkLunarColorTmpValue = valueHolderForMarkLunarColor
            if (valueHolderForMarkLunarColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarkLunarColorTmpValueForIdx0 = valueHolderForMarkLunarColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForMarkLunarColorTmpValueForIdx0.value);
            } else if (valueHolderForMarkLunarColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarkLunarColorTmpValueForIdx1 = valueHolderForMarkLunarColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMarkLunarColorTmpValueForIdx1);
            } else if (valueHolderForMarkLunarColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMarkLunarColorTmpValueForIdx2 = valueHolderForMarkLunarColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForMarkLunarColorTmpValueForIdx2);
            } else if (valueHolderForMarkLunarColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForMarkLunarColorTmpValueForIdx3 = valueHolderForMarkLunarColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForMarkLunarColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDayFontSize = value.dayFontSize
        if (valueHolderForDayFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDayFontSizeTmpValue = valueHolderForDayFontSize
            valueSerializer.writeNumber(valueHolderForDayFontSizeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLunarDayFontSize = value.lunarDayFontSize
        if (valueHolderForLunarDayFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLunarDayFontSizeTmpValue = valueHolderForLunarDayFontSize
            valueSerializer.writeNumber(valueHolderForLunarDayFontSizeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDayHeight = value.dayHeight
        if (valueHolderForDayHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDayHeightTmpValue = valueHolderForDayHeight
            valueSerializer.writeNumber(valueHolderForDayHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDayWidth = value.dayWidth
        if (valueHolderForDayWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDayWidthTmpValue = valueHolderForDayWidth
            valueSerializer.writeNumber(valueHolderForDayWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForGregorianCalendarHeight = value.gregorianCalendarHeight
        if (valueHolderForGregorianCalendarHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGregorianCalendarHeightTmpValue = valueHolderForGregorianCalendarHeight
            valueSerializer.writeNumber(valueHolderForGregorianCalendarHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDayYAxisOffset = value.dayYAxisOffset
        if (valueHolderForDayYAxisOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDayYAxisOffsetTmpValue = valueHolderForDayYAxisOffset
            valueSerializer.writeNumber(valueHolderForDayYAxisOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLunarDayYAxisOffset = value.lunarDayYAxisOffset
        if (valueHolderForLunarDayYAxisOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLunarDayYAxisOffsetTmpValue = valueHolderForLunarDayYAxisOffset
            valueSerializer.writeNumber(valueHolderForLunarDayYAxisOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUnderscoreXAxisOffset = value.underscoreXAxisOffset
        if (valueHolderForUnderscoreXAxisOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUnderscoreXAxisOffsetTmpValue = valueHolderForUnderscoreXAxisOffset
            valueSerializer.writeNumber(valueHolderForUnderscoreXAxisOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUnderscoreYAxisOffset = value.underscoreYAxisOffset
        if (valueHolderForUnderscoreYAxisOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUnderscoreYAxisOffsetTmpValue = valueHolderForUnderscoreYAxisOffset
            valueSerializer.writeNumber(valueHolderForUnderscoreYAxisOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScheduleMarkerXAxisOffset = value.scheduleMarkerXAxisOffset
        if (valueHolderForScheduleMarkerXAxisOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScheduleMarkerXAxisOffsetTmpValue = valueHolderForScheduleMarkerXAxisOffset
            valueSerializer.writeNumber(valueHolderForScheduleMarkerXAxisOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScheduleMarkerYAxisOffset = value.scheduleMarkerYAxisOffset
        if (valueHolderForScheduleMarkerYAxisOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScheduleMarkerYAxisOffsetTmpValue = valueHolderForScheduleMarkerYAxisOffset
            valueSerializer.writeNumber(valueHolderForScheduleMarkerYAxisOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColSpace = value.colSpace
        if (valueHolderForColSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColSpaceTmpValue = valueHolderForColSpace
            valueSerializer.writeNumber(valueHolderForColSpaceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDailyFiveRowSpace = value.dailyFiveRowSpace
        if (valueHolderForDailyFiveRowSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDailyFiveRowSpaceTmpValue = valueHolderForDailyFiveRowSpace
            valueSerializer.writeNumber(valueHolderForDailyFiveRowSpaceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDailySixRowSpace = value.dailySixRowSpace
        if (valueHolderForDailySixRowSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDailySixRowSpaceTmpValue = valueHolderForDailySixRowSpace
            valueSerializer.writeNumber(valueHolderForDailySixRowSpaceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLunarHeight = value.lunarHeight
        if (valueHolderForLunarHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLunarHeightTmpValue = valueHolderForLunarHeight
            valueSerializer.writeNumber(valueHolderForLunarHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUnderscoreWidth = value.underscoreWidth
        if (valueHolderForUnderscoreWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUnderscoreWidthTmpValue = valueHolderForUnderscoreWidth
            valueSerializer.writeNumber(valueHolderForUnderscoreWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUnderscoreLength = value.underscoreLength
        if (valueHolderForUnderscoreLength.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUnderscoreLengthTmpValue = valueHolderForUnderscoreLength
            valueSerializer.writeNumber(valueHolderForUnderscoreLengthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScheduleMarkerRadius = value.scheduleMarkerRadius
        if (valueHolderForScheduleMarkerRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScheduleMarkerRadiusTmpValue = valueHolderForScheduleMarkerRadius
            valueSerializer.writeNumber(valueHolderForScheduleMarkerRadiusTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBoundaryRowOffset = value.boundaryRowOffset
        if (valueHolderForBoundaryRowOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBoundaryRowOffsetTmpValue = valueHolderForBoundaryRowOffset
            valueSerializer.writeNumber(valueHolderForBoundaryRowOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBoundaryColOffset = value.boundaryColOffset
        if (valueHolderForBoundaryColOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBoundaryColOffsetTmpValue = valueHolderForBoundaryColOffset
            valueSerializer.writeNumber(valueHolderForBoundaryColOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CurrentDayStyle {
        var valueDeserializer: DeserializerBase = buffer
        let dayColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dayColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dayColorTmpBuf_runtimeType))) {
            let dayColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var dayColorTmpBuf_: ResourceColor 
            if (dayColorTmpBuf_UnionSelector == Int8(0)) {
                dayColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (dayColorTmpBuf_UnionSelector == Int8(1)) {
                dayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (dayColorTmpBuf_UnionSelector == Int8(2)) {
                dayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (dayColorTmpBuf_UnionSelector == Int8(3)) {
                dayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for dayColorTmpBuf_ has to be chosen through deserialisation.")
            }
            dayColorTmpBuf = match (dayColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dayColorTmpResult: Option<ResourceColor> = dayColorTmpBuf
        let lunarColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lunarColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lunarColorTmpBuf_runtimeType))) {
            let lunarColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var lunarColorTmpBuf_: ResourceColor 
            if (lunarColorTmpBuf_UnionSelector == Int8(0)) {
                lunarColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (lunarColorTmpBuf_UnionSelector == Int8(1)) {
                lunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (lunarColorTmpBuf_UnionSelector == Int8(2)) {
                lunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (lunarColorTmpBuf_UnionSelector == Int8(3)) {
                lunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for lunarColorTmpBuf_ has to be chosen through deserialisation.")
            }
            lunarColorTmpBuf = match (lunarColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lunarColorTmpResult: Option<ResourceColor> = lunarColorTmpBuf
        let markLunarColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var markLunarColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(markLunarColorTmpBuf_runtimeType))) {
            let markLunarColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var markLunarColorTmpBuf_: ResourceColor 
            if (markLunarColorTmpBuf_UnionSelector == Int8(0)) {
                markLunarColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (markLunarColorTmpBuf_UnionSelector == Int8(1)) {
                markLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (markLunarColorTmpBuf_UnionSelector == Int8(2)) {
                markLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (markLunarColorTmpBuf_UnionSelector == Int8(3)) {
                markLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for markLunarColorTmpBuf_ has to be chosen through deserialisation.")
            }
            markLunarColorTmpBuf = match (markLunarColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let markLunarColorTmpResult: Option<ResourceColor> = markLunarColorTmpBuf
        let dayFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dayFontSizeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dayFontSizeTmpBuf_runtimeType))) {
            dayFontSizeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dayFontSizeTmpResult: Option<Float64> = dayFontSizeTmpBuf
        let lunarDayFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lunarDayFontSizeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lunarDayFontSizeTmpBuf_runtimeType))) {
            lunarDayFontSizeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lunarDayFontSizeTmpResult: Option<Float64> = lunarDayFontSizeTmpBuf
        let dayHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dayHeightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dayHeightTmpBuf_runtimeType))) {
            dayHeightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dayHeightTmpResult: Option<Float64> = dayHeightTmpBuf
        let dayWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dayWidthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dayWidthTmpBuf_runtimeType))) {
            dayWidthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dayWidthTmpResult: Option<Float64> = dayWidthTmpBuf
        let gregorianCalendarHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var gregorianCalendarHeightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(gregorianCalendarHeightTmpBuf_runtimeType))) {
            gregorianCalendarHeightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let gregorianCalendarHeightTmpResult: Option<Float64> = gregorianCalendarHeightTmpBuf
        let dayYAxisOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dayYAxisOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dayYAxisOffsetTmpBuf_runtimeType))) {
            dayYAxisOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dayYAxisOffsetTmpResult: Option<Float64> = dayYAxisOffsetTmpBuf
        let lunarDayYAxisOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lunarDayYAxisOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lunarDayYAxisOffsetTmpBuf_runtimeType))) {
            lunarDayYAxisOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lunarDayYAxisOffsetTmpResult: Option<Float64> = lunarDayYAxisOffsetTmpBuf
        let underscoreXAxisOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var underscoreXAxisOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(underscoreXAxisOffsetTmpBuf_runtimeType))) {
            underscoreXAxisOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let underscoreXAxisOffsetTmpResult: Option<Float64> = underscoreXAxisOffsetTmpBuf
        let underscoreYAxisOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var underscoreYAxisOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(underscoreYAxisOffsetTmpBuf_runtimeType))) {
            underscoreYAxisOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let underscoreYAxisOffsetTmpResult: Option<Float64> = underscoreYAxisOffsetTmpBuf
        let scheduleMarkerXAxisOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scheduleMarkerXAxisOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scheduleMarkerXAxisOffsetTmpBuf_runtimeType))) {
            scheduleMarkerXAxisOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scheduleMarkerXAxisOffsetTmpResult: Option<Float64> = scheduleMarkerXAxisOffsetTmpBuf
        let scheduleMarkerYAxisOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scheduleMarkerYAxisOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scheduleMarkerYAxisOffsetTmpBuf_runtimeType))) {
            scheduleMarkerYAxisOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scheduleMarkerYAxisOffsetTmpResult: Option<Float64> = scheduleMarkerYAxisOffsetTmpBuf
        let colSpaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colSpaceTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colSpaceTmpBuf_runtimeType))) {
            colSpaceTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colSpaceTmpResult: Option<Float64> = colSpaceTmpBuf
        let dailyFiveRowSpaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dailyFiveRowSpaceTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dailyFiveRowSpaceTmpBuf_runtimeType))) {
            dailyFiveRowSpaceTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dailyFiveRowSpaceTmpResult: Option<Float64> = dailyFiveRowSpaceTmpBuf
        let dailySixRowSpaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dailySixRowSpaceTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dailySixRowSpaceTmpBuf_runtimeType))) {
            dailySixRowSpaceTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dailySixRowSpaceTmpResult: Option<Float64> = dailySixRowSpaceTmpBuf
        let lunarHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lunarHeightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lunarHeightTmpBuf_runtimeType))) {
            lunarHeightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lunarHeightTmpResult: Option<Float64> = lunarHeightTmpBuf
        let underscoreWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var underscoreWidthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(underscoreWidthTmpBuf_runtimeType))) {
            underscoreWidthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let underscoreWidthTmpResult: Option<Float64> = underscoreWidthTmpBuf
        let underscoreLengthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var underscoreLengthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(underscoreLengthTmpBuf_runtimeType))) {
            underscoreLengthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let underscoreLengthTmpResult: Option<Float64> = underscoreLengthTmpBuf
        let scheduleMarkerRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scheduleMarkerRadiusTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scheduleMarkerRadiusTmpBuf_runtimeType))) {
            scheduleMarkerRadiusTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scheduleMarkerRadiusTmpResult: Option<Float64> = scheduleMarkerRadiusTmpBuf
        let boundaryRowOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var boundaryRowOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(boundaryRowOffsetTmpBuf_runtimeType))) {
            boundaryRowOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let boundaryRowOffsetTmpResult: Option<Float64> = boundaryRowOffsetTmpBuf
        let boundaryColOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var boundaryColOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(boundaryColOffsetTmpBuf_runtimeType))) {
            boundaryColOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let boundaryColOffsetTmpResult: Option<Float64> = boundaryColOffsetTmpBuf
        var value: CurrentDayStyle = CurrentDayStyle(dayColorTmpResult, lunarColorTmpResult, markLunarColorTmpResult, dayFontSizeTmpResult, lunarDayFontSizeTmpResult, dayHeightTmpResult, dayWidthTmpResult, gregorianCalendarHeightTmpResult, dayYAxisOffsetTmpResult, lunarDayYAxisOffsetTmpResult, underscoreXAxisOffsetTmpResult, underscoreYAxisOffsetTmpResult, scheduleMarkerXAxisOffsetTmpResult, scheduleMarkerYAxisOffsetTmpResult, colSpaceTmpResult, dailyFiveRowSpaceTmpResult, dailySixRowSpaceTmpResult, lunarHeightTmpResult, underscoreWidthTmpResult, underscoreLengthTmpResult, scheduleMarkerRadiusTmpResult, boundaryRowOffsetTmpResult, boundaryColOffsetTmpResult)
        return value
    }
}
