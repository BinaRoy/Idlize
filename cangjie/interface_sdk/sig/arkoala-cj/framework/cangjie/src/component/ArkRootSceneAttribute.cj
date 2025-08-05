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
public interface RootSceneAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RootSceneAttribute <: RootSceneAttributeInterfaces {
    RootSceneAttribute() {
    }
}
public interface RootSceneAttribute {
}
public open class ArkRootSceneComponent <: ArkCommonMethodComponent & RootSceneAttribute {
    public open func getPeer(): ArkRootScenePeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRootScenePeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRootSceneOptions(session: RootSceneSession): Unit {
        if (this.checkPriority("setRootSceneOptions")) {
            let session_casted: RootSceneSession = session
            let thisPeer = this.getPeer()
            thisPeer.setRootSceneOptionsAttribute(session_casted)
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
class RootSceneAttributeStyleHolder {
    var value: ?((attributes: RootSceneAttribute) -> Unit)
    init (value: ?((attributes: RootSceneAttribute) -> Unit)) {
        this.value = value
    }
}

class RootSceneAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRootScene(
        style: ?((attributes: RootSceneAttribute) -> Unit),
        content_: ?(() -> Unit),
session: RootSceneSession
    ): Unit {
        let styleHolder = RootSceneAttributeStyleHolder(style)
        let contentHolder = RootSceneAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRootSceneComponent()
        })
        NodeAttach<ArkRootScenePeer>({ => ArkRootScenePeer.create(receiver, 0) }) {
            receiver.setRootSceneOptions(session)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
