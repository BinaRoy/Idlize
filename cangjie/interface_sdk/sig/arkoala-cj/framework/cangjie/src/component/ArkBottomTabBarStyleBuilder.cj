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
public open class BottomTabBarStyle {
    var _icon: Option<Union_ResourceStr_TabBarSymbol> = Option.None
    var _text: Option<ResourceStr> = Option.None
    var _labelStyle: Option<LabelStyle> = Option.None
    var _labelStyle: Option<TabBarLabelStyle> = Option.None
    var _padding: Option<Union_Padding_Dimension_LocalizedPadding> = Option.None
    var _layoutMode: Option<LayoutMode> = Option.None
    var _verticalAlign: Option<VerticalAlign> = Option.None
    var _symmetricExtensible: Option<Bool> = Option.None
    var _id: Option<String> = Option.None
    var _iconStyle: Option<TabBarIconStyle> = Option.None
    init(icon: Union_ResourceStr_TabBarSymbol, text: ResourceStr) {
        this._icon = icon
        this._text = text
    }
}
public open class BottomTabBarStyle_serializer {
    public static func write(buffer: SerializerBase, value: BottomTabBarStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderFor_icon = value._icon
        if (valueHolderFor_icon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_iconTmpValue = valueHolderFor_icon
            if (valueHolderFor_iconTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_iconTmpValueForIdx0 = valueHolderFor_iconTmpValue.getValue0()
                if (valueHolderFor_iconTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderFor_iconTmpValueForIdx0ForIdx0 = valueHolderFor_iconTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderFor_iconTmpValueForIdx0ForIdx0);
                } else if (valueHolderFor_iconTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderFor_iconTmpValueForIdx0ForIdx1 = valueHolderFor_iconTmpValueForIdx0.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderFor_iconTmpValueForIdx0ForIdx1);
                }
            } else if (valueHolderFor_iconTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_iconTmpValueForIdx1 = valueHolderFor_iconTmpValue.getValue1()
                TabBarSymbol_serializer.write(valueSerializer, valueHolderFor_iconTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_text = value._text
        if (valueHolderFor_text.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_textTmpValue = valueHolderFor_text
            if (valueHolderFor_textTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_textTmpValueForIdx0 = valueHolderFor_textTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_textTmpValueForIdx0);
            } else if (valueHolderFor_textTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_textTmpValueForIdx1 = valueHolderFor_textTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderFor_textTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_labelStyle = value._labelStyle
        if (valueHolderFor_labelStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_labelStyleTmpValue = valueHolderFor_labelStyle
            if (valueHolderFor_labelStyleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_labelStyleTmpValueForIdx0 = valueHolderFor_labelStyleTmpValue.getValue0()
                LabelStyle_serializer.write(valueSerializer, valueHolderFor_labelStyleTmpValueForIdx0);
            } else if (valueHolderFor_labelStyleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_labelStyleTmpValueForIdx1 = valueHolderFor_labelStyleTmpValue.getValue1()
                TabBarLabelStyle_serializer.write(valueSerializer, valueHolderFor_labelStyleTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_padding = value._padding
        if (valueHolderFor_padding.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_paddingTmpValue = valueHolderFor_padding
            if (valueHolderFor_paddingTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_paddingTmpValueForIdx0 = valueHolderFor_paddingTmpValue.getValue0()
                Padding_serializer.write(valueSerializer, valueHolderFor_paddingTmpValueForIdx0);
            } else if (valueHolderFor_paddingTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_paddingTmpValueForIdx1 = valueHolderFor_paddingTmpValue.getValue1()
                if (valueHolderFor_paddingTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderFor_paddingTmpValueForIdx1ForIdx0 = valueHolderFor_paddingTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderFor_paddingTmpValueForIdx1ForIdx0);
                } else if (valueHolderFor_paddingTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderFor_paddingTmpValueForIdx1ForIdx1 = valueHolderFor_paddingTmpValueForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderFor_paddingTmpValueForIdx1ForIdx1);
                } else if (valueHolderFor_paddingTmpValueForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderFor_paddingTmpValueForIdx1ForIdx2 = valueHolderFor_paddingTmpValueForIdx1.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderFor_paddingTmpValueForIdx1ForIdx2);
                }
            } else if (valueHolderFor_paddingTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_paddingTmpValueForIdx2 = valueHolderFor_paddingTmpValue.getValue2()
                LocalizedPadding_serializer.write(valueSerializer, valueHolderFor_paddingTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_layoutMode = value._layoutMode
        if (valueHolderFor_layoutMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_layoutModeTmpValue = valueHolderFor_layoutMode
            valueSerializer.writeInt32(valueHolderFor_layoutModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_verticalAlign = value._verticalAlign
        if (valueHolderFor_verticalAlign.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_verticalAlignTmpValue = valueHolderFor_verticalAlign
            valueSerializer.writeInt32(valueHolderFor_verticalAlignTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_symmetricExtensible = value._symmetricExtensible
        if (valueHolderFor_symmetricExtensible.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_symmetricExtensibleTmpValue = valueHolderFor_symmetricExtensible
            valueSerializer.writeBoolean(valueHolderFor_symmetricExtensibleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_id = value._id
        if (valueHolderFor_id.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_idTmpValue = valueHolderFor_id
            valueSerializer.writeString(valueHolderFor_idTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_iconStyle = value._iconStyle
        if (valueHolderFor_iconStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_iconStyleTmpValue = valueHolderFor_iconStyle
            TabBarIconStyle_serializer.write(valueSerializer, valueHolderFor_iconStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BottomTabBarStyle {
        throw Exception("Can not deserialize builder class")
    }
}
