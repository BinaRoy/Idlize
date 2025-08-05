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
public interface DatePickerResultInterfaces <:  {
    public mut open prop year: Option<Float64>
    public mut open prop month: Option<Float64>
    public mut open prop day: Option<Float64>
}
public open class DatePickerResult <: DatePickerResultInterfaces {
    private var year_container: Option<Float64>
    public mut open prop year: Option<Float64>
    {
        get() {
            return year_container
        }
        set(year) {
            year_container = year
        }
    }
    private var month_container: Option<Float64>
    public mut open prop month: Option<Float64>
    {
        get() {
            return month_container
        }
        set(month) {
            month_container = month
        }
    }
    private var day_container: Option<Float64>
    public mut open prop day: Option<Float64>
    {
        get() {
            return day_container
        }
        set(day) {
            day_container = day
        }
    }
    DatePickerResult(year: Option<Float64>, month: Option<Float64>, day: Option<Float64>) {
        this.year_container = year
        this.month_container = month
        this.day_container = day
    }
}
public open class DatePickerResult_serializer {
    public static func write(buffer: SerializerBase, value: DatePickerResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForYear = value.year
        if (valueHolderForYear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForYearTmpValue = valueHolderForYear
            valueSerializer.writeNumber(valueHolderForYearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMonth = value.month
        if (valueHolderForMonth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMonthTmpValue = valueHolderForMonth
            valueSerializer.writeNumber(valueHolderForMonthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDay = value.day
        if (valueHolderForDay.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDayTmpValue = valueHolderForDay
            valueSerializer.writeNumber(valueHolderForDayTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DatePickerResult {
        var valueDeserializer: DeserializerBase = buffer
        let yearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yearTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yearTmpBuf_runtimeType))) {
            yearTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let yearTmpResult: Option<Float64> = yearTmpBuf
        let monthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var monthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(monthTmpBuf_runtimeType))) {
            monthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let monthTmpResult: Option<Float64> = monthTmpBuf
        let dayTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dayTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dayTmpBuf_runtimeType))) {
            dayTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dayTmpResult: Option<Float64> = dayTmpBuf
        var value: DatePickerResult = DatePickerResult(yearTmpResult, monthTmpResult, dayTmpResult)
        return value
    }
}
