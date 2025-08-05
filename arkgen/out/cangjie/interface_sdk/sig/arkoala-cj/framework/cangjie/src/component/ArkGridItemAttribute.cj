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
public interface GridItemAttributeInterfaces <: CommonMethodInterfaces {
}
public open class GridItemAttribute <: GridItemAttributeInterfaces {
    GridItemAttribute() {
    }
}
public interface GridItemAttribute {
}
public open class ArkGridItemComponent <: ArkCommonMethodComponent & GridItemAttribute {
    public open func getPeer(): ArkGridItemPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkGridItemPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setGridItemOptions(value: Option<GridItemOptions>): Unit {
        if (this.checkPriority("setGridItemOptions")) {
            let value_casted: Option<GridItemOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setGridItemOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func rowStart(value: Float64): Unit {
        if (this.checkPriority("rowStart")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setRowStartAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func rowEnd(value: Float64): Unit {
        if (this.checkPriority("rowEnd")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setRowEndAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func columnStart(value: Float64): Unit {
        if (this.checkPriority("columnStart")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setColumnStartAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func columnEnd(value: Float64): Unit {
        if (this.checkPriority("columnEnd")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setColumnEndAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func forceRebuild(value: Bool): Unit {
        if (this.checkPriority("forceRebuild")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setForceRebuildAttribute(value_casted)
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
class GridItemAttributeStyleHolder {
    var value: ?((attributes: GridItemAttribute) -> Unit)
    init (value: ?((attributes: GridItemAttribute) -> Unit)) {
        this.value = value
    }
}

class GridItemAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkGridItem(
        style: ?((attributes: GridItemAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<GridItemOptions>
    ): Unit {
        let styleHolder = GridItemAttributeStyleHolder(style)
        let contentHolder = GridItemAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkGridItemComponent()
        })
        NodeAttach<ArkGridItemPeer>({ => ArkGridItemPeer.create(receiver, 0) }) {
            receiver.setGridItemOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
