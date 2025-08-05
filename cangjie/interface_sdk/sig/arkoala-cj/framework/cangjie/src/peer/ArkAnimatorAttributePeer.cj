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
public open class ArkAnimatorPeer <: ArkCommonMethodPeer {
    protected ArkAnimatorPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkAnimatorPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Animator_construct(peerId, flags)
        let _peer = ArkAnimatorPeer(_peerPtr, peerId, "Animator", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setAnimatorOptionsAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._AnimatorInterface_setAnimatorOptions(this.peer.ptr, value);
    }
    public open func setStateAttribute(value: AnimationStatus): Unit {
        ArkUIGeneratedNativeModule._AnimatorAttribute_setState(this.peer.ptr, value.value);
    }
    public open func setDurationAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._AnimatorAttribute_setDuration(this.peer.ptr, value);
    }
    public open func setCurveAttribute(value: Curve): Unit {
        ArkUIGeneratedNativeModule._AnimatorAttribute_setCurve(this.peer.ptr, value.value);
    }
    public open func setDelayAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._AnimatorAttribute_setDelay(this.peer.ptr, value);
    }
    public open func setFillModeAttribute(value: FillMode): Unit {
        ArkUIGeneratedNativeModule._AnimatorAttribute_setFillMode(this.peer.ptr, value.value);
    }
    public open func setIterationsAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._AnimatorAttribute_setIterations(this.peer.ptr, value);
    }
    public open func setPlayModeAttribute(value: PlayMode): Unit {
        ArkUIGeneratedNativeModule._AnimatorAttribute_setPlayMode(this.peer.ptr, value.value);
    }
    public open func setMotionAttribute(value: SpringMotion): Unit {
        ArkUIGeneratedNativeModule._AnimatorAttribute_setMotion(this.peer.ptr, MaterializedBase.toPeerPtr(value));
    }
    public open func setOnStartAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._AnimatorAttribute_setOnStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPauseAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._AnimatorAttribute_setOnPause(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRepeatAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._AnimatorAttribute_setOnRepeat(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCancelAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._AnimatorAttribute_setOnCancel(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFinishAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._AnimatorAttribute_setOnFinish(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFrameAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._AnimatorAttribute_setOnFrame(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
