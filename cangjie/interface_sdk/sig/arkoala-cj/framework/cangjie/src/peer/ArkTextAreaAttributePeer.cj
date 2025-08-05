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
public open class ArkTextAreaPeer <: ArkCommonMethodPeer {
    protected ArkTextAreaPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkTextAreaPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._TextArea_construct(peerId, flags)
        let _peer = ArkTextAreaPeer(_peerPtr, peerId, "TextArea", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setTextAreaOptionsAttribute(value: Option<TextAreaOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            TextAreaOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAreaInterface_setTextAreaOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setPlaceholderColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPlaceholderFontAttribute(value: Font): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Font_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setPlaceholderFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnterKeyTypeAttribute(value: EnterKeyType): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setEnterKeyType(this.peer.ptr, value.value);
    }
    public open func setTextAlignAttribute(value: TextAlign): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setTextAlign(this.peer.ptr, value.value);
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setCaretColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontStyleAttribute(value: FontStyle): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setFontStyle(this.peer.ptr, value.value);
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setFontWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setFontFamily(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextOverflowAttribute(value: TextOverflow): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setTextOverflow(this.peer.ptr, value.value);
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setTextIndent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setInputFilter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCaretStyleAttribute(value: CaretStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        CaretStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setCaretStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setSelectedBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSubmitAttribute(callback_: Union_Callback_EnterKeyType_Void_TextAreaSubmitCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let callback_ForIdx0 = callback_.getValue0()
            thisSerializer.holdAndWriteCallback(callback_ForIdx0);
        } else if (callback_.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let callback_ForIdx1 = callback_.getValue1()
            thisSerializer.holdAndWriteCallback(callback_ForIdx1);
        }
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnSubmit(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChangeAttribute(callback_: EditableTextOnChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnTextSelectionChangeAttribute(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnTextSelectionChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnContentScrollAttribute(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnContentScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnEditChangeAttribute(callback_: ((parameter: Bool) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnEditChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCopyAttribute(callback_: ((breakpoints: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnCopy(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCutAttribute(callback_: ((breakpoints: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnCut(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPasteAttribute(callback_: ((value: String, event: PasteEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnPaste(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCopyOptionAttribute(value: CopyOptions): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setCopyOption(this.peer.ptr, value.value);
    }
    public open func setEnableKeyboardOnFocusAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setEnableKeyboardOnFocus(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setMaxLengthAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setMaxLength(this.peer.ptr, value);
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setShowCounter(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStyleAttribute(value: TextContentStyle): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setStyle(this.peer.ptr, value.value);
    }
    public open func setBarStateAttribute(value: BarState): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setBarState(this.peer.ptr, value.value);
    }
    public open func setSelectionMenuHiddenAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setSelectionMenuHidden(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setMinFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setMaxFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setMinFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setMaxFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHeightAdaptivePolicyAttribute(value: TextHeightAdaptivePolicy): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setHeightAdaptivePolicy(this.peer.ptr, value.value);
    }
    public open func setMaxLines0Attribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setMaxLines0(this.peer.ptr, value);
    }
    public open func setMaxLines1Attribute(lines: Float64, options: MaxLinesOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        MaxLinesOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setMaxLines1(this.peer.ptr, lines, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMinLinesAttribute(lines: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (lines.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let linesTmpValue = lines
            thisSerializer.writeNumber(linesTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAreaAttribute_setMinLines(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setWordBreakAttribute(value: WordBreak): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setWordBreak(this.peer.ptr, value.value);
    }
    public open func setLineBreakStrategyAttribute(strategy: LineBreakStrategy): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setLineBreakStrategy(this.peer.ptr, strategy.value);
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setCustomKeyboard(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDecorationAttribute(value: TextDecorationOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TextDecorationOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setDecoration(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setLetterSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLineSpacingAttribute(value: LengthMetrics, options: Option<LineSpacingOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", value);
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            LineSpacingOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAreaAttribute_setLineSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setLineHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTypeAttribute(value: TextAreaType): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setType(this.peer.ptr, value.value);
    }
    public open func setEnableAutoFillAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setEnableAutoFill(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setContentTypeAttribute(contentType: ContentType): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setContentType(this.peer.ptr, contentType.value);
    }
    public open func setFontFeatureAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setFontFeature(this.peer.ptr, value);
    }
    public open func setOnWillInsertAttribute(callback_: ((parameter: InsertValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnWillInsert(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDidInsertAttribute(callback_: ((parameter: InsertValue) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnDidInsert(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillDeleteAttribute(callback_: ((parameter: DeleteValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnWillDelete(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDidDeleteAttribute(callback_: ((parameter: DeleteValue) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnDidDelete(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEditMenuOptionsAttribute(editMenu: EditMenuOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        EditMenuOptions_serializer.write(thisSerializer, editMenu);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setEditMenuOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnablePreviewTextAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setEnablePreviewText(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableHapticFeedbackAttribute(isEnabled: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setEnableHapticFeedback(this.peer.ptr, if (isEnabled) { Int32(1) } else { Int32(0) });
    }
    public open func setAutoCapitalizationModeAttribute(mode: AutoCapitalizationMode): Unit {
        ArkUIGeneratedNativeModule._TextAreaAttribute_setAutoCapitalizationMode(this.peer.ptr, mode.value);
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setHalfLeading(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setEllipsisMode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setStopBackPress(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillChangeAttribute(callback_: ((parameter: EditableTextChangeValue) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAreaAttribute_setOnWillChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setKeyboardAppearance(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setStrokeWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setStrokeColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAreaAttribute_setEnableAutoSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_textAttribute(callback: ((text: Union_ResourceStr_Bindable_Bindable_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._TextAreaAttribute_set_onChangeEvent_text(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
