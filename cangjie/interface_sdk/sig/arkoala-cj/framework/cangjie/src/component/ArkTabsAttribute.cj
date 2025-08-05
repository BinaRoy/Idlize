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
public interface TabsAttributeInterfaces <: CommonMethodInterfaces {
}
public open class TabsAttribute <: TabsAttributeInterfaces {
    TabsAttribute() {
    }
}
public interface TabsAttribute {
}
public open class ArkTabsComponent <: ArkCommonMethodComponent & TabsAttribute {
    public open func getPeer(): ArkTabsPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTabsPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setTabsOptions(options: Option<TabsOptions>): Unit {
        if (this.checkPriority("setTabsOptions")) {
            let options_casted: Option<TabsOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTabsOptionsAttribute(options_casted)
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
    public open func barPosition(value: BarPosition): Unit {
        if (this.checkPriority("barPosition")) {
            let value_casted: BarPosition = value
            let thisPeer = this.getPeer()
            thisPeer.setBarPositionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func scrollable(value: Bool): Unit {
        if (this.checkPriority("scrollable")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setScrollableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func barModeFixed(): Unit {
        if (this.checkPriority("barModeFixed")) {
            let thisPeer = this.getPeer()
            thisPeer.setBarModeFixedAttribute()
            return
        }
        return
    }
    )
    public open func barModeScrollable(options: ScrollableBarModeOptions): Unit {
        if (this.checkPriority("barModeScrollable")) {
            let options_casted: ScrollableBarModeOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setBarModeScrollableAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func barMode(value: BarMode, options: Option<ScrollableBarModeOptions>): Unit {
        if (this.checkPriority("barMode")) {
            let value_casted: BarMode = value
            let options_casted: Option<ScrollableBarModeOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBarModeAttribute(value_casted, options_casted)
            return
        }
        return
    }
    )
    public open func barWidth(value: Length): Unit {
        if (this.checkPriority("barWidth")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setBarWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func barHeight(value: Length): Unit {
        if (this.checkPriority("barHeight")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setBarHeight0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func barHeight(height: Length, noMinHeightLimit: Bool): Unit {
        if (this.checkPriority("barHeight")) {
            let height_casted: Length = height
            let noMinHeightLimit_casted: Bool = noMinHeightLimit
            let thisPeer = this.getPeer()
            thisPeer.setBarHeight1Attribute(height_casted, noMinHeightLimit_casted)
            return
        }
        return
    }
    )
    public open func animationCurve(curve: Union_Curve_ICurve): Unit {
        if (this.checkPriority("animationCurve")) {
            let curve_casted: Union_Curve_ICurve = curve
            let thisPeer = this.getPeer()
            thisPeer.setAnimationCurveAttribute(curve_casted)
            return
        }
        return
    }
    )
    public open func animationDuration(value: Float64): Unit {
        if (this.checkPriority("animationDuration")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setAnimationDurationAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func animationMode(mode: Option<AnimationMode>): Unit {
        if (this.checkPriority("animationMode")) {
            let mode_casted: Option<AnimationMode> = if (let Some(mode) <- mode) {mode} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setAnimationModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func edgeEffect(edgeEffect: Option<EdgeEffect>): Unit {
        if (this.checkPriority("edgeEffect")) {
            let edgeEffect_casted: Option<EdgeEffect> = if (let Some(edgeEffect) <- edgeEffect) {edgeEffect} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEdgeEffectAttribute(edgeEffect_casted)
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
    public open func onTabBarClick(event: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onTabBarClick")) {
            let event_casted: ((parameter: Float64) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnTabBarClickAttribute(event_casted)
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
    public open func onAnimationStart(handler: OnTabsAnimationStartCallback): Unit {
        if (this.checkPriority("onAnimationStart")) {
            let handler_casted: OnTabsAnimationStartCallback = handler
            let thisPeer = this.getPeer()
            thisPeer.setOnAnimationStartAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func onAnimationEnd(handler: OnTabsAnimationEndCallback): Unit {
        if (this.checkPriority("onAnimationEnd")) {
            let handler_casted: OnTabsAnimationEndCallback = handler
            let thisPeer = this.getPeer()
            thisPeer.setOnAnimationEndAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func onGestureSwipe(handler: OnTabsGestureSwipeCallback): Unit {
        if (this.checkPriority("onGestureSwipe")) {
            let handler_casted: OnTabsGestureSwipeCallback = handler
            let thisPeer = this.getPeer()
            thisPeer.setOnGestureSwipeAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func fadingEdge(value: Bool): Unit {
        if (this.checkPriority("fadingEdge")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setFadingEdgeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func divider(value: Option<DividerStyle>): Unit {
        if (this.checkPriority("divider")) {
            let value_casted: Option<DividerStyle> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDividerAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func barOverlap(value: Bool): Unit {
        if (this.checkPriority("barOverlap")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setBarOverlapAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func barBackgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("barBackgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBarBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func barGridAlign(value: BarGridColumnOptions): Unit {
        if (this.checkPriority("barGridAlign")) {
            let value_casted: BarGridColumnOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setBarGridAlignAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func customContentTransition(delegate: TabsCustomContentTransitionCallback): Unit {
        if (this.checkPriority("customContentTransition")) {
            let delegate_casted: TabsCustomContentTransitionCallback = delegate
            let thisPeer = this.getPeer()
            thisPeer.setCustomContentTransitionAttribute(delegate_casted)
            return
        }
        return
    }
    )
    public open func barBackgroundBlurStyle(value: BlurStyle): Unit {
        if (this.checkPriority("barBackgroundBlurStyle")) {
            let value_casted: BlurStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setBarBackgroundBlurStyle0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func barBackgroundBlurStyle(style: BlurStyle, options: BackgroundBlurStyleOptions): Unit {
        if (this.checkPriority("barBackgroundBlurStyle")) {
            let style_casted: BlurStyle = style
            let options_casted: BackgroundBlurStyleOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setBarBackgroundBlurStyle1Attribute(style_casted, options_casted)
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
    public open func barBackgroundEffect(options: BackgroundEffectOptions): Unit {
        if (this.checkPriority("barBackgroundEffect")) {
            let options_casted: BackgroundEffectOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setBarBackgroundEffectAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func onContentWillChange(handler: OnTabsContentWillChangeCallback): Unit {
        if (this.checkPriority("onContentWillChange")) {
            let handler_casted: OnTabsContentWillChangeCallback = handler
            let thisPeer = this.getPeer()
            thisPeer.setOnContentWillChangeAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func cachedMaxCount(count: Float64, mode: TabsCacheMode): Unit {
        if (this.checkPriority("cachedMaxCount")) {
            let count_casted: Float64 = count
            let mode_casted: TabsCacheMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setCachedMaxCountAttribute(count_casted, mode_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_index(callback: ((selected: Union_Number_Bindable) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_index")) {
            let callback_casted: ((selected: Union_Number_Bindable) -> Unit) = callback
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
class TabsAttributeStyleHolder {
    var value: ?((attributes: TabsAttribute) -> Unit)
    init (value: ?((attributes: TabsAttribute) -> Unit)) {
        this.value = value
    }
}

class TabsAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkTabs(
        style: ?((attributes: TabsAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<TabsOptions>
    ): Unit {
        let styleHolder = TabsAttributeStyleHolder(style)
        let contentHolder = TabsAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkTabsComponent()
        })
        NodeAttach<ArkTabsPeer>({ => ArkTabsPeer.create(receiver, 0) }) {
            receiver.setTabsOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
