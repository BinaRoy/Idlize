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
public interface CalendarDayInterfaces <:  {
    public mut open prop index: Float64
    public mut open prop lunarMonth: String
    public mut open prop lunarDay: String
    public mut open prop dayMark: String
    public mut open prop dayMarkValue: String
    public mut open prop year: Float64
    public mut open prop month: Float64
    public mut open prop day: Float64
    public mut open prop isFirstOfLunar: Bool
    public mut open prop hasSchedule: Bool
    public mut open prop markLunarDay: Bool
}
public open class CalendarDay <: CalendarDayInterfaces {
    private var index_container: Float64
    public mut open prop index: Float64
    {
        get() {
            return index_container
        }
        set(index) {
            index_container = index
        }
    }
    private var lunarMonth_container: String
    public mut open prop lunarMonth: String
    {
        get() {
            return lunarMonth_container
        }
        set(lunarMonth) {
            lunarMonth_container = lunarMonth
        }
    }
    private var lunarDay_container: String
    public mut open prop lunarDay: String
    {
        get() {
            return lunarDay_container
        }
        set(lunarDay) {
            lunarDay_container = lunarDay
        }
    }
    private var dayMark_container: String
    public mut open prop dayMark: String
    {
        get() {
            return dayMark_container
        }
        set(dayMark) {
            dayMark_container = dayMark
        }
    }
    private var dayMarkValue_container: String
    public mut open prop dayMarkValue: String
    {
        get() {
            return dayMarkValue_container
        }
        set(dayMarkValue) {
            dayMarkValue_container = dayMarkValue
        }
    }
    private var year_container: Float64
    public mut open prop year: Float64
    {
        get() {
            return year_container
        }
        set(year) {
            year_container = year
        }
    }
    private var month_container: Float64
    public mut open prop month: Float64
    {
        get() {
            return month_container
        }
        set(month) {
            month_container = month
        }
    }
    private var day_container: Float64
    public mut open prop day: Float64
    {
        get() {
            return day_container
        }
        set(day) {
            day_container = day
        }
    }
    private var isFirstOfLunar_container: Bool
    public mut open prop isFirstOfLunar: Bool
    {
        get() {
            return isFirstOfLunar_container
        }
        set(isFirstOfLunar) {
            isFirstOfLunar_container = isFirstOfLunar
        }
    }
    private var hasSchedule_container: Bool
    public mut open prop hasSchedule: Bool
    {
        get() {
            return hasSchedule_container
        }
        set(hasSchedule) {
            hasSchedule_container = hasSchedule
        }
    }
    private var markLunarDay_container: Bool
    public mut open prop markLunarDay: Bool
    {
        get() {
            return markLunarDay_container
        }
        set(markLunarDay) {
            markLunarDay_container = markLunarDay
        }
    }
    CalendarDay(index: Float64, lunarMonth: String, lunarDay: String, dayMark: String, dayMarkValue: String, year: Float64, month: Float64, day: Float64, isFirstOfLunar: Bool, hasSchedule: Bool, markLunarDay: Bool) {
        this.index_container = index
        this.lunarMonth_container = lunarMonth
        this.lunarDay_container = lunarDay
        this.dayMark_container = dayMark
        this.dayMarkValue_container = dayMarkValue
        this.year_container = year
        this.month_container = month
        this.day_container = day
        this.isFirstOfLunar_container = isFirstOfLunar
        this.hasSchedule_container = hasSchedule
        this.markLunarDay_container = markLunarDay
    }
}
public open class CalendarDay_serializer {
    public static func write(buffer: SerializerBase, value: CalendarDay): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIndex = value.index
        valueSerializer.writeNumber(valueHolderForIndex);
        let valueHolderForLunarMonth = value.lunarMonth
        valueSerializer.writeString(valueHolderForLunarMonth);
        let valueHolderForLunarDay = value.lunarDay
        valueSerializer.writeString(valueHolderForLunarDay);
        let valueHolderForDayMark = value.dayMark
        valueSerializer.writeString(valueHolderForDayMark);
        let valueHolderForDayMarkValue = value.dayMarkValue
        valueSerializer.writeString(valueHolderForDayMarkValue);
        let valueHolderForYear = value.year
        valueSerializer.writeNumber(valueHolderForYear);
        let valueHolderForMonth = value.month
        valueSerializer.writeNumber(valueHolderForMonth);
        let valueHolderForDay = value.day
        valueSerializer.writeNumber(valueHolderForDay);
        let valueHolderForIsFirstOfLunar = value.isFirstOfLunar
        valueSerializer.writeBoolean(valueHolderForIsFirstOfLunar);
        let valueHolderForHasSchedule = value.hasSchedule
        valueSerializer.writeBoolean(valueHolderForHasSchedule);
        let valueHolderForMarkLunarDay = value.markLunarDay
        valueSerializer.writeBoolean(valueHolderForMarkLunarDay);
    }
    public static func read(buffer: DeserializerBase): CalendarDay {
        var valueDeserializer: DeserializerBase = buffer
        let indexTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let lunarMonthTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let lunarDayTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let dayMarkTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let dayMarkValueTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yearTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let monthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let dayTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let isFirstOfLunarTmpResult: Bool = valueDeserializer.readBoolean()
        let hasScheduleTmpResult: Bool = valueDeserializer.readBoolean()
        let markLunarDayTmpResult: Bool = valueDeserializer.readBoolean()
        var value: CalendarDay = CalendarDay(indexTmpResult, lunarMonthTmpResult, lunarDayTmpResult, dayMarkTmpResult, dayMarkValueTmpResult, yearTmpResult, monthTmpResult, dayTmpResult, isFirstOfLunarTmpResult, hasScheduleTmpResult, markLunarDayTmpResult)
        return value
    }
}
