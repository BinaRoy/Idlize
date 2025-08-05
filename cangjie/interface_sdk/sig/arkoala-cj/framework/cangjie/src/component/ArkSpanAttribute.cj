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
public interface SpanAttributeInterfaces <: BaseSpanInterfaces {
}
public open class SpanAttribute <: SpanAttributeInterfaces {
    SpanAttribute() {
    }
}
public interface SpanAttribute {
}
public open class ArkSpanComponent <: ArkBaseSpanComponent & SpanAttribute {
    public open func getPeer(): ArkSpanPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSpanPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSpanOptions(value: Union_String_Resource): Unit {
        if (this.checkPriority("setSpanOptions")) {
            let value_casted: Union_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setSpanOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func font(value: Font): Unit {
        if (this.checkPriority("font")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontColor(value: ResourceColor): Unit {
        if (this.checkPriority("fontColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setFontColorAttribute(value_casted)
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
    public open func fontStyle(value: FontStyle): Unit {
        if (this.checkPriority("fontStyle")) {
            let value_casted: FontStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setFontStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontWeight(value: Union_Number_FontWeight_ResourceStr): Unit {
        if (this.checkPriority("fontWeight")) {
            let value_casted: Union_Number_FontWeight_ResourceStr = value
            let thisPeer = this.getPeer()
            thisPeer.setFontWeight0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontWeight(value: Union_Number_FontWeight_String): Unit {
        if (this.checkPriority("fontWeight")) {
            let value_casted: Union_Number_FontWeight_String = value
            let thisPeer = this.getPeer()
            thisPeer.setFontWeight1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontFamily(value: Union_String_Resource): Unit {
        if (this.checkPriority("fontFamily")) {
            let value_casted: Union_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFontFamilyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func decoration(value: DecorationStyleInterface): Unit {
        if (this.checkPriority("decoration")) {
            let value_casted: DecorationStyleInterface = value
            let thisPeer = this.getPeer()
            thisPeer.setDecorationAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func letterSpacing(value: Union_Number_ResourceStr): Unit {
        if (this.checkPriority("letterSpacing")) {
            let value_casted: Union_Number_ResourceStr = value
            let thisPeer = this.getPeer()
            thisPeer.setLetterSpacing0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func letterSpacing(value: Union_Number_String): Unit {
        if (this.checkPriority("letterSpacing")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setLetterSpacing1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func textCase(value: TextCase): Unit {
        if (this.checkPriority("textCase")) {
            let value_casted: TextCase = value
            let thisPeer = this.getPeer()
            thisPeer.setTextCaseAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func lineHeight(value: Length): Unit {
        if (this.checkPriority("lineHeight")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setLineHeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textShadow(value: Union_ShadowOptions_Array_ShadowOptions): Unit {
        if (this.checkPriority("textShadow")) {
            let value_casted: Union_ShadowOptions_Array_ShadowOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setTextShadowAttribute(value_casted)
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
class SpanAttributeStyleHolder {
    var value: ?((attributes: SpanAttribute) -> Unit)
    init (value: ?((attributes: SpanAttribute) -> Unit)) {
        this.value = value
    }
}

class SpanAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSpan(
        style: ?((attributes: SpanAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Union_String_Resource
    ): Unit {
        let styleHolder = SpanAttributeStyleHolder(style)
        let contentHolder = SpanAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSpanComponent()
        })
        NodeAttach<ArkSpanPeer>({ => ArkSpanPeer.create(receiver, 0) }) {
            receiver.setSpanOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
