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
public interface FlexAttributeInterfaces <: CommonMethodInterfaces {
}
public open class FlexAttribute <: FlexAttributeInterfaces {
    FlexAttribute() {
    }
}
public interface FlexAttribute {
}
public open class ArkFlexComponent <: ArkCommonMethodComponent & FlexAttribute {
    public open func getPeer(): ArkFlexPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkFlexPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setFlexOptions(value: Option<FlexOptions>): Unit {
        if (this.checkPriority("setFlexOptions")) {
            let value_casted: Option<FlexOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFlexOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func pointLight(value: PointLightStyle): Unit {
        if (this.checkPriority("pointLight")) {
            let value_casted: PointLightStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setPointLightAttribute(value_casted)
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
class FlexAttributeStyleHolder {
    var value: ?((attributes: FlexAttribute) -> Unit)
    init (value: ?((attributes: FlexAttribute) -> Unit)) {
        this.value = value
    }
}

class FlexAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkFlex(
        style: ?((attributes: FlexAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<FlexOptions>
    ): Unit {
        let styleHolder = FlexAttributeStyleHolder(style)
        let contentHolder = FlexAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkFlexComponent()
        })
        NodeAttach<ArkFlexPeer>({ => ArkFlexPeer.create(receiver, 0) }) {
            receiver.setFlexOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
