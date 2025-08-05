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
public open class DotIndicator {
    var _left: Option<Length> = Option.None
    var _top: Option<Length> = Option.None
    var _right: Option<Length> = Option.None
    var _bottom: Option<Length> = Option.None
    var _start: Option<LengthMetrics> = Option.None
    var _end: Option<LengthMetrics> = Option.None
    var _itemWidth: Option<Length> = Option.None
    var _itemHeight: Option<Length> = Option.None
    var _selectedItemWidth: Option<Length> = Option.None
    var _selectedItemHeight: Option<Length> = Option.None
    var _mask: Option<Bool> = Option.None
    var _color: Option<ResourceColor> = Option.None
    var _selectedColor: Option<ResourceColor> = Option.None
    var _maxDisplayCount: Option<Float64> = Option.None
    var _space: Option<LengthMetrics> = Option.None
    init() {
    }
}
public open class DotIndicator_serializer {
    public static func write(buffer: SerializerBase, value: DotIndicator): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderFor_left = value._left
        if (valueHolderFor_left.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_leftTmpValue = valueHolderFor_left
            if (valueHolderFor_leftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_leftTmpValueForIdx0 = valueHolderFor_leftTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_leftTmpValueForIdx0);
            } else if (valueHolderFor_leftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_leftTmpValueForIdx1 = valueHolderFor_leftTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_leftTmpValueForIdx1);
            } else if (valueHolderFor_leftTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_leftTmpValueForIdx2 = valueHolderFor_leftTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_leftTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_top = value._top
        if (valueHolderFor_top.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_topTmpValue = valueHolderFor_top
            if (valueHolderFor_topTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_topTmpValueForIdx0 = valueHolderFor_topTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_topTmpValueForIdx0);
            } else if (valueHolderFor_topTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_topTmpValueForIdx1 = valueHolderFor_topTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_topTmpValueForIdx1);
            } else if (valueHolderFor_topTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_topTmpValueForIdx2 = valueHolderFor_topTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_topTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_right = value._right
        if (valueHolderFor_right.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_rightTmpValue = valueHolderFor_right
            if (valueHolderFor_rightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_rightTmpValueForIdx0 = valueHolderFor_rightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_rightTmpValueForIdx0);
            } else if (valueHolderFor_rightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_rightTmpValueForIdx1 = valueHolderFor_rightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_rightTmpValueForIdx1);
            } else if (valueHolderFor_rightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_rightTmpValueForIdx2 = valueHolderFor_rightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_rightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_bottom = value._bottom
        if (valueHolderFor_bottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_bottomTmpValue = valueHolderFor_bottom
            if (valueHolderFor_bottomTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_bottomTmpValueForIdx0 = valueHolderFor_bottomTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_bottomTmpValueForIdx0);
            } else if (valueHolderFor_bottomTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_bottomTmpValueForIdx1 = valueHolderFor_bottomTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_bottomTmpValueForIdx1);
            } else if (valueHolderFor_bottomTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_bottomTmpValueForIdx2 = valueHolderFor_bottomTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_bottomTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_start = value._start
        if (valueHolderFor_start.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_startTmpValue = valueHolderFor_start
            valueSerializer.writeCustomObject("Any", valueHolderFor_startTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_end = value._end
        if (valueHolderFor_end.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_endTmpValue = valueHolderFor_end
            valueSerializer.writeCustomObject("Any", valueHolderFor_endTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_itemWidth = value._itemWidth
        if (valueHolderFor_itemWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_itemWidthTmpValue = valueHolderFor_itemWidth
            if (valueHolderFor_itemWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_itemWidthTmpValueForIdx0 = valueHolderFor_itemWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_itemWidthTmpValueForIdx0);
            } else if (valueHolderFor_itemWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_itemWidthTmpValueForIdx1 = valueHolderFor_itemWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_itemWidthTmpValueForIdx1);
            } else if (valueHolderFor_itemWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_itemWidthTmpValueForIdx2 = valueHolderFor_itemWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_itemWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_itemHeight = value._itemHeight
        if (valueHolderFor_itemHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_itemHeightTmpValue = valueHolderFor_itemHeight
            if (valueHolderFor_itemHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_itemHeightTmpValueForIdx0 = valueHolderFor_itemHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_itemHeightTmpValueForIdx0);
            } else if (valueHolderFor_itemHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_itemHeightTmpValueForIdx1 = valueHolderFor_itemHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_itemHeightTmpValueForIdx1);
            } else if (valueHolderFor_itemHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_itemHeightTmpValueForIdx2 = valueHolderFor_itemHeightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_itemHeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_selectedItemWidth = value._selectedItemWidth
        if (valueHolderFor_selectedItemWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_selectedItemWidthTmpValue = valueHolderFor_selectedItemWidth
            if (valueHolderFor_selectedItemWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_selectedItemWidthTmpValueForIdx0 = valueHolderFor_selectedItemWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_selectedItemWidthTmpValueForIdx0);
            } else if (valueHolderFor_selectedItemWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_selectedItemWidthTmpValueForIdx1 = valueHolderFor_selectedItemWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_selectedItemWidthTmpValueForIdx1);
            } else if (valueHolderFor_selectedItemWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_selectedItemWidthTmpValueForIdx2 = valueHolderFor_selectedItemWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_selectedItemWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_selectedItemHeight = value._selectedItemHeight
        if (valueHolderFor_selectedItemHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_selectedItemHeightTmpValue = valueHolderFor_selectedItemHeight
            if (valueHolderFor_selectedItemHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_selectedItemHeightTmpValueForIdx0 = valueHolderFor_selectedItemHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderFor_selectedItemHeightTmpValueForIdx0);
            } else if (valueHolderFor_selectedItemHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_selectedItemHeightTmpValueForIdx1 = valueHolderFor_selectedItemHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_selectedItemHeightTmpValueForIdx1);
            } else if (valueHolderFor_selectedItemHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_selectedItemHeightTmpValueForIdx2 = valueHolderFor_selectedItemHeightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderFor_selectedItemHeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_mask = value._mask
        if (valueHolderFor_mask.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_maskTmpValue = valueHolderFor_mask
            valueSerializer.writeBoolean(valueHolderFor_maskTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_color = value._color
        if (valueHolderFor_color.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_colorTmpValue = valueHolderFor_color
            if (valueHolderFor_colorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_colorTmpValueForIdx0 = valueHolderFor_colorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderFor_colorTmpValueForIdx0.value);
            } else if (valueHolderFor_colorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_colorTmpValueForIdx1 = valueHolderFor_colorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_colorTmpValueForIdx1);
            } else if (valueHolderFor_colorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_colorTmpValueForIdx2 = valueHolderFor_colorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderFor_colorTmpValueForIdx2);
            } else if (valueHolderFor_colorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderFor_colorTmpValueForIdx3 = valueHolderFor_colorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderFor_colorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_selectedColor = value._selectedColor
        if (valueHolderFor_selectedColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_selectedColorTmpValue = valueHolderFor_selectedColor
            if (valueHolderFor_selectedColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_selectedColorTmpValueForIdx0 = valueHolderFor_selectedColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderFor_selectedColorTmpValueForIdx0.value);
            } else if (valueHolderFor_selectedColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_selectedColorTmpValueForIdx1 = valueHolderFor_selectedColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_selectedColorTmpValueForIdx1);
            } else if (valueHolderFor_selectedColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_selectedColorTmpValueForIdx2 = valueHolderFor_selectedColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderFor_selectedColorTmpValueForIdx2);
            } else if (valueHolderFor_selectedColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderFor_selectedColorTmpValueForIdx3 = valueHolderFor_selectedColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderFor_selectedColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_maxDisplayCount = value._maxDisplayCount
        if (valueHolderFor_maxDisplayCount.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_maxDisplayCountTmpValue = valueHolderFor_maxDisplayCount
            valueSerializer.writeNumber(valueHolderFor_maxDisplayCountTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_space = value._space
        if (valueHolderFor_space.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_spaceTmpValue = valueHolderFor_space
            valueSerializer.writeCustomObject("Any", valueHolderFor_spaceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DotIndicator {
        throw Exception("Can not deserialize builder class")
    }
}
