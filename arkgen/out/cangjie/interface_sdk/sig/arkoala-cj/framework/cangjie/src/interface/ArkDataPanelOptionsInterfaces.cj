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
public interface DataPanelOptionsInterfaces <:  {
    public mut open prop values: ArrayList<Float64>
    public mut open prop max: Option<Float64>
    public mut open prop type_: Option<DataPanelType>
}
public open class DataPanelOptions <: DataPanelOptionsInterfaces {
    private var values_container: ArrayList<Float64>
    public mut open prop values: ArrayList<Float64>
    {
        get() {
            return values_container
        }
        set(values) {
            values_container = values
        }
    }
    private var max_container: Option<Float64>
    public mut open prop max: Option<Float64>
    {
        get() {
            return max_container
        }
        set(max) {
            max_container = max
        }
    }
    private var type_container: Option<DataPanelType>
    public mut open prop type_: Option<DataPanelType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    DataPanelOptions(values: ArrayList<Float64>, max: Option<Float64>, type_: Option<DataPanelType>) {
        this.values_container = values
        this.max_container = max
        this.type_container = type_
    }
}
public open class DataPanelOptions_serializer {
    public static func write(buffer: SerializerBase, value: DataPanelOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValues = value.values
        valueSerializer.writeInt32(Int32(valueHolderForValues.size));
        for (valueHolderForValuesCounterI in 0..valueHolderForValues.size) {
            let valueHolderForValuesTmpElement: Float64 = valueHolderForValues[Int64(valueHolderForValuesCounterI)]
            valueSerializer.writeNumber(valueHolderForValuesTmpElement);
        }
        let valueHolderForMax = value.max
        if (valueHolderForMax.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxTmpValue = valueHolderForMax
            valueSerializer.writeNumber(valueHolderForMaxTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DataPanelOptions {
        var valueDeserializer: DeserializerBase = buffer
        let valuesTmpBufLength: Int32 = valueDeserializer.readInt32()
        var valuesTmpBuf: ArrayList<Float64> = ArrayList<Float64>(Int64(valuesTmpBufLength))
        valuesTmpBuf = ArrayList<Float64>(Int64(valuesTmpBufLength))
        for (valuesTmpBufBufCounterI in 0..valuesTmpBufLength) {
            valuesTmpBuf[Int64(valuesTmpBufBufCounterI)] = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valuesTmpResult: ArrayList<Float64> = valuesTmpBuf
        let maxTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxTmpBuf_runtimeType))) {
            maxTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxTmpResult: Option<Float64> = maxTmpBuf
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<DataPanelType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = DataPanelType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<DataPanelType> = typeTmpBuf
        var value: DataPanelOptions = DataPanelOptions(valuesTmpResult, maxTmpResult, typeTmpResult)
        return value
    }
}
