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
public interface BlankAttributeInterfaces <: CommonMethodInterfaces {
}
public open class BlankAttribute <: BlankAttributeInterfaces {
    BlankAttribute() {
    }
}
public interface BlankAttribute {
}
public open class ArkBlankComponent <: ArkCommonMethodComponent & BlankAttribute {
    public open func getPeer(): ArkBlankPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkBlankPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setBlankOptions(min: Option<Union_Number_String>): Unit {
        if (this.checkPriority("setBlankOptions")) {
            let min_casted: Option<Union_Number_String> = if (let Some(min) <- min) {min} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBlankOptionsAttribute(min_casted)
            return
        }
        return
    }
    )
    public open func color(value: ResourceColor): Unit {
        if (this.checkPriority("color")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setColorAttribute(value_casted)
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
class BlankAttributeStyleHolder {
    var value: ?((attributes: BlankAttribute) -> Unit)
    init (value: ?((attributes: BlankAttribute) -> Unit)) {
        this.value = value
    }
}

class BlankAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkBlank(
        style: ?((attributes: BlankAttribute) -> Unit),
        content_: ?(() -> Unit),
min: Option<Union_Number_String>
    ): Unit {
        let styleHolder = BlankAttributeStyleHolder(style)
        let contentHolder = BlankAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkBlankComponent()
        })
        NodeAttach<ArkBlankPeer>({ => ArkBlankPeer.create(receiver, 0) }) {
            receiver.setBlankOptions(min)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
