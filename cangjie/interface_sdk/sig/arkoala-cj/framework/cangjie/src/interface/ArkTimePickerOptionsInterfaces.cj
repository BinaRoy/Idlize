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
public interface TimePickerOptionsInterfaces <:  {
    public mut open prop selected: Option<Union_Date_Bindable>
    public mut open prop format: Option<TimePickerFormat>
    public mut open prop start: Option<DateTime>
    public mut open prop end: Option<DateTime>
}
public open class TimePickerOptions <: TimePickerOptionsInterfaces {
    private var selected_container: Option<Union_Date_Bindable>
    public mut open prop selected: Option<Union_Date_Bindable>
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    private var format_container: Option<TimePickerFormat>
    public mut open prop format: Option<TimePickerFormat>
    {
        get() {
            return format_container
        }
        set(format) {
            format_container = format
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
    TimePickerOptions(selected: Option<Union_Date_Bindable>, format: Option<TimePickerFormat>, start: Option<DateTime>, end: Option<DateTime>) {
        this.selected_container = selected
        this.format_container = format
        this.start_container = start
        this.end_container = end
    }
}
public open class TimePickerOptions_serializer {
    public static func write(buffer: SerializerBase, value: TimePickerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSelected = value.selected
        if (valueHolderForSelected.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedTmpValue = valueHolderForSelected
            if (valueHolderForSelectedTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSelectedTmpValueForIdx0 = valueHolderForSelectedTmpValue.getValue0()
                valueSerializer.writeInt64(match (valueHolderForSelectedTmpValueForIdx0 as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
            } else if (valueHolderForSelectedTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSelectedTmpValueForIdx1 = valueHolderForSelectedTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSelectedTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFormat = value.format
        if (valueHolderForFormat.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFormatTmpValue = valueHolderForFormat
            valueSerializer.writeInt32(valueHolderForFormatTmpValue.value);
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
    }
    public static func read(buffer: DeserializerBase): TimePickerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<Union_Date_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            let selectedTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var selectedTmpBuf_: Union_Date_Bindable 
            if (selectedTmpBuf_UnionSelector == Int8(0)) {
                selectedTmpBuf_ = Union_Date_Bindable(DateTime.now())
            } else if (selectedTmpBuf_UnionSelector == Int8(1)) {
                selectedTmpBuf_ = Union_Date_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for selectedTmpBuf_ has to be chosen through deserialisation.")
            }
            selectedTmpBuf = match (selectedTmpBuf_ as Union_Date_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedTmpResult: Option<Union_Date_Bindable> = selectedTmpBuf
        let formatTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var formatTmpBuf: Option<TimePickerFormat> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(formatTmpBuf_runtimeType))) {
            formatTmpBuf = TimePickerFormat(valueDeserializer.readInt32())
        }
        let formatTmpResult: Option<TimePickerFormat> = formatTmpBuf
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
        var value: TimePickerOptions = TimePickerOptions(selectedTmpResult, formatTmpResult, startTmpResult, endTmpResult)
        return value
    }
}
