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
public interface SymbolSpanAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SymbolSpanAttribute <: SymbolSpanAttributeInterfaces {
    SymbolSpanAttribute() {
    }
}
public interface SymbolSpanAttribute {
}
public open class ArkSymbolSpanComponent <: ArkCommonMethodComponent & SymbolSpanAttribute {
    public open func getPeer(): ArkSymbolSpanPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSymbolSpanPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSymbolSpanOptions(value: Resource): Unit {
        if (this.checkPriority("setSymbolSpanOptions")) {
            let value_casted: Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setSymbolSpanOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontSize(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("fontSize")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFontSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontColor(value: ArrayList<ResourceColor>): Unit {
        if (this.checkPriority("fontColor")) {
            let value_casted: ArrayList<ResourceColor> = value
            let thisPeer = this.getPeer()
            thisPeer.setFontColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontWeight(value: Union_Number_FontWeight_String): Unit {
        if (this.checkPriority("fontWeight")) {
            let value_casted: Union_Number_FontWeight_String = value
            let thisPeer = this.getPeer()
            thisPeer.setFontWeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func effectStrategy(value: SymbolEffectStrategy): Unit {
        if (this.checkPriority("effectStrategy")) {
            let value_casted: SymbolEffectStrategy = value
            let thisPeer = this.getPeer()
            thisPeer.setEffectStrategyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func renderingStrategy(value: SymbolRenderingStrategy): Unit {
        if (this.checkPriority("renderingStrategy")) {
            let value_casted: SymbolRenderingStrategy = value
            let thisPeer = this.getPeer()
            thisPeer.setRenderingStrategyAttribute(value_casted)
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
class SymbolSpanAttributeStyleHolder {
    var value: ?((attributes: SymbolSpanAttribute) -> Unit)
    init (value: ?((attributes: SymbolSpanAttribute) -> Unit)) {
        this.value = value
    }
}

class SymbolSpanAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSymbolSpan(
        style: ?((attributes: SymbolSpanAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Resource
    ): Unit {
        let styleHolder = SymbolSpanAttributeStyleHolder(style)
        let contentHolder = SymbolSpanAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSymbolSpanComponent()
        })
        NodeAttach<ArkSymbolSpanPeer>({ => ArkSymbolSpanPeer.create(receiver, 0) }) {
            receiver.setSymbolSpanOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
