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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public open class TextPickerOptions {
    public var range: Option<ArrayList<String>>
    public var value: Option<String>
    public var selected: Option<Float64>
    init(range: Option<ArrayList<String>>, value: Option<String>, selected: Option<Float64>) {
        this.range = range
        this.value = value
        this.selected = selected
    }
}
public class TextPickerOptions_serializer {
    public  static func write(buffer: SerializerBase, value: TextPickerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRange = value.range
        if (let Some(valueHolderForRange) <- valueHolderForRange) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForRangeTmpValue = valueHolderForRange
            valueSerializer.writeInt32(Int32(valueHolderForRangeTmpValue.size))
            for (valueHolderForRangeTmpValueCounterI in 0..valueHolderForRangeTmpValue.size) {
                let valueHolderForRangeTmpValueTmpElement: String = valueHolderForRangeTmpValue[Int64(valueHolderForRangeTmpValueCounterI)]
                valueSerializer.writeString(valueHolderForRangeTmpValueTmpElement)
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForValue = value.value
        if (let Some(valueHolderForValue) <- valueHolderForValue) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForValueTmpValue = valueHolderForValue
            valueSerializer.writeString(valueHolderForValueTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForSelected = value.selected
        if (let Some(valueHolderForSelected) <- valueHolderForSelected) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSelectedTmpValue = valueHolderForSelected
            valueSerializer.writeNumber(valueHolderForSelectedTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): TextPickerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let rangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rangeTmpBuf: Option<ArrayList<String>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rangeTmpBuf_runtimeType))) {
            let rangeTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var rangeTmpBuf_: ArrayList<String> = ArrayList<String>(Int64(rangeTmpBuf_Length))
            rangeTmpBuf_ = ArrayList<String>(Int64(rangeTmpBuf_Length))
            for (rangeTmpBuf_BufCounterI in 0..rangeTmpBuf_Length) {
                rangeTmpBuf_[Int64(rangeTmpBuf_BufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            rangeTmpBuf = rangeTmpBuf_
        }
        let rangeTmpResult: Option<ArrayList<String>> = rangeTmpBuf
        let valueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueTmpBuf_runtimeType))) {
            valueTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueTmpResult: Option<String> = valueTmpBuf
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            selectedTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedTmpResult: Option<Float64> = selectedTmpBuf
        var value: TextPickerOptions = TextPickerOptions(rangeTmpResult, valueTmpResult, selectedTmpResult)
        return value
    }
}
