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
public open class ArkSymbolGlyphPeer <: ArkCommonMethodPeer {
    protected ArkSymbolGlyphPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSymbolGlyphPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._SymbolGlyph_construct(peerId, flags)
        let _peer = ArkSymbolGlyphPeer(_peerPtr, peerId, "SymbolGlyph", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSymbolGlyphOptionsAttribute(value: Option<Resource>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            thisSerializer.writeCustomObject("Any", valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SymbolGlyphInterface_setSymbolGlyphOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontColorAttribute(value: ArrayList<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size));
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: ResourceColor = value[Int64(valueCounterI)]
            if (valueTmpElement.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpElementForIdx0 = valueTmpElement.getValue0()
                thisSerializer.writeInt32(valueTmpElementForIdx0.value);
            } else if (valueTmpElement.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpElementForIdx1 = valueTmpElement.getValue1()
                thisSerializer.writeNumber(valueTmpElementForIdx1);
            } else if (valueTmpElement.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueTmpElementForIdx2 = valueTmpElement.getValue2()
                thisSerializer.writeString(valueTmpElementForIdx2);
            } else if (valueTmpElement.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let valueTmpElementForIdx3 = valueTmpElement.getValue3()
                thisSerializer.writeCustomObject("Any", valueTmpElementForIdx3);
            }
        }
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShaderStyleAttribute(shaders: ArrayList<ShaderStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(shaders.size));
        for (shadersCounterI in 0..shaders.size) {
            let shadersTmpElement: ShaderStyle = shaders[Int64(shadersCounterI)]
            ShaderStyle_serializer.write(thisSerializer, shadersTmpElement);
        }
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setShaderStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontWeightAttribute(value: Union_Number_FontWeight_String): Unit {
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
            thisSerializer.writeString(valueForIdx2);
        }
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setFontWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEffectStrategyAttribute(value: SymbolEffectStrategy): Unit {
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setEffectStrategy(this.peer.ptr, value.value);
    }
    public open func setRenderingStrategyAttribute(value: SymbolRenderingStrategy): Unit {
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setRenderingStrategy(this.peer.ptr, value.value);
    }
    public open func setSymbolEffect0Attribute(symbolEffect: SymbolEffect, isActive: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SymbolEffect_serializer.write(thisSerializer, symbolEffect);
        if (isActive.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isActiveTmpValue = isActive
            thisSerializer.writeBoolean(isActiveTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setSymbolEffect0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSymbolEffect1Attribute(symbolEffect: SymbolEffect, triggerValue: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SymbolEffect_serializer.write(thisSerializer, symbolEffect);
        if (triggerValue.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let triggerValueTmpValue = triggerValue
            thisSerializer.writeNumber(triggerValueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setSymbolEffect1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setMinFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setMaxFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSymbolShadowAttribute(shadow: Option<ShadowOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (shadow.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let shadowTmpValue = shadow
            ShadowOptions_serializer.write(thisSerializer, shadowTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SymbolGlyphAttribute_setSymbolShadow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
