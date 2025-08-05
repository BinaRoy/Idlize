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
public interface CheckboxGroupAttributeInterfaces <: CommonMethodInterfaces {
}
public open class CheckboxGroupAttribute <: CheckboxGroupAttributeInterfaces {
    CheckboxGroupAttribute() {
    }
}
public interface CheckboxGroupAttribute {
}
public open class ArkCheckboxGroupComponent <: ArkCommonMethodComponent & CheckboxGroupAttribute {
    public open func getPeer(): ArkCheckboxGroupPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCheckboxGroupPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setCheckboxGroupOptions(options: Option<CheckboxGroupOptions>): Unit {
        if (this.checkPriority("setCheckboxGroupOptions")) {
            let options_casted: Option<CheckboxGroupOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCheckboxGroupOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func selectAll(isAllSelected: Option<Union_Boolean_Bindable>): Unit {
        if (this.checkPriority("selectAll")) {
            let isAllSelected_casted: Option<Union_Boolean_Bindable> = if (let Some(isAllSelected) <- isAllSelected) {isAllSelected} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectAllAttribute(isAllSelected_casted)
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
    public open func onChange(callback_: Option<OnCheckboxGroupChangeCallback>): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: Option<OnCheckboxGroupChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func checkboxShape(shape: Option<CheckBoxShape>): Unit {
        if (this.checkPriority("checkboxShape")) {
            let shape_casted: Option<CheckBoxShape> = if (let Some(shape) <- shape) {shape} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCheckboxShapeAttribute(shape_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_selectAll(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_selectAll")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectAllAttribute(callback_casted)
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
class CheckboxGroupAttributeStyleHolder {
    var value: ?((attributes: CheckboxGroupAttribute) -> Unit)
    init (value: ?((attributes: CheckboxGroupAttribute) -> Unit)) {
        this.value = value
    }
}

class CheckboxGroupAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkCheckboxGroup(
        style: ?((attributes: CheckboxGroupAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<CheckboxGroupOptions>
    ): Unit {
        let styleHolder = CheckboxGroupAttributeStyleHolder(style)
        let contentHolder = CheckboxGroupAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkCheckboxGroupComponent()
        })
        NodeAttach<ArkCheckboxGroupPeer>({ => ArkCheckboxGroupPeer.create(receiver, 0) }) {
            receiver.setCheckboxGroupOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
