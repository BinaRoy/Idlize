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
public interface RemoteWindowAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RemoteWindowAttribute <: RemoteWindowAttributeInterfaces {
    RemoteWindowAttribute() {
    }
}
public interface RemoteWindowAttribute {
}
public open class ArkRemoteWindowComponent <: ArkCommonMethodComponent & RemoteWindowAttribute {
    public open func getPeer(): ArkRemoteWindowPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRemoteWindowPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRemoteWindowOptions(target: WindowAnimationTarget): Unit {
        if (this.checkPriority("setRemoteWindowOptions")) {
            let target_casted: WindowAnimationTarget = target
            let thisPeer = this.getPeer()
            thisPeer.setRemoteWindowOptionsAttribute(target_casted)
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
class RemoteWindowAttributeStyleHolder {
    var value: ?((attributes: RemoteWindowAttribute) -> Unit)
    init (value: ?((attributes: RemoteWindowAttribute) -> Unit)) {
        this.value = value
    }
}

class RemoteWindowAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRemoteWindow(
        style: ?((attributes: RemoteWindowAttribute) -> Unit),
        content_: ?(() -> Unit),
target: WindowAnimationTarget
    ): Unit {
        let styleHolder = RemoteWindowAttributeStyleHolder(style)
        let contentHolder = RemoteWindowAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRemoteWindowComponent()
        })
        NodeAttach<ArkRemoteWindowPeer>({ => ArkRemoteWindowPeer.create(receiver, 0) }) {
            receiver.setRemoteWindowOptions(target)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
