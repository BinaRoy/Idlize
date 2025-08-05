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
public interface NavigatorAttributeInterfaces <: CommonMethodInterfaces {
}
public open class NavigatorAttribute <: NavigatorAttributeInterfaces {
    NavigatorAttribute() {
    }
}
public interface NavigatorAttribute {
}
public open class ArkNavigatorComponent <: ArkCommonMethodComponent & NavigatorAttribute {
    public open func getPeer(): ArkNavigatorPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkNavigatorPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setNavigatorOptions(value: Option<Literal_String_target_NavigationType_type>): Unit {
        if (this.checkPriority("setNavigatorOptions")) {
            let value_casted: Option<Literal_String_target_NavigationType_type> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setNavigatorOptions0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func setNavigatorOptions(): Unit {
        if (this.checkPriority("setNavigatorOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setNavigatorOptions1Attribute()
            return
        }
        return
    }
    )
    public open func active(value: Bool): Unit {
        if (this.checkPriority("active")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setActiveAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func type_(value: NavigationType): Unit {
        if (this.checkPriority("type")) {
            let value_casted: NavigationType = value
            let thisPeer = this.getPeer()
            thisPeer.setTypeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func target(value: String): Unit {
        if (this.checkPriority("target")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setTargetAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func params(value: Any): Unit {
        if (this.checkPriority("params")) {
            let value_casted: Any = value
            let thisPeer = this.getPeer()
            thisPeer.setParamsAttribute(value_casted)
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
class NavigatorAttributeStyleHolder {
    var value: ?((attributes: NavigatorAttribute) -> Unit)
    init (value: ?((attributes: NavigatorAttribute) -> Unit)) {
        this.value = value
    }
}

class NavigatorAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkNavigator(
        style: ?((attributes: NavigatorAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<Literal_String_target_NavigationType_type>
    ): Unit {
        let styleHolder = NavigatorAttributeStyleHolder(style)
        let contentHolder = NavigatorAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkNavigatorComponent()
        })
        NodeAttach<ArkNavigatorPeer>({ => ArkNavigatorPeer.create(receiver, 0) }) {
            receiver.setNavigatorOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
