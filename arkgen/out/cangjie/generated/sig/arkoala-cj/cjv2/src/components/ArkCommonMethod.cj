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

public interface AttributeModifier<T> {}

// @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
public type OnCommonMethodStyleCallback = (attributes: ArkCommonMethodComponent) -> Unit
public type OnCommonMethodContentCallback = () -> Unit
public open class ArkCommonMethodComponent <: ComponentBase {
    protected  open  func getPeer(): ArkCommonMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[19, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func backdropBlur(value: Float64, options!: Option<BlurOptions> = Option.None): This {
        this.getPeer().backdropBlurAttribute(value, options)
        return this
    }
    // @!APILevel[15, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func width(value: Length): This {
        this.getPeer().widthAttribute(value)
        return this
    }
    // @!APILevel[15, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func height(value: Length): This {
        this.getPeer().heightAttribute(value)
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", atomicservice: true]
    public func key(value: String): This {
        this.getPeer().keyAttribute(value)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func restoreId(value: Float64): This {
        this.getPeer().restoreIdAttribute(value)
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func padding(value: Padding): This {
        this.getPeer().paddingAttribute(value)
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func bindSheet(isShow: Bool, options!: Option<SheetOptions> = Option.None): This {
        this.getPeer().bindSheetAttribute(isShow, options)
        return this
    }
    // @!APILevel[19, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func backgroundBlurStyle(value: BlurStyle, options!: Option<BackgroundBlurStyleOptions> = Option.None): This {
        this.getPeer().backgroundBlurStyleAttribute(value, options)
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", atomicservice: true]
    public func dragPreviewOptions(value: DragPreviewOptions, options!: Option<DragInteractionOptions> = Option.None): This {
        this.getPeer().dragPreviewOptionsAttribute(value, options)
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func onClick(event: Option<((event: ClickEvent) -> Unit)>): This {
        this.getPeer().onClickAttribute(event)
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func onClick(event: Option<((event: ClickEvent) -> Unit)>, distanceThreshold: Float64): This {
        this.getPeer().onClickAttribute(event, distanceThreshold)
        return this
    }
    public func attributeModifier(modifier: AttributeModifier<Object>) { throw Exception("not implemented") }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
