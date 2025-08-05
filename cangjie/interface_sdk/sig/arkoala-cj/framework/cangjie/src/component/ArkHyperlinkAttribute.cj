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
public interface HyperlinkAttributeInterfaces <: CommonMethodInterfaces {
}
public open class HyperlinkAttribute <: HyperlinkAttributeInterfaces {
    HyperlinkAttribute() {
    }
}
public interface HyperlinkAttribute {
}
public open class ArkHyperlinkComponent <: ArkCommonMethodComponent & HyperlinkAttribute {
    public open func getPeer(): ArkHyperlinkPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkHyperlinkPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setHyperlinkOptions(address: Union_String_Resource, content: Option<Union_String_Resource>): Unit {
        if (this.checkPriority("setHyperlinkOptions")) {
            let address_casted: Union_String_Resource = address
            let content_casted: Option<Union_String_Resource> = if (let Some(content) <- content) {content} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setHyperlinkOptionsAttribute(address_casted, content_casted)
            return
        }
        return
    }
    )
    public open func color(value: Union_Color_Number_String_Resource): Unit {
        if (this.checkPriority("color")) {
            let value_casted: Union_Color_Number_String_Resource = value
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
class HyperlinkAttributeStyleHolder {
    var value: ?((attributes: HyperlinkAttribute) -> Unit)
    init (value: ?((attributes: HyperlinkAttribute) -> Unit)) {
        this.value = value
    }
}

class HyperlinkAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkHyperlink(
        style: ?((attributes: HyperlinkAttribute) -> Unit),
        content_: ?(() -> Unit),
address: Union_String_Resource, content: Option<Union_String_Resource>
    ): Unit {
        let styleHolder = HyperlinkAttributeStyleHolder(style)
        let contentHolder = HyperlinkAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkHyperlinkComponent()
        })
        NodeAttach<ArkHyperlinkPeer>({ => ArkHyperlinkPeer.create(receiver, 0) }) {
            receiver.setHyperlinkOptions(address,content)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
