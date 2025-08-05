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
public interface ButtonConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop label: String
    public mut open prop pressed: Bool
    public mut open prop triggerClick: ButtonTriggerClickCallback
}
public open class ButtonConfiguration <: ButtonConfigurationInterfaces {
    private var label_container: String
    public mut open prop label: String
    {
        get() {
            return label_container
        }
        set(label) {
            label_container = label
        }
    }
    private var pressed_container: Bool
    public mut open prop pressed: Bool
    {
        get() {
            return pressed_container
        }
        set(pressed) {
            pressed_container = pressed
        }
    }
    private var triggerClick_container: ButtonTriggerClickCallback
    public mut open prop triggerClick: ButtonTriggerClickCallback
    {
        get() {
            return triggerClick_container
        }
        set(triggerClick) {
            triggerClick_container = triggerClick
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
    ButtonConfiguration(label: String, pressed: Bool, triggerClick: ButtonTriggerClickCallback, enabled: Bool, contentModifier: ContentModifier<T>) {
        this.label_container = label
        this.pressed_container = pressed
        this.triggerClick_container = triggerClick
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class ButtonConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: ButtonConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForLabel = value.label
        valueSerializer.writeString(valueHolderForLabel);
        let valueHolderForPressed = value.pressed
        valueSerializer.writeBoolean(valueHolderForPressed);
        let valueHolderForTriggerClick = value.triggerClick
        valueSerializer.holdAndWriteCallback(valueHolderForTriggerClick);
    }
    public static func read(buffer: DeserializerBase): ButtonConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<ButtonConfiguration> = match (valueDeserializer.readObject() as ContentModifier<ButtonConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let labelTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let pressedTmpResult: Bool = valueDeserializer.readBoolean()
        let triggerClickTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let triggerClickTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let triggerClickTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let triggerClickTmpResult: ButtonTriggerClickCallback = {xPos: Float64, yPos: Float64 => let triggerClickTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
triggerClickTmpBufBufArgsSerializer.writeInt32(triggerClickTmpBufBufResource.resourceId);
triggerClickTmpBufBufArgsSerializer.writePointer(triggerClickTmpBufBufCall);
triggerClickTmpBufBufArgsSerializer.writePointer(triggerClickTmpBufBufCallSync);
triggerClickTmpBufBufArgsSerializer.writeNumber(xPos);
triggerClickTmpBufBufArgsSerializer.writeNumber(yPos);
InteropNativeModule._CallCallback(-1964292933, triggerClickTmpBufBufArgsSerializer.asBuffer(), triggerClickTmpBufBufArgsSerializer.length());
triggerClickTmpBufBufArgsSerializer.release();
return; }
        var value: ButtonConfiguration = ButtonConfiguration(labelTmpResult, pressedTmpResult, triggerClickTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
