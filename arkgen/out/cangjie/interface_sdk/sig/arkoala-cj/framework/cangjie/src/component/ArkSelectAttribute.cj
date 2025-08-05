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
public interface SelectAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SelectAttribute <: SelectAttributeInterfaces {
    SelectAttribute() {
    }
}
public interface SelectAttribute {
}
public open class ArkSelectComponent <: ArkCommonMethodComponent & SelectAttribute {
    public open func getPeer(): ArkSelectPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSelectPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSelectOptions(options: ArrayList<SelectOption>): Unit {
        if (this.checkPriority("setSelectOptions")) {
            let options_casted: ArrayList<SelectOption> = options
            let thisPeer = this.getPeer()
            thisPeer.setSelectOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func selected(numCount: Option<Union_Number_Resource_Bindable_Bindable>): Unit {
        if (this.checkPriority("selected")) {
            let numCount_casted: Option<Union_Number_Resource_Bindable_Bindable> = if (let Some(numCount) <- numCount) {numCount} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedAttribute(numCount_casted)
            return
        }
        return
    }
    )
    public open func value(resStr: Option<Union_ResourceStr_Bindable_Bindable>): Unit {
        if (this.checkPriority("value")) {
            let resStr_casted: Option<Union_ResourceStr_Bindable_Bindable> = if (let Some(resStr) <- resStr) {resStr} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setValueAttribute(resStr_casted)
            return
        }
        return
    }
    )
    public open func font(selectFont: Option<Font>): Unit {
        if (this.checkPriority("font")) {
            let selectFont_casted: Option<Font> = if (let Some(selectFont) <- selectFont) {selectFont} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFontAttribute(selectFont_casted)
            return
        }
        return
    }
    )
    public open func fontColor(resColor: Option<ResourceColor>): Unit {
        if (this.checkPriority("fontColor")) {
            let resColor_casted: Option<ResourceColor> = if (let Some(resColor) <- resColor) {resColor} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFontColorAttribute(resColor_casted)
            return
        }
        return
    }
    )
    public open func selectedOptionBgColor(resColor: Option<ResourceColor>): Unit {
        if (this.checkPriority("selectedOptionBgColor")) {
            let resColor_casted: Option<ResourceColor> = if (let Some(resColor) <- resColor) {resColor} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedOptionBgColorAttribute(resColor_casted)
            return
        }
        return
    }
    )
    public open func selectedOptionFont(selectFont: Option<Font>): Unit {
        if (this.checkPriority("selectedOptionFont")) {
            let selectFont_casted: Option<Font> = if (let Some(selectFont) <- selectFont) {selectFont} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedOptionFontAttribute(selectFont_casted)
            return
        }
        return
    }
    )
    public open func selectedOptionFontColor(resColor: Option<ResourceColor>): Unit {
        if (this.checkPriority("selectedOptionFontColor")) {
            let resColor_casted: Option<ResourceColor> = if (let Some(resColor) <- resColor) {resColor} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedOptionFontColorAttribute(resColor_casted)
            return
        }
        return
    }
    )
    public open func optionBgColor(resColor: Option<ResourceColor>): Unit {
        if (this.checkPriority("optionBgColor")) {
            let resColor_casted: Option<ResourceColor> = if (let Some(resColor) <- resColor) {resColor} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOptionBgColorAttribute(resColor_casted)
            return
        }
        return
    }
    )
    public open func optionFont(selectFont: Option<Font>): Unit {
        if (this.checkPriority("optionFont")) {
            let selectFont_casted: Option<Font> = if (let Some(selectFont) <- selectFont) {selectFont} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOptionFontAttribute(selectFont_casted)
            return
        }
        return
    }
    )
    public open func optionFontColor(resColor: Option<ResourceColor>): Unit {
        if (this.checkPriority("optionFontColor")) {
            let resColor_casted: Option<ResourceColor> = if (let Some(resColor) <- resColor) {resColor} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOptionFontColorAttribute(resColor_casted)
            return
        }
        return
    }
    )
    public open func onSelect(callback_: ((index: Float64, value: String) -> Unit)): Unit {
        if (this.checkPriority("onSelect")) {
            let callback__casted: ((index: Float64, value: String) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSelect0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSelect(callback_: Option<OnSelectCallback>): Unit {
        if (this.checkPriority("onSelect")) {
            let callback__casted: Option<OnSelectCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnSelect1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func space(spaceLength: Option<Length>): Unit {
        if (this.checkPriority("space")) {
            let spaceLength_casted: Option<Length> = if (let Some(spaceLength) <- spaceLength) {spaceLength} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSpaceAttribute(spaceLength_casted)
            return
        }
        return
    }
    )
    public open func arrowPosition(position: Option<ArrowPosition>): Unit {
        if (this.checkPriority("arrowPosition")) {
            let position_casted: Option<ArrowPosition> = if (let Some(position) <- position) {position} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setArrowPositionAttribute(position_casted)
            return
        }
        return
    }
    )
    public open func menuAlign(alignType: Option<MenuAlignType>, offset: Option<Offset>): Unit {
        if (this.checkPriority("menuAlign")) {
            let alignType_casted: Option<MenuAlignType> = if (let Some(alignType) <- alignType) {alignType} else { throw Exception("Type has to be not None")}
            let offset_casted: Option<Offset> = if (let Some(offset) <- offset) {offset} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenuAlignAttribute(alignType_casted, offset_casted)
            return
        }
        return
    }
    )
    public open func optionWidth(width: Option<Union_Dimension_OptionWidthMode>): Unit {
        if (this.checkPriority("optionWidth")) {
            let width_casted: Option<Union_Dimension_OptionWidthMode> = if (let Some(width) <- width) {width} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOptionWidthAttribute(width_casted)
            return
        }
        return
    }
    )
    public open func optionHeight(height: Option<Dimension>): Unit {
        if (this.checkPriority("optionHeight")) {
            let height_casted: Option<Dimension> = if (let Some(height) <- height) {height} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOptionHeightAttribute(height_casted)
            return
        }
        return
    }
    )
    public open func menuBackgroundColor(resColor: Option<ResourceColor>): Unit {
        if (this.checkPriority("menuBackgroundColor")) {
            let resColor_casted: Option<ResourceColor> = if (let Some(resColor) <- resColor) {resColor} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenuBackgroundColorAttribute(resColor_casted)
            return
        }
        return
    }
    )
    public open func menuBackgroundBlurStyle(style: Option<BlurStyle>): Unit {
        if (this.checkPriority("menuBackgroundBlurStyle")) {
            let style_casted: Option<BlurStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenuBackgroundBlurStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func controlSize(size: Option<ControlSize>): Unit {
        if (this.checkPriority("controlSize")) {
            let size_casted: Option<ControlSize> = if (let Some(size) <- size) {size} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setControlSizeAttribute(size_casted)
            return
        }
        return
    }
    )
    public open func menuItemContentModifier(modifier: Option<ContentModifier<MenuItemConfiguration>>): Unit {
        if (this.checkPriority("menuItemContentModifier")) {
            let modifier_casted: Option<ContentModifier<MenuItemConfiguration>> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenuItemContentModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func divider(options: Option<DividerOptions>): Unit {
        if (this.checkPriority("divider")) {
            let options_casted: Option<DividerOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDividerAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func textModifier(modifier: Option<Any>): Unit {
        if (this.checkPriority("textModifier")) {
            let modifier_casted: Option<Any> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func arrowModifier(modifier: Option<SymbolGlyphModifier>): Unit {
        if (this.checkPriority("arrowModifier")) {
            let modifier_casted: Option<SymbolGlyphModifier> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setArrowModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func optionTextModifier(modifier: Option<Any>): Unit {
        if (this.checkPriority("optionTextModifier")) {
            let modifier_casted: Option<Any> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOptionTextModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func selectedOptionTextModifier(modifier: Option<Any>): Unit {
        if (this.checkPriority("selectedOptionTextModifier")) {
            let modifier_casted: Option<Any> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedOptionTextModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func dividerStyle(style: Option<DividerStyleOptions>): Unit {
        if (this.checkPriority("dividerStyle")) {
            let style_casted: Option<DividerStyleOptions> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDividerStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func avoidance(mode: AvoidanceMode): Unit {
        if (this.checkPriority("avoidance")) {
            let mode_casted: AvoidanceMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setAvoidanceAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func menuOutline(outline: MenuOutlineOptions): Unit {
        if (this.checkPriority("menuOutline")) {
            let outline_casted: MenuOutlineOptions = outline
            let thisPeer = this.getPeer()
            thisPeer.setMenuOutlineAttribute(outline_casted)
            return
        }
        return
    }
    )
    public open func showInSubWindow(showInSubWindow: Option<Bool>): Unit {
        if (this.checkPriority("showInSubWindow")) {
            let showInSubWindow_casted: Option<Bool> = if (let Some(showInSubWindow) <- showInSubWindow) {showInSubWindow} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setShowInSubWindowAttribute(showInSubWindow_casted)
            return
        }
        return
    }
    )
    public open func showDefaultSelectedIcon(show: Bool): Unit {
        if (this.checkPriority("showDefaultSelectedIcon")) {
            let show_casted: Bool = show
            let thisPeer = this.getPeer()
            thisPeer.setShowDefaultSelectedIconAttribute(show_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_selected(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_selected")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectedAttribute(callback_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_value(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_value")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_valueAttribute(callback_casted)
            return
        }
        return
    }
    )
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class SelectAttributeStyleHolder {
    var value: ?((attributes: SelectAttribute) -> Unit)
    init (value: ?((attributes: SelectAttribute) -> Unit)) {
        this.value = value
    }
}

class SelectAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSelect(
        style: ?((attributes: SelectAttribute) -> Unit),
        content_: ?(() -> Unit),
options: ArrayList<SelectOption>
    ): Unit {
        let styleHolder = SelectAttributeStyleHolder(style)
        let contentHolder = SelectAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSelectComponent()
        })
        NodeAttach<ArkSelectPeer>({ => ArkSelectPeer.create(receiver, 0) }) {
            receiver.setSelectOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
