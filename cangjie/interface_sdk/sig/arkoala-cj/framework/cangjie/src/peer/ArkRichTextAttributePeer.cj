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
public open class ArkRichTextPeer <: ArkCommonMethodPeer {
    protected ArkRichTextPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkRichTextPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._RichText_construct(peerId, flags)
        let _peer = ArkRichTextPeer(_peerPtr, peerId, "RichText", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setRichTextOptions0Attribute(content: Union_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (content.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let contentForIdx0 = content.getValue0()
            thisSerializer.writeString(contentForIdx0);
        } else if (content.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let contentForIdx1 = content.getValue1()
            thisSerializer.writeCustomObject("Any", contentForIdx1);
        }
        ArkUIGeneratedNativeModule._RichTextInterface_setRichTextOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRichTextOptions1Attribute(content: String): Unit {
        ArkUIGeneratedNativeModule._RichTextInterface_setRichTextOptions1(this.peer.ptr, content);
    }
    public open func setOnStartAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichTextAttribute_setOnStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCompleteAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RichTextAttribute_setOnComplete(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
