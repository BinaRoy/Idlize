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
public interface AlphabetIndexerOptionsInterfaces <:  {
    public mut open prop arrayValue: ArrayList<String>
    public mut open prop selected: Union_Number_Bindable
}
public open class AlphabetIndexerOptions <: AlphabetIndexerOptionsInterfaces {
    private var arrayValue_container: ArrayList<String>
    public mut open prop arrayValue: ArrayList<String>
    {
        get() {
            return arrayValue_container
        }
        set(arrayValue) {
            arrayValue_container = arrayValue
        }
    }
    private var selected_container: Union_Number_Bindable
    public mut open prop selected: Union_Number_Bindable
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    AlphabetIndexerOptions(arrayValue: ArrayList<String>, selected: Union_Number_Bindable) {
        this.arrayValue_container = arrayValue
        this.selected_container = selected
    }
}
public open class AlphabetIndexerOptions_serializer {
    public static func write(buffer: SerializerBase, value: AlphabetIndexerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForArrayValue = value.arrayValue
        valueSerializer.writeInt32(Int32(valueHolderForArrayValue.size));
        for (valueHolderForArrayValueCounterI in 0..valueHolderForArrayValue.size) {
            let valueHolderForArrayValueTmpElement: String = valueHolderForArrayValue[Int64(valueHolderForArrayValueCounterI)]
            valueSerializer.writeString(valueHolderForArrayValueTmpElement);
        }
        let valueHolderForSelected = value.selected
        if (valueHolderForSelected.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForSelectedForIdx0 = valueHolderForSelected.getValue0()
            valueSerializer.writeNumber(valueHolderForSelectedForIdx0);
        } else if (valueHolderForSelected.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForSelectedForIdx1 = valueHolderForSelected.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForSelectedForIdx1);
        }
    }
    public static func read(buffer: DeserializerBase): AlphabetIndexerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let arrayValueTmpBufLength: Int32 = valueDeserializer.readInt32()
        var arrayValueTmpBuf: ArrayList<String> = ArrayList<String>(Int64(arrayValueTmpBufLength))
        arrayValueTmpBuf = ArrayList<String>(Int64(arrayValueTmpBufLength))
        for (arrayValueTmpBufBufCounterI in 0..arrayValueTmpBufLength) {
            arrayValueTmpBuf[Int64(arrayValueTmpBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let arrayValueTmpResult: ArrayList<String> = arrayValueTmpBuf
        let selectedTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var selectedTmpBuf: Union_Number_Bindable 
        if (selectedTmpBufUnionSelector == Int8(0)) {
            selectedTmpBuf = Union_Number_Bindable(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (selectedTmpBufUnionSelector == Int8(1)) {
            selectedTmpBuf = Union_Number_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for selectedTmpBuf has to be chosen through deserialisation.")
        }
        let selectedTmpResult: Union_Number_Bindable = match (selectedTmpBuf as Union_Number_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: AlphabetIndexerOptions = AlphabetIndexerOptions(arrayValueTmpResult, selectedTmpResult)
        return value
    }
}
