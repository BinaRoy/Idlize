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
public open class ArkTabsPeer <: ArkCommonMethodPeer {
    protected ArkTabsPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkTabsPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Tabs_construct(peerId, flags)
        let _peer = ArkTabsPeer(_peerPtr, peerId, "Tabs", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setTabsOptionsAttribute(options: Option<TabsOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            TabsOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TabsInterface_setTabsOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setVerticalAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setVertical(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setBarPositionAttribute(value: BarPosition): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setBarPosition(this.peer.ptr, value.value);
    }
    public open func setScrollableAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setScrollable(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setBarModeFixedAttribute(): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setBarModeFixed(this.peer.ptr);
    }
    public open func setBarModeScrollableAttribute(options: ScrollableBarModeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ScrollableBarModeOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._TabsAttribute_setBarModeScrollable(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBarModeAttribute(value: BarMode, options: Option<ScrollableBarModeOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ScrollableBarModeOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setBarMode(this.peer.ptr, value.value, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBarWidthAttribute(value: Length): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setBarWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBarHeight0Attribute(value: Length): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setBarHeight0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBarHeight1Attribute(height: Length, noMinHeightLimit: Bool): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (height.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let heightForIdx0 = height.getValue0()
            thisSerializer.writeString(heightForIdx0);
        } else if (height.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let heightForIdx1 = height.getValue1()
            thisSerializer.writeNumber(heightForIdx1);
        } else if (height.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let heightForIdx2 = height.getValue2()
            thisSerializer.writeCustomObject("Any", heightForIdx2);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setBarHeight1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), if (noMinHeightLimit) { Int32(1) } else { Int32(0) });
        thisSerializer.release();
    }
    public open func setAnimationCurveAttribute(curve: Union_Curve_ICurve): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (curve.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let curveForIdx0 = curve.getValue0()
            thisSerializer.writeInt32(curveForIdx0.value);
        } else if (curve.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let curveForIdx1 = curve.getValue1()
            ICurve_serializer.write(thisSerializer, curveForIdx1);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setAnimationCurve(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAnimationDurationAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setAnimationDuration(this.peer.ptr, value);
    }
    public open func setAnimationModeAttribute(mode: Option<AnimationMode>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (mode.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modeTmpValue = mode
            thisSerializer.writeInt32(modeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setAnimationMode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEdgeEffectAttribute(edgeEffect: Option<EdgeEffect>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (edgeEffect.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let edgeEffectTmpValue = edgeEffect
            thisSerializer.writeInt32(edgeEffectTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setEdgeEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChangeAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._TabsAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelectedAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._TabsAttribute_setOnSelected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnTabBarClickAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._TabsAttribute_setOnTabBarClick(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnUnselectedAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._TabsAttribute_setOnUnselected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAnimationStartAttribute(handler: OnTabsAnimationStartCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(handler);
        ArkUIGeneratedNativeModule._TabsAttribute_setOnAnimationStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAnimationEndAttribute(handler: OnTabsAnimationEndCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(handler);
        ArkUIGeneratedNativeModule._TabsAttribute_setOnAnimationEnd(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnGestureSwipeAttribute(handler: OnTabsGestureSwipeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(handler);
        ArkUIGeneratedNativeModule._TabsAttribute_setOnGestureSwipe(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFadingEdgeAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setFadingEdge(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setDividerAttribute(value: Option<DividerStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            DividerStyle_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setDivider(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBarOverlapAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setBarOverlap(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setBarBackgroundColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._TabsAttribute_setBarBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBarGridAlignAttribute(value: BarGridColumnOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        BarGridColumnOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._TabsAttribute_setBarGridAlign(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCustomContentTransitionAttribute(delegate: TabsCustomContentTransitionCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(delegate);
        ArkUIGeneratedNativeModule._TabsAttribute_setCustomContentTransition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBarBackgroundBlurStyle0Attribute(value: BlurStyle): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setBarBackgroundBlurStyle0(this.peer.ptr, value.value);
    }
    public open func setBarBackgroundBlurStyle1Attribute(style: BlurStyle, options: BackgroundBlurStyleOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        BackgroundBlurStyleOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._TabsAttribute_setBarBackgroundBlurStyle1(this.peer.ptr, style.value, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPageFlipModeAttribute(mode: Option<PageFlipMode>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (mode.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modeTmpValue = mode
            thisSerializer.writeInt32(modeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TabsAttribute_setPageFlipMode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBarBackgroundEffectAttribute(options: BackgroundEffectOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        BackgroundEffectOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._TabsAttribute_setBarBackgroundEffect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnContentWillChangeAttribute(handler: OnTabsContentWillChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(handler);
        ArkUIGeneratedNativeModule._TabsAttribute_setOnContentWillChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCachedMaxCountAttribute(count: Float64, mode: TabsCacheMode): Unit {
        ArkUIGeneratedNativeModule._TabsAttribute_setCachedMaxCount(this.peer.ptr, count, mode.value);
    }
    public open func set_onChangeEvent_indexAttribute(callback: ((selected: Union_Number_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._TabsAttribute_set_onChangeEvent_index(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
