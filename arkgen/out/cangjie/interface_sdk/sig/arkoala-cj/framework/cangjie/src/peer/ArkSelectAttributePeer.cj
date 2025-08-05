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
public open class ArkSelectPeer <: ArkCommonMethodPeer {
    protected ArkSelectPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSelectPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Select_construct(peerId, flags)
        let _peer = ArkSelectPeer(_peerPtr, peerId, "Select", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSelectOptionsAttribute(options: ArrayList<SelectOption>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(options.size));
        for (optionsCounterI in 0..options.size) {
            let optionsTmpElement: SelectOption = options[Int64(optionsCounterI)]
            SelectOption_serializer.write(thisSerializer, optionsTmpElement);
        }
        ArkUIGeneratedNativeModule._SelectInterface_setSelectOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedAttribute(numCount: Option<Union_Number_Resource_Bindable_Bindable>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (numCount.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let numCountTmpValue = numCount
            if (numCountTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let numCountTmpValueForIdx0 = numCountTmpValue.getValue0()
                thisSerializer.writeNumber(numCountTmpValueForIdx0);
            } else if (numCountTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let numCountTmpValueForIdx1 = numCountTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", numCountTmpValueForIdx1);
            } else if (numCountTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let numCountTmpValueForIdx2 = numCountTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", numCountTmpValueForIdx2);
            } else if (numCountTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let numCountTmpValueForIdx3 = numCountTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", numCountTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setSelected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setValueAttribute(resStr: Option<Union_ResourceStr_Bindable_Bindable>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resStr.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resStrTmpValue = resStr
            if (resStrTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resStrTmpValueForIdx0 = resStrTmpValue.getValue0()
                if (resStrTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let resStrTmpValueForIdx0ForIdx0 = resStrTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(resStrTmpValueForIdx0ForIdx0);
                } else if (resStrTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let resStrTmpValueForIdx0ForIdx1 = resStrTmpValueForIdx0.getValue1()
                    thisSerializer.writeCustomObject("Any", resStrTmpValueForIdx0ForIdx1);
                }
            } else if (resStrTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resStrTmpValueForIdx1 = resStrTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", resStrTmpValueForIdx1);
            } else if (resStrTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resStrTmpValueForIdx2 = resStrTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", resStrTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setValue(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontAttribute(selectFont: Option<Font>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (selectFont.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let selectFontTmpValue = selectFont
            Font_serializer.write(thisSerializer, selectFontTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontColorAttribute(resColor: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resColor.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resColorTmpValue = resColor
            if (resColorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resColorTmpValueForIdx0 = resColorTmpValue.getValue0()
                thisSerializer.writeInt32(resColorTmpValueForIdx0.value);
            } else if (resColorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resColorTmpValueForIdx1 = resColorTmpValue.getValue1()
                thisSerializer.writeNumber(resColorTmpValueForIdx1);
            } else if (resColorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resColorTmpValueForIdx2 = resColorTmpValue.getValue2()
                thisSerializer.writeString(resColorTmpValueForIdx2);
            } else if (resColorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let resColorTmpValueForIdx3 = resColorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", resColorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedOptionBgColorAttribute(resColor: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resColor.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resColorTmpValue = resColor
            if (resColorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resColorTmpValueForIdx0 = resColorTmpValue.getValue0()
                thisSerializer.writeInt32(resColorTmpValueForIdx0.value);
            } else if (resColorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resColorTmpValueForIdx1 = resColorTmpValue.getValue1()
                thisSerializer.writeNumber(resColorTmpValueForIdx1);
            } else if (resColorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resColorTmpValueForIdx2 = resColorTmpValue.getValue2()
                thisSerializer.writeString(resColorTmpValueForIdx2);
            } else if (resColorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let resColorTmpValueForIdx3 = resColorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", resColorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setSelectedOptionBgColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedOptionFontAttribute(selectFont: Option<Font>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (selectFont.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let selectFontTmpValue = selectFont
            Font_serializer.write(thisSerializer, selectFontTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setSelectedOptionFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedOptionFontColorAttribute(resColor: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resColor.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resColorTmpValue = resColor
            if (resColorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resColorTmpValueForIdx0 = resColorTmpValue.getValue0()
                thisSerializer.writeInt32(resColorTmpValueForIdx0.value);
            } else if (resColorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resColorTmpValueForIdx1 = resColorTmpValue.getValue1()
                thisSerializer.writeNumber(resColorTmpValueForIdx1);
            } else if (resColorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resColorTmpValueForIdx2 = resColorTmpValue.getValue2()
                thisSerializer.writeString(resColorTmpValueForIdx2);
            } else if (resColorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let resColorTmpValueForIdx3 = resColorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", resColorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setSelectedOptionFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOptionBgColorAttribute(resColor: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resColor.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resColorTmpValue = resColor
            if (resColorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resColorTmpValueForIdx0 = resColorTmpValue.getValue0()
                thisSerializer.writeInt32(resColorTmpValueForIdx0.value);
            } else if (resColorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resColorTmpValueForIdx1 = resColorTmpValue.getValue1()
                thisSerializer.writeNumber(resColorTmpValueForIdx1);
            } else if (resColorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resColorTmpValueForIdx2 = resColorTmpValue.getValue2()
                thisSerializer.writeString(resColorTmpValueForIdx2);
            } else if (resColorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let resColorTmpValueForIdx3 = resColorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", resColorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setOptionBgColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOptionFontAttribute(selectFont: Option<Font>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (selectFont.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let selectFontTmpValue = selectFont
            Font_serializer.write(thisSerializer, selectFontTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setOptionFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOptionFontColorAttribute(resColor: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resColor.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resColorTmpValue = resColor
            if (resColorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resColorTmpValueForIdx0 = resColorTmpValue.getValue0()
                thisSerializer.writeInt32(resColorTmpValueForIdx0.value);
            } else if (resColorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resColorTmpValueForIdx1 = resColorTmpValue.getValue1()
                thisSerializer.writeNumber(resColorTmpValueForIdx1);
            } else if (resColorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resColorTmpValueForIdx2 = resColorTmpValue.getValue2()
                thisSerializer.writeString(resColorTmpValueForIdx2);
            } else if (resColorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let resColorTmpValueForIdx3 = resColorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", resColorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setOptionFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelect0Attribute(callback_: ((index: Float64, value: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._SelectAttribute_setOnSelect0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelect1Attribute(callback_: Option<OnSelectCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setOnSelect1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSpaceAttribute(spaceLength: Option<Length>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (spaceLength.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let spaceLengthTmpValue = spaceLength
            if (spaceLengthTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let spaceLengthTmpValueForIdx0 = spaceLengthTmpValue.getValue0()
                thisSerializer.writeString(spaceLengthTmpValueForIdx0);
            } else if (spaceLengthTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let spaceLengthTmpValueForIdx1 = spaceLengthTmpValue.getValue1()
                thisSerializer.writeNumber(spaceLengthTmpValueForIdx1);
            } else if (spaceLengthTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let spaceLengthTmpValueForIdx2 = spaceLengthTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", spaceLengthTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setSpace(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setArrowPositionAttribute(position: Option<ArrowPosition>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (position.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let positionTmpValue = position
            thisSerializer.writeInt32(positionTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setArrowPosition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMenuAlignAttribute(alignType: Option<MenuAlignType>, offset: Option<Offset>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (alignType.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let alignTypeTmpValue = alignType
            thisSerializer.writeInt32(alignTypeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (offset.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let offsetTmpValue = offset
            Offset_serializer.write(thisSerializer, offsetTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setMenuAlign(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOptionWidthAttribute(width: Option<Union_Dimension_OptionWidthMode>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (width.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let widthTmpValue = width
            if (widthTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let widthTmpValueForIdx0 = widthTmpValue.getValue0()
                if (widthTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let widthTmpValueForIdx0ForIdx0 = widthTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(widthTmpValueForIdx0ForIdx0);
                } else if (widthTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let widthTmpValueForIdx0ForIdx1 = widthTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(widthTmpValueForIdx0ForIdx1);
                } else if (widthTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let widthTmpValueForIdx0ForIdx2 = widthTmpValueForIdx0.getValue2()
                    thisSerializer.writeCustomObject("Any", widthTmpValueForIdx0ForIdx2);
                }
            } else if (widthTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let widthTmpValueForIdx1 = widthTmpValue.getValue1()
                thisSerializer.writeInt32(widthTmpValueForIdx1.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setOptionWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOptionHeightAttribute(height: Option<Dimension>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (height.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let heightTmpValue = height
            if (heightTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let heightTmpValueForIdx0 = heightTmpValue.getValue0()
                thisSerializer.writeString(heightTmpValueForIdx0);
            } else if (heightTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let heightTmpValueForIdx1 = heightTmpValue.getValue1()
                thisSerializer.writeNumber(heightTmpValueForIdx1);
            } else if (heightTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let heightTmpValueForIdx2 = heightTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", heightTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setOptionHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMenuBackgroundColorAttribute(resColor: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resColor.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resColorTmpValue = resColor
            if (resColorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resColorTmpValueForIdx0 = resColorTmpValue.getValue0()
                thisSerializer.writeInt32(resColorTmpValueForIdx0.value);
            } else if (resColorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resColorTmpValueForIdx1 = resColorTmpValue.getValue1()
                thisSerializer.writeNumber(resColorTmpValueForIdx1);
            } else if (resColorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resColorTmpValueForIdx2 = resColorTmpValue.getValue2()
                thisSerializer.writeString(resColorTmpValueForIdx2);
            } else if (resColorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let resColorTmpValueForIdx3 = resColorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", resColorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setMenuBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMenuBackgroundBlurStyleAttribute(style: Option<BlurStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            thisSerializer.writeInt32(styleTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setMenuBackgroundBlurStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setControlSizeAttribute(size: Option<ControlSize>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (size.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sizeTmpValue = size
            thisSerializer.writeInt32(sizeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setControlSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMenuItemContentModifierAttribute(modifier: Option<ContentModifier<MenuItemConfiguration>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (modifier.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modifierTmpValue = modifier
            thisSerializer.holdAndWriteObject(modifierTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setMenuItemContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDividerAttribute(options: Option<DividerOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            DividerOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setDivider(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextModifierAttribute(modifier: Option<Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (modifier.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modifierTmpValue = modifier
            thisSerializer.writeCustomObject("Any", modifierTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setTextModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setArrowModifierAttribute(modifier: Option<SymbolGlyphModifier>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (modifier.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modifierTmpValue = modifier
            thisSerializer.writeCustomObject("Any", modifierTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setArrowModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOptionTextModifierAttribute(modifier: Option<Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (modifier.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modifierTmpValue = modifier
            thisSerializer.writeCustomObject("Any", modifierTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setOptionTextModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedOptionTextModifierAttribute(modifier: Option<Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (modifier.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modifierTmpValue = modifier
            thisSerializer.writeCustomObject("Any", modifierTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setSelectedOptionTextModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDividerStyleAttribute(style: Option<DividerStyleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            DividerStyleOptions_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setDividerStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAvoidanceAttribute(mode: AvoidanceMode): Unit {
        ArkUIGeneratedNativeModule._SelectAttribute_setAvoidance(this.peer.ptr, mode.value);
    }
    public open func setMenuOutlineAttribute(outline: MenuOutlineOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        MenuOutlineOptions_serializer.write(thisSerializer, outline);
        ArkUIGeneratedNativeModule._SelectAttribute_setMenuOutline(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowInSubWindowAttribute(showInSubWindow: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (showInSubWindow.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let showInSubWindowTmpValue = showInSubWindow
            thisSerializer.writeBoolean(showInSubWindowTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SelectAttribute_setShowInSubWindow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowDefaultSelectedIconAttribute(show: Bool): Unit {
        ArkUIGeneratedNativeModule._SelectAttribute_setShowDefaultSelectedIcon(this.peer.ptr, if (show) { Int32(1) } else { Int32(0) });
    }
    public open func set_onChangeEvent_selectedAttribute(callback: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._SelectAttribute_set_onChangeEvent_selected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_valueAttribute(callback: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._SelectAttribute_set_onChangeEvent_value(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
