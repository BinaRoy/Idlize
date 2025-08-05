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
public interface RadioConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop value: String
    public mut open prop checked: Bool
    public mut open prop triggerChange: ((parameter: Bool) -> Unit)
}
public open class RadioConfiguration <: RadioConfigurationInterfaces {
    private var value_container: String
    public mut open prop value: String
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var checked_container: Bool
    public mut open prop checked: Bool
    {
        get() {
            return checked_container
        }
        set(checked) {
            checked_container = checked
        }
    }
    private var triggerChange_container: ((parameter: Bool) -> Unit)
    public mut open prop triggerChange: ((parameter: Bool) -> Unit)
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
    RadioConfiguration(value: String, checked: Bool, triggerChange: ((parameter: Bool) -> Unit), enabled: Bool, contentModifier: ContentModifier<T>) {
        this.value_container = value
        this.checked_container = checked
        this.triggerChange_container = triggerChange
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class RadioConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: RadioConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForValue = value.value
        valueSerializer.writeString(valueHolderForValue);
        let valueHolderForChecked = value.checked
        valueSerializer.writeBoolean(valueHolderForChecked);
        let valueHolderForTriggerChange = value.triggerChange
        valueSerializer.holdAndWriteCallback(valueHolderForTriggerChange);
    }
    public static func read(buffer: DeserializerBase): RadioConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<RadioConfiguration> = match (valueDeserializer.readObject() as ContentModifier<RadioConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let valueTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let checkedTmpResult: Bool = valueDeserializer.readBoolean()
        let triggerChangeTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let triggerChangeTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let triggerChangeTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let triggerChangeTmpResult: ((parameter: Bool) -> Unit) = {parameter: Bool => let triggerChangeTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
triggerChangeTmpBufBufArgsSerializer.writeInt32(triggerChangeTmpBufBufResource.resourceId);
triggerChangeTmpBufBufArgsSerializer.writePointer(triggerChangeTmpBufBufCall);
triggerChangeTmpBufBufArgsSerializer.writePointer(triggerChangeTmpBufBufCallSync);
triggerChangeTmpBufBufArgsSerializer.writeBoolean(parameter);
InteropNativeModule._CallCallback(313269291, triggerChangeTmpBufBufArgsSerializer.asBuffer(), triggerChangeTmpBufBufArgsSerializer.length());
triggerChangeTmpBufBufArgsSerializer.release();
return; }
        var value: RadioConfiguration = RadioConfiguration(valueTmpResult, checkedTmpResult, triggerChangeTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
