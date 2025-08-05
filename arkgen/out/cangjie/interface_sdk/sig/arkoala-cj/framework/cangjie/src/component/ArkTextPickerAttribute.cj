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
public interface TextPickerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class TextPickerAttribute <: TextPickerAttributeInterfaces {
    TextPickerAttribute() {
    }
}
public interface TextPickerAttribute {
}
public open class ArkTextPickerComponent <: ArkCommonMethodComponent & TextPickerAttribute {
    public open func getPeer(): ArkTextPickerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTextPickerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setTextPickerOptions(options: Option<TextPickerOptions>): Unit {
        if (this.checkPriority("setTextPickerOptions")) {
            let options_casted: Option<TextPickerOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextPickerOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func defaultPickerItemHeight(height: Option<Union_Number_String>): Unit {
        if (this.checkPriority("defaultPickerItemHeight")) {
            let height_casted: Option<Union_Number_String> = if (let Some(height) <- height) {height} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDefaultPickerItemHeightAttribute(height_casted)
            return
        }
        return
    }
    )
    public open func canLoop(isLoop: Option<Bool>): Unit {
        if (this.checkPriority("canLoop")) {
            let isLoop_casted: Option<Bool> = if (let Some(isLoop) <- isLoop) {isLoop} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCanLoopAttribute(isLoop_casted)
            return
        }
        return
    }
    )
    public open func disappearTextStyle(style: Option<PickerTextStyle>): Unit {
        if (this.checkPriority("disappearTextStyle")) {
            let style_casted: Option<PickerTextStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDisappearTextStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func textStyle(style: Option<PickerTextStyle>): Unit {
        if (this.checkPriority("textStyle")) {
            let style_casted: Option<PickerTextStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func selectedTextStyle(style: Option<PickerTextStyle>): Unit {
        if (this.checkPriority("selectedTextStyle")) {
            let style_casted: Option<PickerTextStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedTextStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func disableTextStyleAnimation(disabled: Bool): Unit {
        if (this.checkPriority("disableTextStyleAnimation")) {
            let disabled_casted: Bool = disabled
            let thisPeer = this.getPeer()
            thisPeer.setDisableTextStyleAnimationAttribute(disabled_casted)
            return
        }
        return
    }
    )
    public open func defaultTextStyle(style: TextPickerTextStyle): Unit {
        if (this.checkPriority("defaultTextStyle")) {
            let style_casted: TextPickerTextStyle = style
            let thisPeer = this.getPeer()
            thisPeer.setDefaultTextStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func onAccept(callback_: ((value: String, index: Float64) -> Unit)): Unit {
        if (this.checkPriority("onAccept")) {
            let callback__casted: ((value: String, index: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAcceptAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onCancel(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onCancel")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnCancelAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: ((value: Union_String_Array_String, index: Union_Number_Array_Number) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((value: Union_String_Array_String, index: Union_Number_Array_Number) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChange0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: Option<OnTextPickerChangeCallback>): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: Option<OnTextPickerChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnChange1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onScrollStop(callback_: Option<TextPickerScrollStopCallback>): Unit {
        if (this.checkPriority("onScrollStop")) {
            let callback__casted: Option<TextPickerScrollStopCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnScrollStopAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onEnterSelectedArea(callback_: TextPickerEnterSelectedAreaCallback): Unit {
        if (this.checkPriority("onEnterSelectedArea")) {
            let callback__casted: TextPickerEnterSelectedAreaCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnEnterSelectedAreaAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func selectedIndex(index: Option<Union_Number_Array_Number>): Unit {
        if (this.checkPriority("selectedIndex")) {
            let index_casted: Option<Union_Number_Array_Number> = if (let Some(index) <- index) {index} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedIndexAttribute(index_casted)
            return
        }
        return
    }
    )
    public open func divider(textDivider: Option<DividerOptions>): Unit {
        if (this.checkPriority("divider")) {
            let textDivider_casted: Option<DividerOptions> = if (let Some(textDivider) <- textDivider) {textDivider} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDividerAttribute(textDivider_casted)
            return
        }
        return
    }
    )
    public open func gradientHeight(height: Option<Dimension>): Unit {
        if (this.checkPriority("gradientHeight")) {
            let height_casted: Option<Dimension> = if (let Some(height) <- height) {height} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setGradientHeightAttribute(height_casted)
            return
        }
        return
    }
    )
    public open func enableHapticFeedback(enable: Option<Bool>): Unit {
        if (this.checkPriority("enableHapticFeedback")) {
            let enable_casted: Option<Bool> = if (let Some(enable) <- enable) {enable} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableHapticFeedbackAttribute(enable_casted)
            return
        }
        return
    }
    )
    public open func digitalCrownSensitivity(sensitivity: Option<CrownSensitivity>): Unit {
        if (this.checkPriority("digitalCrownSensitivity")) {
            let sensitivity_casted: Option<CrownSensitivity> = if (let Some(sensitivity) <- sensitivity) {sensitivity} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDigitalCrownSensitivityAttribute(sensitivity_casted)
            return
        }
        return
    }
    )
    public open func selectedBackgroundStyle(style: Option<PickerBackgroundStyle>): Unit {
        if (this.checkPriority("selectedBackgroundStyle")) {
            let style_casted: Option<PickerBackgroundStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedBackgroundStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_selected(callback: ((selected: Union_Number_Array_Number_Bindable_Bindable) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_selected")) {
            let callback_casted: ((selected: Union_Number_Array_Number_Bindable_Bindable) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectedAttribute(callback_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_value(callback: ((value: Union_ResourceStr_Array_ResourceStr_Bindable_Bindable) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_value")) {
            let callback_casted: ((value: Union_ResourceStr_Array_ResourceStr_Bindable_Bindable) -> Unit) = callback
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
class TextPickerAttributeStyleHolder {
    var value: ?((attributes: TextPickerAttribute) -> Unit)
    init (value: ?((attributes: TextPickerAttribute) -> Unit)) {
        this.value = value
    }
}

class TextPickerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkTextPicker(
        style: ?((attributes: TextPickerAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<TextPickerOptions>
    ): Unit {
        let styleHolder = TextPickerAttributeStyleHolder(style)
        let contentHolder = TextPickerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkTextPickerComponent()
        })
        NodeAttach<ArkTextPickerPeer>({ => ArkTextPickerPeer.create(receiver, 0) }) {
            receiver.setTextPickerOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
