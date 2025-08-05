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
public interface RatingAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RatingAttribute <: RatingAttributeInterfaces {
    RatingAttribute() {
    }
}
public interface RatingAttribute {
}
public open class ArkRatingComponent <: ArkCommonMethodComponent & RatingAttribute {
    public open func getPeer(): ArkRatingPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRatingPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRatingOptions(options: Option<RatingOptions>): Unit {
        if (this.checkPriority("setRatingOptions")) {
            let options_casted: Option<RatingOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRatingOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func stars(starCount: Option<Float64>): Unit {
        if (this.checkPriority("stars")) {
            let starCount_casted: Option<Float64> = if (let Some(starCount) <- starCount) {starCount} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStarsAttribute(starCount_casted)
            return
        }
        return
    }
    )
    public open func stepSize(size: Option<Float64>): Unit {
        if (this.checkPriority("stepSize")) {
            let size_casted: Option<Float64> = if (let Some(size) <- size) {size} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStepSizeAttribute(size_casted)
            return
        }
        return
    }
    )
    public open func starStyle(options: Option<StarStyleOptions>): Unit {
        if (this.checkPriority("starStyle")) {
            let options_casted: Option<StarStyleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStarStyleAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((parameter: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChange0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: Option<OnRatingChangeCallback>): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: Option<OnRatingChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnChange1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func contentModifier(modifier: Option<ContentModifier<RatingConfiguration>>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: Option<ContentModifier<RatingConfiguration>> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setContentModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_rating(callback: ((rating: Option<Union_Number_Bindable>) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_rating")) {
            let callback_casted: ((rating: Option<Union_Number_Bindable>) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_ratingAttribute(callback_casted)
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
class RatingAttributeStyleHolder {
    var value: ?((attributes: RatingAttribute) -> Unit)
    init (value: ?((attributes: RatingAttribute) -> Unit)) {
        this.value = value
    }
}

class RatingAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRating(
        style: ?((attributes: RatingAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<RatingOptions>
    ): Unit {
        let styleHolder = RatingAttributeStyleHolder(style)
        let contentHolder = RatingAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRatingComponent()
        })
        NodeAttach<ArkRatingPeer>({ => ArkRatingPeer.create(receiver, 0) }) {
            receiver.setRatingOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
