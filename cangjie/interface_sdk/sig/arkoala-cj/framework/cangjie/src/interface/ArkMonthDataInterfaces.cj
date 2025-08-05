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
public interface MonthDataInterfaces <:  {
    public mut open prop year: Float64
    public mut open prop month: Float64
    public mut open prop data: ArrayList<CalendarDay>
}
public open class MonthData <: MonthDataInterfaces {
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
    private var data_container: ArrayList<CalendarDay>
    public mut open prop data: ArrayList<CalendarDay>
    {
        get() {
            return data_container
        }
        set(data) {
            data_container = data
        }
    }
    MonthData(year: Float64, month: Float64, data: ArrayList<CalendarDay>) {
        this.year_container = year
        this.month_container = month
        this.data_container = data
    }
}
public open class MonthData_serializer {
    public static func write(buffer: SerializerBase, value: MonthData): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForYear = value.year
        valueSerializer.writeNumber(valueHolderForYear);
        let valueHolderForMonth = value.month
        valueSerializer.writeNumber(valueHolderForMonth);
        let valueHolderForData = value.data
        valueSerializer.writeInt32(Int32(valueHolderForData.size));
        for (valueHolderForDataCounterI in 0..valueHolderForData.size) {
            let valueHolderForDataTmpElement: CalendarDay = valueHolderForData[Int64(valueHolderForDataCounterI)]
            CalendarDay_serializer.write(valueSerializer, valueHolderForDataTmpElement);
        }
    }
    public static func read(buffer: DeserializerBase): MonthData {
        var valueDeserializer: DeserializerBase = buffer
        let yearTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let monthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let dataTmpBufLength: Int32 = valueDeserializer.readInt32()
        var dataTmpBuf: ArrayList<CalendarDay> = ArrayList<CalendarDay>(Int64(dataTmpBufLength))
        dataTmpBuf = ArrayList<CalendarDay>(Int64(dataTmpBufLength))
        for (dataTmpBufBufCounterI in 0..dataTmpBufLength) {
            dataTmpBuf[Int64(dataTmpBufBufCounterI)] = CalendarDay_serializer.read(valueDeserializer)
        }
        let dataTmpResult: ArrayList<CalendarDay> = dataTmpBuf
        var value: MonthData = MonthData(yearTmpResult, monthTmpResult, dataTmpResult)
        return value
    }
}
