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
public open class ArkNavRouterPeer <: ArkCommonMethodPeer {
    protected ArkNavRouterPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkNavRouterPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._NavRouter_construct(peerId, flags)
        let _peer = ArkNavRouterPeer(_peerPtr, peerId, "NavRouter", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setNavRouterOptions0Attribute(): Unit {
        ArkUIGeneratedNativeModule._NavRouterInterface_setNavRouterOptions0(this.peer.ptr);
    }
    public open func setNavRouterOptions1Attribute(value: RouteInfo): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RouteInfo_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._NavRouterInterface_setNavRouterOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnStateChangeAttribute(callback_: ((parameter: Bool) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavRouterAttribute_setOnStateChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setModeAttribute(mode: NavRouteMode): Unit {
        ArkUIGeneratedNativeModule._NavRouterAttribute_setMode(this.peer.ptr, mode.value);
    }
}
