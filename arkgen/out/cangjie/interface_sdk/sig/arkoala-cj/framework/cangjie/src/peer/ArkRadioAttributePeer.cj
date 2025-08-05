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
public open class ArkRadioPeer <: ArkCommonMethodPeer {
    protected ArkRadioPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkRadioPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Radio_construct(peerId, flags)
        let _peer = ArkRadioPeer(_peerPtr, peerId, "Radio", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setRadioOptionsAttribute(options: RadioOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RadioOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._RadioInterface_setRadioOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCheckedAttribute(isChecked: Option<Union_Boolean_Bindable>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isChecked.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isCheckedTmpValue = isChecked
            if (isCheckedTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let isCheckedTmpValueForIdx0 = isCheckedTmpValue.getValue0()
                thisSerializer.writeBoolean(isCheckedTmpValueForIdx0);
            } else if (isCheckedTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let isCheckedTmpValueForIdx1 = isCheckedTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", isCheckedTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RadioAttribute_setChecked(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChange0Attribute(callback_: ((parameter: Bool) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RadioAttribute_setOnChange0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChange1Attribute(callback_: Option<OnRadioChangeCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RadioAttribute_setOnChange1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRadioStyleAttribute(value: Option<RadioStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            RadioStyle_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RadioAttribute_setRadioStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setContentModifierAttribute(modifier: Option<ContentModifier<RadioConfiguration>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (modifier.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modifierTmpValue = modifier
            thisSerializer.holdAndWriteObject(modifierTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RadioAttribute_setContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_checkedAttribute(callback: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._RadioAttribute_set_onChangeEvent_checked(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
