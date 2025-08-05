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
public open class ArkEmbeddedComponentPeer <: ArkCommonMethodPeer {
    protected ArkEmbeddedComponentPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkEmbeddedComponentPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._EmbeddedComponent_construct(peerId, flags)
        let _peer = ArkEmbeddedComponentPeer(_peerPtr, peerId, "EmbeddedComponent", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setEmbeddedComponentOptions0Attribute(loader: Any, type_: EmbeddedType): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", loader);
        ArkUIGeneratedNativeModule._EmbeddedComponentInterface_setEmbeddedComponentOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), type_.value);
        thisSerializer.release();
    }
    public open func setEmbeddedComponentOptions1Attribute(loader: Want, type_: EmbeddedType): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", loader);
        ArkUIGeneratedNativeModule._EmbeddedComponentInterface_setEmbeddedComponentOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), type_.value);
        thisSerializer.release();
    }
    public open func setOnTerminated0Attribute(callback_: ((parameter: TerminationInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._EmbeddedComponentAttribute_setOnTerminated0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnTerminated1Attribute(callback_: ((parameter: TerminationInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._EmbeddedComponentAttribute_setOnTerminated1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnError0Attribute(callback_: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", callback_);
        ArkUIGeneratedNativeModule._EmbeddedComponentAttribute_setOnError0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnError1Attribute(callback_: ErrorCallback<BusinessError>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", callback_);
        ArkUIGeneratedNativeModule._EmbeddedComponentAttribute_setOnError1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
