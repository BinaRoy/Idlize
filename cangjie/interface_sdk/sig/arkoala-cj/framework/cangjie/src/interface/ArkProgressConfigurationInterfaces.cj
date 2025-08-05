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
public interface ProgressConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop value: Float64
    public mut open prop total: Float64
}
public open class ProgressConfiguration <: ProgressConfigurationInterfaces {
    private var value_container: Float64
    public mut open prop value: Float64
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var total_container: Float64
    public mut open prop total: Float64
    {
        get() {
            return total_container
        }
        set(total) {
            total_container = total
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
    ProgressConfiguration(value: Float64, total: Float64, enabled: Bool, contentModifier: ContentModifier<T>) {
        this.value_container = value
        this.total_container = total
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class ProgressConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: ProgressConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForValue = value.value
        valueSerializer.writeNumber(valueHolderForValue);
        let valueHolderForTotal = value.total
        valueSerializer.writeNumber(valueHolderForTotal);
    }
    public static func read(buffer: DeserializerBase): ProgressConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<ProgressConfiguration> = match (valueDeserializer.readObject() as ContentModifier<ProgressConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let valueTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let totalTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: ProgressConfiguration = ProgressConfiguration(valueTmpResult, totalTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
