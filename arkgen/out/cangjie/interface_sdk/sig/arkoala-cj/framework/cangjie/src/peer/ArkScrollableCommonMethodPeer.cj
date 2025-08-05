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
public open class ArkScrollableCommonMethodPeer <: ArkCommonMethodPeer {
    protected ArkScrollableCommonMethodPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkScrollableCommonMethodPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._ScrollableCommonMethod_construct(peerId, flags)
        let _peer = ArkScrollableCommonMethodPeer(_peerPtr, peerId, "ScrollableCommonMethod", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setScrollBarAttribute(barState: BarState): Unit {
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setScrollBar(this.peer.ptr, barState.value);
    }
    public open func setScrollBarColorAttribute(color: Union_Color_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let colorForIdx0 = color.getValue0()
            thisSerializer.writeInt32(colorForIdx0.value);
        } else if (color.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let colorForIdx1 = color.getValue1()
            thisSerializer.writeNumber(colorForIdx1);
        } else if (color.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let colorForIdx2 = color.getValue2()
            thisSerializer.writeString(colorForIdx2);
        }
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setScrollBarColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setScrollBarWidthAttribute(value: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setScrollBarWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setScrollBarMarginAttribute(margin: ScrollBarMargin): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ScrollBarMargin_serializer.write(thisSerializer, margin);
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setScrollBarMargin(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEdgeEffectAttribute(edgeEffect: EdgeEffect, options: Option<EdgeEffectOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            EdgeEffectOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setEdgeEffect(this.peer.ptr, edgeEffect.value, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFadingEdgeAttribute(enabled: Option<Bool>, options: Option<FadingEdgeOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enabled.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enabledTmpValue = enabled
            thisSerializer.writeBoolean(enabledTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            FadingEdgeOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setFadingEdge(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNestedScrollAttribute(value: NestedScrollOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NestedScrollOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setNestedScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableScrollInteractionAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setEnableScrollInteraction(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setFrictionAttribute(value: Union_Number_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        }
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setFriction(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnScrollAttribute(event: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setOnScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillStopDraggingAttribute(handler: OnWillStopDraggingCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(handler);
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setOnWillStopDragging(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnReachStartAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setOnReachStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnReachEndAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setOnReachEnd(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnScrollStartAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setOnScrollStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnScrollStopAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setOnScrollStop(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFlingSpeedLimitAttribute(speedLimit: Float64): Unit {
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setFlingSpeedLimit(this.peer.ptr, speedLimit);
    }
    public open func setClipContentAttribute(clip: Union_ContentClipMode_RectShape): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (clip.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let clipForIdx0 = clip.getValue0()
            thisSerializer.writeInt32(clipForIdx0.value);
        } else if (clip.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let clipForIdx1 = clip.getValue1()
            thisSerializer.writeCustomObject("Any", clipForIdx1);
        }
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setClipContent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDigitalCrownSensitivityAttribute(sensitivity: Option<CrownSensitivity>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (sensitivity.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sensitivityTmpValue = sensitivity
            thisSerializer.writeInt32(sensitivityTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setDigitalCrownSensitivity(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackToTopAttribute(backToTop: Bool): Unit {
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setBackToTop(this.peer.ptr, if (backToTop) { Int32(1) } else { Int32(0) });
    }
}
