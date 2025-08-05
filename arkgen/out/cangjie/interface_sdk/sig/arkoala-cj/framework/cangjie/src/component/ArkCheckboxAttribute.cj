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
public interface CheckboxAttributeInterfaces <: CommonMethodInterfaces {
}
public open class CheckboxAttribute <: CheckboxAttributeInterfaces {
    CheckboxAttribute() {
    }
}
public interface CheckboxAttribute {
}
public open class ArkCheckboxComponent <: ArkCommonMethodComponent & CheckboxAttribute {
    public open func getPeer(): ArkCheckboxPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCheckboxPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setCheckboxOptions(options: Option<CheckboxOptions>): Unit {
        if (this.checkPriority("setCheckboxOptions")) {
            let options_casted: Option<CheckboxOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCheckboxOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func select(isSelected: Option<Union_Boolean_Bindable>): Unit {
        if (this.checkPriority("select")) {
            let isSelected_casted: Option<Union_Boolean_Bindable> = if (let Some(isSelected) <- isSelected) {isSelected} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectAttribute(isSelected_casted)
            return
        }
        return
    }
    )
    public open func selectedColor(resColor: Option<ResourceColor>): Unit {
        if (this.checkPriority("selectedColor")) {
            let resColor_casted: Option<ResourceColor> = if (let Some(resColor) <- resColor) {resColor} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedColorAttribute(resColor_casted)
            return
        }
        return
    }
    )
    public open func shape(shape: Option<CheckBoxShape>): Unit {
        if (this.checkPriority("shape")) {
            let shape_casted: Option<CheckBoxShape> = if (let Some(shape) <- shape) {shape} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setShapeAttribute(shape_casted)
            return
        }
        return
    }
    )
    public open func unselectedColor(resColor: Option<ResourceColor>): Unit {
        if (this.checkPriority("unselectedColor")) {
            let resColor_casted: Option<ResourceColor> = if (let Some(resColor) <- resColor) {resColor} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setUnselectedColorAttribute(resColor_casted)
            return
        }
        return
    }
    )
    public open func mark(style: Option<MarkStyle>): Unit {
        if (this.checkPriority("mark")) {
            let style_casted: Option<MarkStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMarkAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: Option<OnCheckboxChangeCallback>): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: Option<OnCheckboxChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func contentModifier(modifier: Option<ContentModifier<CheckBoxConfiguration>>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: Option<ContentModifier<CheckBoxConfiguration>> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setContentModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_select(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_select")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectAttribute(callback_casted)
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
class CheckboxAttributeStyleHolder {
    var value: ?((attributes: CheckboxAttribute) -> Unit)
    init (value: ?((attributes: CheckboxAttribute) -> Unit)) {
        this.value = value
    }
}

class CheckboxAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkCheckbox(
        style: ?((attributes: CheckboxAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<CheckboxOptions>
    ): Unit {
        let styleHolder = CheckboxAttributeStyleHolder(style)
        let contentHolder = CheckboxAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkCheckboxComponent()
        })
        NodeAttach<ArkCheckboxPeer>({ => ArkCheckboxPeer.create(receiver, 0) }) {
            receiver.setCheckboxOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
