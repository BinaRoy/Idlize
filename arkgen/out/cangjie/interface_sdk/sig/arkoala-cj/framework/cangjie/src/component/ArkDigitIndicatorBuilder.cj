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
public open class DigitIndicator {
    var _left: Option<Length> = Option.None
    var _top: Option<Length> = Option.None
    var _right: Option<Length> = Option.None
    var _bottom: Option<Length> = Option.None
    var _start: Option<LengthMetrics> = Option.None
    var _end: Option<LengthMetrics> = Option.None
    var _fontColor: Option<ResourceColor> = Option.None
    var _selectedFontColor: Option<ResourceColor> = Option.None
    var _digitFont: Option<Font> = Option.None
    var _selectedDigitFont: Option<Font> = Option.None
    init() {
    }
}
public open class DigitIndicator_serializer {
    public static func write(buffer: SerializerBase, value: DigitIndicator): Unit {
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
        let valueHolderFor_fontColor = value._fontColor
        if (valueHolderFor_fontColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_fontColorTmpValue = valueHolderFor_fontColor
            if (valueHolderFor_fontColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_fontColorTmpValueForIdx0 = valueHolderFor_fontColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderFor_fontColorTmpValueForIdx0.value);
            } else if (valueHolderFor_fontColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_fontColorTmpValueForIdx1 = valueHolderFor_fontColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_fontColorTmpValueForIdx1);
            } else if (valueHolderFor_fontColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_fontColorTmpValueForIdx2 = valueHolderFor_fontColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderFor_fontColorTmpValueForIdx2);
            } else if (valueHolderFor_fontColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderFor_fontColorTmpValueForIdx3 = valueHolderFor_fontColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderFor_fontColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_selectedFontColor = value._selectedFontColor
        if (valueHolderFor_selectedFontColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_selectedFontColorTmpValue = valueHolderFor_selectedFontColor
            if (valueHolderFor_selectedFontColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderFor_selectedFontColorTmpValueForIdx0 = valueHolderFor_selectedFontColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderFor_selectedFontColorTmpValueForIdx0.value);
            } else if (valueHolderFor_selectedFontColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderFor_selectedFontColorTmpValueForIdx1 = valueHolderFor_selectedFontColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderFor_selectedFontColorTmpValueForIdx1);
            } else if (valueHolderFor_selectedFontColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderFor_selectedFontColorTmpValueForIdx2 = valueHolderFor_selectedFontColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderFor_selectedFontColorTmpValueForIdx2);
            } else if (valueHolderFor_selectedFontColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderFor_selectedFontColorTmpValueForIdx3 = valueHolderFor_selectedFontColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderFor_selectedFontColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_digitFont = value._digitFont
        if (valueHolderFor_digitFont.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_digitFontTmpValue = valueHolderFor_digitFont
            Font_serializer.write(valueSerializer, valueHolderFor_digitFontTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderFor_selectedDigitFont = value._selectedDigitFont
        if (valueHolderFor_selectedDigitFont.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderFor_selectedDigitFontTmpValue = valueHolderFor_selectedDigitFont
            Font_serializer.write(valueSerializer, valueHolderFor_selectedDigitFontTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DigitIndicator {
        throw Exception("Can not deserialize builder class")
    }
}
