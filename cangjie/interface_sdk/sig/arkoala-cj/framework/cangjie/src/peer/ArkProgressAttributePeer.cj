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
public open class ArkProgressPeer <: ArkCommonMethodPeer {
    protected ArkProgressPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkProgressPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Progress_construct(peerId, flags)
        let _peer = ArkProgressPeer(_peerPtr, peerId, "Progress", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setProgressOptions0Attribute(options: ProgressOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ProgressOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._ProgressInterface_setProgressOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setProgressOptions1Attribute(options: ProgressOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ProgressOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._ProgressInterface_setProgressOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setValueAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._ProgressAttribute_setValue(this.peer.ptr, value);
    }
    public open func setColorAttribute(value: Union_ResourceColor_LinearGradient): Unit {
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
        ArkUIGeneratedNativeModule._ProgressAttribute_setColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStyleAttribute(value: Union_LinearStyleOptions_RingStyleOptions_CapsuleStyleOptions_ProgressStyleOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            LinearStyleOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            RingStyleOptions_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            CapsuleStyleOptions_serializer.write(thisSerializer, valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            ProgressStyleOptions_serializer.write(thisSerializer, valueForIdx3);
        }
        ArkUIGeneratedNativeModule._ProgressAttribute_setStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._ProgressAttribute_setPrivacySensitive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setContentModifierAttribute(modifier: ContentModifier<ProgressConfiguration>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(modifier);
        ArkUIGeneratedNativeModule._ProgressAttribute_setContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class ArkProgressPeer <: ArkCommonMethodPeer {
    protected ArkProgressPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkProgressPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Progress_construct(peerId, flags)
        let _peer = ArkProgressPeer(_peerPtr, peerId, "Progress", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setProgressOptions0Attribute(options: ProgressOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ProgressOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._ProgressInterface_setProgressOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setProgressOptions1Attribute(options: ProgressOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ProgressOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._ProgressInterface_setProgressOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setValueAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._ProgressAttribute_setValue(this.peer.ptr, value);
    }
    public open func setColorAttribute(value: Union_ResourceColor_LinearGradient): Unit {
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
        ArkUIGeneratedNativeModule._ProgressAttribute_setColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStyleAttribute(value: Type_ProgressAttribute_style_value): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            LinearStyleOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            RingStyleOptions_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            CapsuleStyleOptions_serializer.write(thisSerializer, valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            ProgressStyleOptions_serializer.write(thisSerializer, valueForIdx3);
        }
        ArkUIGeneratedNativeModule._ProgressAttribute_setStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._ProgressAttribute_setPrivacySensitive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setContentModifierAttribute(modifier: ContentModifier<ProgressConfiguration>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(modifier);
        ArkUIGeneratedNativeModule._ProgressAttribute_setContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
