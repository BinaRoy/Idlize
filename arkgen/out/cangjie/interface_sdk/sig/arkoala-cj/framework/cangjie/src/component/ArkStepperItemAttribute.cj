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
public interface StepperItemAttributeInterfaces <: CommonMethodInterfaces {
}
public open class StepperItemAttribute <: StepperItemAttributeInterfaces {
    StepperItemAttribute() {
    }
}
public interface StepperItemAttribute {
}
public open class ArkStepperItemComponent <: ArkCommonMethodComponent & StepperItemAttribute {
    public open func getPeer(): ArkStepperItemPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkStepperItemPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setStepperItemOptions(): Unit {
        if (this.checkPriority("setStepperItemOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setStepperItemOptionsAttribute()
            return
        }
        return
    }
    )
    public open func prevLabel(value: String): Unit {
        if (this.checkPriority("prevLabel")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setPrevLabelAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func nextLabel(value: String): Unit {
        if (this.checkPriority("nextLabel")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setNextLabelAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func status(value: Option<ItemState>): Unit {
        if (this.checkPriority("status")) {
            let value_casted: Option<ItemState> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStatusAttribute(value_casted)
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
class StepperItemAttributeStyleHolder {
    var value: ?((attributes: StepperItemAttribute) -> Unit)
    init (value: ?((attributes: StepperItemAttribute) -> Unit)) {
        this.value = value
    }
}

class StepperItemAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkStepperItem(
        style: ?((attributes: StepperItemAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = StepperItemAttributeStyleHolder(style)
        let contentHolder = StepperItemAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkStepperItemComponent()
        })
        NodeAttach<ArkStepperItemPeer>({ => ArkStepperItemPeer.create(receiver, 0) }) {
            receiver.setStepperItemOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
