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
public interface TextPickerOptionsInterfaces <:  {
    public mut open prop range: Type_TextPickerOptions_range
    public mut open prop value: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable>
    public mut open prop selected: Option<Union_Number_Array_Number_Bindable_Bindable>
    public mut open prop columnWidths: Option<ArrayList<LengthMetrics>>
}
public open class TextPickerOptions <: TextPickerOptionsInterfaces {
    private var range_container: Type_TextPickerOptions_range
    public mut open prop range: Type_TextPickerOptions_range
    {
        get() {
            return range_container
        }
        set(range) {
            range_container = range
        }
    }
    private var value_container: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable>
    public mut open prop value: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable>
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var selected_container: Option<Union_Number_Array_Number_Bindable_Bindable>
    public mut open prop selected: Option<Union_Number_Array_Number_Bindable_Bindable>
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    private var columnWidths_container: Option<ArrayList<LengthMetrics>>
    public mut open prop columnWidths: Option<ArrayList<LengthMetrics>>
    {
        get() {
            return columnWidths_container
        }
        set(columnWidths) {
            columnWidths_container = columnWidths
        }
    }
    TextPickerOptions(range: Type_TextPickerOptions_range, value: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable>, selected: Option<Union_Number_Array_Number_Bindable_Bindable>, columnWidths: Option<ArrayList<LengthMetrics>>) {
        this.range_container = range
        this.value_container = value
        this.selected_container = selected
        this.columnWidths_container = columnWidths
    }
}
public open class TextPickerOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextPickerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRange = value.range
        if (valueHolderForRange.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForRangeForIdx0 = valueHolderForRange.getValue0()
            valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx0.size));
            for (valueHolderForRangeForIdx0CounterI in 0..valueHolderForRangeForIdx0.size) {
                let valueHolderForRangeForIdx0TmpElement: String = valueHolderForRangeForIdx0[Int64(valueHolderForRangeForIdx0CounterI)]
                valueSerializer.writeString(valueHolderForRangeForIdx0TmpElement);
            }
        } else if (valueHolderForRange.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForRangeForIdx1 = valueHolderForRange.getValue1()
            valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx1.size));
            for (valueHolderForRangeForIdx1CounterI in 0..valueHolderForRangeForIdx1.size) {
                let valueHolderForRangeForIdx1TmpElement: ArrayList<String> = valueHolderForRangeForIdx1[Int64(valueHolderForRangeForIdx1CounterI)]
                valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx1TmpElement.size));
                for (valueHolderForRangeForIdx1TmpElementCounterI in 0..valueHolderForRangeForIdx1TmpElement.size) {
                    let valueHolderForRangeForIdx1TmpElementTmpElement: String = valueHolderForRangeForIdx1TmpElement[Int64(valueHolderForRangeForIdx1TmpElementCounterI)]
                    valueSerializer.writeString(valueHolderForRangeForIdx1TmpElementTmpElement);
                }
            }
        } else if (valueHolderForRange.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForRangeForIdx2 = valueHolderForRange.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForRangeForIdx2);
        } else if (valueHolderForRange.getSelector() == 3) {
            valueSerializer.writeInt8(Int8(3));
            let valueHolderForRangeForIdx3 = valueHolderForRange.getValue3()
            valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx3.size));
            for (valueHolderForRangeForIdx3CounterI in 0..valueHolderForRangeForIdx3.size) {
                let valueHolderForRangeForIdx3TmpElement: TextPickerRangeContent = valueHolderForRangeForIdx3[Int64(valueHolderForRangeForIdx3CounterI)]
                TextPickerRangeContent_serializer.write(valueSerializer, valueHolderForRangeForIdx3TmpElement);
            }
        } else if (valueHolderForRange.getSelector() == 4) {
            valueSerializer.writeInt8(Int8(4));
            let valueHolderForRangeForIdx4 = valueHolderForRange.getValue4()
            valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx4.size));
            for (valueHolderForRangeForIdx4CounterI in 0..valueHolderForRangeForIdx4.size) {
                let valueHolderForRangeForIdx4TmpElement: TextCascadePickerRangeContent = valueHolderForRangeForIdx4[Int64(valueHolderForRangeForIdx4CounterI)]
                TextCascadePickerRangeContent_serializer.write(valueSerializer, valueHolderForRangeForIdx4TmpElement);
            }
        }
        let valueHolderForValue = value.value
        if (valueHolderForValue.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValueTmpValue = valueHolderForValue
            if (valueHolderForValueTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForValueTmpValueForIdx0 = valueHolderForValueTmpValue.getValue0()
                if (valueHolderForValueTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForValueTmpValueForIdx0ForIdx0 = valueHolderForValueTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForValueTmpValueForIdx0ForIdx0);
                } else if (valueHolderForValueTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForValueTmpValueForIdx0ForIdx1 = valueHolderForValueTmpValueForIdx0.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx0ForIdx1);
                }
            } else if (valueHolderForValueTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForValueTmpValueForIdx1 = valueHolderForValueTmpValue.getValue1()
                valueSerializer.writeInt32(Int32(valueHolderForValueTmpValueForIdx1.size));
                for (valueHolderForValueTmpValueForIdx1CounterI in 0..valueHolderForValueTmpValueForIdx1.size) {
                    let valueHolderForValueTmpValueForIdx1TmpElement: ResourceStr = valueHolderForValueTmpValueForIdx1[Int64(valueHolderForValueTmpValueForIdx1CounterI)]
                    if (valueHolderForValueTmpValueForIdx1TmpElement.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForValueTmpValueForIdx1TmpElementForIdx0 = valueHolderForValueTmpValueForIdx1TmpElement.getValue0()
                        valueSerializer.writeString(valueHolderForValueTmpValueForIdx1TmpElementForIdx0);
                    } else if (valueHolderForValueTmpValueForIdx1TmpElement.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForValueTmpValueForIdx1TmpElementForIdx1 = valueHolderForValueTmpValueForIdx1TmpElement.getValue1()
                        valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx1TmpElementForIdx1);
                    }
                }
            } else if (valueHolderForValueTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForValueTmpValueForIdx2 = valueHolderForValueTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx2);
            } else if (valueHolderForValueTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForValueTmpValueForIdx3 = valueHolderForValueTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSelected = value.selected
        if (valueHolderForSelected.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedTmpValue = valueHolderForSelected
            if (valueHolderForSelectedTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSelectedTmpValueForIdx0 = valueHolderForSelectedTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForSelectedTmpValueForIdx0);
            } else if (valueHolderForSelectedTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSelectedTmpValueForIdx1 = valueHolderForSelectedTmpValue.getValue1()
                valueSerializer.writeInt32(Int32(valueHolderForSelectedTmpValueForIdx1.size));
                for (valueHolderForSelectedTmpValueForIdx1CounterI in 0..valueHolderForSelectedTmpValueForIdx1.size) {
                    let valueHolderForSelectedTmpValueForIdx1TmpElement: Float64 = valueHolderForSelectedTmpValueForIdx1[Int64(valueHolderForSelectedTmpValueForIdx1CounterI)]
                    valueSerializer.writeNumber(valueHolderForSelectedTmpValueForIdx1TmpElement);
                }
            } else if (valueHolderForSelectedTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSelectedTmpValueForIdx2 = valueHolderForSelectedTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSelectedTmpValueForIdx2);
            } else if (valueHolderForSelectedTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForSelectedTmpValueForIdx3 = valueHolderForSelectedTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForSelectedTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColumnWidths = value.columnWidths
        if (valueHolderForColumnWidths.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColumnWidthsTmpValue = valueHolderForColumnWidths
            valueSerializer.writeInt32(Int32(valueHolderForColumnWidthsTmpValue.size));
            for (valueHolderForColumnWidthsTmpValueCounterI in 0..valueHolderForColumnWidthsTmpValue.size) {
                let valueHolderForColumnWidthsTmpValueTmpElement: LengthMetrics = valueHolderForColumnWidthsTmpValue[Int64(valueHolderForColumnWidthsTmpValueCounterI)]
                valueSerializer.writeCustomObject("Any", valueHolderForColumnWidthsTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextPickerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let rangeTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var rangeTmpBuf: Type_TextPickerOptions_range 
        if (rangeTmpBufUnionSelector == Int8(0)) {
            let rangeTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var rangeTmpBufBufU: ArrayList<String> = ArrayList<String>(Int64(rangeTmpBufBufULength))
            rangeTmpBufBufU = ArrayList<String>(Int64(rangeTmpBufBufULength))
            for (rangeTmpBufBufUBufCounterI in 0..rangeTmpBufBufULength) {
                rangeTmpBufBufU[Int64(rangeTmpBufBufUBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            rangeTmpBuf = Type_TextPickerOptions_range(rangeTmpBufBufU)
        } else if (rangeTmpBufUnionSelector == Int8(1)) {
            let rangeTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var rangeTmpBufBufU: ArrayList<ArrayList<String>> = ArrayList<ArrayList<String>>(Int64(rangeTmpBufBufULength))
            rangeTmpBufBufU = ArrayList<ArrayList<String>>(Int64(rangeTmpBufBufULength))
            for (rangeTmpBufBufUBufCounterI in 0..rangeTmpBufBufULength) {
                let rangeTmpBufBufUTempBufLength: Int32 = valueDeserializer.readInt32()
                var rangeTmpBufBufUTempBuf: ArrayList<String> = ArrayList<String>(Int64(rangeTmpBufBufUTempBufLength))
                rangeTmpBufBufUTempBuf = ArrayList<String>(Int64(rangeTmpBufBufUTempBufLength))
                for (rangeTmpBufBufUTempBufBufCounterI in 0..rangeTmpBufBufUTempBufLength) {
                    rangeTmpBufBufUTempBuf[Int64(rangeTmpBufBufUTempBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                rangeTmpBufBufU[Int64(rangeTmpBufBufUBufCounterI)] = rangeTmpBufBufUTempBuf
            }
            rangeTmpBuf = Type_TextPickerOptions_range(rangeTmpBufBufU)
        } else if (rangeTmpBufUnionSelector == Int8(2)) {
            rangeTmpBuf = Type_TextPickerOptions_range(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (rangeTmpBufUnionSelector == Int8(3)) {
            let rangeTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var rangeTmpBufBufU: ArrayList<TextPickerRangeContent> = ArrayList<TextPickerRangeContent>(Int64(rangeTmpBufBufULength))
            rangeTmpBufBufU = ArrayList<TextPickerRangeContent>(Int64(rangeTmpBufBufULength))
            for (rangeTmpBufBufUBufCounterI in 0..rangeTmpBufBufULength) {
                rangeTmpBufBufU[Int64(rangeTmpBufBufUBufCounterI)] = TextPickerRangeContent_serializer.read(valueDeserializer)
            }
            rangeTmpBuf = Type_TextPickerOptions_range(rangeTmpBufBufU)
        } else if (rangeTmpBufUnionSelector == Int8(4)) {
            let rangeTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var rangeTmpBufBufU: ArrayList<TextCascadePickerRangeContent> = ArrayList<TextCascadePickerRangeContent>(Int64(rangeTmpBufBufULength))
            rangeTmpBufBufU = ArrayList<TextCascadePickerRangeContent>(Int64(rangeTmpBufBufULength))
            for (rangeTmpBufBufUBufCounterI in 0..rangeTmpBufBufULength) {
                rangeTmpBufBufU[Int64(rangeTmpBufBufUBufCounterI)] = TextCascadePickerRangeContent_serializer.read(valueDeserializer)
            }
            rangeTmpBuf = Type_TextPickerOptions_range(rangeTmpBufBufU)
        } else {
            throw Exception("One of the branches for rangeTmpBuf has to be chosen through deserialisation.")
        }
        let rangeTmpResult: Type_TextPickerOptions_range = match (rangeTmpBuf as Type_TextPickerOptions_range) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let valueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueTmpBuf: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueTmpBuf_runtimeType))) {
            let valueTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var valueTmpBuf_: Union_ResourceStr_Array_ResourceStr_Bindable_Bindable 
            if (valueTmpBuf_UnionSelector == Int8(0)) {
                let valueTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var valueTmpBuf_BufU: ResourceStr 
                if (valueTmpBuf_BufUUnionSelector == Int8(0)) {
                    valueTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (valueTmpBuf_BufUUnionSelector == Int8(1)) {
                    valueTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for valueTmpBuf_BufU has to be chosen through deserialisation.")
                }
                valueTmpBuf_ = Union_ResourceStr_Array_ResourceStr_Bindable_Bindable(match (valueTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (valueTmpBuf_UnionSelector == Int8(1)) {
                let valueTmpBuf_BufULength: Int32 = valueDeserializer.readInt32()
                var valueTmpBuf_BufU: ArrayList<ResourceStr> = ArrayList<ResourceStr>(Int64(valueTmpBuf_BufULength))
                valueTmpBuf_BufU = ArrayList<ResourceStr>(Int64(valueTmpBuf_BufULength))
                for (valueTmpBuf_BufUBufCounterI in 0..valueTmpBuf_BufULength) {
                    let valueTmpBuf_BufUTempBufUnionSelector: Int8 = valueDeserializer.readInt8()
                    var valueTmpBuf_BufUTempBuf: ResourceStr 
                    if (valueTmpBuf_BufUTempBufUnionSelector == Int8(0)) {
                        valueTmpBuf_BufUTempBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (valueTmpBuf_BufUTempBufUnionSelector == Int8(1)) {
                        valueTmpBuf_BufUTempBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else {
                        throw Exception("One of the branches for valueTmpBuf_BufUTempBuf has to be chosen through deserialisation.")
                    }
                    valueTmpBuf_BufU[Int64(valueTmpBuf_BufUBufCounterI)] = match (valueTmpBuf_BufUTempBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                valueTmpBuf_ = Union_ResourceStr_Array_ResourceStr_Bindable_Bindable(valueTmpBuf_BufU)
            } else if (valueTmpBuf_UnionSelector == Int8(2)) {
                valueTmpBuf_ = Union_ResourceStr_Array_ResourceStr_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (valueTmpBuf_UnionSelector == Int8(3)) {
                valueTmpBuf_ = Union_ResourceStr_Array_ResourceStr_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for valueTmpBuf_ has to be chosen through deserialisation.")
            }
            valueTmpBuf = match (valueTmpBuf_ as Union_ResourceStr_Array_ResourceStr_Bindable_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueTmpResult: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable> = valueTmpBuf
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<Union_Number_Array_Number_Bindable_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            let selectedTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var selectedTmpBuf_: Union_Number_Array_Number_Bindable_Bindable 
            if (selectedTmpBuf_UnionSelector == Int8(0)) {
                selectedTmpBuf_ = Union_Number_Array_Number_Bindable_Bindable(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (selectedTmpBuf_UnionSelector == Int8(1)) {
                let selectedTmpBuf_BufULength: Int32 = valueDeserializer.readInt32()
                var selectedTmpBuf_BufU: ArrayList<Float64> = ArrayList<Float64>(Int64(selectedTmpBuf_BufULength))
                selectedTmpBuf_BufU = ArrayList<Float64>(Int64(selectedTmpBuf_BufULength))
                for (selectedTmpBuf_BufUBufCounterI in 0..selectedTmpBuf_BufULength) {
                    selectedTmpBuf_BufU[Int64(selectedTmpBuf_BufUBufCounterI)] = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                selectedTmpBuf_ = Union_Number_Array_Number_Bindable_Bindable(selectedTmpBuf_BufU)
            } else if (selectedTmpBuf_UnionSelector == Int8(2)) {
                selectedTmpBuf_ = Union_Number_Array_Number_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (selectedTmpBuf_UnionSelector == Int8(3)) {
                selectedTmpBuf_ = Union_Number_Array_Number_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for selectedTmpBuf_ has to be chosen through deserialisation.")
            }
            selectedTmpBuf = match (selectedTmpBuf_ as Union_Number_Array_Number_Bindable_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedTmpResult: Option<Union_Number_Array_Number_Bindable_Bindable> = selectedTmpBuf
        let columnWidthsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var columnWidthsTmpBuf: Option<ArrayList<LengthMetrics>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(columnWidthsTmpBuf_runtimeType))) {
            let columnWidthsTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var columnWidthsTmpBuf_: ArrayList<LengthMetrics> = ArrayList<LengthMetrics>(Int64(columnWidthsTmpBuf_Length))
            columnWidthsTmpBuf_ = ArrayList<LengthMetrics>(Int64(columnWidthsTmpBuf_Length))
            for (columnWidthsTmpBuf_BufCounterI in 0..columnWidthsTmpBuf_Length) {
                columnWidthsTmpBuf_[Int64(columnWidthsTmpBuf_BufCounterI)] = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            columnWidthsTmpBuf = columnWidthsTmpBuf_
        }
        let columnWidthsTmpResult: Option<ArrayList<LengthMetrics>> = columnWidthsTmpBuf
        var value: TextPickerOptions = TextPickerOptions(rangeTmpResult, valueTmpResult, selectedTmpResult, columnWidthsTmpResult)
        return value
    }
}
