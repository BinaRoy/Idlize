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
public interface WindowSceneAttributeInterfaces <: CommonMethodInterfaces {
}
public open class WindowSceneAttribute <: WindowSceneAttributeInterfaces {
    WindowSceneAttribute() {
    }
}
public interface WindowSceneAttribute {
}
public open class ArkWindowSceneComponent <: ArkCommonMethodComponent & WindowSceneAttribute {
    public open func getPeer(): ArkWindowScenePeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkWindowScenePeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setWindowSceneOptions(persistentId: Float64): Unit {
        if (this.checkPriority("setWindowSceneOptions")) {
            let persistentId_casted: Float64 = persistentId
            let thisPeer = this.getPeer()
            thisPeer.setWindowSceneOptionsAttribute(persistentId_casted)
            return
        }
        return
    }
    )
    public open func attractionEffect(destination: Position, fraction: Float64): Unit {
        if (this.checkPriority("attractionEffect")) {
            let destination_casted: Position = destination
            let fraction_casted: Float64 = fraction
            let thisPeer = this.getPeer()
            thisPeer.setAttractionEffectAttribute(destination_casted, fraction_casted)
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
class WindowSceneAttributeStyleHolder {
    var value: ?((attributes: WindowSceneAttribute) -> Unit)
    init (value: ?((attributes: WindowSceneAttribute) -> Unit)) {
        this.value = value
    }
}

class WindowSceneAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkWindowScene(
        style: ?((attributes: WindowSceneAttribute) -> Unit),
        content_: ?(() -> Unit),
persistentId: Float64
    ): Unit {
        let styleHolder = WindowSceneAttributeStyleHolder(style)
        let contentHolder = WindowSceneAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkWindowSceneComponent()
        })
        NodeAttach<ArkWindowScenePeer>({ => ArkWindowScenePeer.create(receiver, 0) }) {
            receiver.setWindowSceneOptions(persistentId)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
