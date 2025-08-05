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
public interface RowSplitAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RowSplitAttribute <: RowSplitAttributeInterfaces {
    RowSplitAttribute() {
    }
}
public interface RowSplitAttribute {
}
public open class ArkRowSplitComponent <: ArkCommonMethodComponent & RowSplitAttribute {
    public open func getPeer(): ArkRowSplitPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRowSplitPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRowSplitOptions(): Unit {
        if (this.checkPriority("setRowSplitOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setRowSplitOptionsAttribute()
            return
        }
        return
    }
    )
    public open func resizeable(value: Bool): Unit {
        if (this.checkPriority("resizeable")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setResizeableAttribute(value_casted)
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
class RowSplitAttributeStyleHolder {
    var value: ?((attributes: RowSplitAttribute) -> Unit)
    init (value: ?((attributes: RowSplitAttribute) -> Unit)) {
        this.value = value
    }
}

class RowSplitAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRowSplit(
        style: ?((attributes: RowSplitAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = RowSplitAttributeStyleHolder(style)
        let contentHolder = RowSplitAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRowSplitComponent()
        })
        NodeAttach<ArkRowSplitPeer>({ => ArkRowSplitPeer.create(receiver, 0) }) {
            receiver.setRowSplitOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
