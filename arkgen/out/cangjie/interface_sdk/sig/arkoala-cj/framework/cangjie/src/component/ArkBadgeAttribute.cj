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
public interface BadgeAttributeInterfaces <: CommonMethodInterfaces {
}
public open class BadgeAttribute <: BadgeAttributeInterfaces {
    BadgeAttribute() {
    }
}
public interface BadgeAttribute {
}
public open class ArkBadgeComponent <: ArkCommonMethodComponent & BadgeAttribute {
    public open func getPeer(): ArkBadgePeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkBadgePeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setBadgeOptions(value: BadgeParamWithNumber): Unit {
        if (this.checkPriority("setBadgeOptions")) {
            let value_casted: BadgeParamWithNumber = value
            let thisPeer = this.getPeer()
            thisPeer.setBadgeOptions0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func setBadgeOptions(value: BadgeParamWithString): Unit {
        if (this.checkPriority("setBadgeOptions")) {
            let value_casted: BadgeParamWithString = value
            let thisPeer = this.getPeer()
            thisPeer.setBadgeOptions1Attribute(value_casted)
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
class BadgeAttributeStyleHolder {
    var value: ?((attributes: BadgeAttribute) -> Unit)
    init (value: ?((attributes: BadgeAttribute) -> Unit)) {
        this.value = value
    }
}

class BadgeAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkBadge(
        style: ?((attributes: BadgeAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Union_BadgeParamWithNumber_BadgeParamWithString
    ): Unit {
        let styleHolder = BadgeAttributeStyleHolder(style)
        let contentHolder = BadgeAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkBadgeComponent()
        })
        NodeAttach<ArkBadgePeer>({ => ArkBadgePeer.create(receiver, 0) }) {
            receiver.setBadgeOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
