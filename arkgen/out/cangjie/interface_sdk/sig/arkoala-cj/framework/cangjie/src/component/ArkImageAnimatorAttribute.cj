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
public interface ImageAnimatorAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ImageAnimatorAttribute <: ImageAnimatorAttributeInterfaces {
    ImageAnimatorAttribute() {
    }
}
public interface ImageAnimatorAttribute {
}
public open class ArkImageAnimatorComponent <: ArkCommonMethodComponent & ImageAnimatorAttribute {
    public open func getPeer(): ArkImageAnimatorPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkImageAnimatorPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setImageAnimatorOptions(): Unit {
        if (this.checkPriority("setImageAnimatorOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setImageAnimatorOptionsAttribute()
            return
        }
        return
    }
    )
    public open func images(value: ArrayList<ImageFrameInfo>): Unit {
        if (this.checkPriority("images")) {
            let value_casted: ArrayList<ImageFrameInfo> = value
            let thisPeer = this.getPeer()
            thisPeer.setImagesAttribute(value_casted)
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
    public open func reverse(value: Bool): Unit {
        if (this.checkPriority("reverse")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setReverseAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fixedSize(value: Bool): Unit {
        if (this.checkPriority("fixedSize")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setFixedSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func preDecode(value: Float64): Unit {
        if (this.checkPriority("preDecode")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setPreDecodeAttribute(value_casted)
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
    public open func monitorInvisibleArea(monitorInvisibleArea: Bool): Unit {
        if (this.checkPriority("monitorInvisibleArea")) {
            let monitorInvisibleArea_casted: Bool = monitorInvisibleArea
            let thisPeer = this.getPeer()
            thisPeer.setMonitorInvisibleAreaAttribute(monitorInvisibleArea_casted)
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
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class ImageAnimatorAttributeStyleHolder {
    var value: ?((attributes: ImageAnimatorAttribute) -> Unit)
    init (value: ?((attributes: ImageAnimatorAttribute) -> Unit)) {
        this.value = value
    }
}

class ImageAnimatorAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkImageAnimator(
        style: ?((attributes: ImageAnimatorAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = ImageAnimatorAttributeStyleHolder(style)
        let contentHolder = ImageAnimatorAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkImageAnimatorComponent()
        })
        NodeAttach<ArkImageAnimatorPeer>({ => ArkImageAnimatorPeer.create(receiver, 0) }) {
            receiver.setImageAnimatorOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
