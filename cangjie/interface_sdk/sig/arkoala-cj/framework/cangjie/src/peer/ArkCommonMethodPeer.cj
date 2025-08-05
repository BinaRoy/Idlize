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
public open class ArkCommonMethodPeer <: PeerNode {
    protected ArkCommonMethodPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCommonMethodPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._CommonMethod_construct(peerId, flags)
        let _peer = ArkCommonMethodPeer(_peerPtr, peerId, "CommonMethod", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setWidthAttribute(widthValue: Union_Length_LayoutPolicy): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (widthValue.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let widthValueForIdx0 = widthValue.getValue0()
            if (widthValueForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let widthValueForIdx0ForIdx0 = widthValueForIdx0.getValue0()
                thisSerializer.writeString(widthValueForIdx0ForIdx0);
            } else if (widthValueForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let widthValueForIdx0ForIdx1 = widthValueForIdx0.getValue1()
                thisSerializer.writeNumber(widthValueForIdx0ForIdx1);
            } else if (widthValueForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let widthValueForIdx0ForIdx2 = widthValueForIdx0.getValue2()
                thisSerializer.writeCustomObject("Any", widthValueForIdx0ForIdx2);
            }
        } else if (widthValue.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let widthValueForIdx1 = widthValue.getValue1()
            LayoutPolicy_serializer.write(thisSerializer, widthValueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHeightAttribute(heightValue: Union_Length_LayoutPolicy): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (heightValue.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let heightValueForIdx0 = heightValue.getValue0()
            if (heightValueForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let heightValueForIdx0ForIdx0 = heightValueForIdx0.getValue0()
                thisSerializer.writeString(heightValueForIdx0ForIdx0);
            } else if (heightValueForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let heightValueForIdx0ForIdx1 = heightValueForIdx0.getValue1()
                thisSerializer.writeNumber(heightValueForIdx0ForIdx1);
            } else if (heightValueForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let heightValueForIdx0ForIdx2 = heightValueForIdx0.getValue2()
                thisSerializer.writeCustomObject("Any", heightValueForIdx0ForIdx2);
            }
        } else if (heightValue.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let heightValueForIdx1 = heightValue.getValue1()
            LayoutPolicy_serializer.write(thisSerializer, heightValueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDrawModifierAttribute(modifier: Option<DrawModifier>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (modifier.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modifierTmpValue = modifier
            DrawModifier_serializer.write(thisSerializer, modifierTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setDrawModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCustomPropertyAttribute(name: String, value: Option<Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            thisSerializer.holdAndWriteObject(valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setCustomProperty(this.peer.ptr, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setExpandSafeAreaAttribute(types: Option<ArrayList<SafeAreaType>>, edges: Option<ArrayList<SafeAreaEdge>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (types.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let typesTmpValue = types
            thisSerializer.writeInt32(Int32(typesTmpValue.size));
            for (typesTmpValueCounterI in 0..typesTmpValue.size) {
                let typesTmpValueTmpElement: SafeAreaType = typesTmpValue[Int64(typesTmpValueCounterI)]
                thisSerializer.writeInt32(typesTmpValueTmpElement.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (edges.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let edgesTmpValue = edges
            thisSerializer.writeInt32(Int32(edgesTmpValue.size));
            for (edgesTmpValueCounterI in 0..edgesTmpValue.size) {
                let edgesTmpValueTmpElement: SafeAreaEdge = edgesTmpValue[Int64(edgesTmpValueCounterI)]
                thisSerializer.writeInt32(edgesTmpValueTmpElement.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setExpandSafeArea(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIgnoreLayoutSafeAreaAttribute(types: Option<ArrayList<LayoutSafeAreaType>>, edges: Option<ArrayList<LayoutSafeAreaEdge>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (types.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let typesTmpValue = types
            thisSerializer.writeInt32(Int32(typesTmpValue.size));
            for (typesTmpValueCounterI in 0..typesTmpValue.size) {
                let typesTmpValueTmpElement: LayoutSafeAreaType = typesTmpValue[Int64(typesTmpValueCounterI)]
                thisSerializer.writeInt32(typesTmpValueTmpElement.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (edges.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let edgesTmpValue = edges
            thisSerializer.writeInt32(Int32(edgesTmpValue.size));
            for (edgesTmpValueCounterI in 0..edgesTmpValue.size) {
                let edgesTmpValueTmpElement: LayoutSafeAreaEdge = edgesTmpValue[Int64(edgesTmpValueCounterI)]
                thisSerializer.writeInt32(edgesTmpValueTmpElement.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setIgnoreLayoutSafeArea(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setResponseRegionAttribute(value: Union_Array_Rectangle_Rectangle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(Int32(valueForIdx0.size));
            for (valueForIdx0CounterI in 0..valueForIdx0.size) {
                let valueForIdx0TmpElement: Rectangle = valueForIdx0[Int64(valueForIdx0CounterI)]
                Rectangle_serializer.write(thisSerializer, valueForIdx0TmpElement);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            Rectangle_serializer.write(thisSerializer, valueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setResponseRegion(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMouseResponseRegionAttribute(value: Union_Array_Rectangle_Rectangle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(Int32(valueForIdx0.size));
            for (valueForIdx0CounterI in 0..valueForIdx0.size) {
                let valueForIdx0TmpElement: Rectangle = valueForIdx0[Int64(valueForIdx0CounterI)]
                Rectangle_serializer.write(thisSerializer, valueForIdx0TmpElement);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            Rectangle_serializer.write(thisSerializer, valueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setMouseResponseRegion(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSizeAttribute(value: SizeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SizeOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setConstraintSizeAttribute(value: ConstraintSizeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ConstraintSizeOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setConstraintSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTouchableAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setTouchable(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setHitTestBehaviorAttribute(value: HitTestMode): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setHitTestBehavior(this.peer.ptr, value.value);
    }
    public open func setOnChildTouchTestAttribute(event: ((value: ArrayList<TouchTestInfo>) -> TouchResult)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnChildTouchTest(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLayoutWeightAttribute(value: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setLayoutWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setChainWeightAttribute(chainWeight: ChainWeightOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ChainWeightOptions_serializer.write(thisSerializer, chainWeight);
        ArkUIGeneratedNativeModule._CommonMethod_setChainWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPaddingAttribute(value: Union_Padding_Length_LocalizedPadding): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            Padding_serializer.write(thisSerializer, valueForIdx0);
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
                thisSerializer.writeNumber(valueForIdx1ForIdx1);
            } else if (valueForIdx1.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx1ForIdx2 = valueForIdx1.getValue2()
                thisSerializer.writeCustomObject("Any", valueForIdx1ForIdx2);
            }
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            LocalizedPadding_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setPadding(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSafeAreaPaddingAttribute(paddingValue: Union_Padding_LengthMetrics_LocalizedPadding): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (paddingValue.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let paddingValueForIdx0 = paddingValue.getValue0()
            Padding_serializer.write(thisSerializer, paddingValueForIdx0);
        } else if (paddingValue.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let paddingValueForIdx1 = paddingValue.getValue1()
            thisSerializer.writeCustomObject("Any", paddingValueForIdx1);
        } else if (paddingValue.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let paddingValueForIdx2 = paddingValue.getValue2()
            LocalizedPadding_serializer.write(thisSerializer, paddingValueForIdx2);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setSafeAreaPadding(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMarginAttribute(value: Union_Margin_Length_LocalizedMargin): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            Padding_serializer.write(thisSerializer, valueForIdx0);
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
                thisSerializer.writeNumber(valueForIdx1ForIdx1);
            } else if (valueForIdx1.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx1ForIdx2 = valueForIdx1.getValue2()
                thisSerializer.writeCustomObject("Any", valueForIdx1ForIdx2);
            }
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            LocalizedPadding_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setMargin(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackground0Attribute(builder: CustomBuilder, options: Option<Literal_Alignment_align>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(builder));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            let optionsTmpValueAlign = optionsTmpValue.align
            if (optionsTmpValueAlign.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let optionsTmpValueAlignTmpValue = optionsTmpValueAlign
                thisSerializer.writeInt32(optionsTmpValueAlignTmpValue.value);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackground0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackground1Attribute(content: Union_CustomBuilder_ResourceColor, options: Option<BackgroundOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (content.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let contentForIdx0 = content.getValue0()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(contentForIdx0));
        } else if (content.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let contentForIdx1 = content.getValue1()
            if (contentForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let contentForIdx1ForIdx0 = contentForIdx1.getValue0()
                thisSerializer.writeInt32(contentForIdx1ForIdx0.value);
            } else if (contentForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let contentForIdx1ForIdx1 = contentForIdx1.getValue1()
                thisSerializer.writeNumber(contentForIdx1ForIdx1);
            } else if (contentForIdx1.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let contentForIdx1ForIdx2 = contentForIdx1.getValue2()
                thisSerializer.writeString(contentForIdx1ForIdx2);
            } else if (contentForIdx1.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let contentForIdx1ForIdx3 = contentForIdx1.getValue3()
                thisSerializer.writeCustomObject("Any", contentForIdx1ForIdx3);
            }
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BackgroundOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackground1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundColorAttribute(color: Option<Union_ResourceColor_ColorMetrics>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let colorTmpValue = color
            if (colorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let colorTmpValueForIdx0 = colorTmpValue.getValue0()
                if (colorTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let colorTmpValueForIdx0ForIdx0 = colorTmpValueForIdx0.getValue0()
                    thisSerializer.writeInt32(colorTmpValueForIdx0ForIdx0.value);
                } else if (colorTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let colorTmpValueForIdx0ForIdx1 = colorTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(colorTmpValueForIdx0ForIdx1);
                } else if (colorTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let colorTmpValueForIdx0ForIdx2 = colorTmpValueForIdx0.getValue2()
                    thisSerializer.writeString(colorTmpValueForIdx0ForIdx2);
                } else if (colorTmpValueForIdx0.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3));
                    let colorTmpValueForIdx0ForIdx3 = colorTmpValueForIdx0.getValue3()
                    thisSerializer.writeCustomObject("Any", colorTmpValueForIdx0ForIdx3);
                }
            } else if (colorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let colorTmpValueForIdx1 = colorTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", colorTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPixelRoundAttribute(value: PixelRoundPolicy): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        PixelRoundPolicy_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setPixelRound(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundImage0Attribute(src: Union_ResourceStr_PixelMap, repeat: Option<ImageRepeat>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (src.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let srcForIdx0 = src.getValue0()
            if (srcForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let srcForIdx0ForIdx0 = srcForIdx0.getValue0()
                thisSerializer.writeString(srcForIdx0ForIdx0);
            } else if (srcForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let srcForIdx0ForIdx1 = srcForIdx0.getValue1()
                thisSerializer.writeCustomObject("Any", srcForIdx0ForIdx1);
            }
        } else if (src.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let srcForIdx1 = src.getValue1()
            thisSerializer.writeCustomObject("Any", srcForIdx1);
        }
        if (repeat.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let repeatTmpValue = repeat
            thisSerializer.writeInt32(repeatTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundImage0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundImage1Attribute(src: Union_ResourceStr_PixelMap, options: Option<BackgroundImageOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (src.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let srcForIdx0 = src.getValue0()
            if (srcForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let srcForIdx0ForIdx0 = srcForIdx0.getValue0()
                thisSerializer.writeString(srcForIdx0ForIdx0);
            } else if (srcForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let srcForIdx0ForIdx1 = srcForIdx0.getValue1()
                thisSerializer.writeCustomObject("Any", srcForIdx0ForIdx1);
            }
        } else if (src.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let srcForIdx1 = src.getValue1()
            thisSerializer.writeCustomObject("Any", srcForIdx1);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BackgroundImageOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundImage1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundImageSizeAttribute(value: Union_SizeOptions_ImageSize): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            SizeOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(valueForIdx1.value);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundImageSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundImagePositionAttribute(value: Union_Position_Alignment): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            Position_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(valueForIdx1.value);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundImagePosition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundBlurStyleAttribute(style: Option<BlurStyle>, options: Option<BackgroundBlurStyleOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            thisSerializer.writeInt32(styleTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BackgroundBlurStyleOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (sysOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sysOptionsTmpValue = sysOptions
            SystemAdaptiveOptions_serializer.write(thisSerializer, sysOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundBlurStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundEffectAttribute(options: Option<BackgroundEffectOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BackgroundEffectOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (sysOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sysOptionsTmpValue = sysOptions
            SystemAdaptiveOptions_serializer.write(thisSerializer, sysOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundImageResizableAttribute(value: ResizableOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ResizableOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundImageResizable(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setForegroundEffectAttribute(options: ForegroundEffectOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ForegroundEffectOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._CommonMethod_setForegroundEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setVisualEffectAttribute(effect: VisualEffect): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", effect);
        ArkUIGeneratedNativeModule._CommonMethod_setVisualEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundFilterAttribute(filter: Filter): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", filter);
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundFilter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setForegroundFilterAttribute(filter: Filter): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", filter);
        ArkUIGeneratedNativeModule._CommonMethod_setForegroundFilter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCompositingFilterAttribute(filter: Filter): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", filter);
        ArkUIGeneratedNativeModule._CommonMethod_setCompositingFilter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setForegroundBlurStyleAttribute(style: Option<BlurStyle>, options: Option<ForegroundBlurStyleOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            thisSerializer.writeInt32(styleTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ForegroundBlurStyleOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (sysOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sysOptionsTmpValue = sysOptions
            SystemAdaptiveOptions_serializer.write(thisSerializer, sysOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setForegroundBlurStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOpacityAttribute(opacity: Option<Union_Number_Resource>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (opacity.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let opacityTmpValue = opacity
            if (opacityTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let opacityTmpValueForIdx0 = opacityTmpValue.getValue0()
                thisSerializer.writeNumber(opacityTmpValueForIdx0);
            } else if (opacityTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let opacityTmpValueForIdx1 = opacityTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", opacityTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOpacity(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderAttribute(value: BorderOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        BorderOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setBorder(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderStyleAttribute(value: Union_BorderStyle_EdgeStyles): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            EdgeStyles_serializer.write(thisSerializer, valueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBorderStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderWidthAttribute(value: Union_Length_EdgeWidths_LocalizedEdgeWidths): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            if (valueForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx0ForIdx0 = valueForIdx0.getValue0()
                thisSerializer.writeString(valueForIdx0ForIdx0);
            } else if (valueForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx0ForIdx1 = valueForIdx0.getValue1()
                thisSerializer.writeNumber(valueForIdx0ForIdx1);
            } else if (valueForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx0ForIdx2 = valueForIdx0.getValue2()
                thisSerializer.writeCustomObject("Any", valueForIdx0ForIdx2);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            EdgeWidths_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            LocalizedEdgeWidths_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBorderWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderColorAttribute(value: Union_ResourceColor_EdgeColors_LocalizedEdgeColors): Unit {
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
            EdgeColors_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            LocalizedEdgeColors_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBorderColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderRadiusAttribute(value: Union_Length_BorderRadiuses_LocalizedBorderRadiuses): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            if (valueForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx0ForIdx0 = valueForIdx0.getValue0()
                thisSerializer.writeString(valueForIdx0ForIdx0);
            } else if (valueForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx0ForIdx1 = valueForIdx0.getValue1()
                thisSerializer.writeNumber(valueForIdx0ForIdx1);
            } else if (valueForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx0ForIdx2 = valueForIdx0.getValue2()
                thisSerializer.writeCustomObject("Any", valueForIdx0ForIdx2);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            BorderRadiuses_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            LocalizedBorderRadiuses_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBorderRadius(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderImageAttribute(value: BorderImageOption): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        BorderImageOption_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setBorderImage(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOutlineAttribute(options: Option<OutlineOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            OutlineOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOutline(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOutlineStyleAttribute(style: Option<Union_OutlineStyle_EdgeOutlineStyles>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            if (styleTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let styleTmpValueForIdx0 = styleTmpValue.getValue0()
                thisSerializer.writeInt32(styleTmpValueForIdx0.value);
            } else if (styleTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let styleTmpValueForIdx1 = styleTmpValue.getValue1()
                EdgeOutlineStyles_serializer.write(thisSerializer, styleTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOutlineStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOutlineWidthAttribute(width: Option<Union_Dimension_EdgeOutlineWidths>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (width.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let widthTmpValue = width
            if (widthTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let widthTmpValueForIdx0 = widthTmpValue.getValue0()
                if (widthTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let widthTmpValueForIdx0ForIdx0 = widthTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(widthTmpValueForIdx0ForIdx0);
                } else if (widthTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let widthTmpValueForIdx0ForIdx1 = widthTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(widthTmpValueForIdx0ForIdx1);
                } else if (widthTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let widthTmpValueForIdx0ForIdx2 = widthTmpValueForIdx0.getValue2()
                    thisSerializer.writeCustomObject("Any", widthTmpValueForIdx0ForIdx2);
                }
            } else if (widthTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let widthTmpValueForIdx1 = widthTmpValue.getValue1()
                EdgeOutlineWidths_serializer.write(thisSerializer, widthTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOutlineWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOutlineColorAttribute(color: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let colorTmpValue = color
            if (colorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let colorTmpValueForIdx0 = colorTmpValue.getValue0()
                if (colorTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let colorTmpValueForIdx0ForIdx0 = colorTmpValueForIdx0.getValue0()
                    thisSerializer.writeInt32(colorTmpValueForIdx0ForIdx0.value);
                } else if (colorTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let colorTmpValueForIdx0ForIdx1 = colorTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(colorTmpValueForIdx0ForIdx1);
                } else if (colorTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let colorTmpValueForIdx0ForIdx2 = colorTmpValueForIdx0.getValue2()
                    thisSerializer.writeString(colorTmpValueForIdx0ForIdx2);
                } else if (colorTmpValueForIdx0.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3));
                    let colorTmpValueForIdx0ForIdx3 = colorTmpValueForIdx0.getValue3()
                    thisSerializer.writeCustomObject("Any", colorTmpValueForIdx0ForIdx3);
                }
            } else if (colorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let colorTmpValueForIdx1 = colorTmpValue.getValue1()
                EdgeColors_serializer.write(thisSerializer, colorTmpValueForIdx1);
            } else if (colorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let colorTmpValueForIdx2 = colorTmpValue.getValue2()
                LocalizedEdgeColors_serializer.write(thisSerializer, colorTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOutlineColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOutlineRadiusAttribute(radius: Option<Union_Dimension_OutlineRadiuses>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (radius.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let radiusTmpValue = radius
            if (radiusTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let radiusTmpValueForIdx0 = radiusTmpValue.getValue0()
                if (radiusTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let radiusTmpValueForIdx0ForIdx0 = radiusTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(radiusTmpValueForIdx0ForIdx0);
                } else if (radiusTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let radiusTmpValueForIdx0ForIdx1 = radiusTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(radiusTmpValueForIdx0ForIdx1);
                } else if (radiusTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let radiusTmpValueForIdx0ForIdx2 = radiusTmpValueForIdx0.getValue2()
                    thisSerializer.writeCustomObject("Any", radiusTmpValueForIdx0ForIdx2);
                }
            } else if (radiusTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let radiusTmpValueForIdx1 = radiusTmpValue.getValue1()
                OutlineRadiuses_serializer.write(thisSerializer, radiusTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOutlineRadius(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setForegroundColorAttribute(color: Option<Union_ResourceColor_ColoringStrategy>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let colorTmpValue = color
            if (colorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let colorTmpValueForIdx0 = colorTmpValue.getValue0()
                if (colorTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let colorTmpValueForIdx0ForIdx0 = colorTmpValueForIdx0.getValue0()
                    thisSerializer.writeInt32(colorTmpValueForIdx0ForIdx0.value);
                } else if (colorTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let colorTmpValueForIdx0ForIdx1 = colorTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(colorTmpValueForIdx0ForIdx1);
                } else if (colorTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let colorTmpValueForIdx0ForIdx2 = colorTmpValueForIdx0.getValue2()
                    thisSerializer.writeString(colorTmpValueForIdx0ForIdx2);
                } else if (colorTmpValueForIdx0.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3));
                    let colorTmpValueForIdx0ForIdx3 = colorTmpValueForIdx0.getValue3()
                    thisSerializer.writeCustomObject("Any", colorTmpValueForIdx0ForIdx3);
                }
            } else if (colorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let colorTmpValueForIdx1 = colorTmpValue.getValue1()
                thisSerializer.writeInt32(colorTmpValueForIdx1.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setForegroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnClick0Attribute(event: ((event: ClickEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnClick0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnClick1Attribute(event: ((event: ClickEvent) -> Unit), distanceThreshold: Float64): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnClick1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), distanceThreshold);
        thisSerializer.release();
    }
    public open func setOnHoverAttribute(event: ((isHover: Bool, event: HoverEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnHover(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnHoverMoveAttribute(event: ((parameter: HoverEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnHoverMove(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAccessibilityHoverAttribute(callback_: AccessibilityCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnAccessibilityHover(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAccessibilityHoverTransparentAttribute(callback_: AccessibilityTransparentCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnAccessibilityHoverTransparent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHoverEffectAttribute(value: HoverEffect): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setHoverEffect(this.peer.ptr, value.value);
    }
    public open func setOnMouseAttribute(event: ((event: MouseEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnMouse(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnTouchAttribute(event: ((event: TouchEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnTouch(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnKeyEvent0Attribute(event: ((event: KeyEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnKeyEvent0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnKeyEvent1Attribute(event: ((parameter: KeyEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnKeyEvent1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDigitalCrownAttribute(handler: Option<((parameter: CrownEvent) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (handler.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let handlerTmpValue = handler
            thisSerializer.holdAndWriteCallback(handlerTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOnDigitalCrown(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnKeyPreImeAttribute(event: ((parameter: KeyEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnKeyPreIme(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnKeyEventDispatchAttribute(event: ((parameter: KeyEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnKeyEventDispatch(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFocusAxisEventAttribute(event: ((parameter: FocusAxisEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnFocusAxisEvent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAxisEventAttribute(event: ((parameter: AxisEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnAxisEvent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFocusableAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setFocusable(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setNextFocusAttribute(nextStep: Option<FocusMovement>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (nextStep.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let nextStepTmpValue = nextStep
            FocusMovement_serializer.write(thisSerializer, nextStepTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setNextFocus(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTabStopAttribute(isTabStop: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setTabStop(this.peer.ptr, if (isTabStop) { Int32(1) } else { Int32(0) });
    }
    public open func setOnFocusAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnFocus(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnBlurAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnBlur(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTabIndexAttribute(index: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setTabIndex(this.peer.ptr, index);
    }
    public open func setDefaultFocusAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setDefaultFocus(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setGroupDefaultFocusAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setGroupDefaultFocus(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setFocusOnTouchAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setFocusOnTouch(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setFocusBoxAttribute(style: FocusBoxStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        FocusBoxStyle_serializer.write(thisSerializer, style);
        ArkUIGeneratedNativeModule._CommonMethod_setFocusBox(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFocusScopeIdAttribute(id: String, isGroup: Option<Bool>, arrowStepOut: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isGroup.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isGroupTmpValue = isGroup
            thisSerializer.writeBoolean(isGroupTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (arrowStepOut.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let arrowStepOutTmpValue = arrowStepOut
            thisSerializer.writeBoolean(arrowStepOutTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setFocusScopeId(this.peer.ptr, id, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFocusScopePriorityAttribute(scopeId: String, priority: Option<FocusPriority>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (priority.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let priorityTmpValue = priority
            thisSerializer.writeInt32(priorityTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setFocusScopePriority(this.peer.ptr, scopeId, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAnimationAttribute(value: AnimateParam): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AnimateParam_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setAnimation(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTransition0Attribute(value: Union_TransitionOptions_TransitionEffect): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            TransitionOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            TransitionEffect_serializer.write(thisSerializer, valueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setTransition0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTransition1Attribute(effect: TransitionEffect, onFinish: Option<TransitionFinishCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (onFinish.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onFinishTmpValue = onFinish
            thisSerializer.holdAndWriteCallback(onFinishTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setTransition1(this.peer.ptr, MaterializedBase.toPeerPtr(effect), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setGestureAttribute(gesture: GestureType, mask: Option<GestureMask>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (gesture.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let gestureForIdx0 = gesture.getValue0()
            TapGestureInterface_serializer.write(thisSerializer, gestureForIdx0);
        } else if (gesture.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let gestureForIdx1 = gesture.getValue1()
            LongPressGestureInterface_serializer.write(thisSerializer, gestureForIdx1);
        } else if (gesture.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let gestureForIdx2 = gesture.getValue2()
            PanGestureInterface_serializer.write(thisSerializer, gestureForIdx2);
        } else if (gesture.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let gestureForIdx3 = gesture.getValue3()
            PinchGestureInterface_serializer.write(thisSerializer, gestureForIdx3);
        } else if (gesture.getSelector() == 4) {
            thisSerializer.writeInt8(Int8(4));
            let gestureForIdx4 = gesture.getValue4()
            SwipeGestureInterface_serializer.write(thisSerializer, gestureForIdx4);
        } else if (gesture.getSelector() == 5) {
            thisSerializer.writeInt8(Int8(5));
            let gestureForIdx5 = gesture.getValue5()
            RotationGestureInterface_serializer.write(thisSerializer, gestureForIdx5);
        } else if (gesture.getSelector() == 6) {
            thisSerializer.writeInt8(Int8(6));
            let gestureForIdx6 = gesture.getValue6()
            GestureGroupInterface_serializer.write(thisSerializer, gestureForIdx6);
        }
        if (mask.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let maskTmpValue = mask
            thisSerializer.writeInt32(maskTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setGesture(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPriorityGestureAttribute(gesture: GestureType, mask: Option<GestureMask>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (gesture.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let gestureForIdx0 = gesture.getValue0()
            TapGestureInterface_serializer.write(thisSerializer, gestureForIdx0);
        } else if (gesture.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let gestureForIdx1 = gesture.getValue1()
            LongPressGestureInterface_serializer.write(thisSerializer, gestureForIdx1);
        } else if (gesture.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let gestureForIdx2 = gesture.getValue2()
            PanGestureInterface_serializer.write(thisSerializer, gestureForIdx2);
        } else if (gesture.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let gestureForIdx3 = gesture.getValue3()
            PinchGestureInterface_serializer.write(thisSerializer, gestureForIdx3);
        } else if (gesture.getSelector() == 4) {
            thisSerializer.writeInt8(Int8(4));
            let gestureForIdx4 = gesture.getValue4()
            SwipeGestureInterface_serializer.write(thisSerializer, gestureForIdx4);
        } else if (gesture.getSelector() == 5) {
            thisSerializer.writeInt8(Int8(5));
            let gestureForIdx5 = gesture.getValue5()
            RotationGestureInterface_serializer.write(thisSerializer, gestureForIdx5);
        } else if (gesture.getSelector() == 6) {
            thisSerializer.writeInt8(Int8(6));
            let gestureForIdx6 = gesture.getValue6()
            GestureGroupInterface_serializer.write(thisSerializer, gestureForIdx6);
        }
        if (mask.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let maskTmpValue = mask
            thisSerializer.writeInt32(maskTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setPriorityGesture(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setParallelGestureAttribute(gesture: GestureType, mask: Option<GestureMask>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (gesture.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let gestureForIdx0 = gesture.getValue0()
            TapGestureInterface_serializer.write(thisSerializer, gestureForIdx0);
        } else if (gesture.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let gestureForIdx1 = gesture.getValue1()
            LongPressGestureInterface_serializer.write(thisSerializer, gestureForIdx1);
        } else if (gesture.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let gestureForIdx2 = gesture.getValue2()
            PanGestureInterface_serializer.write(thisSerializer, gestureForIdx2);
        } else if (gesture.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let gestureForIdx3 = gesture.getValue3()
            PinchGestureInterface_serializer.write(thisSerializer, gestureForIdx3);
        } else if (gesture.getSelector() == 4) {
            thisSerializer.writeInt8(Int8(4));
            let gestureForIdx4 = gesture.getValue4()
            SwipeGestureInterface_serializer.write(thisSerializer, gestureForIdx4);
        } else if (gesture.getSelector() == 5) {
            thisSerializer.writeInt8(Int8(5));
            let gestureForIdx5 = gesture.getValue5()
            RotationGestureInterface_serializer.write(thisSerializer, gestureForIdx5);
        } else if (gesture.getSelector() == 6) {
            thisSerializer.writeInt8(Int8(6));
            let gestureForIdx6 = gesture.getValue6()
            GestureGroupInterface_serializer.write(thisSerializer, gestureForIdx6);
        }
        if (mask.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let maskTmpValue = mask
            thisSerializer.writeInt32(maskTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setParallelGesture(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBlurAttribute(blurRadius: Option<Float64>, options: Option<BlurOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (blurRadius.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let blurRadiusTmpValue = blurRadius
            thisSerializer.writeNumber(blurRadiusTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BlurOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (sysOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sysOptionsTmpValue = sysOptions
            SystemAdaptiveOptions_serializer.write(thisSerializer, sysOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBlur(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLinearGradientBlurAttribute(blurRadius: Option<Float64>, options: Option<LinearGradientBlurOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (blurRadius.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let blurRadiusTmpValue = blurRadius
            thisSerializer.writeNumber(blurRadiusTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            LinearGradientBlurOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setLinearGradientBlur(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMotionBlurAttribute(motionBlur: Option<MotionBlurOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (motionBlur.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let motionBlurTmpValue = motionBlur
            MotionBlurOptions_serializer.write(thisSerializer, motionBlurTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setMotionBlur(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBrightnessAttribute(brightness: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (brightness.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let brightnessTmpValue = brightness
            thisSerializer.writeNumber(brightnessTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBrightness(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setContrastAttribute(contrast: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (contrast.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let contrastTmpValue = contrast
            thisSerializer.writeNumber(contrastTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setContrast(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setGrayscaleAttribute(grayscale: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (grayscale.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let grayscaleTmpValue = grayscale
            thisSerializer.writeNumber(grayscaleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setGrayscale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setColorBlendAttribute(color: Option<Union_Color_String_Resource>): Unit {
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
                thisSerializer.writeString(colorTmpValueForIdx1);
            } else if (colorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let colorTmpValueForIdx2 = colorTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", colorTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setColorBlend(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSaturateAttribute(saturate: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (saturate.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let saturateTmpValue = saturate
            thisSerializer.writeNumber(saturateTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setSaturate(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSepiaAttribute(sepia: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (sepia.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sepiaTmpValue = sepia
            thisSerializer.writeNumber(sepiaTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setSepia(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setInvertAttribute(options: Option<Union_Number_InvertOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            if (optionsTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let optionsTmpValueForIdx0 = optionsTmpValue.getValue0()
                thisSerializer.writeNumber(optionsTmpValueForIdx0);
            } else if (optionsTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let optionsTmpValueForIdx1 = optionsTmpValue.getValue1()
                InvertOptions_serializer.write(thisSerializer, optionsTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setInvert(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSystemBarEffectAttribute(): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setSystemBarEffect(this.peer.ptr);
    }
    public open func setHueRotateAttribute(rotation: Option<Union_Number_String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (rotation.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rotationTmpValue = rotation
            if (rotationTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let rotationTmpValueForIdx0 = rotationTmpValue.getValue0()
                thisSerializer.writeNumber(rotationTmpValueForIdx0);
            } else if (rotationTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let rotationTmpValueForIdx1 = rotationTmpValue.getValue1()
                thisSerializer.writeString(rotationTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setHueRotate(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setUseShadowBatchingAttribute(use: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (use.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let useTmpValue = use
            thisSerializer.writeBoolean(useTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setUseShadowBatching(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setUseEffectAttribute(useEffect: Option<Bool>, effectType: Option<EffectType>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (useEffect.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let useEffectTmpValue = useEffect
            thisSerializer.writeBoolean(useEffectTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (effectType.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let effectTypeTmpValue = effectType
            thisSerializer.writeInt32(effectTypeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setUseEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackdropBlurAttribute(radius: Option<Float64>, options: Option<BlurOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (radius.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let radiusTmpValue = radius
            thisSerializer.writeNumber(radiusTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BlurOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (sysOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sysOptionsTmpValue = sysOptions
            SystemAdaptiveOptions_serializer.write(thisSerializer, sysOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackdropBlur(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRenderGroupAttribute(isGroup: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isGroup.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isGroupTmpValue = isGroup
            thisSerializer.writeBoolean(isGroupTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setRenderGroup(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFreezeAttribute(freeze: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (freeze.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let freezeTmpValue = freeze
            thisSerializer.writeBoolean(freezeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setFreeze(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTranslateAttribute(translate: Option<TranslateOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (translate.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let translateTmpValue = translate
            TranslateOptions_serializer.write(thisSerializer, translateTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setTranslate(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setScaleAttribute(options: Option<ScaleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ScaleOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setGridSpanAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setGridSpan(this.peer.ptr, value);
    }
    public open func setGridOffsetAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setGridOffset(this.peer.ptr, value);
    }
    public open func setRotateAttribute(options: Option<Union_RotateOptions_RotateAngleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            if (optionsTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let optionsTmpValueForIdx0 = optionsTmpValue.getValue0()
                RotateOptions_serializer.write(thisSerializer, optionsTmpValueForIdx0);
            } else if (optionsTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let optionsTmpValueForIdx1 = optionsTmpValue.getValue1()
                RotateAngleOptions_serializer.write(thisSerializer, optionsTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setRotate(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTransformAttribute(value: TransformationMatrix): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TransformationMatrix_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setTransform(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTransform3DAttribute(transform: Option<Matrix4Transit>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (transform.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let transformTmpValue = transform
            thisSerializer.writeCustomObject("Any", transformTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setTransform3D(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAppearAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnAppear(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDisAppearAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnDisAppear(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAttachAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnAttach(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDetachAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnDetach(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAreaChangeAttribute(event: ((oldValue: Area, newValue: Area) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnAreaChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setVisibilityAttribute(value: Visibility): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setVisibility(this.peer.ptr, value.value);
    }
    public open func setFlexGrowAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setFlexGrow(this.peer.ptr, value);
    }
    public open func setFlexShrinkAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setFlexShrink(this.peer.ptr, value);
    }
    public open func setFlexBasisAttribute(value: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setFlexBasis(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAlignSelfAttribute(value: ItemAlign): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAlignSelf(this.peer.ptr, value.value);
    }
    public open func setLayoutGravityAttribute(alignment: LocalizedAlignment): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setLayoutGravity(this.peer.ptr, alignment.value);
    }
    public open func setDisplayPriorityAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setDisplayPriority(this.peer.ptr, value);
    }
    public open func setZIndexAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setZIndex(this.peer.ptr, value);
    }
    public open func setSharedTransitionAttribute(id: String, options: Option<sharedTransitionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            sharedTransitionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setSharedTransition(this.peer.ptr, id, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDirectionAttribute(value: Direction): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setDirection(this.peer.ptr, value.value);
    }
    public open func setAlignAttribute(alignment: Union_Alignment_LocalizedAlignment): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (alignment.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let alignmentForIdx0 = alignment.getValue0()
            thisSerializer.writeInt32(alignmentForIdx0.value);
        } else if (alignment.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let alignmentForIdx1 = alignment.getValue1()
            thisSerializer.writeInt32(alignmentForIdx1.value);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setAlign(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPositionAttribute(value: Union_Position_Edges_LocalizedEdges): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            Position_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            Edges_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            LocalizedEdges_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setPosition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMarkAnchorAttribute(value: Union_Position_LocalizedPosition): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            Position_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            LocalizedPosition_serializer.write(thisSerializer, valueForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setMarkAnchor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOffsetAttribute(value: Union_Position_Edges_LocalizedEdges): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            Position_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            Edges_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            LocalizedEdges_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOffset(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnabledAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setEnabled(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setUseSizeTypeAttribute(value: Literal_Union_Number_Literal_Number_offset_span_lg_md_sm_xs): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let valueXs = value.xs
        if (valueXs.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueXsTmpValue = valueXs
            if (valueXsTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueXsTmpValueForIdx0 = valueXsTmpValue.getValue0()
                thisSerializer.writeNumber(valueXsTmpValueForIdx0);
            } else if (valueXsTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueXsTmpValueForIdx1 = valueXsTmpValue.getValue1()
                let valueXsTmpValueForIdx1Span = valueXsTmpValueForIdx1.span
                thisSerializer.writeNumber(valueXsTmpValueForIdx1Span);
                let valueXsTmpValueForIdx1Offset = valueXsTmpValueForIdx1.offset
                thisSerializer.writeNumber(valueXsTmpValueForIdx1Offset);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueSm = value.sm
        if (valueSm.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueSmTmpValue = valueSm
            if (valueSmTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueSmTmpValueForIdx0 = valueSmTmpValue.getValue0()
                thisSerializer.writeNumber(valueSmTmpValueForIdx0);
            } else if (valueSmTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueSmTmpValueForIdx1 = valueSmTmpValue.getValue1()
                let valueSmTmpValueForIdx1Span = valueSmTmpValueForIdx1.span
                thisSerializer.writeNumber(valueSmTmpValueForIdx1Span);
                let valueSmTmpValueForIdx1Offset = valueSmTmpValueForIdx1.offset
                thisSerializer.writeNumber(valueSmTmpValueForIdx1Offset);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueMd = value.md
        if (valueMd.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueMdTmpValue = valueMd
            if (valueMdTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueMdTmpValueForIdx0 = valueMdTmpValue.getValue0()
                thisSerializer.writeNumber(valueMdTmpValueForIdx0);
            } else if (valueMdTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueMdTmpValueForIdx1 = valueMdTmpValue.getValue1()
                let valueMdTmpValueForIdx1Span = valueMdTmpValueForIdx1.span
                thisSerializer.writeNumber(valueMdTmpValueForIdx1Span);
                let valueMdTmpValueForIdx1Offset = valueMdTmpValueForIdx1.offset
                thisSerializer.writeNumber(valueMdTmpValueForIdx1Offset);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueLg = value.lg
        if (valueLg.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueLgTmpValue = valueLg
            if (valueLgTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueLgTmpValueForIdx0 = valueLgTmpValue.getValue0()
                thisSerializer.writeNumber(valueLgTmpValueForIdx0);
            } else if (valueLgTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueLgTmpValueForIdx1 = valueLgTmpValue.getValue1()
                let valueLgTmpValueForIdx1Span = valueLgTmpValueForIdx1.span
                thisSerializer.writeNumber(valueLgTmpValueForIdx1Span);
                let valueLgTmpValueForIdx1Offset = valueLgTmpValueForIdx1.offset
                thisSerializer.writeNumber(valueLgTmpValueForIdx1Offset);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setUseSizeType(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAlignRules0Attribute(value: AlignRuleOption): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AlignRuleOption_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setAlignRules0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAlignRules1Attribute(alignRule: LocalizedAlignRuleOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        LocalizedAlignRuleOptions_serializer.write(thisSerializer, alignRule);
        ArkUIGeneratedNativeModule._CommonMethod_setAlignRules1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setChainModeAttribute(direction: Axis, style: ChainStyle): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setChainMode(this.peer.ptr, direction.value, style.value);
    }
    public open func setAspectRatioAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAspectRatio(this.peer.ptr, value);
    }
    public open func setClickEffectAttribute(effect: Option<ClickEffect>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (effect.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let effectTmpValue = effect
            ClickEffect_serializer.write(thisSerializer, effectTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setClickEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDragStartAttribute(event: ((event: DragEvent, extraParams: String) -> Union_CustomBuilder_DragItemInfo)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnDragStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDragEnterAttribute(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnDragEnter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDragMoveAttribute(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnDragMove(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDragLeaveAttribute(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnDragLeave(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDrop0Attribute(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnDrop0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDrop1Attribute(eventCallback: OnDragEventCallback, dropOptions: Option<DropOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(eventCallback);
        if (dropOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let dropOptionsTmpValue = dropOptions
            DropOptions_serializer.write(thisSerializer, dropOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOnDrop1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDragEndAttribute(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnDragEnd(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDragSpringLoadingAttribute(callback_: Option<((parameter: SpringLoadingContext) -> Unit)>, configuration: Option<DragSpringLoadingConfiguration>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (configuration.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let configurationTmpValue = configuration
            thisSerializer.writeCustomObject("Any", configurationTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOnDragSpringLoading(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAllowDropAttribute(value: Option<ArrayList<UniformDataType>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            thisSerializer.writeInt32(Int32(valueTmpValue.size));
            for (valueTmpValueCounterI in 0..valueTmpValue.size) {
                let valueTmpValueTmpElement: UniformDataType = valueTmpValue[Int64(valueTmpValueCounterI)]
                thisSerializer.writeCustomObject("Any", valueTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setAllowDrop(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDraggableAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setDraggable(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setDragPreviewAttribute(preview: Union_CustomBuilder_DragItemInfo_String, config: Option<PreviewConfiguration>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (preview.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let previewForIdx0 = preview.getValue0()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(previewForIdx0));
        } else if (preview.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let previewForIdx1 = preview.getValue1()
            DragItemInfo_serializer.write(thisSerializer, previewForIdx1);
        } else if (preview.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let previewForIdx2 = preview.getValue2()
            thisSerializer.writeString(previewForIdx2);
        }
        if (config.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let configTmpValue = config
            PreviewConfiguration_serializer.write(thisSerializer, configTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setDragPreview(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDragPreviewOptionsAttribute(value: DragPreviewOptions, options: Option<DragInteractionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        DragPreviewOptions_serializer.write(thisSerializer, value);
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            DragInteractionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setDragPreviewOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPreDragAttribute(callback_: ((parameter: PreDragStatus) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnPreDrag(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOverlayAttribute(value: Union_String_CustomBuilder_ComponentContent, options: Option<OverlayOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueForIdx1));
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            OverlayOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOverlay(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setToolbarAttribute(value: CustomBuilder): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(value));
        ArkUIGeneratedNativeModule._CommonMethod_setToolbar(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLinearGradientAttribute(options: Option<LinearGradientOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            LinearGradientOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setLinearGradient(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSweepGradientAttribute(options: Option<SweepGradientOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SweepGradientOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setSweepGradient(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRadialGradientAttribute(options: Option<RadialGradientOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            RadialGradientOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setRadialGradient(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMotionPathAttribute(value: MotionPathOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        MotionPathOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonMethod_setMotionPath(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShadowAttribute(options: Option<Union_ShadowOptions_ShadowStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            if (optionsTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let optionsTmpValueForIdx0 = optionsTmpValue.getValue0()
                ShadowOptions_serializer.write(thisSerializer, optionsTmpValueForIdx0);
            } else if (optionsTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let optionsTmpValueForIdx1 = optionsTmpValue.getValue1()
                thisSerializer.writeInt32(optionsTmpValueForIdx1.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setShadow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBlendModeAttribute(mode: Option<BlendMode>, type_: Option<BlendApplyType>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (mode.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modeTmpValue = mode
            thisSerializer.writeInt32(modeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (type_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let typeTmpValue = type_
            thisSerializer.writeInt32(typeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBlendMode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAdvancedBlendModeAttribute(effect: Union_BlendMode_Blender, type_: Option<BlendApplyType>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (effect.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let effectForIdx0 = effect.getValue0()
            thisSerializer.writeInt32(effectForIdx0.value);
        } else if (effect.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let effectForIdx1 = effect.getValue1()
            thisSerializer.writeCustomObject("Any", effectForIdx1);
        }
        if (type_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let typeTmpValue = type_
            thisSerializer.writeInt32(typeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setAdvancedBlendMode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setClipAttribute(clip: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (clip.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let clipTmpValue = clip
            thisSerializer.writeBoolean(clipTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setClip(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setClipShapeAttribute(shape: Option<Union_CircleShape_EllipseShape_PathShape_RectShape>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (shape.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let shapeTmpValue = shape
            if (shapeTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let shapeTmpValueForIdx0 = shapeTmpValue.getValue0()
                thisSerializer.writeCustomObject("Any", shapeTmpValueForIdx0);
            } else if (shapeTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let shapeTmpValueForIdx1 = shapeTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", shapeTmpValueForIdx1);
            } else if (shapeTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let shapeTmpValueForIdx2 = shapeTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", shapeTmpValueForIdx2);
            } else if (shapeTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let shapeTmpValueForIdx3 = shapeTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", shapeTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setClipShape(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaskAttribute(mask: Option<ProgressMask>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (mask.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let maskTmpValue = mask
            ProgressMask_serializer.write(thisSerializer, maskTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setMask(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaskShapeAttribute(shape: Option<Union_CircleShape_EllipseShape_PathShape_RectShape>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (shape.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let shapeTmpValue = shape
            if (shapeTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let shapeTmpValueForIdx0 = shapeTmpValue.getValue0()
                thisSerializer.writeCustomObject("Any", shapeTmpValueForIdx0);
            } else if (shapeTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let shapeTmpValueForIdx1 = shapeTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", shapeTmpValueForIdx1);
            } else if (shapeTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let shapeTmpValueForIdx2 = shapeTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", shapeTmpValueForIdx2);
            } else if (shapeTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let shapeTmpValueForIdx3 = shapeTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", shapeTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setMaskShape(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setKeyAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setKey(this.peer.ptr, value);
    }
    public open func setIdAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setId(this.peer.ptr, value);
    }
    public open func setGeometryTransitionAttribute(id: String, options: Option<GeometryTransitionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            GeometryTransitionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setGeometryTransition(this.peer.ptr, id, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindTipsAttribute(message: TipsMessageType, options: Option<TipsOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (message.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let messageForIdx0 = message.getValue0()
            if (messageForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let messageForIdx0ForIdx0 = messageForIdx0.getValue0()
                thisSerializer.writeString(messageForIdx0ForIdx0);
            } else if (messageForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let messageForIdx0ForIdx1 = messageForIdx0.getValue1()
                thisSerializer.writeCustomObject("Any", messageForIdx0ForIdx1);
            }
        } else if (message.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let messageForIdx1 = message.getValue1()
            StyledString_serializer.write(thisSerializer, messageForIdx1);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            TipsOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindTips(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindPopupAttribute(show: Bool, popup: Union_PopupOptions_CustomPopupOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (popup.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let popupForIdx0 = popup.getValue0()
            PopupOptions_serializer.write(thisSerializer, popupForIdx0);
        } else if (popup.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let popupForIdx1 = popup.getValue1()
            CustomPopupOptions_serializer.write(thisSerializer, popupForIdx1);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindPopup(this.peer.ptr, if (show) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindMenu0Attribute(content: Union_Array_MenuElement_CustomBuilder, options: Option<MenuOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (content.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let contentForIdx0 = content.getValue0()
            thisSerializer.writeInt32(Int32(contentForIdx0.size));
            for (contentForIdx0CounterI in 0..contentForIdx0.size) {
                let contentForIdx0TmpElement: MenuElement = contentForIdx0[Int64(contentForIdx0CounterI)]
                MenuElement_serializer.write(thisSerializer, contentForIdx0TmpElement);
            }
        } else if (content.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let contentForIdx1 = content.getValue1()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(contentForIdx1));
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            MenuOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindMenu0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindMenu1Attribute(isShow: Bool, content: Union_Array_MenuElement_CustomBuilder, options: Option<MenuOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (content.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let contentForIdx0 = content.getValue0()
            thisSerializer.writeInt32(Int32(contentForIdx0.size));
            for (contentForIdx0CounterI in 0..contentForIdx0.size) {
                let contentForIdx0TmpElement: MenuElement = contentForIdx0[Int64(contentForIdx0CounterI)]
                MenuElement_serializer.write(thisSerializer, contentForIdx0TmpElement);
            }
        } else if (content.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let contentForIdx1 = content.getValue1()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(contentForIdx1));
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            MenuOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindMenu1(this.peer.ptr, if (isShow) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindContextMenu0Attribute(content: CustomBuilder, responseType: ResponseType, options: Option<ContextMenuOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(content));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ContextMenuOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindContextMenu0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), responseType.value);
        thisSerializer.release();
    }
    public open func setBindContextMenu1Attribute(isShown: Bool, content: CustomBuilder, options: Option<ContextMenuOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(content));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ContextMenuOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindContextMenu1(this.peer.ptr, if (isShown) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindContentCover0Attribute(isShow: Bool, builder: CustomBuilder, type_: Option<ModalTransition>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(builder));
        if (type_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let typeTmpValue = type_
            thisSerializer.writeInt32(typeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindContentCover0(this.peer.ptr, if (isShow) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindContentCover1Attribute(isShow: Bool, builder: CustomBuilder, options: Option<ContentCoverOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(builder));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ContentCoverOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindContentCover1(this.peer.ptr, if (isShow) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindSheetAttribute(isShow: Bool, builder: CustomBuilder, options: Option<SheetOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(builder));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SheetOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindSheet(this.peer.ptr, if (isShow) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRestoreIdAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setRestoreId(this.peer.ptr, value);
    }
    public open func setOnVisibleAreaChangeAttribute(ratios: ArrayList<Float64>, event: VisibleAreaChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(ratios.size));
        for (ratiosCounterI in 0..ratios.size) {
            let ratiosTmpElement: Float64 = ratios[Int64(ratiosCounterI)]
            thisSerializer.writeNumber(ratiosTmpElement);
        }
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnVisibleAreaChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnVisibleAreaApproximateChangeAttribute(options: VisibleAreaEventOptions, event: Option<VisibleAreaChangeCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        VisibleAreaEventOptions_serializer.write(thisSerializer, options);
        if (event.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let eventTmpValue = event
            thisSerializer.holdAndWriteCallback(eventTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOnVisibleAreaApproximateChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSphericalEffectAttribute(effect: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (effect.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let effectTmpValue = effect
            thisSerializer.writeNumber(effectTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setSphericalEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLightUpEffectAttribute(degree: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (degree.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let degreeTmpValue = degree
            thisSerializer.writeNumber(degreeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setLightUpEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPixelStretchEffectAttribute(options: Option<PixelStretchEffectOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            PixelStretchEffectOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setPixelStretchEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setKeyboardShortcutAttribute(value: Union_String_FunctionKey, keys: ArrayList<ModifierKey>, action: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(valueForIdx1.value);
        }
        thisSerializer.writeInt32(Int32(keys.size));
        for (keysCounterI in 0..keys.size) {
            let keysTmpElement: ModifierKey = keys[Int64(keysCounterI)]
            thisSerializer.writeInt32(keysTmpElement.value);
        }
        if (action.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let actionTmpValue = action
            thisSerializer.holdAndWriteCallback(actionTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setKeyboardShortcut(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAccessibilityGroup0Attribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityGroup0(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setAccessibilityGroup1Attribute(isGroup: Bool, accessibilityOptions: AccessibilityOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AccessibilityOptions_serializer.write(thisSerializer, accessibilityOptions);
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityGroup1(this.peer.ptr, if (isGroup) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAccessibilityText0Attribute(value: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityText0(this.peer.ptr, value);
    }
    public open func setAccessibilityText1Attribute(text: Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", text);
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityText1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAccessibilityNextFocusIdAttribute(nextId: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityNextFocusId(this.peer.ptr, nextId);
    }
    public open func setAccessibilityDefaultFocusAttribute(focus: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityDefaultFocus(this.peer.ptr, if (focus) { Int32(1) } else { Int32(0) });
    }
    public open func setAccessibilityUseSamePageAttribute(pageMode: AccessibilitySamePageMode): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityUseSamePage(this.peer.ptr, pageMode.value);
    }
    public open func setAccessibilityScrollTriggerableAttribute(isTriggerable: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityScrollTriggerable(this.peer.ptr, if (isTriggerable) { Int32(1) } else { Int32(0) });
    }
    public open func setAccessibilityRoleAttribute(role: AccessibilityRoleType): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityRole(this.peer.ptr, role.value);
    }
    public open func setOnAccessibilityFocusAttribute(callback_: AccessibilityFocusCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnAccessibilityFocus(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAccessibilityActionInterceptAttribute(callback_: AccessibilityActionInterceptCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnAccessibilityActionIntercept(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAccessibilityTextHintAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityTextHint(this.peer.ptr, value);
    }
    public open func setAccessibilityDescription0Attribute(value: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityDescription0(this.peer.ptr, value);
    }
    public open func setAccessibilityDescription1Attribute(description: Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", description);
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityDescription1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAccessibilityLevelAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityLevel(this.peer.ptr, value);
    }
    public open func setAccessibilityVirtualNodeAttribute(builder: CustomBuilder): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(builder));
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityVirtualNode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAccessibilityCheckedAttribute(isCheck: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityChecked(this.peer.ptr, if (isCheck) { Int32(1) } else { Int32(0) });
    }
    public open func setAccessibilitySelectedAttribute(isSelect: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilitySelected(this.peer.ptr, if (isSelect) { Int32(1) } else { Int32(0) });
    }
    public open func setObscuredAttribute(reasons: ArrayList<ObscuredReasons>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(reasons.size));
        for (reasonsCounterI in 0..reasons.size) {
            let reasonsTmpElement: ObscuredReasons = reasons[Int64(reasonsCounterI)]
            thisSerializer.writeInt32(reasonsTmpElement.value);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setObscured(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setReuseIdAttribute(id: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setReuseId(this.peer.ptr, id);
    }
    public open func setReuseAttribute(options: ReuseOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ReuseOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._CommonMethod_setReuse(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRenderFitAttribute(fitMode: Option<RenderFit>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fitMode.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fitModeTmpValue = fitMode
            thisSerializer.writeInt32(fitModeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setRenderFit(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setGestureModifierAttribute(modifier: GestureModifier): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setGestureModifier(this.peer.ptr, MaterializedBase.toPeerPtr(modifier));
    }
    public open func setBackgroundBrightnessAttribute(options: Option<BackgroundBrightnessOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BackgroundBrightnessOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundBrightness(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnGestureJudgeBeginAttribute(callback_: ((gestureInfo: GestureInfo, event: BaseGestureEvent) -> GestureJudgeResult)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnGestureJudgeBegin(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnGestureRecognizerJudgeBegin0Attribute(callback_: GestureRecognizerJudgeBeginCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnGestureRecognizerJudgeBegin0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnGestureRecognizerJudgeBegin1Attribute(callback_: GestureRecognizerJudgeBeginCallback, exposeInnerGesture: Bool): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnGestureRecognizerJudgeBegin1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), if (exposeInnerGesture) { Int32(1) } else { Int32(0) });
        thisSerializer.release();
    }
    public open func setShouldBuiltInRecognizerParallelWithAttribute(callback_: ShouldBuiltInRecognizerParallelWithCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setShouldBuiltInRecognizerParallelWith(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMonopolizeEventsAttribute(monopolize: Bool): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setMonopolizeEvents(this.peer.ptr, if (monopolize) { Int32(1) } else { Int32(0) });
    }
    public open func setOnTouchInterceptAttribute(callback_: ((parameter: TouchEvent) -> HitTestMode)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnTouchIntercept(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSizeChangeAttribute(event: SizeChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnSizeChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAccessibilityFocusDrawLevelAttribute(drawLevel: FocusDrawLevel): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setAccessibilityFocusDrawLevel(this.peer.ptr, drawLevel.value);
    }
    public open func setOnTouchTestDoneAttribute(callback_: TouchTestDoneCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnTouchTestDone(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
