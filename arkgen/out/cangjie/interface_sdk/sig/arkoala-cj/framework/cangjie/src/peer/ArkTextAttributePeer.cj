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
public open class ArkTextPeer <: ArkCommonMethodPeer {
    protected ArkTextPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkTextPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Text_construct(peerId, flags)
        let _peer = ArkTextPeer(_peerPtr, peerId, "Text", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setTextOptionsAttribute(content: Option<Union_String_Resource>, value: Option<TextOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (content.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let contentTmpValue = content
            if (contentTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let contentTmpValueForIdx0 = contentTmpValue.getValue0()
                thisSerializer.writeString(contentTmpValueForIdx0);
            } else if (contentTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let contentTmpValueForIdx1 = contentTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", contentTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            TextOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextInterface_setTextOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontAttribute(fontValue: Font, options: Option<FontSettingOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Font_serializer.write(thisSerializer, fontValue);
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            FontSettingOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontSizeAttribute(value: Union_Number_String_Resource): Unit {
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
        ArkUIGeneratedNativeModule._TextAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
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
        ArkUIGeneratedNativeModule._TextAttribute_setMinFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAttribute_setMaxFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMinFontScaleAttribute(scale: Union_Number_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scale.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let scaleForIdx0 = scale.getValue0()
            thisSerializer.writeNumber(scaleForIdx0);
        } else if (scale.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let scaleForIdx1 = scale.getValue1()
            thisSerializer.writeCustomObject("Any", scaleForIdx1);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setMinFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxFontScaleAttribute(scale: Union_Number_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scale.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let scaleForIdx0 = scale.getValue0()
            thisSerializer.writeNumber(scaleForIdx0);
        } else if (scale.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let scaleForIdx1 = scale.getValue1()
            thisSerializer.writeCustomObject("Any", scaleForIdx1);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setMaxFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontStyleAttribute(value: FontStyle): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setFontStyle(this.peer.ptr, value.value);
    }
    public open func setFontWeightAttribute(weight: Union_Number_FontWeight_ResourceStr, options: Option<FontSettingOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (weight.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let weightForIdx0 = weight.getValue0()
            thisSerializer.writeNumber(weightForIdx0);
        } else if (weight.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let weightForIdx1 = weight.getValue1()
            thisSerializer.writeInt32(weightForIdx1.value);
        } else if (weight.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let weightForIdx2 = weight.getValue2()
            if (weightForIdx2.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let weightForIdx2ForIdx0 = weightForIdx2.getValue0()
                thisSerializer.writeString(weightForIdx2ForIdx0);
            } else if (weightForIdx2.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let weightForIdx2ForIdx1 = weightForIdx2.getValue1()
                thisSerializer.writeCustomObject("Any", weightForIdx2ForIdx1);
            }
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            FontSettingOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setFontWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAttribute_setLineSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextAlignAttribute(value: TextAlign): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setTextAlign(this.peer.ptr, value.value);
    }
    public open func setTextVerticalAlignAttribute(textVerticalAlign: Option<TextVerticalAlign>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (textVerticalAlign.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let textVerticalAlignTmpValue = textVerticalAlign
            thisSerializer.writeInt32(textVerticalAlignTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setTextVerticalAlign(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAttribute_setLineHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextOverflowAttribute(options: TextOverflowOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TextOverflowOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._TextAttribute_setTextOverflow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontFamilyAttribute(value: Union_String_Resource): Unit {
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
        ArkUIGeneratedNativeModule._TextAttribute_setFontFamily(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxLinesAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setMaxLines(this.peer.ptr, value);
    }
    public open func setDecorationAttribute(value: DecorationStyleInterface): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        DecorationStyleInterface_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._TextAttribute_setDecoration(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLetterSpacingAttribute(value: Union_Number_ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            if (valueForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx1ForIdx0 = valueForIdx1.getValue0()
                thisSerializer.writeString(valueForIdx1ForIdx0);
            } else if (valueForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx1ForIdx1 = valueForIdx1.getValue1()
                thisSerializer.writeCustomObject("Any", valueForIdx1ForIdx1);
            }
        }
        ArkUIGeneratedNativeModule._TextAttribute_setLetterSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextCaseAttribute(value: TextCase): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setTextCase(this.peer.ptr, value.value);
    }
    public open func setBaselineOffsetAttribute(value: Union_Number_ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            if (valueForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx1ForIdx0 = valueForIdx1.getValue0()
                thisSerializer.writeString(valueForIdx1ForIdx0);
            } else if (valueForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx1ForIdx1 = valueForIdx1.getValue1()
                thisSerializer.writeCustomObject("Any", valueForIdx1ForIdx1);
            }
        }
        ArkUIGeneratedNativeModule._TextAttribute_setBaselineOffset(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCopyOptionAttribute(value: CopyOptions): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setCopyOption(this.peer.ptr, value.value);
    }
    public open func setDraggableAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setDraggable(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setTextShadowAttribute(value: Union_ShadowOptions_Array_ShadowOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            ShadowOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(Int32(valueForIdx1.size));
            for (valueForIdx1CounterI in 0..valueForIdx1.size) {
                let valueForIdx1TmpElement: ShadowOptions = valueForIdx1[Int64(valueForIdx1CounterI)]
                ShadowOptions_serializer.write(thisSerializer, valueForIdx1TmpElement);
            }
        }
        ArkUIGeneratedNativeModule._TextAttribute_setTextShadow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHeightAdaptivePolicyAttribute(value: TextHeightAdaptivePolicy): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setHeightAdaptivePolicy(this.peer.ptr, value.value);
    }
    public open func setTextIndentAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._TextAttribute_setTextIndent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setWordBreakAttribute(value: WordBreak): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setWordBreak(this.peer.ptr, value.value);
    }
    public open func setLineBreakStrategyAttribute(strategy: LineBreakStrategy): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setLineBreakStrategy(this.peer.ptr, strategy.value);
    }
    public open func setOnCopyAttribute(callback_: ((breakpoints: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAttribute_setOnCopy(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectionAttribute(selectionStart: Float64, selectionEnd: Float64): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setSelection(this.peer.ptr, selectionStart, selectionEnd);
    }
    public open func setCaretColorAttribute(color: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let colorForIdx0 = color.getValue0()
            thisSerializer.writeInt32(colorForIdx0.value);
        } else if (color.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let colorForIdx1 = color.getValue1()
            thisSerializer.writeNumber(colorForIdx1);
        } else if (color.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let colorForIdx2 = color.getValue2()
            thisSerializer.writeString(colorForIdx2);
        } else if (color.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let colorForIdx3 = color.getValue3()
            thisSerializer.writeCustomObject("Any", colorForIdx3);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setCaretColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedBackgroundColorAttribute(color: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let colorForIdx0 = color.getValue0()
            thisSerializer.writeInt32(colorForIdx0.value);
        } else if (color.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let colorForIdx1 = color.getValue1()
            thisSerializer.writeNumber(colorForIdx1);
        } else if (color.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let colorForIdx2 = color.getValue2()
            thisSerializer.writeString(colorForIdx2);
        } else if (color.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let colorForIdx3 = color.getValue3()
            thisSerializer.writeCustomObject("Any", colorForIdx3);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setSelectedBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShaderStyleAttribute(shader: ShaderStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ShaderStyle_serializer.write(thisSerializer, shader);
        ArkUIGeneratedNativeModule._TextAttribute_setShaderStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEllipsisModeAttribute(value: EllipsisMode): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setEllipsisMode(this.peer.ptr, value.value);
    }
    public open func setEnableDataDetectorAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setEnableDataDetector(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setDataDetectorConfigAttribute(config: TextDataDetectorConfig): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TextDataDetectorConfig_serializer.write(thisSerializer, config);
        ArkUIGeneratedNativeModule._TextAttribute_setDataDetectorConfig(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindSelectionMenuAttribute(spanType: TextSpanType, content: CustomBuilder, responseType: TextResponseType, options: Option<SelectionMenuOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(content));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SelectionMenuOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setBindSelectionMenu(this.peer.ptr, spanType.value, thisSerializer.asBuffer(), thisSerializer.length(), responseType.value);
        thisSerializer.release();
    }
    public open func setOnTextSelectionChangeAttribute(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAttribute_setOnTextSelectionChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontFeatureAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setFontFeature(this.peer.ptr, value);
    }
    public open func setMarqueeOptionsAttribute(options: Option<TextMarqueeOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            TextMarqueeOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setMarqueeOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnMarqueeStateChangeAttribute(callback_: ((parameter: MarqueeState) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextAttribute_setOnMarqueeStateChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPrivacySensitiveAttribute(supported: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setPrivacySensitive(this.peer.ptr, if (supported) { Int32(1) } else { Int32(0) });
    }
    public open func setTextSelectableAttribute(mode: TextSelectableMode): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setTextSelectable(this.peer.ptr, mode.value);
    }
    public open func setEditMenuOptionsAttribute(editMenu: EditMenuOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        EditMenuOptions_serializer.write(thisSerializer, editMenu);
        ArkUIGeneratedNativeModule._TextAttribute_setEditMenuOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHalfLeadingAttribute(halfLeading: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setHalfLeading(this.peer.ptr, if (halfLeading) { Int32(1) } else { Int32(0) });
    }
    public open func setTrimSpaceAttribute(trim: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (trim.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let trimTmpValue = trim
            thisSerializer.writeBoolean(trimTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setTrimSpace(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableHapticFeedbackAttribute(isEnabled: Bool): Unit {
        ArkUIGeneratedNativeModule._TextAttribute_setEnableHapticFeedback(this.peer.ptr, if (isEnabled) { Int32(1) } else { Int32(0) });
    }
    public open func setOptimizeTrailingSpaceAttribute(optimize: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (optimize.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optimizeTmpValue = optimize
            thisSerializer.writeBoolean(optimizeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setOptimizeTrailingSpace(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._TextAttribute_setEnableAutoSpacing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setContentTransitionAttribute(transition: Option<ContentTransition>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (transition.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let transitionTmpValue = transition
            ContentTransition_serializer.write(thisSerializer, transitionTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextAttribute_setContentTransition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
