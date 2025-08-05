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
public open class ArkTextPickerPeer <: ArkCommonMethodPeer {
    protected ArkTextPickerPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkTextPickerPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._TextPicker_construct(peerId, flags)
        let _peer = ArkTextPickerPeer(_peerPtr, peerId, "TextPicker", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setTextPickerOptionsAttribute(options: Option<TextPickerOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            TextPickerOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerInterface_setTextPickerOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDefaultPickerItemHeightAttribute(height: Option<Union_Number_String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (height.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let heightTmpValue = height
            if (heightTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let heightTmpValueForIdx0 = heightTmpValue.getValue0()
                thisSerializer.writeNumber(heightTmpValueForIdx0);
            } else if (heightTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let heightTmpValueForIdx1 = heightTmpValue.getValue1()
                thisSerializer.writeString(heightTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDefaultPickerItemHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCanLoopAttribute(isLoop: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isLoop.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isLoopTmpValue = isLoop
            thisSerializer.writeBoolean(isLoopTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setCanLoop(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDisappearTextStyleAttribute(style: Option<PickerTextStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PickerTextStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDisappearTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextStyleAttribute(style: Option<PickerTextStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PickerTextStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedTextStyleAttribute(style: Option<PickerTextStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PickerTextStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setSelectedTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDisableTextStyleAnimationAttribute(disabled: Bool): Unit {
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDisableTextStyleAnimation(this.peer.ptr, if (disabled) { Int32(1) } else { Int32(0) });
    }
    public open func setDefaultTextStyleAttribute(style: TextPickerTextStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TextPickerTextStyle_serializer.write(thisSerializer, style);
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDefaultTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAcceptAttribute(callback_: ((value: String, index: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnAccept(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCancelAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnCancel(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChange0Attribute(callback_: ((value: Union_String_Array_String, index: Union_Number_Array_Number) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnChange0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChange1Attribute(callback_: Option<OnTextPickerChangeCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnChange1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnScrollStopAttribute(callback_: Option<TextPickerScrollStopCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnScrollStop(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnEnterSelectedAreaAttribute(callback_: TextPickerEnterSelectedAreaCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnEnterSelectedArea(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedIndexAttribute(index: Option<Union_Number_Array_Number>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (index.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let indexTmpValue = index
            if (indexTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let indexTmpValueForIdx0 = indexTmpValue.getValue0()
                thisSerializer.writeNumber(indexTmpValueForIdx0);
            } else if (indexTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let indexTmpValueForIdx1 = indexTmpValue.getValue1()
                thisSerializer.writeInt32(Int32(indexTmpValueForIdx1.size));
                for (indexTmpValueForIdx1CounterI in 0..indexTmpValueForIdx1.size) {
                    let indexTmpValueForIdx1TmpElement: Float64 = indexTmpValueForIdx1[Int64(indexTmpValueForIdx1CounterI)]
                    thisSerializer.writeNumber(indexTmpValueForIdx1TmpElement);
                }
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setSelectedIndex(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDividerAttribute(textDivider: Option<DividerOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (textDivider.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let textDividerTmpValue = textDivider
            DividerOptions_serializer.write(thisSerializer, textDividerTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDivider(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setGradientHeightAttribute(height: Option<Dimension>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (height.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let heightTmpValue = height
            if (heightTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let heightTmpValueForIdx0 = heightTmpValue.getValue0()
                thisSerializer.writeString(heightTmpValueForIdx0);
            } else if (heightTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let heightTmpValueForIdx1 = heightTmpValue.getValue1()
                thisSerializer.writeNumber(heightTmpValueForIdx1);
            } else if (heightTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let heightTmpValueForIdx2 = heightTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", heightTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setGradientHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableHapticFeedbackAttribute(enable: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enable.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enableTmpValue = enable
            thisSerializer.writeBoolean(enableTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setEnableHapticFeedback(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDigitalCrownSensitivityAttribute(sensitivity: Option<CrownSensitivity>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (sensitivity.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sensitivityTmpValue = sensitivity
            thisSerializer.writeInt32(sensitivityTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDigitalCrownSensitivity(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedBackgroundStyleAttribute(style: Option<PickerBackgroundStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PickerBackgroundStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setSelectedBackgroundStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_selectedAttribute(callback: ((selected: Union_Number_Array_Number_Bindable_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._TextPickerAttribute_set_onChangeEvent_selected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_valueAttribute(callback: ((value: Union_ResourceStr_Array_ResourceStr_Bindable_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._TextPickerAttribute_set_onChangeEvent_value(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
