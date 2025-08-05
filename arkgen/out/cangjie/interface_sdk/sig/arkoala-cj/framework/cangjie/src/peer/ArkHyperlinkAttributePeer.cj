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
public open class ArkHyperlinkPeer <: ArkCommonMethodPeer {
    protected ArkHyperlinkPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkHyperlinkPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Hyperlink_construct(peerId, flags)
        let _peer = ArkHyperlinkPeer(_peerPtr, peerId, "Hyperlink", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setHyperlinkOptionsAttribute(address: Union_String_Resource, content: Option<Union_String_Resource>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (address.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let addressForIdx0 = address.getValue0()
            thisSerializer.writeString(addressForIdx0);
        } else if (address.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let addressForIdx1 = address.getValue1()
            thisSerializer.writeCustomObject("Any", addressForIdx1);
        }
        if (content.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let contentTmpValue = content
            if (contentTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let contentTmpValueForIdx0 = contentTmpValue.getValue0()
                thisSerializer.writeString(contentTmpValueForIdx0);
            } else if (contentTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let contentTmpValueForIdx1 = contentTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", contentTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._HyperlinkInterface_setHyperlinkOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setColorAttribute(value: Union_Color_Number_String_Resource): Unit {
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
        ArkUIGeneratedNativeModule._HyperlinkAttribute_setColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
