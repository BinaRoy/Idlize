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
public interface RadioAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RadioAttribute <: RadioAttributeInterfaces {
    RadioAttribute() {
    }
}
public interface RadioAttribute {
}
public open class ArkRadioComponent <: ArkCommonMethodComponent & RadioAttribute {
    public open func getPeer(): ArkRadioPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRadioPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRadioOptions(options: RadioOptions): Unit {
        if (this.checkPriority("setRadioOptions")) {
            let options_casted: RadioOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setRadioOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func checked(isChecked: Option<Union_Boolean_Bindable>): Unit {
        if (this.checkPriority("checked")) {
            let isChecked_casted: Option<Union_Boolean_Bindable> = if (let Some(isChecked) <- isChecked) {isChecked} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCheckedAttribute(isChecked_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: ((parameter: Bool) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((parameter: Bool) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChange0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: Option<OnRadioChangeCallback>): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: Option<OnRadioChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnChange1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func radioStyle(value: Option<RadioStyle>): Unit {
        if (this.checkPriority("radioStyle")) {
            let value_casted: Option<RadioStyle> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRadioStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func contentModifier(modifier: Option<ContentModifier<RadioConfiguration>>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: Option<ContentModifier<RadioConfiguration>> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setContentModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_checked(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_checked")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_checkedAttribute(callback_casted)
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
class RadioAttributeStyleHolder {
    var value: ?((attributes: RadioAttribute) -> Unit)
    init (value: ?((attributes: RadioAttribute) -> Unit)) {
        this.value = value
    }
}

class RadioAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRadio(
        style: ?((attributes: RadioAttribute) -> Unit),
        content_: ?(() -> Unit),
options: RadioOptions
    ): Unit {
        let styleHolder = RadioAttributeStyleHolder(style)
        let contentHolder = RadioAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRadioComponent()
        })
        NodeAttach<ArkRadioPeer>({ => ArkRadioPeer.create(receiver, 0) }) {
            receiver.setRadioOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
