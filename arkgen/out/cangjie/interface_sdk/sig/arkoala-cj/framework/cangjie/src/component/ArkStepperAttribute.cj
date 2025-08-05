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
public interface StepperAttributeInterfaces <: CommonMethodInterfaces {
}
public open class StepperAttribute <: StepperAttributeInterfaces {
    StepperAttribute() {
    }
}
public interface StepperAttribute {
}
public open class ArkStepperComponent <: ArkCommonMethodComponent & StepperAttribute {
    public open func getPeer(): ArkStepperPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkStepperPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setStepperOptions(value: Option<Literal_Number_index>): Unit {
        if (this.checkPriority("setStepperOptions")) {
            let value_casted: Option<Literal_Number_index> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStepperOptions0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func setStepperOptions(value: Option<StepperOptions>): Unit {
        if (this.checkPriority("setStepperOptions")) {
            let value_casted: Option<StepperOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStepperOptions1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func onFinish(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onFinish")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFinishAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSkip(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onSkip")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSkipAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((xOffset: Float64, yOffset: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onNext(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        if (this.checkPriority("onNext")) {
            let callback__casted: ((xOffset: Float64, yOffset: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnNextAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onPrevious(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        if (this.checkPriority("onPrevious")) {
            let callback__casted: ((xOffset: Float64, yOffset: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPreviousAttribute(callback__casted)
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
class StepperAttributeStyleHolder {
    var value: ?((attributes: StepperAttribute) -> Unit)
    init (value: ?((attributes: StepperAttribute) -> Unit)) {
        this.value = value
    }
}

class StepperAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkStepper(
        style: ?((attributes: StepperAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<Union_Literal_Number_index_StepperOptions>
    ): Unit {
        let styleHolder = StepperAttributeStyleHolder(style)
        let contentHolder = StepperAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkStepperComponent()
        })
        NodeAttach<ArkStepperPeer>({ => ArkStepperPeer.create(receiver, 0) }) {
            receiver.setStepperOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
