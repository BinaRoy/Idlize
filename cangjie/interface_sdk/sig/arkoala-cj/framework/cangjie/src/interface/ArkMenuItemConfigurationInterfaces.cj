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
public interface MenuItemConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop value: ResourceStr
    public mut open prop icon: Option<ResourceStr>
    public mut open prop symbolIcon: Option<SymbolGlyphModifier>
    public mut open prop selected: Bool
    public mut open prop index: Float64
}
public open class MenuItemConfiguration <: MenuItemConfigurationInterfaces {
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
    private var selected_container: Bool
    public mut open prop selected: Bool
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    private var index_container: Float64
    public mut open prop index: Float64
    {
        get() {
            return index_container
        }
        set(index) {
            index_container = index
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
    MenuItemConfiguration(value: ResourceStr, icon: Option<ResourceStr>, symbolIcon: Option<SymbolGlyphModifier>, selected: Bool, index: Float64, enabled: Bool, contentModifier: ContentModifier<T>) {
        this.value_container = value
        this.icon_container = icon
        this.symbolIcon_container = symbolIcon
        this.selected_container = selected
        this.index_container = index
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class MenuItemConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: MenuItemConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
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
        let valueHolderForSelected = value.selected
        valueSerializer.writeBoolean(valueHolderForSelected);
        let valueHolderForIndex = value.index
        valueSerializer.writeNumber(valueHolderForIndex);
    }
    public static func read(buffer: DeserializerBase): MenuItemConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<MenuItemConfiguration> = match (valueDeserializer.readObject() as ContentModifier<MenuItemConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
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
        let selectedTmpResult: Bool = valueDeserializer.readBoolean()
        let indexTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: MenuItemConfiguration = MenuItemConfiguration(valueTmpResult, iconTmpResult, symbolIconTmpResult, selectedTmpResult, indexTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
