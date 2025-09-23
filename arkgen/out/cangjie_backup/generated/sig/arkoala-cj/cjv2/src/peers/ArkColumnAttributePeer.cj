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

package idlize.peers
import idlize.commonPara.*

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public open class ArkColumnPeer <: ArkCommonMethodPeer {
    init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    public  static func create(component: Option<ComponentBase>, flags!: Int32 = 0): ArkColumnPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Column_construct(peerId, flags)
        let _peer = ArkColumnPeer(_peerPtr, peerId, "Column", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public func columnOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._ColumnInterface_setColumnOptions(this.peer.ptr)
    }
    public func alignItemsAttribute(value: HorizontalAlign): Unit {
        ArkUIGeneratedNativeModule._ColumnAttribute_setAlignItems(this.peer.ptr, value.get())
    }
}
