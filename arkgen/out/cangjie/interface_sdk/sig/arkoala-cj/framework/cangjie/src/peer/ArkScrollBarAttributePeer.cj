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
public open class ArkScrollBarPeer <: ArkCommonMethodPeer {
    protected ArkScrollBarPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkScrollBarPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._ScrollBar_construct(peerId, flags)
        let _peer = ArkScrollBarPeer(_peerPtr, peerId, "ScrollBar", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setScrollBarOptionsAttribute(value: ScrollBarOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ScrollBarOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._ScrollBarInterface_setScrollBarOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableNestedScrollAttribute(enabled: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enabled.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enabledTmpValue = enabled
            thisSerializer.writeBoolean(enabledTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ScrollBarAttribute_setEnableNestedScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setScrollBarColorAttribute(color: Option<ColorMetrics>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let colorTmpValue = color
            thisSerializer.writeCustomObject("Any", colorTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ScrollBarAttribute_setScrollBarColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
