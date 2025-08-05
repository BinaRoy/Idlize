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
public interface MenuItemGroupAttributeInterfaces <: CommonMethodInterfaces {
}
public open class MenuItemGroupAttribute <: MenuItemGroupAttributeInterfaces {
    MenuItemGroupAttribute() {
    }
}
public interface MenuItemGroupAttribute {
}
public open class ArkMenuItemGroupComponent <: ArkCommonMethodComponent & MenuItemGroupAttribute {
    public open func getPeer(): ArkMenuItemGroupPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkMenuItemGroupPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setMenuItemGroupOptions(value: Option<MenuItemGroupOptions>): Unit {
        if (this.checkPriority("setMenuItemGroupOptions")) {
            let value_casted: Option<MenuItemGroupOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenuItemGroupOptionsAttribute(value_casted)
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
class MenuItemGroupAttributeStyleHolder {
    var value: ?((attributes: MenuItemGroupAttribute) -> Unit)
    init (value: ?((attributes: MenuItemGroupAttribute) -> Unit)) {
        this.value = value
    }
}

class MenuItemGroupAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkMenuItemGroup(
        style: ?((attributes: MenuItemGroupAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<MenuItemGroupOptions>
    ): Unit {
        let styleHolder = MenuItemGroupAttributeStyleHolder(style)
        let contentHolder = MenuItemGroupAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkMenuItemGroupComponent()
        })
        NodeAttach<ArkMenuItemGroupPeer>({ => ArkMenuItemGroupPeer.create(receiver, 0) }) {
            receiver.setMenuItemGroupOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
