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
public open class ArkPasteButtonPeer <: ArkSecurityComponentMethodPeer {
    protected ArkPasteButtonPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkPasteButtonPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._PasteButton_construct(peerId, flags)
        let _peer = ArkPasteButtonPeer(_peerPtr, peerId, "PasteButton", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setPasteButtonOptions0Attribute(): Unit {
        ArkUIGeneratedNativeModule._PasteButtonInterface_setPasteButtonOptions0(this.peer.ptr);
    }
    public open func setPasteButtonOptions1Attribute(options: PasteButtonOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        PasteButtonOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._PasteButtonInterface_setPasteButtonOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnClickAttribute(event: PasteButtonCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._PasteButtonAttribute_setOnClick(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
