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
public interface SliderConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop value: Float64
    public mut open prop min: Float64
    public mut open prop max: Float64
    public mut open prop step: Float64
    public mut open prop triggerChange: SliderTriggerChangeCallback
}
public open class SliderConfiguration <: SliderConfigurationInterfaces {
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
    private var min_container: Float64
    public mut open prop min: Float64
    {
        get() {
            return min_container
        }
        set(min) {
            min_container = min
        }
    }
    private var max_container: Float64
    public mut open prop max: Float64
    {
        get() {
            return max_container
        }
        set(max) {
            max_container = max
        }
    }
    private var step_container: Float64
    public mut open prop step: Float64
    {
        get() {
            return step_container
        }
        set(step) {
            step_container = step
        }
    }
    private var triggerChange_container: SliderTriggerChangeCallback
    public mut open prop triggerChange: SliderTriggerChangeCallback
    {
        get() {
            return triggerChange_container
        }
        set(triggerChange) {
            triggerChange_container = triggerChange
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
    SliderConfiguration(value: Float64, min: Float64, max: Float64, step: Float64, triggerChange: SliderTriggerChangeCallback, enabled: Bool, contentModifier: ContentModifier<T>) {
        this.value_container = value
        this.min_container = min
        this.max_container = max
        this.step_container = step
        this.triggerChange_container = triggerChange
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class SliderConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: SliderConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForValue = value.value
        valueSerializer.writeNumber(valueHolderForValue);
        let valueHolderForMin = value.min
        valueSerializer.writeNumber(valueHolderForMin);
        let valueHolderForMax = value.max
        valueSerializer.writeNumber(valueHolderForMax);
        let valueHolderForStep = value.step
        valueSerializer.writeNumber(valueHolderForStep);
        let valueHolderForTriggerChange = value.triggerChange
        valueSerializer.holdAndWriteCallback(valueHolderForTriggerChange);
    }
    public static func read(buffer: DeserializerBase): SliderConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<SliderConfiguration> = match (valueDeserializer.readObject() as ContentModifier<SliderConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let valueTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let minTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let maxTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let stepTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let triggerChangeTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let triggerChangeTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let triggerChangeTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let triggerChangeTmpResult: SliderTriggerChangeCallback = {value: Float64, mode: SliderChangeMode => let triggerChangeTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
triggerChangeTmpBufBufArgsSerializer.writeInt32(triggerChangeTmpBufBufResource.resourceId);
triggerChangeTmpBufBufArgsSerializer.writePointer(triggerChangeTmpBufBufCall);
triggerChangeTmpBufBufArgsSerializer.writePointer(triggerChangeTmpBufBufCallSync);
triggerChangeTmpBufBufArgsSerializer.writeNumber(value);
triggerChangeTmpBufBufArgsSerializer.writeInt32(mode.value);
InteropNativeModule._CallCallback(711649376, triggerChangeTmpBufBufArgsSerializer.asBuffer(), triggerChangeTmpBufBufArgsSerializer.length());
triggerChangeTmpBufBufArgsSerializer.release();
return; }
        var value: SliderConfiguration = SliderConfiguration(valueTmpResult, minTmpResult, maxTmpResult, stepTmpResult, triggerChangeTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
