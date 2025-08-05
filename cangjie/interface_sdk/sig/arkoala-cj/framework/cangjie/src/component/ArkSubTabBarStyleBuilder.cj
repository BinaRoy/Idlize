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
public open class SubTabBarStyle {
    var _content: Option<ResourceStr> = Option.None
    var _content: Option<Union_ResourceStr_ComponentContent> = Option.None
    var _indicator: Option<IndicatorStyle> = Option.None
    var _indicator: Option<SubTabBarIndicatorStyle> = Option.None
    var _selectedMode: Option<SelectedMode> = Option.None
    var _board: Option<BoardStyle> = Option.None
    var _labelStyle: Option<LabelStyle> = Option.None
    var _labelStyle: Option<TabBarLabelStyle> = Option.None
    var _padding: Option<Union_Padding_Dimension> = Option.None
    var _padding: Option<LocalizedPadding> = Option.None
    var _id: Option<String> = Option.None
    init(content: ResourceStr) {
        this._content = content
    }
    init(content: Union_ResourceStr_ComponentContent) {
        this._content = content
    }
}
public open class SubTabBarStyle_serializer {
    public static func write(buffer: SerializerBase, value: SubTabBarStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderFor_content = value._content
        if (valueHolderFor_content.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_contentTmpValue = valueHolderFor_content
            if (valueHolderFor_contentTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_contentTmpValueForIdx0 = valueHolderFor_contentTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_contentTmpValueForIdx0);
            } else if (valueHolderFor_contentTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_contentTmpValueForIdx1 = valueHolderFor_contentTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderFor_contentTmpValueForIdx1);
            } else if (valueHolderFor_contentTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_contentTmpValueForIdx2 = valueHolderFor_contentTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_contentTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_indicator = value._indicator
        if (valueHolderFor_indicator.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_indicatorTmpValue = valueHolderFor_indicator
            if (valueHolderFor_indicatorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_indicatorTmpValueForIdx0 = valueHolderFor_indicatorTmpValue.getValue0()
                IndicatorStyle_serializer.write(valueSerializer, valueHolderFor_indicatorTmpValueForIdx0);
            } else if (valueHolderFor_indicatorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_indicatorTmpValueForIdx1 = valueHolderFor_indicatorTmpValue.getValue1()
                SubTabBarIndicatorStyle_serializer.write(valueSerializer, valueHolderFor_indicatorTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_selectedMode = value._selectedMode
        if (valueHolderFor_selectedMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_selectedModeTmpValue = valueHolderFor_selectedMode
            valueSerializer.writeInt32(valueHolderFor_selectedModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_board = value._board
        if (valueHolderFor_board.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_boardTmpValue = valueHolderFor_board
            BoardStyle_serializer.write(valueSerializer, valueHolderFor_boardTmpValue);
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
                if (valueHolderFor_paddingTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderFor_paddingTmpValueForIdx0ForIdx0 = valueHolderFor_paddingTmpValueForIdx0.getValue0()
                    Padding_serializer.write(valueSerializer, valueHolderFor_paddingTmpValueForIdx0ForIdx0);
                } else if (valueHolderFor_paddingTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderFor_paddingTmpValueForIdx0ForIdx1 = valueHolderFor_paddingTmpValueForIdx0.getValue1()
                    if (valueHolderFor_paddingTmpValueForIdx0ForIdx1.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderFor_paddingTmpValueForIdx0ForIdx1ForIdx0 = valueHolderFor_paddingTmpValueForIdx0ForIdx1.getValue0()
                        valueSerializer.writeString(valueHolderFor_paddingTmpValueForIdx0ForIdx1ForIdx0);
                    } else if (valueHolderFor_paddingTmpValueForIdx0ForIdx1.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderFor_paddingTmpValueForIdx0ForIdx1ForIdx1 = valueHolderFor_paddingTmpValueForIdx0ForIdx1.getValue1()
                        valueSerializer.writeNumber(valueHolderFor_paddingTmpValueForIdx0ForIdx1ForIdx1);
                    } else if (valueHolderFor_paddingTmpValueForIdx0ForIdx1.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderFor_paddingTmpValueForIdx0ForIdx1ForIdx2 = valueHolderFor_paddingTmpValueForIdx0ForIdx1.getValue2()
                        valueSerializer.writeCustomObject("Any", valueHolderFor_paddingTmpValueForIdx0ForIdx1ForIdx2);
                    }
                }
            } else if (valueHolderFor_paddingTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_paddingTmpValueForIdx1 = valueHolderFor_paddingTmpValue.getValue1()
                LocalizedPadding_serializer.write(valueSerializer, valueHolderFor_paddingTmpValueForIdx1);
            }
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
    }
    public static func read(buffer: DeserializerBase): SubTabBarStyle {
        throw Exception("Can not deserialize builder class")
    }
}
