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
public open class ArkGaugePeer <: ArkCommonMethodPeer {
    protected ArkGaugePeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkGaugePeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Gauge_construct(peerId, flags)
        let _peer = ArkGaugePeer(_peerPtr, peerId, "Gauge", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setGaugeOptionsAttribute(options: GaugeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        GaugeOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._GaugeInterface_setGaugeOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setValueAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._GaugeAttribute_setValue(this.peer.ptr, value);
    }
    public open func setStartAngleAttribute(angle: Float64): Unit {
        ArkUIGeneratedNativeModule._GaugeAttribute_setStartAngle(this.peer.ptr, angle);
    }
    public open func setEndAngleAttribute(angle: Float64): Unit {
        ArkUIGeneratedNativeModule._GaugeAttribute_setEndAngle(this.peer.ptr, angle);
    }
    public open func setColorsAttribute(colors: Type_GaugeAttribute_colors_colors): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (colors.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let colorsForIdx0 = colors.getValue0()
            if (colorsForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let colorsForIdx0ForIdx0 = colorsForIdx0.getValue0()
                thisSerializer.writeInt32(colorsForIdx0ForIdx0.value);
            } else if (colorsForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let colorsForIdx0ForIdx1 = colorsForIdx0.getValue1()
                thisSerializer.writeNumber(colorsForIdx0ForIdx1);
            } else if (colorsForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let colorsForIdx0ForIdx2 = colorsForIdx0.getValue2()
                thisSerializer.writeString(colorsForIdx0ForIdx2);
            } else if (colorsForIdx0.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let colorsForIdx0ForIdx3 = colorsForIdx0.getValue3()
                thisSerializer.writeCustomObject("Any", colorsForIdx0ForIdx3);
            }
        } else if (colors.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let colorsForIdx1 = colors.getValue1()
            LinearGradient_serializer.write(thisSerializer, colorsForIdx1);
        } else if (colors.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let colorsForIdx2 = colors.getValue2()
            thisSerializer.writeInt32(Int32(colorsForIdx2.size));
            for (colorsForIdx2CounterI in 0..colorsForIdx2.size) {
                let colorsForIdx2TmpElement: Tuple_Union_ResourceColor_LinearGradient_Number = colorsForIdx2[Int64(colorsForIdx2CounterI)]
                let colorsForIdx2TmpElement_0 = colorsForIdx2TmpElement.value0
                if (colorsForIdx2TmpElement_0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let colorsForIdx2TmpElement_0ForIdx0 = colorsForIdx2TmpElement_0.getValue0()
                    if (colorsForIdx2TmpElement_0ForIdx0.getSelector() == 0) {
                        thisSerializer.writeInt8(Int8(0));
                        let colorsForIdx2TmpElement_0ForIdx0ForIdx0 = colorsForIdx2TmpElement_0ForIdx0.getValue0()
                        thisSerializer.writeInt32(colorsForIdx2TmpElement_0ForIdx0ForIdx0.value);
                    } else if (colorsForIdx2TmpElement_0ForIdx0.getSelector() == 1) {
                        thisSerializer.writeInt8(Int8(1));
                        let colorsForIdx2TmpElement_0ForIdx0ForIdx1 = colorsForIdx2TmpElement_0ForIdx0.getValue1()
                        thisSerializer.writeNumber(colorsForIdx2TmpElement_0ForIdx0ForIdx1);
                    } else if (colorsForIdx2TmpElement_0ForIdx0.getSelector() == 2) {
                        thisSerializer.writeInt8(Int8(2));
                        let colorsForIdx2TmpElement_0ForIdx0ForIdx2 = colorsForIdx2TmpElement_0ForIdx0.getValue2()
                        thisSerializer.writeString(colorsForIdx2TmpElement_0ForIdx0ForIdx2);
                    } else if (colorsForIdx2TmpElement_0ForIdx0.getSelector() == 3) {
                        thisSerializer.writeInt8(Int8(3));
                        let colorsForIdx2TmpElement_0ForIdx0ForIdx3 = colorsForIdx2TmpElement_0ForIdx0.getValue3()
                        thisSerializer.writeCustomObject("Any", colorsForIdx2TmpElement_0ForIdx0ForIdx3);
                    }
                } else if (colorsForIdx2TmpElement_0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let colorsForIdx2TmpElement_0ForIdx1 = colorsForIdx2TmpElement_0.getValue1()
                    LinearGradient_serializer.write(thisSerializer, colorsForIdx2TmpElement_0ForIdx1);
                }
                let colorsForIdx2TmpElement_1 = colorsForIdx2TmpElement.value1
                thisSerializer.writeNumber(colorsForIdx2TmpElement_1);
            }
        }
        ArkUIGeneratedNativeModule._GaugeAttribute_setColors(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStrokeWidthAttribute(length: Length): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (length.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let lengthForIdx0 = length.getValue0()
            thisSerializer.writeString(lengthForIdx0);
        } else if (length.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let lengthForIdx1 = length.getValue1()
            thisSerializer.writeNumber(lengthForIdx1);
        } else if (length.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let lengthForIdx2 = length.getValue2()
            thisSerializer.writeCustomObject("Any", lengthForIdx2);
        }
        ArkUIGeneratedNativeModule._GaugeAttribute_setStrokeWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDescriptionAttribute(value: CustomBuilder): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(value));
        ArkUIGeneratedNativeModule._GaugeAttribute_setDescription(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTrackShadowAttribute(value: GaugeShadowOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        GaugeShadowOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._GaugeAttribute_setTrackShadow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIndicatorAttribute(value: GaugeIndicatorOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        GaugeIndicatorOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._GaugeAttribute_setIndicator(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPrivacySensitiveAttribute(isPrivacySensitiveMode: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isPrivacySensitiveMode.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isPrivacySensitiveModeTmpValue = isPrivacySensitiveMode
            thisSerializer.writeBoolean(isPrivacySensitiveModeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._GaugeAttribute_setPrivacySensitive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setContentModifierAttribute(modifier: ContentModifier<GaugeConfiguration>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(modifier);
        ArkUIGeneratedNativeModule._GaugeAttribute_setContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
