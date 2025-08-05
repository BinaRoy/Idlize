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
public interface ToolbarItemInterfaces <:  {
    public mut open prop value: ResourceStr
    public mut open prop icon: Option<ResourceStr>
    public mut open prop symbolIcon: Option<SymbolGlyphModifier>
    public mut open prop action: Option<(() -> Unit)>
    public mut open prop status: Option<ToolbarItemStatus>
    public mut open prop activeIcon: Option<ResourceStr>
    public mut open prop activeSymbolIcon: Option<SymbolGlyphModifier>
}
public open class ToolbarItem <: ToolbarItemInterfaces {
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
    private var status_container: Option<ToolbarItemStatus>
    public mut open prop status: Option<ToolbarItemStatus>
    {
        get() {
            return status_container
        }
        set(status) {
            status_container = status
        }
    }
    private var activeIcon_container: Option<ResourceStr>
    public mut open prop activeIcon: Option<ResourceStr>
    {
        get() {
            return activeIcon_container
        }
        set(activeIcon) {
            activeIcon_container = activeIcon
        }
    }
    private var activeSymbolIcon_container: Option<SymbolGlyphModifier>
    public mut open prop activeSymbolIcon: Option<SymbolGlyphModifier>
    {
        get() {
            return activeSymbolIcon_container
        }
        set(activeSymbolIcon) {
            activeSymbolIcon_container = activeSymbolIcon
        }
    }
    ToolbarItem(value: ResourceStr, icon: Option<ResourceStr>, symbolIcon: Option<SymbolGlyphModifier>, action: Option<(() -> Unit)>, status: Option<ToolbarItemStatus>, activeIcon: Option<ResourceStr>, activeSymbolIcon: Option<SymbolGlyphModifier>) {
        this.value_container = value
        this.icon_container = icon
        this.symbolIcon_container = symbolIcon
        this.action_container = action
        this.status_container = status
        this.activeIcon_container = activeIcon
        this.activeSymbolIcon_container = activeSymbolIcon
    }
}
public open class ToolbarItem_serializer {
    public static func write(buffer: SerializerBase, value: ToolbarItem): Unit {
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
        let valueHolderForAction = value.action
        if (valueHolderForAction.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForActionTmpValue = valueHolderForAction
            valueSerializer.holdAndWriteCallback(valueHolderForActionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStatus = value.status
        if (valueHolderForStatus.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStatusTmpValue = valueHolderForStatus
            valueSerializer.writeInt32(valueHolderForStatusTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForActiveIcon = value.activeIcon
        if (valueHolderForActiveIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForActiveIconTmpValue = valueHolderForActiveIcon
            if (valueHolderForActiveIconTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForActiveIconTmpValueForIdx0 = valueHolderForActiveIconTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForActiveIconTmpValueForIdx0);
            } else if (valueHolderForActiveIconTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForActiveIconTmpValueForIdx1 = valueHolderForActiveIconTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForActiveIconTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForActiveSymbolIcon = value.activeSymbolIcon
        if (valueHolderForActiveSymbolIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForActiveSymbolIconTmpValue = valueHolderForActiveSymbolIcon
            valueSerializer.writeCustomObject("Any", valueHolderForActiveSymbolIconTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ToolbarItem {
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
        let statusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var statusTmpBuf: Option<ToolbarItemStatus> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(statusTmpBuf_runtimeType))) {
            statusTmpBuf = ToolbarItemStatus(valueDeserializer.readInt32())
        }
        let statusTmpResult: Option<ToolbarItemStatus> = statusTmpBuf
        let activeIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var activeIconTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(activeIconTmpBuf_runtimeType))) {
            let activeIconTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var activeIconTmpBuf_: ResourceStr 
            if (activeIconTmpBuf_UnionSelector == Int8(0)) {
                activeIconTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (activeIconTmpBuf_UnionSelector == Int8(1)) {
                activeIconTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for activeIconTmpBuf_ has to be chosen through deserialisation.")
            }
            activeIconTmpBuf = match (activeIconTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let activeIconTmpResult: Option<ResourceStr> = activeIconTmpBuf
        let activeSymbolIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var activeSymbolIconTmpBuf: Option<SymbolGlyphModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(activeSymbolIconTmpBuf_runtimeType))) {
            activeSymbolIconTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let activeSymbolIconTmpResult: Option<SymbolGlyphModifier> = activeSymbolIconTmpBuf
        var value: ToolbarItem = ToolbarItem(valueTmpResult, iconTmpResult, symbolIconTmpResult, actionTmpResult, statusTmpResult, activeIconTmpResult, activeSymbolIconTmpResult)
        return value
    }
}
