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
public interface TextAttributeInterfaces <: CommonMethodInterfaces {
}
public open class TextAttribute <: TextAttributeInterfaces {
    TextAttribute() {
    }
}
public interface TextAttribute {
}
public open class ArkTextComponent <: ArkCommonMethodComponent & TextAttribute {
    public open func getPeer(): ArkTextPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTextPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setTextOptions(content: Option<Union_String_Resource>, value: Option<TextOptions>): Unit {
        if (this.checkPriority("setTextOptions")) {
            let content_casted: Option<Union_String_Resource> = if (let Some(content) <- content) {content} else { throw Exception("Type has to be not None")}
            let value_casted: Option<TextOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextOptionsAttribute(content_casted, value_casted)
            return
        }
        return
    }
    )
    public open func font(fontValue: Font, options: Option<FontSettingOptions>): Unit {
        if (this.checkPriority("font")) {
            let fontValue_casted: Font = fontValue
            let options_casted: Option<FontSettingOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFontAttribute(fontValue_casted, options_casted)
            return
        }
        return
    }
    )
    public open func fontColor(value: ResourceColor): Unit {
        if (this.checkPriority("fontColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setFontColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontSize(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("fontSize")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFontSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func minFontSize(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("minFontSize")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setMinFontSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func maxFontSize(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("maxFontSize")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setMaxFontSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func minFontScale(scale: Union_Number_Resource): Unit {
        if (this.checkPriority("minFontScale")) {
            let scale_casted: Union_Number_Resource = scale
            let thisPeer = this.getPeer()
            thisPeer.setMinFontScaleAttribute(scale_casted)
            return
        }
        return
    }
    )
    public open func maxFontScale(scale: Union_Number_Resource): Unit {
        if (this.checkPriority("maxFontScale")) {
            let scale_casted: Union_Number_Resource = scale
            let thisPeer = this.getPeer()
            thisPeer.setMaxFontScaleAttribute(scale_casted)
            return
        }
        return
    }
    )
    public open func fontStyle(value: FontStyle): Unit {
        if (this.checkPriority("fontStyle")) {
            let value_casted: FontStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setFontStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontWeight(weight: Union_Number_FontWeight_ResourceStr, options: Option<FontSettingOptions>): Unit {
        if (this.checkPriority("fontWeight")) {
            let weight_casted: Union_Number_FontWeight_ResourceStr = weight
            let options_casted: Option<FontSettingOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFontWeightAttribute(weight_casted, options_casted)
            return
        }
        return
    }
    )
    public open func lineSpacing(value: LengthMetrics, options: Option<LineSpacingOptions>): Unit {
        if (this.checkPriority("lineSpacing")) {
            let value_casted: LengthMetrics = value
            let options_casted: Option<LineSpacingOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLineSpacingAttribute(value_casted, options_casted)
            return
        }
        return
    }
    )
    public open func textAlign(value: TextAlign): Unit {
        if (this.checkPriority("textAlign")) {
            let value_casted: TextAlign = value
            let thisPeer = this.getPeer()
            thisPeer.setTextAlignAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textVerticalAlign(textVerticalAlign: Option<TextVerticalAlign>): Unit {
        if (this.checkPriority("textVerticalAlign")) {
            let textVerticalAlign_casted: Option<TextVerticalAlign> = if (let Some(textVerticalAlign) <- textVerticalAlign) {textVerticalAlign} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextVerticalAlignAttribute(textVerticalAlign_casted)
            return
        }
        return
    }
    )
    public open func lineHeight(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("lineHeight")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setLineHeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textOverflow(options: TextOverflowOptions): Unit {
        if (this.checkPriority("textOverflow")) {
            let options_casted: TextOverflowOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setTextOverflowAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func fontFamily(value: Union_String_Resource): Unit {
        if (this.checkPriority("fontFamily")) {
            let value_casted: Union_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFontFamilyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func maxLines(value: Float64): Unit {
        if (this.checkPriority("maxLines")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setMaxLinesAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func decoration(value: DecorationStyleInterface): Unit {
        if (this.checkPriority("decoration")) {
            let value_casted: DecorationStyleInterface = value
            let thisPeer = this.getPeer()
            thisPeer.setDecorationAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func letterSpacing(value: Union_Number_ResourceStr): Unit {
        if (this.checkPriority("letterSpacing")) {
            let value_casted: Union_Number_ResourceStr = value
            let thisPeer = this.getPeer()
            thisPeer.setLetterSpacingAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textCase(value: TextCase): Unit {
        if (this.checkPriority("textCase")) {
            let value_casted: TextCase = value
            let thisPeer = this.getPeer()
            thisPeer.setTextCaseAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func baselineOffset(value: Union_Number_ResourceStr): Unit {
        if (this.checkPriority("baselineOffset")) {
            let value_casted: Union_Number_ResourceStr = value
            let thisPeer = this.getPeer()
            thisPeer.setBaselineOffsetAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func copyOption(value: CopyOptions): Unit {
        if (this.checkPriority("copyOption")) {
            let value_casted: CopyOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setCopyOptionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func draggable(value: Bool): Unit {
        if (this.checkPriority("draggable")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setDraggableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textShadow(value: Union_ShadowOptions_Array_ShadowOptions): Unit {
        if (this.checkPriority("textShadow")) {
            let value_casted: Union_ShadowOptions_Array_ShadowOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setTextShadowAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func heightAdaptivePolicy(value: TextHeightAdaptivePolicy): Unit {
        if (this.checkPriority("heightAdaptivePolicy")) {
            let value_casted: TextHeightAdaptivePolicy = value
            let thisPeer = this.getPeer()
            thisPeer.setHeightAdaptivePolicyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textIndent(value: Length): Unit {
        if (this.checkPriority("textIndent")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setTextIndentAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func wordBreak(value: WordBreak): Unit {
        if (this.checkPriority("wordBreak")) {
            let value_casted: WordBreak = value
            let thisPeer = this.getPeer()
            thisPeer.setWordBreakAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func lineBreakStrategy(strategy: LineBreakStrategy): Unit {
        if (this.checkPriority("lineBreakStrategy")) {
            let strategy_casted: LineBreakStrategy = strategy
            let thisPeer = this.getPeer()
            thisPeer.setLineBreakStrategyAttribute(strategy_casted)
            return
        }
        return
    }
    )
    public open func onCopy(callback_: ((breakpoints: String) -> Unit)): Unit {
        if (this.checkPriority("onCopy")) {
            let callback__casted: ((breakpoints: String) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnCopyAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func selection(selectionStart: Float64, selectionEnd: Float64): Unit {
        if (this.checkPriority("selection")) {
            let selectionStart_casted: Float64 = selectionStart
            let selectionEnd_casted: Float64 = selectionEnd
            let thisPeer = this.getPeer()
            thisPeer.setSelectionAttribute(selectionStart_casted, selectionEnd_casted)
            return
        }
        return
    }
    )
    public open func caretColor(color: ResourceColor): Unit {
        if (this.checkPriority("caretColor")) {
            let color_casted: ResourceColor = color
            let thisPeer = this.getPeer()
            thisPeer.setCaretColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func selectedBackgroundColor(color: ResourceColor): Unit {
        if (this.checkPriority("selectedBackgroundColor")) {
            let color_casted: ResourceColor = color
            let thisPeer = this.getPeer()
            thisPeer.setSelectedBackgroundColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func shaderStyle(shader: ShaderStyle): Unit {
        if (this.checkPriority("shaderStyle")) {
            let shader_casted: ShaderStyle = shader
            let thisPeer = this.getPeer()
            thisPeer.setShaderStyleAttribute(shader_casted)
            return
        }
        return
    }
    )
    public open func ellipsisMode(value: EllipsisMode): Unit {
        if (this.checkPriority("ellipsisMode")) {
            let value_casted: EllipsisMode = value
            let thisPeer = this.getPeer()
            thisPeer.setEllipsisModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func enableDataDetector(enable: Bool): Unit {
        if (this.checkPriority("enableDataDetector")) {
            let enable_casted: Bool = enable
            let thisPeer = this.getPeer()
            thisPeer.setEnableDataDetectorAttribute(enable_casted)
            return
        }
        return
    }
    )
    public open func dataDetectorConfig(config: TextDataDetectorConfig): Unit {
        if (this.checkPriority("dataDetectorConfig")) {
            let config_casted: TextDataDetectorConfig = config
            let thisPeer = this.getPeer()
            thisPeer.setDataDetectorConfigAttribute(config_casted)
            return
        }
        return
    }
    )
    public open func bindSelectionMenu(spanType: TextSpanType, content: CustomBuilder, responseType: TextResponseType, options: Option<SelectionMenuOptions>): Unit {
        if (this.checkPriority("bindSelectionMenu")) {
            let spanType_casted: TextSpanType = spanType
            let content_casted: CustomBuilder = content
            let responseType_casted: TextResponseType = responseType
            let options_casted: Option<SelectionMenuOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindSelectionMenuAttribute(spanType_casted, content_casted, responseType_casted, options_casted)
            return
        }
        return
    }
    )
    public open func onTextSelectionChange(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        if (this.checkPriority("onTextSelectionChange")) {
            let callback__casted: ((xOffset: Float64, yOffset: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTextSelectionChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func fontFeature(value: String): Unit {
        if (this.checkPriority("fontFeature")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setFontFeatureAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func marqueeOptions(options: Option<TextMarqueeOptions>): Unit {
        if (this.checkPriority("marqueeOptions")) {
            let options_casted: Option<TextMarqueeOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMarqueeOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func onMarqueeStateChange(callback_: ((parameter: MarqueeState) -> Unit)): Unit {
        if (this.checkPriority("onMarqueeStateChange")) {
            let callback__casted: ((parameter: MarqueeState) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnMarqueeStateChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func privacySensitive(supported: Bool): Unit {
        if (this.checkPriority("privacySensitive")) {
            let supported_casted: Bool = supported
            let thisPeer = this.getPeer()
            thisPeer.setPrivacySensitiveAttribute(supported_casted)
            return
        }
        return
    }
    )
    public open func textSelectable(mode: TextSelectableMode): Unit {
        if (this.checkPriority("textSelectable")) {
            let mode_casted: TextSelectableMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setTextSelectableAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func editMenuOptions(editMenu: EditMenuOptions): Unit {
        if (this.checkPriority("editMenuOptions")) {
            let editMenu_casted: EditMenuOptions = editMenu
            let thisPeer = this.getPeer()
            thisPeer.setEditMenuOptionsAttribute(editMenu_casted)
            return
        }
        return
    }
    )
    public open func halfLeading(halfLeading: Bool): Unit {
        if (this.checkPriority("halfLeading")) {
            let halfLeading_casted: Bool = halfLeading
            let thisPeer = this.getPeer()
            thisPeer.setHalfLeadingAttribute(halfLeading_casted)
            return
        }
        return
    }
    )
    public open func trimSpace(trim: Option<Bool>): Unit {
        if (this.checkPriority("trimSpace")) {
            let trim_casted: Option<Bool> = if (let Some(trim) <- trim) {trim} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTrimSpaceAttribute(trim_casted)
            return
        }
        return
    }
    )
    public open func enableHapticFeedback(isEnabled: Bool): Unit {
        if (this.checkPriority("enableHapticFeedback")) {
            let isEnabled_casted: Bool = isEnabled
            let thisPeer = this.getPeer()
            thisPeer.setEnableHapticFeedbackAttribute(isEnabled_casted)
            return
        }
        return
    }
    )
    public open func optimizeTrailingSpace(optimize: Option<Bool>): Unit {
        if (this.checkPriority("optimizeTrailingSpace")) {
            let optimize_casted: Option<Bool> = if (let Some(optimize) <- optimize) {optimize} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOptimizeTrailingSpaceAttribute(optimize_casted)
            return
        }
        return
    }
    )
    public open func enableAutoSpacing(enabled: Option<Bool>): Unit {
        if (this.checkPriority("enableAutoSpacing")) {
            let enabled_casted: Option<Bool> = if (let Some(enabled) <- enabled) {enabled} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableAutoSpacingAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func contentTransition(transition: Option<ContentTransition>): Unit {
        if (this.checkPriority("contentTransition")) {
            let transition_casted: Option<ContentTransition> = if (let Some(transition) <- transition) {transition} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setContentTransitionAttribute(transition_casted)
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
class TextAttributeStyleHolder {
    var value: ?((attributes: TextAttribute) -> Unit)
    init (value: ?((attributes: TextAttribute) -> Unit)) {
        this.value = value
    }
}

class TextAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkText(
        style: ?((attributes: TextAttribute) -> Unit),
        content_: ?(() -> Unit),
content: Option<Union_String_Resource>, value: Option<TextOptions>
    ): Unit {
        let styleHolder = TextAttributeStyleHolder(style)
        let contentHolder = TextAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkTextComponent()
        })
        NodeAttach<ArkTextPeer>({ => ArkTextPeer.create(receiver, 0) }) {
            receiver.setTextOptions(content,value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
