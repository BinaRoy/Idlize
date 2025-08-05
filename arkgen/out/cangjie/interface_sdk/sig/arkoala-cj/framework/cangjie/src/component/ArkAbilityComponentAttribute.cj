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
public interface AbilityComponentAttributeInterfaces <: CommonMethodInterfaces {
}
public open class AbilityComponentAttribute <: AbilityComponentAttributeInterfaces {
    AbilityComponentAttribute() {
    }
}
public interface AbilityComponentAttribute {
}
public open class ArkAbilityComponentComponent <: ArkCommonMethodComponent & AbilityComponentAttribute {
    public open func getPeer(): ArkAbilityComponentPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkAbilityComponentPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setAbilityComponentOptions(value: Literal__want): Unit {
        if (this.checkPriority("setAbilityComponentOptions")) {
            let value_casted: Literal__want = value
            let thisPeer = this.getPeer()
            thisPeer.setAbilityComponentOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onConnect(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onConnect")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnConnectAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDisconnect(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onDisconnect")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDisconnectAttribute(callback__casted)
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
class AbilityComponentAttributeStyleHolder {
    var value: ?((attributes: AbilityComponentAttribute) -> Unit)
    init (value: ?((attributes: AbilityComponentAttribute) -> Unit)) {
        this.value = value
    }
}

class AbilityComponentAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkAbilityComponent(
        style: ?((attributes: AbilityComponentAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Literal__want
    ): Unit {
        let styleHolder = AbilityComponentAttributeStyleHolder(style)
        let contentHolder = AbilityComponentAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkAbilityComponentComponent()
        })
        NodeAttach<ArkAbilityComponentPeer>({ => ArkAbilityComponentPeer.create(receiver, 0) }) {
            receiver.setAbilityComponentOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
