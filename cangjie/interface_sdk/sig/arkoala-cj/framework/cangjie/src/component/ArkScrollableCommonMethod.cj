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
public interface ScrollableCommonMethodInterfaces <: CommonMethodInterfaces {
}
public open class ScrollableCommonMethod <: ScrollableCommonMethodInterfaces {
    ScrollableCommonMethod() {
    }
}
public interface ScrollableCommonMethod {
}
public open class ArkScrollableCommonMethodComponent <: ArkCommonMethodComponent & ScrollableCommonMethod {
    public open func getPeer(): ArkScrollableCommonMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkScrollableCommonMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func scrollBar(barState: BarState): Unit {
        if (this.checkPriority("scrollBar")) {
            let barState_casted: BarState = barState
            let thisPeer = this.getPeer()
            thisPeer.setScrollBarAttribute(barState_casted)
            return
        }
        return
    }
    )
    public open func scrollBarColor(color: Union_Color_Number_String): Unit {
        if (this.checkPriority("scrollBarColor")) {
            let color_casted: Union_Color_Number_String = color
            let thisPeer = this.getPeer()
            thisPeer.setScrollBarColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func scrollBarWidth(value: Union_Number_String): Unit {
        if (this.checkPriority("scrollBarWidth")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setScrollBarWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func scrollBarMargin(margin: ScrollBarMargin): Unit {
        if (this.checkPriority("scrollBarMargin")) {
            let margin_casted: ScrollBarMargin = margin
            let thisPeer = this.getPeer()
            thisPeer.setScrollBarMarginAttribute(margin_casted)
            return
        }
        return
    }
    )
    public open func edgeEffect(edgeEffect: EdgeEffect, options: Option<EdgeEffectOptions>): Unit {
        if (this.checkPriority("edgeEffect")) {
            let edgeEffect_casted: EdgeEffect = edgeEffect
            let options_casted: Option<EdgeEffectOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEdgeEffectAttribute(edgeEffect_casted, options_casted)
            return
        }
        return
    }
    )
    public open func fadingEdge(enabled: Option<Bool>, options: Option<FadingEdgeOptions>): Unit {
        if (this.checkPriority("fadingEdge")) {
            let enabled_casted: Option<Bool> = if (let Some(enabled) <- enabled) {enabled} else { throw Exception("Type has to be not None")}
            let options_casted: Option<FadingEdgeOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFadingEdgeAttribute(enabled_casted, options_casted)
            return
        }
        return
    }
    )
    public open func nestedScroll(value: NestedScrollOptions): Unit {
        if (this.checkPriority("nestedScroll")) {
            let value_casted: NestedScrollOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setNestedScrollAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func enableScrollInteraction(value: Bool): Unit {
        if (this.checkPriority("enableScrollInteraction")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setEnableScrollInteractionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func friction(value: Union_Number_Resource): Unit {
        if (this.checkPriority("friction")) {
            let value_casted: Union_Number_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFrictionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onScroll(event: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        if (this.checkPriority("onScroll")) {
            let event_casted: ((xOffset: Float64, yOffset: Float64) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnScrollAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onWillStopDragging(handler: OnWillStopDraggingCallback): Unit {
        if (this.checkPriority("onWillStopDragging")) {
            let handler_casted: OnWillStopDraggingCallback = handler
            let thisPeer = this.getPeer()
            thisPeer.setOnWillStopDraggingAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func onReachStart(event: (() -> Unit)): Unit {
        if (this.checkPriority("onReachStart")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnReachStartAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onReachEnd(event: (() -> Unit)): Unit {
        if (this.checkPriority("onReachEnd")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnReachEndAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onScrollStart(event: (() -> Unit)): Unit {
        if (this.checkPriority("onScrollStart")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnScrollStartAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onScrollStop(event: (() -> Unit)): Unit {
        if (this.checkPriority("onScrollStop")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnScrollStopAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func flingSpeedLimit(speedLimit: Float64): Unit {
        if (this.checkPriority("flingSpeedLimit")) {
            let speedLimit_casted: Float64 = speedLimit
            let thisPeer = this.getPeer()
            thisPeer.setFlingSpeedLimitAttribute(speedLimit_casted)
            return
        }
        return
    }
    )
    public open func clipContent(clip: Union_ContentClipMode_RectShape): Unit {
        if (this.checkPriority("clipContent")) {
            let clip_casted: Union_ContentClipMode_RectShape = clip
            let thisPeer = this.getPeer()
            thisPeer.setClipContentAttribute(clip_casted)
            return
        }
        return
    }
    )
    public open func digitalCrownSensitivity(sensitivity: Option<CrownSensitivity>): Unit {
        if (this.checkPriority("digitalCrownSensitivity")) {
            let sensitivity_casted: Option<CrownSensitivity> = if (let Some(sensitivity) <- sensitivity) {sensitivity} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDigitalCrownSensitivityAttribute(sensitivity_casted)
            return
        }
        return
    }
    )
    public open func backToTop(backToTop: Bool): Unit {
        if (this.checkPriority("backToTop")) {
            let backToTop_casted: Bool = backToTop
            let thisPeer = this.getPeer()
            thisPeer.setBackToTopAttribute(backToTop_casted)
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
