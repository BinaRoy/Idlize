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
public interface StackAttributeInterfaces <: CommonMethodInterfaces {
}
public open class StackAttribute <: StackAttributeInterfaces {
    StackAttribute() {
    }
}
public interface StackAttribute {
}
public open class ArkStackComponent <: ArkCommonMethodComponent & StackAttribute {
    public open func getPeer(): ArkStackPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkStackPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setStackOptions(options: Option<StackOptions>): Unit {
        if (this.checkPriority("setStackOptions")) {
            let options_casted: Option<StackOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setStackOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func alignContent(value: Alignment): Unit {
        if (this.checkPriority("alignContent")) {
            let value_casted: Alignment = value
            let thisPeer = this.getPeer()
            thisPeer.setAlignContentAttribute(value_casted)
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
class StackAttributeStyleHolder {
    var value: ?((attributes: StackAttribute) -> Unit)
    init (value: ?((attributes: StackAttribute) -> Unit)) {
        this.value = value
    }
}

class StackAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkStack(
        style: ?((attributes: StackAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<StackOptions>
    ): Unit {
        let styleHolder = StackAttributeStyleHolder(style)
        let contentHolder = StackAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkStackComponent()
        })
        NodeAttach<ArkStackPeer>({ => ArkStackPeer.create(receiver, 0) }) {
            receiver.setStackOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
