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
public interface CheckboxGroupResultInterfaces <:  {
    public mut open prop name: ArrayList<String>
    public mut open prop status: SelectStatus
}
public open class CheckboxGroupResult <: CheckboxGroupResultInterfaces {
    private var name_container: ArrayList<String>
    public mut open prop name: ArrayList<String>
    {
        get() {
            return name_container
        }
        set(name) {
            name_container = name
        }
    }
    private var status_container: SelectStatus
    public mut open prop status: SelectStatus
    {
        get() {
            return status_container
        }
        set(status) {
            status_container = status
        }
    }
    CheckboxGroupResult(name: ArrayList<String>, status: SelectStatus) {
        this.name_container = name
        this.status_container = status
    }
}
public open class CheckboxGroupResult_serializer {
    public static func write(buffer: SerializerBase, value: CheckboxGroupResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForName = value.name
        valueSerializer.writeInt32(Int32(valueHolderForName.size));
        for (valueHolderForNameCounterI in 0..valueHolderForName.size) {
            let valueHolderForNameTmpElement: String = valueHolderForName[Int64(valueHolderForNameCounterI)]
            valueSerializer.writeString(valueHolderForNameTmpElement);
        }
        let valueHolderForStatus = value.status
        valueSerializer.writeInt32(valueHolderForStatus.value);
    }
    public static func read(buffer: DeserializerBase): CheckboxGroupResult {
        var valueDeserializer: DeserializerBase = buffer
        let nameTmpBufLength: Int32 = valueDeserializer.readInt32()
        var nameTmpBuf: ArrayList<String> = ArrayList<String>(Int64(nameTmpBufLength))
        nameTmpBuf = ArrayList<String>(Int64(nameTmpBufLength))
        for (nameTmpBufBufCounterI in 0..nameTmpBufLength) {
            nameTmpBuf[Int64(nameTmpBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let nameTmpResult: ArrayList<String> = nameTmpBuf
        let statusTmpResult: SelectStatus = SelectStatus(valueDeserializer.readInt32())
        var value: CheckboxGroupResult = CheckboxGroupResult(nameTmpResult, statusTmpResult)
        return value
    }
}
