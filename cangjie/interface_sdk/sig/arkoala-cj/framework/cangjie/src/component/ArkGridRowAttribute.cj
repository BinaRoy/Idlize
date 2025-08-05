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
public interface GridRowAttributeInterfaces <: CommonMethodInterfaces {
}
public open class GridRowAttribute <: GridRowAttributeInterfaces {
    GridRowAttribute() {
    }
}
public interface GridRowAttribute {
}
public open class ArkGridRowComponent <: ArkCommonMethodComponent & GridRowAttribute {
    public open func getPeer(): ArkGridRowPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkGridRowPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setGridRowOptions(option: Option<GridRowOptions>): Unit {
        if (this.checkPriority("setGridRowOptions")) {
            let option_casted: Option<GridRowOptions> = if (let Some(option) <- option) {option} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setGridRowOptionsAttribute(option_casted)
            return
        }
        return
    }
    )
    public open func onBreakpointChange(callback_: ((breakpoints: String) -> Unit)): Unit {
        if (this.checkPriority("onBreakpointChange")) {
            let callback__casted: ((breakpoints: String) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnBreakpointChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func alignItems(value: ItemAlign): Unit {
        if (this.checkPriority("alignItems")) {
            let value_casted: ItemAlign = value
            let thisPeer = this.getPeer()
            thisPeer.setAlignItemsAttribute(value_casted)
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
class GridRowAttributeStyleHolder {
    var value: ?((attributes: GridRowAttribute) -> Unit)
    init (value: ?((attributes: GridRowAttribute) -> Unit)) {
        this.value = value
    }
}

class GridRowAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkGridRow(
        style: ?((attributes: GridRowAttribute) -> Unit),
        content_: ?(() -> Unit),
option: Option<GridRowOptions>
    ): Unit {
        let styleHolder = GridRowAttributeStyleHolder(style)
        let contentHolder = GridRowAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkGridRowComponent()
        })
        NodeAttach<ArkGridRowPeer>({ => ArkGridRowPeer.create(receiver, 0) }) {
            receiver.setGridRowOptions(option)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
