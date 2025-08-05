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
public interface TextAreaAttributeInterfaces <: CommonMethodInterfaces {
}
public open class TextAreaAttribute <: TextAreaAttributeInterfaces {
    TextAreaAttribute() {
    }
}
public interface TextAreaAttribute {
}
public open class ArkTextAreaComponent <: ArkCommonMethodComponent & TextAreaAttribute {
    public open func getPeer(): ArkTextAreaPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTextAreaPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setTextAreaOptions(value: Option<TextAreaOptions>): Unit {
        if (this.checkPriority("setTextAreaOptions")) {
            let value_casted: Option<TextAreaOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextAreaOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func placeholderColor(value: ResourceColor): Unit {
        if (this.checkPriority("placeholderColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setPlaceholderColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func placeholderFont(value: Font): Unit {
        if (this.checkPriority("placeholderFont")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setPlaceholderFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func enterKeyType(value: EnterKeyType): Unit {
        if (this.checkPriority("enterKeyType")) {
            let value_casted: EnterKeyType = value
            let thisPeer = this.getPeer()
            thisPeer.setEnterKeyTypeAttribute(value_casted)
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
    public open func caretColor(value: ResourceColor): Unit {
        if (this.checkPriority("caretColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setCaretColorAttribute(value_casted)
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
    public open func fontSize(value: Length): Unit {
        if (this.checkPriority("fontSize")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setFontSizeAttribute(value_casted)
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
    public open func fontWeight(value: Union_Number_FontWeight_ResourceStr): Unit {
        if (this.checkPriority("fontWeight")) {
            let value_casted: Union_Number_FontWeight_ResourceStr = value
            let thisPeer = this.getPeer()
            thisPeer.setFontWeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontFamily(value: ResourceStr): Unit {
        if (this.checkPriority("fontFamily")) {
            let value_casted: ResourceStr = value
            let thisPeer = this.getPeer()
            thisPeer.setFontFamilyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textOverflow(value: TextOverflow): Unit {
        if (this.checkPriority("textOverflow")) {
            let value_casted: TextOverflow = value
            let thisPeer = this.getPeer()
            thisPeer.setTextOverflowAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textIndent(value: Dimension): Unit {
        if (this.checkPriority("textIndent")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setTextIndentAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func inputFilter(value: ResourceStr, error: Option<((breakpoints: String) -> Unit)>): Unit {
        if (this.checkPriority("inputFilter")) {
            let value_casted: ResourceStr = value
            let error_casted: Option<((breakpoints: String) -> Unit)> = if (let Some(error) <- error) {error} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setInputFilterAttribute(value_casted, error_casted)
            return
        }
        return
    }
    )
    public open func caretStyle(value: CaretStyle): Unit {
        if (this.checkPriority("caretStyle")) {
            let value_casted: CaretStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setCaretStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectedBackgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("selectedBackgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectedBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onSubmit(callback_: Union_Callback_EnterKeyType_Void_TextAreaSubmitCallback): Unit {
        if (this.checkPriority("onSubmit")) {
            let callback__casted: Union_Callback_EnterKeyType_Void_TextAreaSubmitCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSubmitAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: EditableTextOnChangeCallback): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: EditableTextOnChangeCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
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
    public open func onContentScroll(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        if (this.checkPriority("onContentScroll")) {
            let callback__casted: ((xOffset: Float64, yOffset: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnContentScrollAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onEditChange(callback_: ((parameter: Bool) -> Unit)): Unit {
        if (this.checkPriority("onEditChange")) {
            let callback__casted: ((parameter: Bool) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnEditChangeAttribute(callback__casted)
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
    public open func onCut(callback_: ((breakpoints: String) -> Unit)): Unit {
        if (this.checkPriority("onCut")) {
            let callback__casted: ((breakpoints: String) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnCutAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onPaste(callback_: ((value: String, event: PasteEvent) -> Unit)): Unit {
        if (this.checkPriority("onPaste")) {
            let callback__casted: ((value: String, event: PasteEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPasteAttribute(callback__casted)
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
    public open func enableKeyboardOnFocus(value: Bool): Unit {
        if (this.checkPriority("enableKeyboardOnFocus")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setEnableKeyboardOnFocusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func maxLength(value: Float64): Unit {
        if (this.checkPriority("maxLength")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setMaxLengthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func showCounter(value: Bool, options: Option<InputCounterOptions>): Unit {
        if (this.checkPriority("showCounter")) {
            let value_casted: Bool = value
            let options_casted: Option<InputCounterOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setShowCounterAttribute(value_casted, options_casted)
            return
        }
        return
    }
    )
    public open func style(value: TextContentStyle): Unit {
        if (this.checkPriority("style")) {
            let value_casted: TextContentStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func barState(value: BarState): Unit {
        if (this.checkPriority("barState")) {
            let value_casted: BarState = value
            let thisPeer = this.getPeer()
            thisPeer.setBarStateAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectionMenuHidden(value: Bool): Unit {
        if (this.checkPriority("selectionMenuHidden")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectionMenuHiddenAttribute(value_casted)
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
    public open func minFontScale(scale: Option<Union_Number_Resource>): Unit {
        if (this.checkPriority("minFontScale")) {
            let scale_casted: Option<Union_Number_Resource> = if (let Some(scale) <- scale) {scale} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMinFontScaleAttribute(scale_casted)
            return
        }
        return
    }
    )
    public open func maxFontScale(scale: Option<Union_Number_Resource>): Unit {
        if (this.checkPriority("maxFontScale")) {
            let scale_casted: Option<Union_Number_Resource> = if (let Some(scale) <- scale) {scale} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMaxFontScaleAttribute(scale_casted)
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
    public open func maxLines(value: Float64): Unit {
        if (this.checkPriority("maxLines")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setMaxLines0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func maxLines(lines: Float64, options: MaxLinesOptions): Unit {
        if (this.checkPriority("maxLines")) {
            let lines_casted: Float64 = lines
            let options_casted: MaxLinesOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setMaxLines1Attribute(lines_casted, options_casted)
            return
        }
        return
    }
    )
    public open func minLines(lines: Option<Float64>): Unit {
        if (this.checkPriority("minLines")) {
            let lines_casted: Option<Float64> = if (let Some(lines) <- lines) {lines} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMinLinesAttribute(lines_casted)
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
    public open func customKeyboard(value: CustomBuilder, options: Option<KeyboardOptions>): Unit {
        if (this.checkPriority("customKeyboard")) {
            let value_casted: CustomBuilder = value
            let options_casted: Option<KeyboardOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCustomKeyboardAttribute(value_casted, options_casted)
            return
        }
        return
    }
    )
    public open func decoration(value: TextDecorationOptions): Unit {
        if (this.checkPriority("decoration")) {
            let value_casted: TextDecorationOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setDecorationAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func letterSpacing(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("letterSpacing")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setLetterSpacingAttribute(value_casted)
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
    public open func type_(value: TextAreaType): Unit {
        if (this.checkPriority("type")) {
            let value_casted: TextAreaType = value
            let thisPeer = this.getPeer()
            thisPeer.setTypeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func enableAutoFill(value: Bool): Unit {
        if (this.checkPriority("enableAutoFill")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setEnableAutoFillAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func contentType(contentType: ContentType): Unit {
        if (this.checkPriority("contentType")) {
            let contentType_casted: ContentType = contentType
            let thisPeer = this.getPeer()
            thisPeer.setContentTypeAttribute(contentType_casted)
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
    public open func onWillInsert(callback_: ((parameter: InsertValue) -> Bool)): Unit {
        if (this.checkPriority("onWillInsert")) {
            let callback__casted: ((parameter: InsertValue) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillInsertAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDidInsert(callback_: ((parameter: InsertValue) -> Unit)): Unit {
        if (this.checkPriority("onDidInsert")) {
            let callback__casted: ((parameter: InsertValue) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDidInsertAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onWillDelete(callback_: ((parameter: DeleteValue) -> Bool)): Unit {
        if (this.checkPriority("onWillDelete")) {
            let callback__casted: ((parameter: DeleteValue) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillDeleteAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDidDelete(callback_: ((parameter: DeleteValue) -> Unit)): Unit {
        if (this.checkPriority("onDidDelete")) {
            let callback__casted: ((parameter: DeleteValue) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDidDeleteAttribute(callback__casted)
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
    public open func enablePreviewText(enable: Bool): Unit {
        if (this.checkPriority("enablePreviewText")) {
            let enable_casted: Bool = enable
            let thisPeer = this.getPeer()
            thisPeer.setEnablePreviewTextAttribute(enable_casted)
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
    public open func autoCapitalizationMode(mode: AutoCapitalizationMode): Unit {
        if (this.checkPriority("autoCapitalizationMode")) {
            let mode_casted: AutoCapitalizationMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setAutoCapitalizationModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func halfLeading(halfLeading: Option<Bool>): Unit {
        if (this.checkPriority("halfLeading")) {
            let halfLeading_casted: Option<Bool> = if (let Some(halfLeading) <- halfLeading) {halfLeading} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setHalfLeadingAttribute(halfLeading_casted)
            return
        }
        return
    }
    )
    public open func ellipsisMode(mode: Option<EllipsisMode>): Unit {
        if (this.checkPriority("ellipsisMode")) {
            let mode_casted: Option<EllipsisMode> = if (let Some(mode) <- mode) {mode} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEllipsisModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func stopBackPress(isStopped: Option<Bool>): Unit {
        if (this.checkPriority("stopBackPress")) {
            let isStopped_casted: Option<Bool> = if (let Some(isStopped) <- isStopped) {isStopped} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStopBackPressAttribute(isStopped_casted)
            return
        }
        return
    }
    )
    public open func onWillChange(callback_: ((parameter: EditableTextChangeValue) -> Bool)): Unit {
        if (this.checkPriority("onWillChange")) {
            let callback__casted: ((parameter: EditableTextChangeValue) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func keyboardAppearance(appearance: Option<KeyboardAppearance>): Unit {
        if (this.checkPriority("keyboardAppearance")) {
            let appearance_casted: Option<KeyboardAppearance> = if (let Some(appearance) <- appearance) {appearance} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setKeyboardAppearanceAttribute(appearance_casted)
            return
        }
        return
    }
    )
    public open func strokeWidth(width: Option<LengthMetrics>): Unit {
        if (this.checkPriority("strokeWidth")) {
            let width_casted: Option<LengthMetrics> = if (let Some(width) <- width) {width} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStrokeWidthAttribute(width_casted)
            return
        }
        return
    }
    )
    public open func strokeColor(color: Option<ResourceColor>): Unit {
        if (this.checkPriority("strokeColor")) {
            let color_casted: Option<ResourceColor> = if (let Some(color) <- color) {color} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStrokeColorAttribute(color_casted)
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
    public open func _onChangeEvent_text(callback: ((text: Union_ResourceStr_Bindable_Bindable_Bindable) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_text")) {
            let callback_casted: ((text: Union_ResourceStr_Bindable_Bindable_Bindable) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_textAttribute(callback_casted)
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
class TextAreaAttributeStyleHolder {
    var value: ?((attributes: TextAreaAttribute) -> Unit)
    init (value: ?((attributes: TextAreaAttribute) -> Unit)) {
        this.value = value
    }
}

class TextAreaAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkTextArea(
        style: ?((attributes: TextAreaAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<TextAreaOptions>
    ): Unit {
        let styleHolder = TextAreaAttributeStyleHolder(style)
        let contentHolder = TextAreaAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkTextAreaComponent()
        })
        NodeAttach<ArkTextAreaPeer>({ => ArkTextAreaPeer.create(receiver, 0) }) {
            receiver.setTextAreaOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
