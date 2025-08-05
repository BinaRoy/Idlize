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
public open class ArkFolderStackPeer <: ArkCommonMethodPeer {
    protected ArkFolderStackPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkFolderStackPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._FolderStack_construct(peerId, flags)
        let _peer = ArkFolderStackPeer(_peerPtr, peerId, "FolderStack", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setFolderStackOptionsAttribute(options: Option<FolderStackOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            FolderStackOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._FolderStackInterface_setFolderStackOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAlignContentAttribute(value: Alignment): Unit {
        ArkUIGeneratedNativeModule._FolderStackAttribute_setAlignContent(this.peer.ptr, value.value);
    }
    public open func setOnFolderStateChangeAttribute(callback_: OnFoldStatusChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._FolderStackAttribute_setOnFolderStateChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnHoverStatusChangeAttribute(handler: OnHoverStatusChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(handler);
        ArkUIGeneratedNativeModule._FolderStackAttribute_setOnHoverStatusChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableAnimationAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._FolderStackAttribute_setEnableAnimation(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setAutoHalfFoldAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._FolderStackAttribute_setAutoHalfFold(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
}
