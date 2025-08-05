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
public interface TextPickerResultInterfaces <:  {
    public mut open prop value: Union_String_Array_String
    public mut open prop index: Union_Number_Array_Number
}
public open class TextPickerResult <: TextPickerResultInterfaces {
    private var value_container: Union_String_Array_String
    public mut open prop value: Union_String_Array_String
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var index_container: Union_Number_Array_Number
    public mut open prop index: Union_Number_Array_Number
    {
        get() {
            return index_container
        }
        set(index) {
            index_container = index
        }
    }
    TextPickerResult(value: Union_String_Array_String, index: Union_Number_Array_Number) {
        this.value_container = value
        this.index_container = index
    }
}
public open class TextPickerResult_serializer {
    public static func write(buffer: SerializerBase, value: TextPickerResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValue = value.value
        if (valueHolderForValue.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForValueForIdx0 = valueHolderForValue.getValue0()
            valueSerializer.writeString(valueHolderForValueForIdx0);
        } else if (valueHolderForValue.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForValueForIdx1 = valueHolderForValue.getValue1()
            valueSerializer.writeInt32(Int32(valueHolderForValueForIdx1.size));
            for (valueHolderForValueForIdx1CounterI in 0..valueHolderForValueForIdx1.size) {
                let valueHolderForValueForIdx1TmpElement: String = valueHolderForValueForIdx1[Int64(valueHolderForValueForIdx1CounterI)]
                valueSerializer.writeString(valueHolderForValueForIdx1TmpElement);
            }
        }
        let valueHolderForIndex = value.index
        if (valueHolderForIndex.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForIndexForIdx0 = valueHolderForIndex.getValue0()
            valueSerializer.writeNumber(valueHolderForIndexForIdx0);
        } else if (valueHolderForIndex.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForIndexForIdx1 = valueHolderForIndex.getValue1()
            valueSerializer.writeInt32(Int32(valueHolderForIndexForIdx1.size));
            for (valueHolderForIndexForIdx1CounterI in 0..valueHolderForIndexForIdx1.size) {
                let valueHolderForIndexForIdx1TmpElement: Float64 = valueHolderForIndexForIdx1[Int64(valueHolderForIndexForIdx1CounterI)]
                valueSerializer.writeNumber(valueHolderForIndexForIdx1TmpElement);
            }
        }
    }
    public static func read(buffer: DeserializerBase): TextPickerResult {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var valueTmpBuf: Union_String_Array_String 
        if (valueTmpBufUnionSelector == Int8(0)) {
            valueTmpBuf = Union_String_Array_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (valueTmpBufUnionSelector == Int8(1)) {
            let valueTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var valueTmpBufBufU: ArrayList<String> = ArrayList<String>(Int64(valueTmpBufBufULength))
            valueTmpBufBufU = ArrayList<String>(Int64(valueTmpBufBufULength))
            for (valueTmpBufBufUBufCounterI in 0..valueTmpBufBufULength) {
                valueTmpBufBufU[Int64(valueTmpBufBufUBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            valueTmpBuf = Union_String_Array_String(valueTmpBufBufU)
        } else {
            throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
        }
        let valueTmpResult: Union_String_Array_String = match (valueTmpBuf as Union_String_Array_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let indexTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var indexTmpBuf: Union_Number_Array_Number 
        if (indexTmpBufUnionSelector == Int8(0)) {
            indexTmpBuf = Union_Number_Array_Number(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (indexTmpBufUnionSelector == Int8(1)) {
            let indexTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var indexTmpBufBufU: ArrayList<Float64> = ArrayList<Float64>(Int64(indexTmpBufBufULength))
            indexTmpBufBufU = ArrayList<Float64>(Int64(indexTmpBufBufULength))
            for (indexTmpBufBufUBufCounterI in 0..indexTmpBufBufULength) {
                indexTmpBufBufU[Int64(indexTmpBufBufUBufCounterI)] = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            indexTmpBuf = Union_Number_Array_Number(indexTmpBufBufU)
        } else {
            throw Exception("One of the branches for indexTmpBuf has to be chosen through deserialisation.")
        }
        let indexTmpResult: Union_Number_Array_Number = match (indexTmpBuf as Union_Number_Array_Number) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TextPickerResult = TextPickerResult(valueTmpResult, indexTmpResult)
        return value
    }
}
