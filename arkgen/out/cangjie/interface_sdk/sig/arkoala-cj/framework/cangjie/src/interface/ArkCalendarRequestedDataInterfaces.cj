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
public interface CalendarRequestedDataInterfaces <:  {
    public mut open prop year: Float64
    public mut open prop month: Float64
    public mut open prop currentYear: Float64
    public mut open prop currentMonth: Float64
    public mut open prop monthState: Float64
}
public open class CalendarRequestedData <: CalendarRequestedDataInterfaces {
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
    private var currentYear_container: Float64
    public mut open prop currentYear: Float64
    {
        get() {
            return currentYear_container
        }
        set(currentYear) {
            currentYear_container = currentYear
        }
    }
    private var currentMonth_container: Float64
    public mut open prop currentMonth: Float64
    {
        get() {
            return currentMonth_container
        }
        set(currentMonth) {
            currentMonth_container = currentMonth
        }
    }
    private var monthState_container: Float64
    public mut open prop monthState: Float64
    {
        get() {
            return monthState_container
        }
        set(monthState) {
            monthState_container = monthState
        }
    }
    CalendarRequestedData(year: Float64, month: Float64, currentYear: Float64, currentMonth: Float64, monthState: Float64) {
        this.year_container = year
        this.month_container = month
        this.currentYear_container = currentYear
        this.currentMonth_container = currentMonth
        this.monthState_container = monthState
    }
}
public open class CalendarRequestedData_serializer {
    public static func write(buffer: SerializerBase, value: CalendarRequestedData): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForYear = value.year
        valueSerializer.writeNumber(valueHolderForYear);
        let valueHolderForMonth = value.month
        valueSerializer.writeNumber(valueHolderForMonth);
        let valueHolderForCurrentYear = value.currentYear
        valueSerializer.writeNumber(valueHolderForCurrentYear);
        let valueHolderForCurrentMonth = value.currentMonth
        valueSerializer.writeNumber(valueHolderForCurrentMonth);
        let valueHolderForMonthState = value.monthState
        valueSerializer.writeNumber(valueHolderForMonthState);
    }
    public static func read(buffer: DeserializerBase): CalendarRequestedData {
        var valueDeserializer: DeserializerBase = buffer
        let yearTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let monthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let currentYearTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let currentMonthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let monthStateTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: CalendarRequestedData = CalendarRequestedData(yearTmpResult, monthTmpResult, currentYearTmpResult, currentMonthTmpResult, monthStateTmpResult)
        return value
    }
}
