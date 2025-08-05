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
public open class ArkRichEditorPeer <: ArkCommonMethodPeer {
    protected ArkRichEditorPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkRichEditorPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._RichEditor_construct(peerId, flags)
        let _peer = ArkRichEditorPeer(_peerPtr, peerId, "RichEditor", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setRichEditorOptions0Attribute(value: RichEditorOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RichEditorOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._RichEditorInterface_setRichEditorOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRichEditorOptions1Attribute(options: RichEditorStyledStringOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RichEditorStyledStringOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._RichEditorInterface_setRichEditorOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnReady0Attribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnReady0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnReady1Attribute(callback_: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnReady1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelectAttribute(callback_: ((parameter: RichEditorSelection) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnSelect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelectionChangeAttribute(callback_: ((parameter: RichEditorRange) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnSelectionChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAboutToIMEInputAttribute(callback_: ((parameter: RichEditorInsertValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setAboutToIMEInput(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnIMEInputCompleteAttribute(callback_: ((parameter: RichEditorTextSpanResult) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnIMEInputComplete(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDidIMEInputAttribute(callback_: ((parameter: TextRange) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnDidIMEInput(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAboutToDeleteAttribute(callback_: ((parameter: RichEditorDeleteValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setAboutToDelete(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDeleteComplete0Attribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnDeleteComplete0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDeleteComplete1Attribute(callback_: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnDeleteComplete1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCopyOptionsAttribute(value: CopyOptions): Unit {
        ArkUIGeneratedNativeModule._RichEditorAttribute_setCopyOptions(this.peer.ptr, value.value);
    }
    public open func setBindSelectionMenuAttribute(spanType: RichEditorSpanType, content: CustomBuilder, responseType: Union_ResponseType_RichEditorResponseType, options: Option<SelectionMenuOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(content));
        if (responseType.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let responseTypeForIdx0 = responseType.getValue0()
            thisSerializer.writeInt32(responseTypeForIdx0.value);
        } else if (responseType.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let responseTypeForIdx1 = responseType.getValue1()
            thisSerializer.writeInt32(responseTypeForIdx1.value);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SelectionMenuOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setBindSelectionMenu(this.peer.ptr, spanType.value, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCustomKeyboardAttribute(value: CustomBuilder, options: Option<KeyboardOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(value));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            KeyboardOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setCustomKeyboard(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPasteAttribute(callback_: PasteEventCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnPaste(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableDataDetectorAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._RichEditorAttribute_setEnableDataDetector(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setEnablePreviewTextAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._RichEditorAttribute_setEnablePreviewText(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setDataDetectorConfigAttribute(config: TextDataDetectorConfig): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TextDataDetectorConfig_serializer.write(thisSerializer, config);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setDataDetectorConfig(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPlaceholderAttribute(value: ResourceStr, style: Option<PlaceholderStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        }
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PlaceholderStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setPlaceholder(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCaretColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setCaretColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedBackgroundColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setSelectedBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnEditingChangeAttribute(callback_: ((parameter: Bool) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnEditingChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnterKeyTypeAttribute(value: EnterKeyType): Unit {
        ArkUIGeneratedNativeModule._RichEditorAttribute_setEnterKeyType(this.peer.ptr, value.value);
    }
    public open func setOnSubmitAttribute(callback_: SubmitCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnSubmit(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillChangeAttribute(callback_: ((parameter: RichEditorChangeValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnWillChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDidChangeAttribute(callback_: OnDidChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnDidChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCutAttribute(callback_: ((parameter: CutEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnCut(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCopyAttribute(callback_: ((parameter: CopyEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setOnCopy(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEditMenuOptionsAttribute(editMenu: EditMenuOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        EditMenuOptions_serializer.write(thisSerializer, editMenu);
        ArkUIGeneratedNativeModule._RichEditorAttribute_setEditMenuOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableKeyboardOnFocusAttribute(isEnabled: Bool): Unit {
        ArkUIGeneratedNativeModule._RichEditorAttribute_setEnableKeyboardOnFocus(this.peer.ptr, if (isEnabled) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableHapticFeedbackAttribute(isEnabled: Bool): Unit {
        ArkUIGeneratedNativeModule._RichEditorAttribute_setEnableHapticFeedback(this.peer.ptr, if (isEnabled) { Int32(1) } else { Int32(0) });
    }
    public open func setBarStateAttribute(state: BarState): Unit {
        ArkUIGeneratedNativeModule._RichEditorAttribute_setBarState(this.peer.ptr, state.value);
    }
    public open func setMaxLengthAttribute(maxLength: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (maxLength.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let maxLengthTmpValue = maxLength
            thisSerializer.writeNumber(maxLengthTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setMaxLength(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxLinesAttribute(maxLines: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (maxLines.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let maxLinesTmpValue = maxLines
            thisSerializer.writeNumber(maxLinesTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setMaxLines(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableAutoSpacingAttribute(enable: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enable.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enableTmpValue = enable
            thisSerializer.writeBoolean(enableTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setEnableAutoSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setKeyboardAppearanceAttribute(appearance: Option<KeyboardAppearance>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (appearance.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let appearanceTmpValue = appearance
            thisSerializer.writeInt32(appearanceTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setKeyboardAppearance(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStopBackPressAttribute(isStopped: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isStopped.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isStoppedTmpValue = isStopped
            thisSerializer.writeBoolean(isStoppedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setStopBackPress(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setUndoStyleAttribute(style: Option<UndoStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            thisSerializer.writeInt32(styleTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorAttribute_setUndoStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
