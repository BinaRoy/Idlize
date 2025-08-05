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
public interface ColumnSplitAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ColumnSplitAttribute <: ColumnSplitAttributeInterfaces {
    ColumnSplitAttribute() {
    }
}
public interface ColumnSplitAttribute {
}
public open class ArkColumnSplitComponent <: ArkCommonMethodComponent & ColumnSplitAttribute {
    public open func getPeer(): ArkColumnSplitPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkColumnSplitPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setColumnSplitOptions(): Unit {
        if (this.checkPriority("setColumnSplitOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setColumnSplitOptionsAttribute()
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
    public open func divider(value: Option<ColumnSplitDividerStyle>): Unit {
        if (this.checkPriority("divider")) {
            let value_casted: Option<ColumnSplitDividerStyle> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDividerAttribute(value_casted)
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
class ColumnSplitAttributeStyleHolder {
    var value: ?((attributes: ColumnSplitAttribute) -> Unit)
    init (value: ?((attributes: ColumnSplitAttribute) -> Unit)) {
        this.value = value
    }
}

class ColumnSplitAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkColumnSplit(
        style: ?((attributes: ColumnSplitAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = ColumnSplitAttributeStyleHolder(style)
        let contentHolder = ColumnSplitAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkColumnSplitComponent()
        })
        NodeAttach<ArkColumnSplitPeer>({ => ArkColumnSplitPeer.create(receiver, 0) }) {
            receiver.setColumnSplitOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
