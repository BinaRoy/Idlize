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
public interface PanelAttributeInterfaces <: CommonMethodInterfaces {
}
public open class PanelAttribute <: PanelAttributeInterfaces {
    PanelAttribute() {
    }
}
public interface PanelAttribute {
}
public open class ArkPanelComponent <: ArkCommonMethodComponent & PanelAttribute {
    public open func getPeer(): ArkPanelPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkPanelPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setPanelOptions(show: Bool): Unit {
        if (this.checkPriority("setPanelOptions")) {
            let show_casted: Bool = show
            let thisPeer = this.getPeer()
            thisPeer.setPanelOptionsAttribute(show_casted)
            return
        }
        return
    }
    )
    public open func mode(value: PanelMode): Unit {
        if (this.checkPriority("mode")) {
            let value_casted: PanelMode = value
            let thisPeer = this.getPeer()
            thisPeer.setModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func type_(value: PanelType): Unit {
        if (this.checkPriority("type")) {
            let value_casted: PanelType = value
            let thisPeer = this.getPeer()
            thisPeer.setTypeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func dragBar(value: Bool): Unit {
        if (this.checkPriority("dragBar")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setDragBarAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func customHeight(value: Union_Dimension_PanelHeight): Unit {
        if (this.checkPriority("customHeight")) {
            let value_casted: Union_Dimension_PanelHeight = value
            let thisPeer = this.getPeer()
            thisPeer.setCustomHeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fullHeight(value: Union_Number_String): Unit {
        if (this.checkPriority("fullHeight")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setFullHeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func halfHeight(value: Union_Number_String): Unit {
        if (this.checkPriority("halfHeight")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setHalfHeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func miniHeight(value: Union_Number_String): Unit {
        if (this.checkPriority("miniHeight")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setMiniHeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func show(value: Bool): Unit {
        if (this.checkPriority("show")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setShowAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func backgroundMask(color: ResourceColor): Unit {
        if (this.checkPriority("backgroundMask")) {
            let color_casted: ResourceColor = color
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundMaskAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func showCloseIcon(value: Bool): Unit {
        if (this.checkPriority("showCloseIcon")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setShowCloseIconAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onChange(event: ((width: Float64, height: Float64, mode: PanelMode) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let event_casted: ((width: Float64, height: Float64, mode: PanelMode) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onHeightChange(callback_: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onHeightChange")) {
            let callback__casted: ((parameter: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnHeightChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_mode(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_mode")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_modeAttribute(callback_casted)
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
class PanelAttributeStyleHolder {
    var value: ?((attributes: PanelAttribute) -> Unit)
    init (value: ?((attributes: PanelAttribute) -> Unit)) {
        this.value = value
    }
}

class PanelAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkPanel(
        style: ?((attributes: PanelAttribute) -> Unit),
        content_: ?(() -> Unit),
show: Bool
    ): Unit {
        let styleHolder = PanelAttributeStyleHolder(style)
        let contentHolder = PanelAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkPanelComponent()
        })
        NodeAttach<ArkPanelPeer>({ => ArkPanelPeer.create(receiver, 0) }) {
            receiver.setPanelOptions(show)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
