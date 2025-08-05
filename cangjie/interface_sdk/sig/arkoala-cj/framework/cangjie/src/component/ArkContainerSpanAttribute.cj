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
public interface ContainerSpanAttributeInterfaces <:  {
}
public open class ContainerSpanAttribute <: ContainerSpanAttributeInterfaces {
    ContainerSpanAttribute() {
    }
}
public interface ContainerSpanAttribute {
}
public open class ArkContainerSpanComponent <: ComponentBase & ContainerSpanAttribute {
    public open func getPeer(): ArkContainerSpanPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkContainerSpanPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setContainerSpanOptions(): Unit {
        if (this.checkPriority("setContainerSpanOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setContainerSpanOptionsAttribute()
            return
        }
        return
    }
    )
    public open func textBackgroundStyle(style: TextBackgroundStyle): Unit {
        if (this.checkPriority("textBackgroundStyle")) {
            let style_casted: TextBackgroundStyle = style
            let thisPeer = this.getPeer()
            thisPeer.setTextBackgroundStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public func attributeModifier(modifier: AttributeModifier<Object>) { throw Exception("not implemented") }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class ContainerSpanAttributeStyleHolder {
    var value: ?((attributes: ContainerSpanAttribute) -> Unit)
    init (value: ?((attributes: ContainerSpanAttribute) -> Unit)) {
        this.value = value
    }
}

class ContainerSpanAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkContainerSpan(
        style: ?((attributes: ContainerSpanAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = ContainerSpanAttributeStyleHolder(style)
        let contentHolder = ContainerSpanAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkContainerSpanComponent()
        })
        NodeAttach<ArkContainerSpanPeer>({ => ArkContainerSpanPeer.create(receiver, 0) }) {
            receiver.setContainerSpanOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
