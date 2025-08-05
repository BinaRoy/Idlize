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
public open class ArkSwiperPeer <: ArkCommonMethodPeer {
    protected ArkSwiperPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSwiperPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Swiper_construct(peerId, flags)
        let _peer = ArkSwiperPeer(_peerPtr, peerId, "Swiper", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSwiperOptionsAttribute(controller: Option<SwiperController>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (controller.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let controllerTmpValue = controller
            SwiperController_serializer.write(thisSerializer, controllerTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SwiperInterface_setSwiperOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIndexAttribute(value: Union_Number_Bindable): Unit {
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
        ArkUIGeneratedNativeModule._SwiperAttribute_setIndex(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAutoPlay0Attribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setAutoPlay0(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setAutoPlay1Attribute(autoPlay: Bool, options: AutoPlayOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AutoPlayOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._SwiperAttribute_setAutoPlay1(this.peer.ptr, if (autoPlay) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIntervalAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setInterval(this.peer.ptr, value);
    }
    public open func setIndicatorAttribute(indicator: Type_SwiperAttribute_indicator_indicator): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (indicator.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let indicatorForIdx0 = indicator.getValue0()
            IndicatorComponentController_serializer.write(thisSerializer, indicatorForIdx0);
        } else if (indicator.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let indicatorForIdx1 = indicator.getValue1()
            DotIndicator_serializer.write(thisSerializer, indicatorForIdx1);
        } else if (indicator.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let indicatorForIdx2 = indicator.getValue2()
            DigitIndicator_serializer.write(thisSerializer, indicatorForIdx2);
        } else if (indicator.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let indicatorForIdx3 = indicator.getValue3()
            thisSerializer.writeBoolean(indicatorForIdx3);
        }
        ArkUIGeneratedNativeModule._SwiperAttribute_setIndicator(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDisplayArrowAttribute(value: Union_ArrowStyle_Boolean, isHoverShow: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            ArrowStyle_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeBoolean(valueForIdx1);
        }
        if (isHoverShow.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isHoverShowTmpValue = isHoverShow
            thisSerializer.writeBoolean(isHoverShowTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SwiperAttribute_setDisplayArrow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLoopAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setLoop(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setDurationAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setDuration(this.peer.ptr, value);
    }
    public open func setVerticalAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setVertical(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setItemSpaceAttribute(value: Union_Number_String): Unit {
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
        ArkUIGeneratedNativeModule._SwiperAttribute_setItemSpace(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDisplayModeAttribute(value: SwiperDisplayMode): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setDisplayMode(this.peer.ptr, value.value);
    }
    public open func setCachedCount0Attribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setCachedCount0(this.peer.ptr, value);
    }
    public open func setCachedCount1Attribute(count: Float64, isShown: Bool): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setCachedCount1(this.peer.ptr, count, if (isShown) { Int32(1) } else { Int32(0) });
    }
    public open func setDisplayCountAttribute(value: Union_Number_String_SwiperAutoFill, swipeByGroup: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            SwiperAutoFill_serializer.write(thisSerializer, valueForIdx2);
        }
        if (swipeByGroup.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let swipeByGroupTmpValue = swipeByGroup
            thisSerializer.writeBoolean(swipeByGroupTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SwiperAttribute_setDisplayCount(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEffectModeAttribute(value: EdgeEffect): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setEffectMode(this.peer.ptr, value.value);
    }
    public open func setDisableSwipeAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setDisableSwipe(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setCurveAttribute(value: Union_Curve_String_ICurve): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            ICurve_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._SwiperAttribute_setCurve(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChangeAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelectedAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnSelected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIndicatorStyleAttribute(value: Option<IndicatorStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            IndicatorStyle_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SwiperAttribute_setIndicatorStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPrevMarginAttribute(value: Length, ignoreBlank: Option<Bool>): Unit {
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
        if (ignoreBlank.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let ignoreBlankTmpValue = ignoreBlank
            thisSerializer.writeBoolean(ignoreBlankTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SwiperAttribute_setPrevMargin(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNextMarginAttribute(value: Length, ignoreBlank: Option<Bool>): Unit {
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
        if (ignoreBlank.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let ignoreBlankTmpValue = ignoreBlank
            thisSerializer.writeBoolean(ignoreBlankTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SwiperAttribute_setNextMargin(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnUnselectedAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnUnselected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnScrollStateChangedAttribute(event: ((parameter: ScrollState) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnScrollStateChanged(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAnimationStartAttribute(event: OnSwiperAnimationStartCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnAnimationStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAnimationEndAttribute(event: OnSwiperAnimationEndCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnAnimationEnd(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnGestureSwipeAttribute(event: OnSwiperGestureSwipeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnGestureSwipe(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNestedScrollAttribute(value: SwiperNestedScrollMode): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setNestedScroll(this.peer.ptr, value.value);
    }
    public open func setCustomContentTransitionAttribute(transition: SwiperContentAnimatedTransition): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SwiperContentAnimatedTransition_serializer.write(thisSerializer, transition);
        ArkUIGeneratedNativeModule._SwiperAttribute_setCustomContentTransition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnContentDidScrollAttribute(handler: ContentDidScrollCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(handler);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnContentDidScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIndicatorInteractiveAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setIndicatorInteractive(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
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
        ArkUIGeneratedNativeModule._SwiperAttribute_setPageFlipMode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnContentWillScrollAttribute(handler: ContentWillScrollCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(handler);
        ArkUIGeneratedNativeModule._SwiperAttribute_setOnContentWillScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaintainVisibleContentPositionAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._SwiperAttribute_setMaintainVisibleContentPosition(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
    public open func set_onChangeEvent_indexAttribute(callback: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._SwiperAttribute_set_onChangeEvent_index(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
