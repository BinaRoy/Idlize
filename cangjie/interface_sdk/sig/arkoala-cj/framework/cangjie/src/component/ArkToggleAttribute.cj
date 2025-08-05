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
public interface ToggleAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ToggleAttribute <: ToggleAttributeInterfaces {
    ToggleAttribute() {
    }
}
public interface ToggleAttribute {
}
public open class ArkToggleComponent <: ArkCommonMethodComponent & ToggleAttribute {
    public open func getPeer(): ArkTogglePeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTogglePeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setToggleOptions(options: ToggleOptions): Unit {
        if (this.checkPriority("setToggleOptions")) {
            let options_casted: ToggleOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setToggleOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: ((parameter: Bool) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((parameter: Bool) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func contentModifier(modifier: ContentModifier<ToggleConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<ToggleConfiguration> = modifier
            let thisPeer = this.getPeer()
            thisPeer.setContentModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func selectedColor(value: ResourceColor): Unit {
        if (this.checkPriority("selectedColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectedColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func switchPointColor(color: ResourceColor): Unit {
        if (this.checkPriority("switchPointColor")) {
            let color_casted: ResourceColor = color
            let thisPeer = this.getPeer()
            thisPeer.setSwitchPointColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func switchStyle(value: SwitchStyle): Unit {
        if (this.checkPriority("switchStyle")) {
            let value_casted: SwitchStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setSwitchStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_isOn(callback: ((isOn: Option<Union_Boolean_Bindable>) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_isOn")) {
            let callback_casted: ((isOn: Option<Union_Boolean_Bindable>) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_isOnAttribute(callback_casted)
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
class ToggleAttributeStyleHolder {
    var value: ?((attributes: ToggleAttribute) -> Unit)
    init (value: ?((attributes: ToggleAttribute) -> Unit)) {
        this.value = value
    }
}

class ToggleAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkToggle(
        style: ?((attributes: ToggleAttribute) -> Unit),
        content_: ?(() -> Unit),
options: ToggleOptions
    ): Unit {
        let styleHolder = ToggleAttributeStyleHolder(style)
        let contentHolder = ToggleAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkToggleComponent()
        })
        NodeAttach<ArkTogglePeer>({ => ArkTogglePeer.create(receiver, 0) }) {
            receiver.setToggleOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
