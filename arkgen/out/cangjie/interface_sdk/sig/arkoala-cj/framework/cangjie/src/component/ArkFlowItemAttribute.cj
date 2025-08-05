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
public interface FlowItemAttributeInterfaces <: CommonMethodInterfaces {
}
public open class FlowItemAttribute <: FlowItemAttributeInterfaces {
    FlowItemAttribute() {
    }
}
public interface FlowItemAttribute {
}
public open class ArkFlowItemComponent <: ArkCommonMethodComponent & FlowItemAttribute {
    public open func getPeer(): ArkFlowItemPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkFlowItemPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setFlowItemOptions(): Unit {
        if (this.checkPriority("setFlowItemOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setFlowItemOptionsAttribute()
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
class FlowItemAttributeStyleHolder {
    var value: ?((attributes: FlowItemAttribute) -> Unit)
    init (value: ?((attributes: FlowItemAttribute) -> Unit)) {
        this.value = value
    }
}

class FlowItemAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkFlowItem(
        style: ?((attributes: FlowItemAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = FlowItemAttributeStyleHolder(style)
        let contentHolder = FlowItemAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkFlowItemComponent()
        })
        NodeAttach<ArkFlowItemPeer>({ => ArkFlowItemPeer.create(receiver, 0) }) {
            receiver.setFlowItemOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
