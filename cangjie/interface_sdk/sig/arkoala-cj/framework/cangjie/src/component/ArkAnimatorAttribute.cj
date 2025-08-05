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
public interface AnimatorAttributeInterfaces <: CommonMethodInterfaces {
}
public open class AnimatorAttribute <: AnimatorAttributeInterfaces {
    AnimatorAttribute() {
    }
}
public interface AnimatorAttribute {
}
public open class ArkAnimatorComponent <: ArkCommonMethodComponent & AnimatorAttribute {
    public open func getPeer(): ArkAnimatorPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkAnimatorPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setAnimatorOptions(value: String): Unit {
        if (this.checkPriority("setAnimatorOptions")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setAnimatorOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func state(value: AnimationStatus): Unit {
        if (this.checkPriority("state")) {
            let value_casted: AnimationStatus = value
            let thisPeer = this.getPeer()
            thisPeer.setStateAttribute(value_casted)
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
    public open func curve(value: Curve): Unit {
        if (this.checkPriority("curve")) {
            let value_casted: Curve = value
            let thisPeer = this.getPeer()
            thisPeer.setCurveAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func delay(value: Float64): Unit {
        if (this.checkPriority("delay")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setDelayAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fillMode(value: FillMode): Unit {
        if (this.checkPriority("fillMode")) {
            let value_casted: FillMode = value
            let thisPeer = this.getPeer()
            thisPeer.setFillModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func iterations(value: Float64): Unit {
        if (this.checkPriority("iterations")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setIterationsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func playMode(value: PlayMode): Unit {
        if (this.checkPriority("playMode")) {
            let value_casted: PlayMode = value
            let thisPeer = this.getPeer()
            thisPeer.setPlayModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func motion(value: SpringMotion): Unit {
        if (this.checkPriority("motion")) {
            let value_casted: SpringMotion = value
            let thisPeer = this.getPeer()
            thisPeer.setMotionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onStart(event: (() -> Unit)): Unit {
        if (this.checkPriority("onStart")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnStartAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onPause(event: (() -> Unit)): Unit {
        if (this.checkPriority("onPause")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnPauseAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onRepeat(event: (() -> Unit)): Unit {
        if (this.checkPriority("onRepeat")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnRepeatAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onCancel(event: (() -> Unit)): Unit {
        if (this.checkPriority("onCancel")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnCancelAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onFinish(event: (() -> Unit)): Unit {
        if (this.checkPriority("onFinish")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnFinishAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onFrame(event: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onFrame")) {
            let event_casted: ((parameter: Float64) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnFrameAttribute(event_casted)
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
class AnimatorAttributeStyleHolder {
    var value: ?((attributes: AnimatorAttribute) -> Unit)
    init (value: ?((attributes: AnimatorAttribute) -> Unit)) {
        this.value = value
    }
}

class AnimatorAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkAnimator(
        style: ?((attributes: AnimatorAttribute) -> Unit),
        content_: ?(() -> Unit),
value: String
    ): Unit {
        let styleHolder = AnimatorAttributeStyleHolder(style)
        let contentHolder = AnimatorAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkAnimatorComponent()
        })
        NodeAttach<ArkAnimatorPeer>({ => ArkAnimatorPeer.create(receiver, 0) }) {
            receiver.setAnimatorOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
