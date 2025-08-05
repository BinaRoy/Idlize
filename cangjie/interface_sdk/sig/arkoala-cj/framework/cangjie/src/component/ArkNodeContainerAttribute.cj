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
public interface NodeContainerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class NodeContainerAttribute <: NodeContainerAttributeInterfaces {
    NodeContainerAttribute() {
    }
}
public interface NodeContainerAttribute {
}
public open class ArkNodeContainerComponent <: ArkCommonMethodComponent & NodeContainerAttribute {
    public open func getPeer(): ArkNodeContainerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkNodeContainerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setNodeContainerOptions(controller: Any): Unit {
        if (this.checkPriority("setNodeContainerOptions")) {
            let controller_casted: Any = controller
            let thisPeer = this.getPeer()
            thisPeer.setNodeContainerOptions0Attribute(controller_casted)
            return
        }
        return
    }
    )
    public open func setNodeContainerOptions(controller: Any): Unit {
        if (this.checkPriority("setNodeContainerOptions")) {
            let controller_casted: Any = controller
            let thisPeer = this.getPeer()
            thisPeer.setNodeContainerOptions1Attribute(controller_casted)
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
class NodeContainerAttributeStyleHolder {
    var value: ?((attributes: NodeContainerAttribute) -> Unit)
    init (value: ?((attributes: NodeContainerAttribute) -> Unit)) {
        this.value = value
    }
}

class NodeContainerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkNodeContainer(
        style: ?((attributes: NodeContainerAttribute) -> Unit),
        content_: ?(() -> Unit),
controller: Union__NodeController_NodeController
    ): Unit {
        let styleHolder = NodeContainerAttributeStyleHolder(style)
        let contentHolder = NodeContainerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkNodeContainerComponent()
        })
        NodeAttach<ArkNodeContainerPeer>({ => ArkNodeContainerPeer.create(receiver, 0) }) {
            receiver.setNodeContainerOptions(controller)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
