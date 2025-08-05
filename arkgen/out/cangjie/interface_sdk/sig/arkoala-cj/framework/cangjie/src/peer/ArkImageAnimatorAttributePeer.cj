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
public open class ArkImageAnimatorPeer <: ArkCommonMethodPeer {
    protected ArkImageAnimatorPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkImageAnimatorPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._ImageAnimator_construct(peerId, flags)
        let _peer = ArkImageAnimatorPeer(_peerPtr, peerId, "ImageAnimator", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setImageAnimatorOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorInterface_setImageAnimatorOptions(this.peer.ptr);
    }
    public open func setImagesAttribute(value: ArrayList<ImageFrameInfo>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size));
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: ImageFrameInfo = value[Int64(valueCounterI)]
            ImageFrameInfo_serializer.write(thisSerializer, valueTmpElement);
        }
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setImages(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStateAttribute(value: AnimationStatus): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setState(this.peer.ptr, value.value);
    }
    public open func setDurationAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setDuration(this.peer.ptr, value);
    }
    public open func setReverseAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setReverse(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setFixedSizeAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setFixedSize(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setPreDecodeAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setPreDecode(this.peer.ptr, value);
    }
    public open func setFillModeAttribute(value: FillMode): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setFillMode(this.peer.ptr, value.value);
    }
    public open func setIterationsAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setIterations(this.peer.ptr, value);
    }
    public open func setMonitorInvisibleAreaAttribute(monitorInvisibleArea: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setMonitorInvisibleArea(this.peer.ptr, if (monitorInvisibleArea) { Int32(1) } else { Int32(0) });
    }
    public open func setOnStartAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setOnStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPauseAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setOnPause(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRepeatAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setOnRepeat(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnCancelAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setOnCancel(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFinishAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ImageAnimatorAttribute_setOnFinish(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
