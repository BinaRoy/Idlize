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
public interface NavRouterAttributeInterfaces <: CommonMethodInterfaces {
}
public open class NavRouterAttribute <: NavRouterAttributeInterfaces {
    NavRouterAttribute() {
    }
}
public interface NavRouterAttribute {
}
public open class ArkNavRouterComponent <: ArkCommonMethodComponent & NavRouterAttribute {
    public open func getPeer(): ArkNavRouterPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkNavRouterPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setNavRouterOptions(): Unit {
        if (this.checkPriority("setNavRouterOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setNavRouterOptions0Attribute()
            return
        }
        return
    }
    )
    public open func setNavRouterOptions(value: RouteInfo): Unit {
        if (this.checkPriority("setNavRouterOptions")) {
            let value_casted: RouteInfo = value
            let thisPeer = this.getPeer()
            thisPeer.setNavRouterOptions1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func onStateChange(callback_: ((parameter: Bool) -> Unit)): Unit {
        if (this.checkPriority("onStateChange")) {
            let callback__casted: ((parameter: Bool) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnStateChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func mode(mode: NavRouteMode): Unit {
        if (this.checkPriority("mode")) {
            let mode_casted: NavRouteMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setModeAttribute(mode_casted)
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
class NavRouterAttributeStyleHolder {
    var value: ?((attributes: NavRouterAttribute) -> Unit)
    init (value: ?((attributes: NavRouterAttribute) -> Unit)) {
        this.value = value
    }
}

class NavRouterAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkNavRouter(
        style: ?((attributes: NavRouterAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<RouteInfo>
    ): Unit {
        let styleHolder = NavRouterAttributeStyleHolder(style)
        let contentHolder = NavRouterAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkNavRouterComponent()
        })
        NodeAttach<ArkNavRouterPeer>({ => ArkNavRouterPeer.create(receiver, 0) }) {
            receiver.setNavRouterOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
