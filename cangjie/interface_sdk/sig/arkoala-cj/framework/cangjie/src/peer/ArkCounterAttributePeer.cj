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
public open class ArkCounterPeer <: ArkCommonMethodPeer {
    protected ArkCounterPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCounterPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Counter_construct(peerId, flags)
        let _peer = ArkCounterPeer(_peerPtr, peerId, "Counter", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setCounterOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._CounterInterface_setCounterOptions(this.peer.ptr);
    }
    public open func setOnIncAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CounterAttribute_setOnInc(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDecAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CounterAttribute_setOnDec(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableDecAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CounterAttribute_setEnableDec(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableIncAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CounterAttribute_setEnableInc(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
}
