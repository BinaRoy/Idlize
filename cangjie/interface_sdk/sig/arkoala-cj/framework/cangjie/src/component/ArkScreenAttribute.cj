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
public interface ScreenAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ScreenAttribute <: ScreenAttributeInterfaces {
    ScreenAttribute() {
    }
}
public interface ScreenAttribute {
}
public open class ArkScreenComponent <: ArkCommonMethodComponent & ScreenAttribute {
    public open func getPeer(): ArkScreenPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkScreenPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setScreenOptions(screenId: Float64): Unit {
        if (this.checkPriority("setScreenOptions")) {
            let screenId_casted: Float64 = screenId
            let thisPeer = this.getPeer()
            thisPeer.setScreenOptionsAttribute(screenId_casted)
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
class ScreenAttributeStyleHolder {
    var value: ?((attributes: ScreenAttribute) -> Unit)
    init (value: ?((attributes: ScreenAttribute) -> Unit)) {
        this.value = value
    }
}

class ScreenAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkScreen(
        style: ?((attributes: ScreenAttribute) -> Unit),
        content_: ?(() -> Unit),
screenId: Float64
    ): Unit {
        let styleHolder = ScreenAttributeStyleHolder(style)
        let contentHolder = ScreenAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkScreenComponent()
        })
        NodeAttach<ArkScreenPeer>({ => ArkScreenPeer.create(receiver, 0) }) {
            receiver.setScreenOptions(screenId)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
