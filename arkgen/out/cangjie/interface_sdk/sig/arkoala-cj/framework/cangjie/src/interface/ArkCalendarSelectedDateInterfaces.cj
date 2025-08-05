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
public interface CalendarSelectedDateInterfaces <:  {
    public mut open prop year: Float64
    public mut open prop month: Float64
    public mut open prop day: Float64
}
public open class CalendarSelectedDate <: CalendarSelectedDateInterfaces {
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
    CalendarSelectedDate(year: Float64, month: Float64, day: Float64) {
        this.year_container = year
        this.month_container = month
        this.day_container = day
    }
}
public open class CalendarSelectedDate_serializer {
    public static func write(buffer: SerializerBase, value: CalendarSelectedDate): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForYear = value.year
        valueSerializer.writeNumber(valueHolderForYear);
        let valueHolderForMonth = value.month
        valueSerializer.writeNumber(valueHolderForMonth);
        let valueHolderForDay = value.day
        valueSerializer.writeNumber(valueHolderForDay);
    }
    public static func read(buffer: DeserializerBase): CalendarSelectedDate {
        var valueDeserializer: DeserializerBase = buffer
        let yearTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let monthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let dayTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: CalendarSelectedDate = CalendarSelectedDate(yearTmpResult, monthTmpResult, dayTmpResult)
        return value
    }
}
