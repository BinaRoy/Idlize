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
public open class ArkSliderPeer <: ArkCommonMethodPeer {
    protected ArkSliderPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSliderPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Slider_construct(peerId, flags)
        let _peer = ArkSliderPeer(_peerPtr, peerId, "Slider", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSliderOptionsAttribute(options: Option<SliderOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SliderOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SliderInterface_setSliderOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBlockColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setBlockColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTrackColorAttribute(value: Union_ResourceColor_LinearGradient): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            if (valueForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx0ForIdx0 = valueForIdx0.getValue0()
                thisSerializer.writeInt32(valueForIdx0ForIdx0.value);
            } else if (valueForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx0ForIdx1 = valueForIdx0.getValue1()
                thisSerializer.writeNumber(valueForIdx0ForIdx1);
            } else if (valueForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx0ForIdx2 = valueForIdx0.getValue2()
                thisSerializer.writeString(valueForIdx0ForIdx2);
            } else if (valueForIdx0.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let valueForIdx0ForIdx3 = valueForIdx0.getValue3()
                thisSerializer.writeCustomObject("Any", valueForIdx0ForIdx3);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            LinearGradient_serializer.write(thisSerializer, valueForIdx1);
        }
        ArkUIGeneratedNativeModule._SliderAttribute_setTrackColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedColorAttribute(selectedColor: Union_ResourceColor_LinearGradient): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (selectedColor.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let selectedColorForIdx0 = selectedColor.getValue0()
            if (selectedColorForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let selectedColorForIdx0ForIdx0 = selectedColorForIdx0.getValue0()
                thisSerializer.writeInt32(selectedColorForIdx0ForIdx0.value);
            } else if (selectedColorForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let selectedColorForIdx0ForIdx1 = selectedColorForIdx0.getValue1()
                thisSerializer.writeNumber(selectedColorForIdx0ForIdx1);
            } else if (selectedColorForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let selectedColorForIdx0ForIdx2 = selectedColorForIdx0.getValue2()
                thisSerializer.writeString(selectedColorForIdx0ForIdx2);
            } else if (selectedColorForIdx0.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let selectedColorForIdx0ForIdx3 = selectedColorForIdx0.getValue3()
                thisSerializer.writeCustomObject("Any", selectedColorForIdx0ForIdx3);
            }
        } else if (selectedColor.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let selectedColorForIdx1 = selectedColor.getValue1()
            LinearGradient_serializer.write(thisSerializer, selectedColorForIdx1);
        }
        ArkUIGeneratedNativeModule._SliderAttribute_setSelectedColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMinLabelAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._SliderAttribute_setMinLabel(this.peer.ptr, value);
    }
    public open func setMaxLabelAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._SliderAttribute_setMaxLabel(this.peer.ptr, value);
    }
    public open func setShowStepsAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._SliderAttribute_setShowSteps(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setShowTipsAttribute(value: Bool, content: Option<ResourceStr>): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setShowTips(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTrackThicknessAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setTrackThickness(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChangeAttribute(callback_: ((value: Float64, mode: SliderChangeMode) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._SliderAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBlockBorderColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setBlockBorderColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBlockBorderWidthAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setBlockBorderWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStepColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setStepColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTrackBorderRadiusAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setTrackBorderRadius(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedBorderRadiusAttribute(value: Dimension): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setSelectedBorderRadius(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBlockSizeAttribute(value: SizeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SizeOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SliderAttribute_setBlockSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBlockStyleAttribute(value: SliderBlockStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SliderBlockStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SliderAttribute_setBlockStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStepSizeAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._SliderAttribute_setStepSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSliderInteractionModeAttribute(value: SliderInteraction): Unit {
        ArkUIGeneratedNativeModule._SliderAttribute_setSliderInteractionMode(this.peer.ptr, value.value);
    }
    public open func setMinResponsiveDistanceAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._SliderAttribute_setMinResponsiveDistance(this.peer.ptr, value);
    }
    public open func setContentModifierAttribute(modifier: ContentModifier<SliderConfiguration>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(modifier);
        ArkUIGeneratedNativeModule._SliderAttribute_setContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSlideRangeAttribute(value: SlideRange): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SlideRange_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SliderAttribute_setSlideRange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._SliderAttribute_setDigitalCrownSensitivity(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableHapticFeedbackAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._SliderAttribute_setEnableHapticFeedback(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
    public open func setPrefixAttribute(content: ComponentContent, options: Option<SliderPrefixOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", content);
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SliderPrefixOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SliderAttribute_setPrefix(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSuffixAttribute(content: ComponentContent, options: Option<SliderSuffixOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", content);
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SliderSuffixOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SliderAttribute_setSuffix(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_valueAttribute(callback: ((rating: Option<Union_Number_Bindable>) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._SliderAttribute_set_onChangeEvent_value(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
