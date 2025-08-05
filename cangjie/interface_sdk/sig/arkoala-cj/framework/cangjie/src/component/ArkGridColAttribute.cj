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
public interface GridColAttributeInterfaces <: CommonMethodInterfaces {
}
public open class GridColAttribute <: GridColAttributeInterfaces {
    GridColAttribute() {
    }
}
public interface GridColAttribute {
}
public open class ArkGridColComponent <: ArkCommonMethodComponent & GridColAttribute {
    public open func getPeer(): ArkGridColPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkGridColPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setGridColOptions(option: Option<GridColOptions>): Unit {
        if (this.checkPriority("setGridColOptions")) {
            let option_casted: Option<GridColOptions> = if (let Some(option) <- option) {option} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setGridColOptionsAttribute(option_casted)
            return
        }
        return
    }
    )
    public open func span(value: Union_Number_GridColColumnOption): Unit {
        if (this.checkPriority("span")) {
            let value_casted: Union_Number_GridColColumnOption = value
            let thisPeer = this.getPeer()
            thisPeer.setSpanAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func gridColOffset(value: Union_Number_GridColColumnOption): Unit {
        if (this.checkPriority("gridColOffset")) {
            let value_casted: Union_Number_GridColColumnOption = value
            let thisPeer = this.getPeer()
            thisPeer.setGridColOffsetAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func order(value: Union_Number_GridColColumnOption): Unit {
        if (this.checkPriority("order")) {
            let value_casted: Union_Number_GridColColumnOption = value
            let thisPeer = this.getPeer()
            thisPeer.setOrderAttribute(value_casted)
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
class GridColAttributeStyleHolder {
    var value: ?((attributes: GridColAttribute) -> Unit)
    init (value: ?((attributes: GridColAttribute) -> Unit)) {
        this.value = value
    }
}

class GridColAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkGridCol(
        style: ?((attributes: GridColAttribute) -> Unit),
        content_: ?(() -> Unit),
option: Option<GridColOptions>
    ): Unit {
        let styleHolder = GridColAttributeStyleHolder(style)
        let contentHolder = GridColAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkGridColComponent()
        })
        NodeAttach<ArkGridColPeer>({ => ArkGridColPeer.create(receiver, 0) }) {
            receiver.setGridColOptions(option)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
