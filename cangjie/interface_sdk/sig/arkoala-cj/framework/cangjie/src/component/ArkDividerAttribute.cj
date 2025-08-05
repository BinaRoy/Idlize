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
public interface DividerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class DividerAttribute <: DividerAttributeInterfaces {
    DividerAttribute() {
    }
}
public interface DividerAttribute {
}
public open class ArkDividerComponent <: ArkCommonMethodComponent & DividerAttribute {
    public open func getPeer(): ArkDividerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkDividerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setDividerOptions(): Unit {
        if (this.checkPriority("setDividerOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setDividerOptionsAttribute()
            return
        }
        return
    }
    )
    public open func vertical(value: Bool): Unit {
        if (this.checkPriority("vertical")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setVerticalAttribute(value_casted)
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
    public open func strokeWidth(value: Union_Number_String): Unit {
        if (this.checkPriority("strokeWidth")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func lineCap(value: LineCapStyle): Unit {
        if (this.checkPriority("lineCap")) {
            let value_casted: LineCapStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setLineCapAttribute(value_casted)
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
class DividerAttributeStyleHolder {
    var value: ?((attributes: DividerAttribute) -> Unit)
    init (value: ?((attributes: DividerAttribute) -> Unit)) {
        this.value = value
    }
}

class DividerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkDivider(
        style: ?((attributes: DividerAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = DividerAttributeStyleHolder(style)
        let contentHolder = DividerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkDividerComponent()
        })
        NodeAttach<ArkDividerPeer>({ => ArkDividerPeer.create(receiver, 0) }) {
            receiver.setDividerOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
