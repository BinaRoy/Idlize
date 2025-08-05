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
public interface DataPanelConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop values: ArrayList<Float64>
    public mut open prop maxValue: Float64
}
public open class DataPanelConfiguration <: DataPanelConfigurationInterfaces {
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
    private var maxValue_container: Float64
    public mut open prop maxValue: Float64
    {
        get() {
            return maxValue_container
        }
        set(maxValue) {
            maxValue_container = maxValue
        }
    }
    private var enabled_container: Bool
    public mut open prop enabled: Bool
    {
        get() {
            return enabled_container
        }
        set(enabled) {
            enabled_container = enabled
        }
    }
    private var contentModifier_container: ContentModifier<T>
    public mut open prop contentModifier: ContentModifier<T>
    {
        get() {
            return contentModifier_container
        }
        set(contentModifier) {
            contentModifier_container = contentModifier
        }
    }
    DataPanelConfiguration(values: ArrayList<Float64>, maxValue: Float64, enabled: Bool, contentModifier: ContentModifier<T>) {
        this.values_container = values
        this.maxValue_container = maxValue
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class DataPanelConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: DataPanelConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForValues = value.values
        valueSerializer.writeInt32(Int32(valueHolderForValues.size));
        for (valueHolderForValuesCounterI in 0..valueHolderForValues.size) {
            let valueHolderForValuesTmpElement: Float64 = valueHolderForValues[Int64(valueHolderForValuesCounterI)]
            valueSerializer.writeNumber(valueHolderForValuesTmpElement);
        }
        let valueHolderForMaxValue = value.maxValue
        valueSerializer.writeNumber(valueHolderForMaxValue);
    }
    public static func read(buffer: DeserializerBase): DataPanelConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<DataPanelConfiguration> = match (valueDeserializer.readObject() as ContentModifier<DataPanelConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let valuesTmpBufLength: Int32 = valueDeserializer.readInt32()
        var valuesTmpBuf: ArrayList<Float64> = ArrayList<Float64>(Int64(valuesTmpBufLength))
        valuesTmpBuf = ArrayList<Float64>(Int64(valuesTmpBufLength))
        for (valuesTmpBufBufCounterI in 0..valuesTmpBufLength) {
            valuesTmpBuf[Int64(valuesTmpBufBufCounterI)] = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valuesTmpResult: ArrayList<Float64> = valuesTmpBuf
        let maxValueTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: DataPanelConfiguration = DataPanelConfiguration(valuesTmpResult, maxValueTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
