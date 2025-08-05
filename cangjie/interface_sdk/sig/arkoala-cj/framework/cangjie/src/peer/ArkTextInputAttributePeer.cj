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
public open class ArkTextInputPeer <: ArkCommonMethodPeer {
    protected ArkTextInputPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkTextInputPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._TextInput_construct(peerId, flags)
        let _peer = ArkTextInputPeer(_peerPtr, peerId, "TextInput", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setTextInputOptionsAttribute(value: Option<TextInputOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            TextInputOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputInterface_setTextInputOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTypeAttribute(value: InputType): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setType(this.peer.ptr, value.value);
    }
    public open func setContentTypeAttribute(value: ContentType): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setContentType(this.peer.ptr, value.value);
    }
    public open func setPlaceholderColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._TextInputAttribute_setPlaceholderColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextOverflowAttribute(value: TextOverflow): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setTextOverflow(this.peer.ptr, value.value);
    }
    public open func setTextIndentAttribute(value: Dimension): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setTextIndent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPlaceholderFontAttribute(value: Option<Font>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            Font_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setPlaceholderFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnterKeyTypeAttribute(value: EnterKeyType): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setEnterKeyType(this.peer.ptr, value.value);
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
        ArkUIGeneratedNativeModule._TextInputAttribute_setCaretColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnEditChangedAttribute(callback_: ((parameter: Bool) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnEditChanged(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnEditChangeAttribute(callback_: ((parameter: Bool) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnEditChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSubmitAttribute(callback_: OnSubmitCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnSubmit(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChangeAttribute(callback_: EditableTextOnChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnTextSelectionChangeAttribute(callback_: OnTextSelectionChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnTextSelectionChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnContentScrollAttribute(callback_: OnContentScrollCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnContentScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxLengthAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setMaxLength(this.peer.ptr, value);
    }
    public open func setFontColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._TextInputAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontSizeAttribute(value: Length): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontStyleAttribute(value: FontStyle): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setFontStyle(this.peer.ptr, value.value);
    }
    public open func setFontWeightAttribute(value: Union_Number_FontWeight_ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(valueForIdx1.value);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            if (valueForIdx2.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx2ForIdx0 = valueForIdx2.getValue0()
                thisSerializer.writeString(valueForIdx2ForIdx0);
            } else if (valueForIdx2.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx2ForIdx1 = valueForIdx2.getValue1()
                thisSerializer.writeCustomObject("Any", valueForIdx2ForIdx1);
            }
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setFontWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontFamilyAttribute(value: ResourceStr): Unit {
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
        ArkUIGeneratedNativeModule._TextInputAttribute_setFontFamily(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setInputFilterAttribute(value: ResourceStr, error: Option<((breakpoints: String) -> Unit)>): Unit {
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
        if (error.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let errorTmpValue = error
            thisSerializer.holdAndWriteCallback(errorTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setInputFilter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCopyAttribute(callback_: ((breakpoints: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnCopy(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCutAttribute(callback_: ((breakpoints: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnCut(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPasteAttribute(callback_: OnPasteCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnPaste(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCopyOptionAttribute(value: CopyOptions): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setCopyOption(this.peer.ptr, value.value);
    }
    public open func setShowPasswordIconAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setShowPasswordIcon(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setTextAlignAttribute(value: TextAlign): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setTextAlign(this.peer.ptr, value.value);
    }
    public open func setStyleAttribute(value: Union_TextInputStyle_TextContentStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(valueForIdx1.value);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCaretStyleAttribute(value: CaretStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        CaretStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._TextInputAttribute_setCaretStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextInputAttribute_setSelectedBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCaretPositionAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setCaretPosition(this.peer.ptr, value);
    }
    public open func setEnableKeyboardOnFocusAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setEnableKeyboardOnFocus(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setPasswordIconAttribute(value: PasswordIcon): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        PasswordIcon_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._TextInputAttribute_setPasswordIcon(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowErrorAttribute(value: Option<ResourceStr>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeString(valueTmpValueForIdx0);
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", valueTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setShowError(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowUnitAttribute(value: CustomBuilder): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(value));
        ArkUIGeneratedNativeModule._TextInputAttribute_setShowUnit(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowUnderlineAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setShowUnderline(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setUnderlineColorAttribute(value: Option<Union_ResourceColor_UnderlineColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                if (valueTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueTmpValueForIdx0ForIdx0 = valueTmpValueForIdx0.getValue0()
                    thisSerializer.writeInt32(valueTmpValueForIdx0ForIdx0.value);
                } else if (valueTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueTmpValueForIdx0ForIdx1 = valueTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(valueTmpValueForIdx0ForIdx1);
                } else if (valueTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueTmpValueForIdx0ForIdx2 = valueTmpValueForIdx0.getValue2()
                    thisSerializer.writeString(valueTmpValueForIdx0ForIdx2);
                } else if (valueTmpValueForIdx0.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3));
                    let valueTmpValueForIdx0ForIdx3 = valueTmpValueForIdx0.getValue3()
                    thisSerializer.writeCustomObject("Any", valueTmpValueForIdx0ForIdx3);
                }
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                UnderlineColor_serializer.write(thisSerializer, valueTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setUnderlineColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectionMenuHiddenAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setSelectionMenuHidden(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setBarStateAttribute(value: BarState): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setBarState(this.peer.ptr, value.value);
    }
    public open func setMaxLinesAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setMaxLines(this.peer.ptr, value);
    }
    public open func setWordBreakAttribute(value: WordBreak): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setWordBreak(this.peer.ptr, value.value);
    }
    public open func setLineBreakStrategyAttribute(strategy: LineBreakStrategy): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setLineBreakStrategy(this.peer.ptr, strategy.value);
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
        ArkUIGeneratedNativeModule._TextInputAttribute_setCustomKeyboard(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowCounterAttribute(value: Bool, options: Option<InputCounterOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            InputCounterOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setShowCounter(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCancelButtonAttribute(symbolOptions: Union_CancelButtonOptions_CancelButtonSymbolOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (symbolOptions.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let symbolOptionsForIdx0 = symbolOptions.getValue0()
            CancelButtonOptions_serializer.write(thisSerializer, symbolOptionsForIdx0);
        } else if (symbolOptions.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let symbolOptionsForIdx1 = symbolOptions.getValue1()
            CancelButtonSymbolOptions_serializer.write(thisSerializer, symbolOptionsForIdx1);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setCancelButton(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectAllAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setSelectAll(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setMinFontSizeAttribute(value: Union_Number_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setMinFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxFontSizeAttribute(value: Union_Number_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setMaxFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMinFontScaleAttribute(scale: Option<Union_Number_Resource>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scale.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let scaleTmpValue = scale
            if (scaleTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let scaleTmpValueForIdx0 = scaleTmpValue.getValue0()
                thisSerializer.writeNumber(scaleTmpValueForIdx0);
            } else if (scaleTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let scaleTmpValueForIdx1 = scaleTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", scaleTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setMinFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxFontScaleAttribute(scale: Option<Union_Number_Resource>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scale.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let scaleTmpValue = scale
            if (scaleTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let scaleTmpValueForIdx0 = scaleTmpValue.getValue0()
                thisSerializer.writeNumber(scaleTmpValueForIdx0);
            } else if (scaleTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let scaleTmpValueForIdx1 = scaleTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", scaleTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setMaxFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHeightAdaptivePolicyAttribute(value: TextHeightAdaptivePolicy): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setHeightAdaptivePolicy(this.peer.ptr, value.value);
    }
    public open func setEnableAutoFillAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setEnableAutoFill(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setDecorationAttribute(value: TextDecorationOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TextDecorationOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._TextInputAttribute_setDecoration(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLetterSpacingAttribute(value: Union_Number_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setLetterSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLineHeightAttribute(value: Union_Number_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setLineHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPasswordRulesAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setPasswordRules(this.peer.ptr, value);
    }
    public open func setFontFeatureAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setFontFeature(this.peer.ptr, value);
    }
    public open func setShowPasswordAttribute(visible: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setShowPassword(this.peer.ptr, if (visible) { Int32(1) } else { Int32(0) });
    }
    public open func setOnSecurityStateChangeAttribute(callback_: ((parameter: Bool) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnSecurityStateChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillInsertAttribute(callback_: ((parameter: InsertValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnWillInsert(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDidInsertAttribute(callback_: ((parameter: InsertValue) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnDidInsert(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillDeleteAttribute(callback_: ((parameter: DeleteValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnWillDelete(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDidDeleteAttribute(callback_: ((parameter: DeleteValue) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnDidDelete(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillAttachIMEAttribute(callback_: ((parameter: IMEClient) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnWillAttachIME(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEditMenuOptionsAttribute(editMenu: EditMenuOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        EditMenuOptions_serializer.write(thisSerializer, editMenu);
        ArkUIGeneratedNativeModule._TextInputAttribute_setEditMenuOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnablePreviewTextAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setEnablePreviewText(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableHapticFeedbackAttribute(isEnabled: Bool): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setEnableHapticFeedback(this.peer.ptr, if (isEnabled) { Int32(1) } else { Int32(0) });
    }
    public open func setAutoCapitalizationModeAttribute(mode: AutoCapitalizationMode): Unit {
        ArkUIGeneratedNativeModule._TextInputAttribute_setAutoCapitalizationMode(this.peer.ptr, mode.value);
    }
    public open func setHalfLeadingAttribute(halfLeading: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (halfLeading.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let halfLeadingTmpValue = halfLeading
            thisSerializer.writeBoolean(halfLeadingTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setHalfLeading(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEllipsisModeAttribute(mode: Option<EllipsisMode>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (mode.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modeTmpValue = mode
            thisSerializer.writeInt32(modeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setEllipsisMode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextInputAttribute_setStopBackPress(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillChangeAttribute(callback_: ((parameter: EditableTextChangeValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextInputAttribute_setOnWillChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextInputAttribute_setKeyboardAppearance(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStrokeWidthAttribute(width: Option<LengthMetrics>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (width.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let widthTmpValue = width
            thisSerializer.writeCustomObject("Any", widthTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setStrokeWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStrokeColorAttribute(color: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let colorTmpValue = color
            if (colorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let colorTmpValueForIdx0 = colorTmpValue.getValue0()
                thisSerializer.writeInt32(colorTmpValueForIdx0.value);
            } else if (colorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let colorTmpValueForIdx1 = colorTmpValue.getValue1()
                thisSerializer.writeNumber(colorTmpValueForIdx1);
            } else if (colorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let colorTmpValueForIdx2 = colorTmpValue.getValue2()
                thisSerializer.writeString(colorTmpValueForIdx2);
            } else if (colorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let colorTmpValueForIdx3 = colorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", colorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setStrokeColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableAutoFillAnimationAttribute(enabled: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enabled.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enabledTmpValue = enabled
            thisSerializer.writeBoolean(enabledTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setEnableAutoFillAnimation(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableAutoSpacingAttribute(enabled: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enabled.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enabledTmpValue = enabled
            thisSerializer.writeBoolean(enabledTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInputAttribute_setEnableAutoSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_textAttribute(callback: ((text: Union_ResourceStr_Bindable_Bindable_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._TextInputAttribute_set_onChangeEvent_text(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
