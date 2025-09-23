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

package idlize.components
import idlize.commonPara.*

import idlize.peers.*

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

// @!APILevel[13, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, form: true, atomicservice: true, noninterop: true]
public type OnCheckboxStyleCallback = (attributes: ArkCheckboxComponent) -> Unit
public type OnCheckboxContentCallback = () -> Unit
public open class ArkCheckboxComponent <: ArkCommonMethodComponent {
    protected  func getPeer(): ArkCheckboxPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCheckboxPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func setCheckboxOptions(options!: Option<CheckboxOptions> = Option.None): This {
        this.getPeer().checkboxOptionsAttribute(options)
        return this
    }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func select(value: Bool): This {
        this.getPeer().selectAttribute(value)
        return this
    }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func selectedColor(value: ResourceColor): This {
        this.getPeer().selectedColorAttribute(value)
        return this
    }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, form: true, atomicservice: true]
    public func shape(value: CheckBoxShape): This {
        this.getPeer().shapeAttribute(value)
        return this
    }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func unselectedColor(value: ResourceColor): This {
        this.getPeer().unselectedColorAttribute(value)
        return this
    }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func mark(value: MarkStyle): This {
        this.getPeer().markAttribute(value)
        return this
    }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    // public func onChange(callback_: OnCheckboxChangeCallback): This {
    //     this.getPeer().onChangeAttribute(Some(callback_))
    //     return this
    // }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    // public func contentModifier(modifier: ContentModifier<CheckBoxConfiguration>): This {
    //     this.getPeer().contentModifierAttribute(modifier)
    //     return this
    // }
    // public func onSelect(callback: OnCheckboxSelectCallback): This {
    //     this.getPeer().onSelectAttribute(Some(callback))
    //     return this
    // }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
@Memo
public func ArkCheckbox(
    style: Option<OnCheckboxStyleCallback>,
    content_: Option<OnCheckboxContentCallback>,
options!: Option<CheckboxOptions> = Option.None
): Unit {
    let receiver = remember<ArkCheckboxComponent>({ => 
        ArkCheckboxComponent()
    })
    NodeAttach<ArkCheckboxPeer>(
        { => ArkCheckboxPeer.create(receiver, flags: 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        }
    )
}

