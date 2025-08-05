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
public interface ListItemAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ListItemAttribute <: ListItemAttributeInterfaces {
    ListItemAttribute() {
    }
}
public interface ListItemAttribute {
}
public open class ArkListItemComponent <: ArkCommonMethodComponent & ListItemAttribute {
    public open func getPeer(): ArkListItemPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkListItemPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setListItemOptions(value: Option<ListItemOptions>): Unit {
        if (this.checkPriority("setListItemOptions")) {
            let value_casted: Option<ListItemOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setListItemOptions0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func setListItemOptions(value: Option<String>): Unit {
        if (this.checkPriority("setListItemOptions")) {
            let value_casted: Option<String> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setListItemOptions1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func sticky(value: Sticky): Unit {
        if (this.checkPriority("sticky")) {
            let value_casted: Sticky = value
            let thisPeer = this.getPeer()
            thisPeer.setStickyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func editable(value: Union_Boolean_EditMode): Unit {
        if (this.checkPriority("editable")) {
            let value_casted: Union_Boolean_EditMode = value
            let thisPeer = this.getPeer()
            thisPeer.setEditableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectable(value: Bool): Unit {
        if (this.checkPriority("selectable")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selected(value: Union_Boolean_Bindable): Unit {
        if (this.checkPriority("selected")) {
            let value_casted: Union_Boolean_Bindable = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectedAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func swipeAction(value: SwipeActionOptions): Unit {
        if (this.checkPriority("swipeAction")) {
            let value_casted: SwipeActionOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setSwipeActionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onSelect(event: ((parameter: Bool) -> Unit)): Unit {
        if (this.checkPriority("onSelect")) {
            let event_casted: ((parameter: Bool) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnSelectAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_selected(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_selected")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectedAttribute(callback_casted)
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
class ListItemAttributeStyleHolder {
    var value: ?((attributes: ListItemAttribute) -> Unit)
    init (value: ?((attributes: ListItemAttribute) -> Unit)) {
        this.value = value
    }
}

class ListItemAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkListItem(
        style: ?((attributes: ListItemAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<Union_ListItemOptions_String>
    ): Unit {
        let styleHolder = ListItemAttributeStyleHolder(style)
        let contentHolder = ListItemAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkListItemComponent()
        })
        NodeAttach<ArkListItemPeer>({ => ArkListItemPeer.create(receiver, 0) }) {
            receiver.setListItemOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
