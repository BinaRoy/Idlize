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
public open class ArkNavigatorPeer <: ArkCommonMethodPeer {
    protected ArkNavigatorPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkNavigatorPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Navigator_construct(peerId, flags)
        let _peer = ArkNavigatorPeer(_peerPtr, peerId, "Navigator", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setNavigatorOptions0Attribute(value: Option<Literal_String_target_NavigationType_type>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            let valueTmpValueTarget = valueTmpValue.target
            thisSerializer.writeString(valueTmpValueTarget);
            let valueTmpValueType = valueTmpValue.type_
            if (valueTmpValueType.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueTmpValueTypeTmpValue = valueTmpValueType
                thisSerializer.writeInt32(valueTmpValueTypeTmpValue.value);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigatorInterface_setNavigatorOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNavigatorOptions1Attribute(): Unit {
        ArkUIGeneratedNativeModule._NavigatorInterface_setNavigatorOptions1(this.peer.ptr);
    }
    public open func setActiveAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._NavigatorAttribute_setActive(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setTypeAttribute(value: NavigationType): Unit {
        ArkUIGeneratedNativeModule._NavigatorAttribute_setType(this.peer.ptr, value.value);
    }
    public open func setTargetAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._NavigatorAttribute_setTarget(this.peer.ptr, value);
    }
    public open func setParamsAttribute(value: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(value);
        ArkUIGeneratedNativeModule._NavigatorAttribute_setParams(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
