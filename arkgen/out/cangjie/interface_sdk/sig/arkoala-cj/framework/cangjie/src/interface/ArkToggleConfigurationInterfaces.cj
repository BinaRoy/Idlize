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
public interface ToggleConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop isOn: Bool
    public mut open prop triggerChange: ((parameter: Bool) -> Unit)
}
public open class ToggleConfiguration <: ToggleConfigurationInterfaces {
    private var isOn_container: Bool
    public mut open prop isOn: Bool
    {
        get() {
            return isOn_container
        }
        set(isOn) {
            isOn_container = isOn
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
    ToggleConfiguration(isOn: Bool, triggerChange: ((parameter: Bool) -> Unit), enabled: Bool, contentModifier: ContentModifier<T>) {
        this.isOn_container = isOn
        this.triggerChange_container = triggerChange
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class ToggleConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: ToggleConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForIsOn = value.isOn
        valueSerializer.writeBoolean(valueHolderForIsOn);
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForTriggerChange = value.triggerChange
        valueSerializer.holdAndWriteCallback(valueHolderForTriggerChange);
    }
    public static func read(buffer: DeserializerBase): ToggleConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<ToggleConfiguration> = match (valueDeserializer.readObject() as ContentModifier<ToggleConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let isOnTmpResult: Bool = valueDeserializer.readBoolean()
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
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
        var value: ToggleConfiguration = ToggleConfiguration(isOnTmpResult, triggerChangeTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
