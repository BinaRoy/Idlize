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
public interface RichEditorAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RichEditorAttribute <: RichEditorAttributeInterfaces {
    RichEditorAttribute() {
    }
}
public interface RichEditorAttribute {
}
public open class ArkRichEditorComponent <: ArkCommonMethodComponent & RichEditorAttribute {
    public open func getPeer(): ArkRichEditorPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRichEditorPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRichEditorOptions(value: RichEditorOptions): Unit {
        if (this.checkPriority("setRichEditorOptions")) {
            let value_casted: RichEditorOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setRichEditorOptions0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func setRichEditorOptions(options: RichEditorStyledStringOptions): Unit {
        if (this.checkPriority("setRichEditorOptions")) {
            let options_casted: RichEditorStyledStringOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setRichEditorOptions1Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func onReady(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onReady")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnReady0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onReady(callback_: VoidCallback): Unit {
        if (this.checkPriority("onReady")) {
            let callback__casted: VoidCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnReady1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSelect(callback_: ((parameter: RichEditorSelection) -> Unit)): Unit {
        if (this.checkPriority("onSelect")) {
            let callback__casted: ((parameter: RichEditorSelection) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSelectAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSelectionChange(callback_: ((parameter: RichEditorRange) -> Unit)): Unit {
        if (this.checkPriority("onSelectionChange")) {
            let callback__casted: ((parameter: RichEditorRange) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSelectionChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func aboutToIMEInput(callback_: ((parameter: RichEditorInsertValue) -> Bool)): Unit {
        if (this.checkPriority("aboutToIMEInput")) {
            let callback__casted: ((parameter: RichEditorInsertValue) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setAboutToIMEInputAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onIMEInputComplete(callback_: ((parameter: RichEditorTextSpanResult) -> Unit)): Unit {
        if (this.checkPriority("onIMEInputComplete")) {
            let callback__casted: ((parameter: RichEditorTextSpanResult) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnIMEInputCompleteAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDidIMEInput(callback_: ((parameter: TextRange) -> Unit)): Unit {
        if (this.checkPriority("onDidIMEInput")) {
            let callback__casted: ((parameter: TextRange) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDidIMEInputAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func aboutToDelete(callback_: ((parameter: RichEditorDeleteValue) -> Bool)): Unit {
        if (this.checkPriority("aboutToDelete")) {
            let callback__casted: ((parameter: RichEditorDeleteValue) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setAboutToDeleteAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDeleteComplete(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onDeleteComplete")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDeleteComplete0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDeleteComplete(callback_: VoidCallback): Unit {
        if (this.checkPriority("onDeleteComplete")) {
            let callback__casted: VoidCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDeleteComplete1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func copyOptions(value: CopyOptions): Unit {
        if (this.checkPriority("copyOptions")) {
            let value_casted: CopyOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setCopyOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func bindSelectionMenu(spanType: RichEditorSpanType, content: CustomBuilder, responseType: Union_ResponseType_RichEditorResponseType, options: Option<SelectionMenuOptions>): Unit {
        if (this.checkPriority("bindSelectionMenu")) {
            let spanType_casted: RichEditorSpanType = spanType
            let content_casted: CustomBuilder = content
            let responseType_casted: Union_ResponseType_RichEditorResponseType = responseType
            let options_casted: Option<SelectionMenuOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindSelectionMenuAttribute(spanType_casted, content_casted, responseType_casted, options_casted)
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
    public open func onPaste(callback_: PasteEventCallback): Unit {
        if (this.checkPriority("onPaste")) {
            let callback__casted: PasteEventCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPasteAttribute(callback__casted)
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
    public open func placeholder(value: ResourceStr, style: Option<PlaceholderStyle>): Unit {
        if (this.checkPriority("placeholder")) {
            let value_casted: ResourceStr = value
            let style_casted: Option<PlaceholderStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPlaceholderAttribute(value_casted, style_casted)
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
    public open func onEditingChange(callback_: ((parameter: Bool) -> Unit)): Unit {
        if (this.checkPriority("onEditingChange")) {
            let callback__casted: ((parameter: Bool) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnEditingChangeAttribute(callback__casted)
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
    public open func onSubmit(callback_: SubmitCallback): Unit {
        if (this.checkPriority("onSubmit")) {
            let callback__casted: SubmitCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSubmitAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onWillChange(callback_: ((parameter: RichEditorChangeValue) -> Bool)): Unit {
        if (this.checkPriority("onWillChange")) {
            let callback__casted: ((parameter: RichEditorChangeValue) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDidChange(callback_: OnDidChangeCallback): Unit {
        if (this.checkPriority("onDidChange")) {
            let callback__casted: OnDidChangeCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDidChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onCut(callback_: ((parameter: CutEvent) -> Unit)): Unit {
        if (this.checkPriority("onCut")) {
            let callback__casted: ((parameter: CutEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnCutAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onCopy(callback_: ((parameter: CopyEvent) -> Unit)): Unit {
        if (this.checkPriority("onCopy")) {
            let callback__casted: ((parameter: CopyEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnCopyAttribute(callback__casted)
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
    public open func enableKeyboardOnFocus(isEnabled: Bool): Unit {
        if (this.checkPriority("enableKeyboardOnFocus")) {
            let isEnabled_casted: Bool = isEnabled
            let thisPeer = this.getPeer()
            thisPeer.setEnableKeyboardOnFocusAttribute(isEnabled_casted)
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
    public open func barState(state: BarState): Unit {
        if (this.checkPriority("barState")) {
            let state_casted: BarState = state
            let thisPeer = this.getPeer()
            thisPeer.setBarStateAttribute(state_casted)
            return
        }
        return
    }
    )
    public open func maxLength(maxLength: Option<Float64>): Unit {
        if (this.checkPriority("maxLength")) {
            let maxLength_casted: Option<Float64> = if (let Some(maxLength) <- maxLength) {maxLength} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMaxLengthAttribute(maxLength_casted)
            return
        }
        return
    }
    )
    public open func maxLines(maxLines: Option<Float64>): Unit {
        if (this.checkPriority("maxLines")) {
            let maxLines_casted: Option<Float64> = if (let Some(maxLines) <- maxLines) {maxLines} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMaxLinesAttribute(maxLines_casted)
            return
        }
        return
    }
    )
    public open func enableAutoSpacing(enable: Option<Bool>): Unit {
        if (this.checkPriority("enableAutoSpacing")) {
            let enable_casted: Option<Bool> = if (let Some(enable) <- enable) {enable} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableAutoSpacingAttribute(enable_casted)
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
    public open func undoStyle(style: Option<UndoStyle>): Unit {
        if (this.checkPriority("undoStyle")) {
            let style_casted: Option<UndoStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setUndoStyleAttribute(style_casted)
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
class RichEditorAttributeStyleHolder {
    var value: ?((attributes: RichEditorAttribute) -> Unit)
    init (value: ?((attributes: RichEditorAttribute) -> Unit)) {
        this.value = value
    }
}

class RichEditorAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRichEditor(
        style: ?((attributes: RichEditorAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Union_RichEditorOptions_RichEditorStyledStringOptions
    ): Unit {
        let styleHolder = RichEditorAttributeStyleHolder(style)
        let contentHolder = RichEditorAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRichEditorComponent()
        })
        NodeAttach<ArkRichEditorPeer>({ => ArkRichEditorPeer.create(receiver, 0) }) {
            receiver.setRichEditorOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
