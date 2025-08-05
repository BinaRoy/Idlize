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
public interface ActionSheetButtonOptionsInterfaces <:  {
    public mut open prop enabled: Option<Bool>
    public mut open prop defaultFocus: Option<Bool>
    public mut open prop style: Option<DialogButtonStyle>
    public mut open prop value: Union_String_Resource
    public mut open prop action: VoidCallback
}
public open class ActionSheetButtonOptions <: ActionSheetButtonOptionsInterfaces {
    private var enabled_container: Option<Bool>
    public mut open prop enabled: Option<Bool>
    {
        get() {
            return enabled_container
        }
        set(enabled) {
            enabled_container = enabled
        }
    }
    private var defaultFocus_container: Option<Bool>
    public mut open prop defaultFocus: Option<Bool>
    {
        get() {
            return defaultFocus_container
        }
        set(defaultFocus) {
            defaultFocus_container = defaultFocus
        }
    }
    private var style_container: Option<DialogButtonStyle>
    public mut open prop style: Option<DialogButtonStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var value_container: Union_String_Resource
    public mut open prop value: Union_String_Resource
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var action_container: VoidCallback
    public mut open prop action: VoidCallback
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    ActionSheetButtonOptions(enabled: Option<Bool>, defaultFocus: Option<Bool>, style: Option<DialogButtonStyle>, value: Union_String_Resource, action: VoidCallback) {
        this.enabled_container = enabled
        this.defaultFocus_container = defaultFocus
        this.style_container = style
        this.value_container = value
        this.action_container = action
    }
}
public open class ActionSheetButtonOptions_serializer {
    public static func write(buffer: SerializerBase, value: ActionSheetButtonOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        if (valueHolderForEnabled.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnabledTmpValue = valueHolderForEnabled
            valueSerializer.writeBoolean(valueHolderForEnabledTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDefaultFocus = value.defaultFocus
        if (valueHolderForDefaultFocus.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDefaultFocusTmpValue = valueHolderForDefaultFocus
            valueSerializer.writeBoolean(valueHolderForDefaultFocusTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForValue = value.value
        if (valueHolderForValue.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForValueForIdx0 = valueHolderForValue.getValue0()
            valueSerializer.writeString(valueHolderForValueForIdx0);
        } else if (valueHolderForValue.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForValueForIdx1 = valueHolderForValue.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForValueForIdx1);
        }
        let valueHolderForAction = value.action
        valueSerializer.holdAndWriteCallback(valueHolderForAction);
    }
    public static func read(buffer: DeserializerBase): ActionSheetButtonOptions {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enabledTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enabledTmpBuf_runtimeType))) {
            enabledTmpBuf = valueDeserializer.readBoolean()
        }
        let enabledTmpResult: Option<Bool> = enabledTmpBuf
        let defaultFocusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var defaultFocusTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(defaultFocusTmpBuf_runtimeType))) {
            defaultFocusTmpBuf = valueDeserializer.readBoolean()
        }
        let defaultFocusTmpResult: Option<Bool> = defaultFocusTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<DialogButtonStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = DialogButtonStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<DialogButtonStyle> = styleTmpBuf
        let valueTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var valueTmpBuf: Union_String_Resource 
        if (valueTmpBufUnionSelector == Int8(0)) {
            valueTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (valueTmpBufUnionSelector == Int8(1)) {
            valueTmpBuf = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
        }
        let valueTmpResult: Union_String_Resource = match (valueTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let actionTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let actionTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let actionTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let actionTmpResult: VoidCallback = { => let actionTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
actionTmpBufBufArgsSerializer.writeInt32(actionTmpBufBufResource.resourceId);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCall);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCallSync);
InteropNativeModule._CallCallback(-2038961969, actionTmpBufBufArgsSerializer.asBuffer(), actionTmpBufBufArgsSerializer.length());
actionTmpBufBufArgsSerializer.release();
return; }
        var value: ActionSheetButtonOptions = ActionSheetButtonOptions(enabledTmpResult, defaultFocusTmpResult, styleTmpResult, valueTmpResult, actionTmpResult)
        return value
    }
}
