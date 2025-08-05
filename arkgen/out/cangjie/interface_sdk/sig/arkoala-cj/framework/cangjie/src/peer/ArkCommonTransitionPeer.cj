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
public open class ArkCommonTransitionPeer <: PeerNode {
    protected ArkCommonTransitionPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCommonTransitionPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._CommonTransition_construct(peerId, flags)
        let _peer = ArkCommonTransitionPeer(_peerPtr, peerId, "CommonTransition", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSlideAttribute(value: SlideEffect): Unit {
        ArkUIGeneratedNativeModule._CommonTransition_setSlide(this.peer.ptr, value.value);
    }
    public open func setTranslateAttribute(value: TranslateOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TranslateOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonTransition_setTranslate(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setScaleAttribute(value: ScaleOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ScaleOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CommonTransition_setScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOpacityAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonTransition_setOpacity(this.peer.ptr, value);
    }
}
