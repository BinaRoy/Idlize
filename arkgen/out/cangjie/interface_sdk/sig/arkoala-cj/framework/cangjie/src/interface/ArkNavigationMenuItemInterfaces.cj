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
public interface NavigationMenuItemInterfaces <:  {
    public mut open prop value: Union_String_Resource
    public mut open prop icon: Option<Union_String_Resource>
    public mut open prop symbolIcon: Option<SymbolGlyphModifier>
    public mut open prop isEnabled: Option<Bool>
    public mut open prop action: Option<(() -> Unit)>
}
public open class NavigationMenuItem <: NavigationMenuItemInterfaces {
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
    private var icon_container: Option<Union_String_Resource>
    public mut open prop icon: Option<Union_String_Resource>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var symbolIcon_container: Option<SymbolGlyphModifier>
    public mut open prop symbolIcon: Option<SymbolGlyphModifier>
    {
        get() {
            return symbolIcon_container
        }
        set(symbolIcon) {
            symbolIcon_container = symbolIcon
        }
    }
    private var isEnabled_container: Option<Bool>
    public mut open prop isEnabled: Option<Bool>
    {
        get() {
            return isEnabled_container
        }
        set(isEnabled) {
            isEnabled_container = isEnabled
        }
    }
    private var action_container: Option<(() -> Unit)>
    public mut open prop action: Option<(() -> Unit)>
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    NavigationMenuItem(value: Union_String_Resource, icon: Option<Union_String_Resource>, symbolIcon: Option<SymbolGlyphModifier>, isEnabled: Option<Bool>, action: Option<(() -> Unit)>) {
        this.value_container = value
        this.icon_container = icon
        this.symbolIcon_container = symbolIcon
        this.isEnabled_container = isEnabled
        this.action_container = action
    }
}
public open class NavigationMenuItem_serializer {
    public static func write(buffer: SerializerBase, value: NavigationMenuItem): Unit {
        var valueSerializer: SerializerBase = buffer
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
        let valueHolderForIcon = value.icon
        if (valueHolderForIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIconTmpValue = valueHolderForIcon
            if (valueHolderForIconTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForIconTmpValueForIdx0 = valueHolderForIconTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForIconTmpValueForIdx0);
            } else if (valueHolderForIconTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForIconTmpValueForIdx1 = valueHolderForIconTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForIconTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSymbolIcon = value.symbolIcon
        if (valueHolderForSymbolIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSymbolIconTmpValue = valueHolderForSymbolIcon
            valueSerializer.writeCustomObject("Any", valueHolderForSymbolIconTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIsEnabled = value.isEnabled
        if (valueHolderForIsEnabled.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsEnabledTmpValue = valueHolderForIsEnabled
            valueSerializer.writeBoolean(valueHolderForIsEnabledTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAction = value.action
        if (valueHolderForAction.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForActionTmpValue = valueHolderForAction
            valueSerializer.holdAndWriteCallback(valueHolderForActionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NavigationMenuItem {
        var valueDeserializer: DeserializerBase = buffer
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
        let iconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconTmpBuf: Option<Union_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconTmpBuf_runtimeType))) {
            let iconTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var iconTmpBuf_: Union_String_Resource 
            if (iconTmpBuf_UnionSelector == Int8(0)) {
                iconTmpBuf_ = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (iconTmpBuf_UnionSelector == Int8(1)) {
                iconTmpBuf_ = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for iconTmpBuf_ has to be chosen through deserialisation.")
            }
            iconTmpBuf = match (iconTmpBuf_ as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let iconTmpResult: Option<Union_String_Resource> = iconTmpBuf
        let symbolIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var symbolIconTmpBuf: Option<SymbolGlyphModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(symbolIconTmpBuf_runtimeType))) {
            symbolIconTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let symbolIconTmpResult: Option<SymbolGlyphModifier> = symbolIconTmpBuf
        let isEnabledTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isEnabledTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isEnabledTmpBuf_runtimeType))) {
            isEnabledTmpBuf = valueDeserializer.readBoolean()
        }
        let isEnabledTmpResult: Option<Bool> = isEnabledTmpBuf
        let actionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var actionTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(actionTmpBuf_runtimeType))) {
            let actionTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let actionTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let actionTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            actionTmpBuf = { => let actionTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
actionTmpBuf_BufArgsSerializer.writeInt32(actionTmpBuf_BufResource.resourceId);
actionTmpBuf_BufArgsSerializer.writePointer(actionTmpBuf_BufCall);
actionTmpBuf_BufArgsSerializer.writePointer(actionTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, actionTmpBuf_BufArgsSerializer.asBuffer(), actionTmpBuf_BufArgsSerializer.length());
actionTmpBuf_BufArgsSerializer.release();
return; }
        }
        let actionTmpResult: Option<(() -> Unit)> = actionTmpBuf
        var value: NavigationMenuItem = NavigationMenuItem(valueTmpResult, iconTmpResult, symbolIconTmpResult, isEnabledTmpResult, actionTmpResult)
        return value
    }
}
