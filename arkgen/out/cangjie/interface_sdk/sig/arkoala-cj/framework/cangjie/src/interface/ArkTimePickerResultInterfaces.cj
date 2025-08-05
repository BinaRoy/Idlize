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
public interface TimePickerResultInterfaces <:  {
    public mut open prop hour: Float64
    public mut open prop minute: Float64
    public mut open prop second: Float64
}
public open class TimePickerResult <: TimePickerResultInterfaces {
    private var hour_container: Float64
    public mut open prop hour: Float64
    {
        get() {
            return hour_container
        }
        set(hour) {
            hour_container = hour
        }
    }
    private var minute_container: Float64
    public mut open prop minute: Float64
    {
        get() {
            return minute_container
        }
        set(minute) {
            minute_container = minute
        }
    }
    private var second_container: Float64
    public mut open prop second: Float64
    {
        get() {
            return second_container
        }
        set(second) {
            second_container = second
        }
    }
    TimePickerResult(hour: Float64, minute: Float64, second: Float64) {
        this.hour_container = hour
        this.minute_container = minute
        this.second_container = second
    }
}
public open class TimePickerResult_serializer {
    public static func write(buffer: SerializerBase, value: TimePickerResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHour = value.hour
        valueSerializer.writeNumber(valueHolderForHour);
        let valueHolderForMinute = value.minute
        valueSerializer.writeNumber(valueHolderForMinute);
        let valueHolderForSecond = value.second
        valueSerializer.writeNumber(valueHolderForSecond);
    }
    public static func read(buffer: DeserializerBase): TimePickerResult {
        var valueDeserializer: DeserializerBase = buffer
        let hourTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let minuteTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let secondTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TimePickerResult = TimePickerResult(hourTmpResult, minuteTmpResult, secondTmpResult)
        return value
    }
}
