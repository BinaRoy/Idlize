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
public interface MenuElementInterfaces <:  {
    public mut open prop value: ResourceStr
    public mut open prop icon: Option<ResourceStr>
    public mut open prop symbolIcon: Option<SymbolGlyphModifier>
    public mut open prop enabled: Option<Bool>
    public mut open prop action: (() -> Unit)
}
public open class MenuElement <: MenuElementInterfaces {
    private var value_container: ResourceStr
    public mut open prop value: ResourceStr
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var icon_container: Option<ResourceStr>
    public mut open prop icon: Option<ResourceStr>
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
    private var action_container: (() -> Unit)
    public mut open prop action: (() -> Unit)
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    MenuElement(value: ResourceStr, icon: Option<ResourceStr>, symbolIcon: Option<SymbolGlyphModifier>, enabled: Option<Bool>, action: (() -> Unit)) {
        this.value_container = value
        this.icon_container = icon
        this.symbolIcon_container = symbolIcon
        this.enabled_container = enabled
        this.action_container = action
    }
}
public open class MenuElement_serializer {
    public static func write(buffer: SerializerBase, value: MenuElement): Unit {
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
        let valueHolderForEnabled = value.enabled
        if (valueHolderForEnabled.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnabledTmpValue = valueHolderForEnabled
            valueSerializer.writeBoolean(valueHolderForEnabledTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAction = value.action
        valueSerializer.holdAndWriteCallback(valueHolderForAction);
    }
    public static func read(buffer: DeserializerBase): MenuElement {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var valueTmpBuf: ResourceStr 
        if (valueTmpBufUnionSelector == Int8(0)) {
            valueTmpBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (valueTmpBufUnionSelector == Int8(1)) {
            valueTmpBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
        }
        let valueTmpResult: ResourceStr = match (valueTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let iconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconTmpBuf_runtimeType))) {
            let iconTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var iconTmpBuf_: ResourceStr 
            if (iconTmpBuf_UnionSelector == Int8(0)) {
                iconTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (iconTmpBuf_UnionSelector == Int8(1)) {
                iconTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for iconTmpBuf_ has to be chosen through deserialisation.")
            }
            iconTmpBuf = match (iconTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let iconTmpResult: Option<ResourceStr> = iconTmpBuf
        let symbolIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var symbolIconTmpBuf: Option<SymbolGlyphModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(symbolIconTmpBuf_runtimeType))) {
            symbolIconTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let symbolIconTmpResult: Option<SymbolGlyphModifier> = symbolIconTmpBuf
        let enabledTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enabledTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enabledTmpBuf_runtimeType))) {
            enabledTmpBuf = valueDeserializer.readBoolean()
        }
        let enabledTmpResult: Option<Bool> = enabledTmpBuf
        let actionTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let actionTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let actionTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let actionTmpResult: (() -> Unit) = { => let actionTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
actionTmpBufBufArgsSerializer.writeInt32(actionTmpBufBufResource.resourceId);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCall);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCallSync);
InteropNativeModule._CallCallback(-1867723152, actionTmpBufBufArgsSerializer.asBuffer(), actionTmpBufBufArgsSerializer.length());
actionTmpBufBufArgsSerializer.release();
return; }
        var value: MenuElement = MenuElement(valueTmpResult, iconTmpResult, symbolIconTmpResult, enabledTmpResult, actionTmpResult)
        return value
    }
}
