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
public interface SearchAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SearchAttribute <: SearchAttributeInterfaces {
    SearchAttribute() {
    }
}
public interface SearchAttribute {
}
public open class ArkSearchComponent <: ArkCommonMethodComponent & SearchAttribute {
    public open func getPeer(): ArkSearchPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSearchPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSearchOptions(options: Option<SearchOptions>): Unit {
        if (this.checkPriority("setSearchOptions")) {
            let options_casted: Option<SearchOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSearchOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func searchButton(value: ResourceStr, option: Option<SearchButtonOptions>): Unit {
        if (this.checkPriority("searchButton")) {
            let value_casted: ResourceStr = value
            let option_casted: Option<SearchButtonOptions> = if (let Some(option) <- option) {option} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSearchButtonAttribute(value_casted, option_casted)
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
    public open func searchIcon(value: Union_IconOptions_SymbolGlyphModifier): Unit {
        if (this.checkPriority("searchIcon")) {
            let value_casted: Union_IconOptions_SymbolGlyphModifier = value
            let thisPeer = this.getPeer()
            thisPeer.setSearchIconAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func cancelButton(value: Union_CancelButtonOptions_CancelButtonSymbolOptions): Unit {
        if (this.checkPriority("cancelButton")) {
            let value_casted: Union_CancelButtonOptions_CancelButtonSymbolOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setCancelButtonAttribute(value_casted)
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
    public open func placeholderFont(value: Option<Font>): Unit {
        if (this.checkPriority("placeholderFont")) {
            let value_casted: Option<Font> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPlaceholderFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textFont(value: Option<Font>): Unit {
        if (this.checkPriority("textFont")) {
            let value_casted: Option<Font> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextFontAttribute(value_casted)
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
    public open func onSubmit(callback_: Union_Callback_String_Void_SearchSubmitCallback): Unit {
        if (this.checkPriority("onSubmit")) {
            let callback__casted: Union_Callback_String_Void_SearchSubmitCallback = callback_
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
    public open func onTextSelectionChange(callback_: OnTextSelectionChangeCallback): Unit {
        if (this.checkPriority("onTextSelectionChange")) {
            let callback__casted: OnTextSelectionChangeCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTextSelectionChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onContentScroll(callback_: OnContentScrollCallback): Unit {
        if (this.checkPriority("onContentScroll")) {
            let callback__casted: OnContentScrollCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnContentScrollAttribute(callback__casted)
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
    public open func onPaste(callback_: OnPasteCallback): Unit {
        if (this.checkPriority("onPaste")) {
            let callback__casted: OnPasteCallback = callback_
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
    public open func type_(value: SearchType): Unit {
        if (this.checkPriority("type")) {
            let value_casted: SearchType = value
            let thisPeer = this.getPeer()
            thisPeer.setTypeAttribute(value_casted)
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
    public open func onWillAttachIME(callback_: ((parameter: IMEClient) -> Unit)): Unit {
        if (this.checkPriority("onWillAttachIME")) {
            let callback__casted: ((parameter: IMEClient) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillAttachIMEAttribute(callback__casted)
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
    public open func _onChangeEvent_value(callback: ((value: ResourceStr) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_value")) {
            let callback_casted: ((value: ResourceStr) -> Unit) = callback
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
class SearchAttributeStyleHolder {
    var value: ?((attributes: SearchAttribute) -> Unit)
    init (value: ?((attributes: SearchAttribute) -> Unit)) {
        this.value = value
    }
}

class SearchAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSearch(
        style: ?((attributes: SearchAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<SearchOptions>
    ): Unit {
        let styleHolder = SearchAttributeStyleHolder(style)
        let contentHolder = SearchAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSearchComponent()
        })
        NodeAttach<ArkSearchPeer>({ => ArkSearchPeer.create(receiver, 0) }) {
            receiver.setSearchOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
