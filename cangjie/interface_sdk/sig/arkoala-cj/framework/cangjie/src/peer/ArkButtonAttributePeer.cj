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
public open class ArkButtonPeer <: ArkCommonMethodPeer {
    protected ArkButtonPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkButtonPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Button_construct(peerId, flags)
        let _peer = ArkButtonPeer(_peerPtr, peerId, "Button", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setButtonOptions0Attribute(): Unit {
        ArkUIGeneratedNativeModule._ButtonInterface_setButtonOptions0(this.peer.ptr);
    }
    public open func setButtonOptions1Attribute(options: ButtonOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ButtonOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._ButtonInterface_setButtonOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setButtonOptions2Attribute(label: ResourceStr, options: Option<ButtonOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (label.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let labelForIdx0 = label.getValue0()
            thisSerializer.writeString(labelForIdx0);
        } else if (label.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let labelForIdx1 = label.getValue1()
            thisSerializer.writeCustomObject("Any", labelForIdx1);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ButtonOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ButtonInterface_setButtonOptions2(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTypeAttribute(value: ButtonType): Unit {
        ArkUIGeneratedNativeModule._ButtonAttribute_setType(this.peer.ptr, value.value);
    }
    public open func setStateEffectAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ButtonAttribute_setStateEffect(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setButtonStyleAttribute(value: ButtonStyleMode): Unit {
        ArkUIGeneratedNativeModule._ButtonAttribute_setButtonStyle(this.peer.ptr, value.value);
    }
    public open func setControlSizeAttribute(value: ControlSize): Unit {
        ArkUIGeneratedNativeModule._ButtonAttribute_setControlSize(this.peer.ptr, value.value);
    }
    public open func setRoleAttribute(value: ButtonRole): Unit {
        ArkUIGeneratedNativeModule._ButtonAttribute_setRole(this.peer.ptr, value.value);
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
        ArkUIGeneratedNativeModule._ButtonAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._ButtonAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._ButtonAttribute_setFontWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontStyleAttribute(value: FontStyle): Unit {
        ArkUIGeneratedNativeModule._ButtonAttribute_setFontStyle(this.peer.ptr, value.value);
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
        ArkUIGeneratedNativeModule._ButtonAttribute_setFontFamily(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setContentModifierAttribute(modifier: ContentModifier<ButtonConfiguration>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(modifier);
        ArkUIGeneratedNativeModule._ButtonAttribute_setContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLabelStyleAttribute(value: LabelStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        LabelStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._ButtonAttribute_setLabelStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._ButtonAttribute_setMinFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._ButtonAttribute_setMaxFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
