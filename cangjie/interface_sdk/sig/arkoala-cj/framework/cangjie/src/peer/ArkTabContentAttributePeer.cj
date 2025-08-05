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
public open class ArkTabContentPeer <: ArkCommonMethodPeer {
    protected ArkTabContentPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkTabContentPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._TabContent_construct(peerId, flags)
        let _peer = ArkTabContentPeer(_peerPtr, peerId, "TabContent", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setTabContentOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._TabContentInterface_setTabContentOptions(this.peer.ptr);
    }
    public open func setTabBarAttribute(content: Type_TabContentAttribute_tabBar_content): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (content.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let contentForIdx0 = content.getValue0()
            thisSerializer.writeCustomObject("Any", contentForIdx0);
        } else if (content.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let contentForIdx1 = content.getValue1()
            SubTabBarStyle_serializer.write(thisSerializer, contentForIdx1);
        } else if (content.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let contentForIdx2 = content.getValue2()
            BottomTabBarStyle_serializer.write(thisSerializer, contentForIdx2);
        } else if (content.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let contentForIdx3 = content.getValue3()
            thisSerializer.writeString(contentForIdx3);
        } else if (content.getSelector() == 4) {
            thisSerializer.writeInt8(Int8(4));
            let contentForIdx4 = content.getValue4()
            thisSerializer.writeCustomObject("Any", contentForIdx4);
        } else if (content.getSelector() == 5) {
            thisSerializer.writeInt8(Int8(5));
            let contentForIdx5 = content.getValue5()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(contentForIdx5));
        } else if (content.getSelector() == 6) {
            thisSerializer.writeInt8(Int8(6));
            let contentForIdx6 = content.getValue6()
            TabBarOptions_serializer.write(thisSerializer, contentForIdx6);
        }
        ArkUIGeneratedNativeModule._TabContentAttribute_setTabBar(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillShowAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._TabContentAttribute_setOnWillShow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillHideAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._TabContentAttribute_setOnWillHide(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
