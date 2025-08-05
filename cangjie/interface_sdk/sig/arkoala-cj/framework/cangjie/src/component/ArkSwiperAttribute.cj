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
public interface SwiperAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SwiperAttribute <: SwiperAttributeInterfaces {
    SwiperAttribute() {
    }
}
public interface SwiperAttribute {
}
public open class ArkSwiperComponent <: ArkCommonMethodComponent & SwiperAttribute {
    public open func getPeer(): ArkSwiperPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSwiperPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSwiperOptions(controller: Option<SwiperController>): Unit {
        if (this.checkPriority("setSwiperOptions")) {
            let controller_casted: Option<SwiperController> = if (let Some(controller) <- controller) {controller} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSwiperOptionsAttribute(controller_casted)
            return
        }
        return
    }
    )
    public open func index(value: Union_Number_Bindable): Unit {
        if (this.checkPriority("index")) {
            let value_casted: Union_Number_Bindable = value
            let thisPeer = this.getPeer()
            thisPeer.setIndexAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func autoPlay(value: Bool): Unit {
        if (this.checkPriority("autoPlay")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAutoPlay0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func autoPlay(autoPlay: Bool, options: AutoPlayOptions): Unit {
        if (this.checkPriority("autoPlay")) {
            let autoPlay_casted: Bool = autoPlay
            let options_casted: AutoPlayOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setAutoPlay1Attribute(autoPlay_casted, options_casted)
            return
        }
        return
    }
    )
    public open func interval(value: Float64): Unit {
        if (this.checkPriority("interval")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setIntervalAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func indicator(indicator: Type_SwiperAttribute_indicator_indicator): Unit {
        if (this.checkPriority("indicator")) {
            let indicator_casted: Type_SwiperAttribute_indicator_indicator = indicator
            let thisPeer = this.getPeer()
            thisPeer.setIndicatorAttribute(indicator_casted)
            return
        }
        return
    }
    )
    public open func displayArrow(value: Union_ArrowStyle_Boolean, isHoverShow: Option<Bool>): Unit {
        if (this.checkPriority("displayArrow")) {
            let value_casted: Union_ArrowStyle_Boolean = value
            let isHoverShow_casted: Option<Bool> = if (let Some(isHoverShow) <- isHoverShow) {isHoverShow} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDisplayArrowAttribute(value_casted, isHoverShow_casted)
            return
        }
        return
    }
    )
    public open func loop(value: Bool): Unit {
        if (this.checkPriority("loop")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setLoopAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func duration(value: Float64): Unit {
        if (this.checkPriority("duration")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setDurationAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func vertical(value: Bool): Unit {
        if (this.checkPriority("vertical")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setVerticalAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func itemSpace(value: Union_Number_String): Unit {
        if (this.checkPriority("itemSpace")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setItemSpaceAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func displayMode(value: SwiperDisplayMode): Unit {
        if (this.checkPriority("displayMode")) {
            let value_casted: SwiperDisplayMode = value
            let thisPeer = this.getPeer()
            thisPeer.setDisplayModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func cachedCount(value: Float64): Unit {
        if (this.checkPriority("cachedCount")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setCachedCount0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func cachedCount(count: Float64, isShown: Bool): Unit {
        if (this.checkPriority("cachedCount")) {
            let count_casted: Float64 = count
            let isShown_casted: Bool = isShown
            let thisPeer = this.getPeer()
            thisPeer.setCachedCount1Attribute(count_casted, isShown_casted)
            return
        }
        return
    }
    )
    public open func displayCount(value: Union_Number_String_SwiperAutoFill, swipeByGroup: Option<Bool>): Unit {
        if (this.checkPriority("displayCount")) {
            let value_casted: Union_Number_String_SwiperAutoFill = value
            let swipeByGroup_casted: Option<Bool> = if (let Some(swipeByGroup) <- swipeByGroup) {swipeByGroup} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDisplayCountAttribute(value_casted, swipeByGroup_casted)
            return
        }
        return
    }
    )
    public open func effectMode(value: EdgeEffect): Unit {
        if (this.checkPriority("effectMode")) {
            let value_casted: EdgeEffect = value
            let thisPeer = this.getPeer()
            thisPeer.setEffectModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func disableSwipe(value: Bool): Unit {
        if (this.checkPriority("disableSwipe")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setDisableSwipeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func curve(value: Union_Curve_String_ICurve): Unit {
        if (this.checkPriority("curve")) {
            let value_casted: Union_Curve_String_ICurve = value
            let thisPeer = this.getPeer()
            thisPeer.setCurveAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onChange(event: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let event_casted: ((parameter: Float64) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onSelected(event: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onSelected")) {
            let event_casted: ((parameter: Float64) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnSelectedAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func indicatorStyle(value: Option<IndicatorStyle>): Unit {
        if (this.checkPriority("indicatorStyle")) {
            let value_casted: Option<IndicatorStyle> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setIndicatorStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func prevMargin(value: Length, ignoreBlank: Option<Bool>): Unit {
        if (this.checkPriority("prevMargin")) {
            let value_casted: Length = value
            let ignoreBlank_casted: Option<Bool> = if (let Some(ignoreBlank) <- ignoreBlank) {ignoreBlank} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPrevMarginAttribute(value_casted, ignoreBlank_casted)
            return
        }
        return
    }
    )
    public open func nextMargin(value: Length, ignoreBlank: Option<Bool>): Unit {
        if (this.checkPriority("nextMargin")) {
            let value_casted: Length = value
            let ignoreBlank_casted: Option<Bool> = if (let Some(ignoreBlank) <- ignoreBlank) {ignoreBlank} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setNextMarginAttribute(value_casted, ignoreBlank_casted)
            return
        }
        return
    }
    )
    public open func onUnselected(event: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onUnselected")) {
            let event_casted: ((parameter: Float64) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnUnselectedAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onScrollStateChanged(event: ((parameter: ScrollState) -> Unit)): Unit {
        if (this.checkPriority("onScrollStateChanged")) {
            let event_casted: ((parameter: ScrollState) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnScrollStateChangedAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onAnimationStart(event: OnSwiperAnimationStartCallback): Unit {
        if (this.checkPriority("onAnimationStart")) {
            let event_casted: OnSwiperAnimationStartCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnAnimationStartAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onAnimationEnd(event: OnSwiperAnimationEndCallback): Unit {
        if (this.checkPriority("onAnimationEnd")) {
            let event_casted: OnSwiperAnimationEndCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnAnimationEndAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onGestureSwipe(event: OnSwiperGestureSwipeCallback): Unit {
        if (this.checkPriority("onGestureSwipe")) {
            let event_casted: OnSwiperGestureSwipeCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnGestureSwipeAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func nestedScroll(value: SwiperNestedScrollMode): Unit {
        if (this.checkPriority("nestedScroll")) {
            let value_casted: SwiperNestedScrollMode = value
            let thisPeer = this.getPeer()
            thisPeer.setNestedScrollAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func customContentTransition(transition: SwiperContentAnimatedTransition): Unit {
        if (this.checkPriority("customContentTransition")) {
            let transition_casted: SwiperContentAnimatedTransition = transition
            let thisPeer = this.getPeer()
            thisPeer.setCustomContentTransitionAttribute(transition_casted)
            return
        }
        return
    }
    )
    public open func onContentDidScroll(handler: ContentDidScrollCallback): Unit {
        if (this.checkPriority("onContentDidScroll")) {
            let handler_casted: ContentDidScrollCallback = handler
            let thisPeer = this.getPeer()
            thisPeer.setOnContentDidScrollAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func indicatorInteractive(value: Bool): Unit {
        if (this.checkPriority("indicatorInteractive")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setIndicatorInteractiveAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func pageFlipMode(mode: Option<PageFlipMode>): Unit {
        if (this.checkPriority("pageFlipMode")) {
            let mode_casted: Option<PageFlipMode> = if (let Some(mode) <- mode) {mode} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPageFlipModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func onContentWillScroll(handler: ContentWillScrollCallback): Unit {
        if (this.checkPriority("onContentWillScroll")) {
            let handler_casted: ContentWillScrollCallback = handler
            let thisPeer = this.getPeer()
            thisPeer.setOnContentWillScrollAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func maintainVisibleContentPosition(enabled: Bool): Unit {
        if (this.checkPriority("maintainVisibleContentPosition")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setMaintainVisibleContentPositionAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_index(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_index")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_indexAttribute(callback_casted)
            return
        }
        return
    }
    )
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class SwiperAttributeStyleHolder {
    var value: ?((attributes: SwiperAttribute) -> Unit)
    init (value: ?((attributes: SwiperAttribute) -> Unit)) {
        this.value = value
    }
}

class SwiperAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSwiper(
        style: ?((attributes: SwiperAttribute) -> Unit),
        content_: ?(() -> Unit),
controller: Option<SwiperController>
    ): Unit {
        let styleHolder = SwiperAttributeStyleHolder(style)
        let contentHolder = SwiperAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSwiperComponent()
        })
        NodeAttach<ArkSwiperPeer>({ => ArkSwiperPeer.create(receiver, 0) }) {
            receiver.setSwiperOptions(controller)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
