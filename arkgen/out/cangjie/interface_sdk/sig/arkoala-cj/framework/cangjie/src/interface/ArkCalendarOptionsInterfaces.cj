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
public interface CalendarOptionsInterfaces <:  {
    public mut open prop hintRadius: Option<Union_Number_Resource>
    public mut open prop selected: Option<DateTime>
    public mut open prop start: Option<DateTime>
    public mut open prop end: Option<DateTime>
    public mut open prop disabledDateRange: Option<ArrayList<DateRange>>
}
public open class CalendarOptions <: CalendarOptionsInterfaces {
    private var hintRadius_container: Option<Union_Number_Resource>
    public mut open prop hintRadius: Option<Union_Number_Resource>
    {
        get() {
            return hintRadius_container
        }
        set(hintRadius) {
            hintRadius_container = hintRadius
        }
    }
    private var selected_container: Option<DateTime>
    public mut open prop selected: Option<DateTime>
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    private var start_container: Option<DateTime>
    public mut open prop start: Option<DateTime>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Option<DateTime>
    public mut open prop end: Option<DateTime>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var disabledDateRange_container: Option<ArrayList<DateRange>>
    public mut open prop disabledDateRange: Option<ArrayList<DateRange>>
    {
        get() {
            return disabledDateRange_container
        }
        set(disabledDateRange) {
            disabledDateRange_container = disabledDateRange
        }
    }
    CalendarOptions(hintRadius: Option<Union_Number_Resource>, selected: Option<DateTime>, start: Option<DateTime>, end: Option<DateTime>, disabledDateRange: Option<ArrayList<DateRange>>) {
        this.hintRadius_container = hintRadius
        this.selected_container = selected
        this.start_container = start
        this.end_container = end
        this.disabledDateRange_container = disabledDateRange
    }
}
public open class CalendarOptions_serializer {
    public static func write(buffer: SerializerBase, value: CalendarOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHintRadius = value.hintRadius
        if (valueHolderForHintRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHintRadiusTmpValue = valueHolderForHintRadius
            if (valueHolderForHintRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHintRadiusTmpValueForIdx0 = valueHolderForHintRadiusTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForHintRadiusTmpValueForIdx0);
            } else if (valueHolderForHintRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHintRadiusTmpValueForIdx1 = valueHolderForHintRadiusTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForHintRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSelected = value.selected
        if (valueHolderForSelected.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedTmpValue = valueHolderForSelected
            valueSerializer.writeInt64(match (valueHolderForSelectedTmpValue as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            valueSerializer.writeInt64(match (valueHolderForStartTmpValue as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            valueSerializer.writeInt64(match (valueHolderForEndTmpValue as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDisabledDateRange = value.disabledDateRange
        if (valueHolderForDisabledDateRange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisabledDateRangeTmpValue = valueHolderForDisabledDateRange
            valueSerializer.writeInt32(Int32(valueHolderForDisabledDateRangeTmpValue.size));
            for (valueHolderForDisabledDateRangeTmpValueCounterI in 0..valueHolderForDisabledDateRangeTmpValue.size) {
                let valueHolderForDisabledDateRangeTmpValueTmpElement: DateRange = valueHolderForDisabledDateRangeTmpValue[Int64(valueHolderForDisabledDateRangeTmpValueCounterI)]
                DateRange_serializer.write(valueSerializer, valueHolderForDisabledDateRangeTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CalendarOptions {
        var valueDeserializer: DeserializerBase = buffer
        let hintRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hintRadiusTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hintRadiusTmpBuf_runtimeType))) {
            let hintRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var hintRadiusTmpBuf_: Union_Number_Resource 
            if (hintRadiusTmpBuf_UnionSelector == Int8(0)) {
                hintRadiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (hintRadiusTmpBuf_UnionSelector == Int8(1)) {
                hintRadiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for hintRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            hintRadiusTmpBuf = match (hintRadiusTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let hintRadiusTmpResult: Option<Union_Number_Resource> = hintRadiusTmpBuf
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<DateTime> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            selectedTmpBuf = DateTime.now()
        }
        let selectedTmpResult: Option<DateTime> = selectedTmpBuf
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<DateTime> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = DateTime.now()
        }
        let startTmpResult: Option<DateTime> = startTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<DateTime> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            endTmpBuf = DateTime.now()
        }
        let endTmpResult: Option<DateTime> = endTmpBuf
        let disabledDateRangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disabledDateRangeTmpBuf: Option<ArrayList<DateRange>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disabledDateRangeTmpBuf_runtimeType))) {
            let disabledDateRangeTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var disabledDateRangeTmpBuf_: ArrayList<DateRange> = ArrayList<DateRange>(Int64(disabledDateRangeTmpBuf_Length))
            disabledDateRangeTmpBuf_ = ArrayList<DateRange>(Int64(disabledDateRangeTmpBuf_Length))
            for (disabledDateRangeTmpBuf_BufCounterI in 0..disabledDateRangeTmpBuf_Length) {
                disabledDateRangeTmpBuf_[Int64(disabledDateRangeTmpBuf_BufCounterI)] = DateRange_serializer.read(valueDeserializer)
            }
            disabledDateRangeTmpBuf = disabledDateRangeTmpBuf_
        }
        let disabledDateRangeTmpResult: Option<ArrayList<DateRange>> = disabledDateRangeTmpBuf
        var value: CalendarOptions = CalendarOptions(hintRadiusTmpResult, selectedTmpResult, startTmpResult, endTmpResult, disabledDateRangeTmpResult)
        return value
    }
}
