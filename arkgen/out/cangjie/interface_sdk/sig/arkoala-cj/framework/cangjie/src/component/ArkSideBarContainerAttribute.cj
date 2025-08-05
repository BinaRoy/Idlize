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
public interface SideBarContainerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SideBarContainerAttribute <: SideBarContainerAttributeInterfaces {
    SideBarContainerAttribute() {
    }
}
public interface SideBarContainerAttribute {
}
public open class ArkSideBarContainerComponent <: ArkCommonMethodComponent & SideBarContainerAttribute {
    public open func getPeer(): ArkSideBarContainerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSideBarContainerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSideBarContainerOptions(type_: Option<SideBarContainerType>): Unit {
        if (this.checkPriority("setSideBarContainerOptions")) {
            let type_casted: Option<SideBarContainerType> = if (let Some(type_) <- type_) {type_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSideBarContainerOptionsAttribute(type_casted)
            return
        }
        return
    }
    )
    public open func showSideBar(value: Union_Boolean_Bindable): Unit {
        if (this.checkPriority("showSideBar")) {
            let value_casted: Union_Boolean_Bindable = value
            let thisPeer = this.getPeer()
            thisPeer.setShowSideBarAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func controlButton(value: ButtonStyle): Unit {
        if (this.checkPriority("controlButton")) {
            let value_casted: ButtonStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setControlButtonAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func showControlButton(value: Bool): Unit {
        if (this.checkPriority("showControlButton")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setShowControlButtonAttribute(value_casted)
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
    public open func sideBarWidth(value: Union_Number_Bindable): Unit {
        if (this.checkPriority("sideBarWidth")) {
            let value_casted: Union_Number_Bindable = value
            let thisPeer = this.getPeer()
            thisPeer.setSideBarWidth0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func sideBarWidth(value: Length): Unit {
        if (this.checkPriority("sideBarWidth")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setSideBarWidth1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func minSideBarWidth(value: Float64): Unit {
        if (this.checkPriority("minSideBarWidth")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setMinSideBarWidth0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func minSideBarWidth(value: Length): Unit {
        if (this.checkPriority("minSideBarWidth")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setMinSideBarWidth1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func maxSideBarWidth(value: Float64): Unit {
        if (this.checkPriority("maxSideBarWidth")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setMaxSideBarWidth0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func maxSideBarWidth(value: Length): Unit {
        if (this.checkPriority("maxSideBarWidth")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setMaxSideBarWidth1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func autoHide(value: Bool): Unit {
        if (this.checkPriority("autoHide")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAutoHideAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func sideBarPosition(value: SideBarPosition): Unit {
        if (this.checkPriority("sideBarPosition")) {
            let value_casted: SideBarPosition = value
            let thisPeer = this.getPeer()
            thisPeer.setSideBarPositionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func divider(value: Option<DividerStyle>): Unit {
        if (this.checkPriority("divider")) {
            let value_casted: Option<DividerStyle> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDividerAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func minContentWidth(value: Dimension): Unit {
        if (this.checkPriority("minContentWidth")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setMinContentWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_showSideBar(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_showSideBar")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_showSideBarAttribute(callback_casted)
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
class SideBarContainerAttributeStyleHolder {
    var value: ?((attributes: SideBarContainerAttribute) -> Unit)
    init (value: ?((attributes: SideBarContainerAttribute) -> Unit)) {
        this.value = value
    }
}

class SideBarContainerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSideBarContainer(
        style: ?((attributes: SideBarContainerAttribute) -> Unit),
        content_: ?(() -> Unit),
type: Option<SideBarContainerType>
    ): Unit {
        let styleHolder = SideBarContainerAttributeStyleHolder(style)
        let contentHolder = SideBarContainerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSideBarContainerComponent()
        })
        NodeAttach<ArkSideBarContainerPeer>({ => ArkSideBarContainerPeer.create(receiver, 0) }) {
            receiver.setSideBarContainerOptions(type)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
