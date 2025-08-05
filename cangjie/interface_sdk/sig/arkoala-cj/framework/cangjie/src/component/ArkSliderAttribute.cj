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
public interface SliderAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SliderAttribute <: SliderAttributeInterfaces {
    SliderAttribute() {
    }
}
public interface SliderAttribute {
}
public open class ArkSliderComponent <: ArkCommonMethodComponent & SliderAttribute {
    public open func getPeer(): ArkSliderPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSliderPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSliderOptions(options: Option<SliderOptions>): Unit {
        if (this.checkPriority("setSliderOptions")) {
            let options_casted: Option<SliderOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSliderOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func blockColor(value: ResourceColor): Unit {
        if (this.checkPriority("blockColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBlockColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func trackColor(value: Union_ResourceColor_LinearGradient): Unit {
        if (this.checkPriority("trackColor")) {
            let value_casted: Union_ResourceColor_LinearGradient = value
            let thisPeer = this.getPeer()
            thisPeer.setTrackColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectedColor(selectedColor: Union_ResourceColor_LinearGradient): Unit {
        if (this.checkPriority("selectedColor")) {
            let selectedColor_casted: Union_ResourceColor_LinearGradient = selectedColor
            let thisPeer = this.getPeer()
            thisPeer.setSelectedColorAttribute(selectedColor_casted)
            return
        }
        return
    }
    )
    public open func minLabel(value: String): Unit {
        if (this.checkPriority("minLabel")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setMinLabelAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func maxLabel(value: String): Unit {
        if (this.checkPriority("maxLabel")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setMaxLabelAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func showSteps(value: Bool): Unit {
        if (this.checkPriority("showSteps")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setShowStepsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func showTips(value: Bool, content: Option<ResourceStr>): Unit {
        if (this.checkPriority("showTips")) {
            let value_casted: Bool = value
            let content_casted: Option<ResourceStr> = if (let Some(content) <- content) {content} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setShowTipsAttribute(value_casted, content_casted)
            return
        }
        return
    }
    )
    public open func trackThickness(value: Length): Unit {
        if (this.checkPriority("trackThickness")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setTrackThicknessAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: ((value: Float64, mode: SliderChangeMode) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((value: Float64, mode: SliderChangeMode) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func blockBorderColor(value: ResourceColor): Unit {
        if (this.checkPriority("blockBorderColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBlockBorderColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func blockBorderWidth(value: Length): Unit {
        if (this.checkPriority("blockBorderWidth")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setBlockBorderWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func stepColor(value: ResourceColor): Unit {
        if (this.checkPriority("stepColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setStepColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func trackBorderRadius(value: Length): Unit {
        if (this.checkPriority("trackBorderRadius")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setTrackBorderRadiusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectedBorderRadius(value: Dimension): Unit {
        if (this.checkPriority("selectedBorderRadius")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectedBorderRadiusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func blockSize(value: SizeOptions): Unit {
        if (this.checkPriority("blockSize")) {
            let value_casted: SizeOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setBlockSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func blockStyle(value: SliderBlockStyle): Unit {
        if (this.checkPriority("blockStyle")) {
            let value_casted: SliderBlockStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setBlockStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func stepSize(value: Length): Unit {
        if (this.checkPriority("stepSize")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setStepSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func sliderInteractionMode(value: SliderInteraction): Unit {
        if (this.checkPriority("sliderInteractionMode")) {
            let value_casted: SliderInteraction = value
            let thisPeer = this.getPeer()
            thisPeer.setSliderInteractionModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func minResponsiveDistance(value: Float64): Unit {
        if (this.checkPriority("minResponsiveDistance")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setMinResponsiveDistanceAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func contentModifier(modifier: ContentModifier<SliderConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<SliderConfiguration> = modifier
            let thisPeer = this.getPeer()
            thisPeer.setContentModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func slideRange(value: SlideRange): Unit {
        if (this.checkPriority("slideRange")) {
            let value_casted: SlideRange = value
            let thisPeer = this.getPeer()
            thisPeer.setSlideRangeAttribute(value_casted)
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
    public open func enableHapticFeedback(enabled: Bool): Unit {
        if (this.checkPriority("enableHapticFeedback")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setEnableHapticFeedbackAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func prefix(content: ComponentContent, options: Option<SliderPrefixOptions>): Unit {
        if (this.checkPriority("prefix")) {
            let content_casted: ComponentContent = content
            let options_casted: Option<SliderPrefixOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPrefixAttribute(content_casted, options_casted)
            return
        }
        return
    }
    )
    public open func suffix(content: ComponentContent, options: Option<SliderSuffixOptions>): Unit {
        if (this.checkPriority("suffix")) {
            let content_casted: ComponentContent = content
            let options_casted: Option<SliderSuffixOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSuffixAttribute(content_casted, options_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_value(callback: ((rating: Option<Union_Number_Bindable>) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_value")) {
            let callback_casted: ((rating: Option<Union_Number_Bindable>) -> Unit) = callback
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
class SliderAttributeStyleHolder {
    var value: ?((attributes: SliderAttribute) -> Unit)
    init (value: ?((attributes: SliderAttribute) -> Unit)) {
        this.value = value
    }
}

class SliderAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSlider(
        style: ?((attributes: SliderAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<SliderOptions>
    ): Unit {
        let styleHolder = SliderAttributeStyleHolder(style)
        let contentHolder = SliderAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSliderComponent()
        })
        NodeAttach<ArkSliderPeer>({ => ArkSliderPeer.create(receiver, 0) }) {
            receiver.setSliderOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
