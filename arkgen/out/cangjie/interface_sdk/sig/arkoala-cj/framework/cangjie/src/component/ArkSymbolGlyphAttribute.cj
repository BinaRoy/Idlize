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
public interface SymbolGlyphAttributeInterfaces <: CommonMethodInterfaces {
}
public open class SymbolGlyphAttribute <: SymbolGlyphAttributeInterfaces {
    SymbolGlyphAttribute() {
    }
}
public interface SymbolGlyphAttribute {
}
public open class ArkSymbolGlyphComponent <: ArkCommonMethodComponent & SymbolGlyphAttribute {
    public open func getPeer(): ArkSymbolGlyphPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSymbolGlyphPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSymbolGlyphOptions(value: Option<Resource>): Unit {
        if (this.checkPriority("setSymbolGlyphOptions")) {
            let value_casted: Option<Resource> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSymbolGlyphOptionsAttribute(value_casted)
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
    public open func shaderStyle(shaders: ArrayList<ShaderStyle>): Unit {
        if (this.checkPriority("shaderStyle")) {
            let shaders_casted: ArrayList<ShaderStyle> = shaders
            let thisPeer = this.getPeer()
            thisPeer.setShaderStyleAttribute(shaders_casted)
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
    public open func symbolEffect(symbolEffect: SymbolEffect, isActive: Option<Bool>): Unit {
        if (this.checkPriority("symbolEffect")) {
            let symbolEffect_casted: SymbolEffect = symbolEffect
            let isActive_casted: Option<Bool> = if (let Some(isActive) <- isActive) {isActive} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSymbolEffect0Attribute(symbolEffect_casted, isActive_casted)
            return
        }
        return
    }
    )
    public open func symbolEffect(symbolEffect: SymbolEffect, triggerValue: Option<Float64>): Unit {
        if (this.checkPriority("symbolEffect")) {
            let symbolEffect_casted: SymbolEffect = symbolEffect
            let triggerValue_casted: Option<Float64> = if (let Some(triggerValue) <- triggerValue) {triggerValue} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSymbolEffect1Attribute(symbolEffect_casted, triggerValue_casted)
            return
        }
        return
    }
    )
    public open func minFontScale(scale: Option<Union_Number_Resource>): Unit {
        if (this.checkPriority("minFontScale")) {
            let scale_casted: Option<Union_Number_Resource> = if (let Some(scale) <- scale) {scale} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMinFontScaleAttribute(scale_casted)
            return
        }
        return
    }
    )
    public open func maxFontScale(scale: Option<Union_Number_Resource>): Unit {
        if (this.checkPriority("maxFontScale")) {
            let scale_casted: Option<Union_Number_Resource> = if (let Some(scale) <- scale) {scale} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMaxFontScaleAttribute(scale_casted)
            return
        }
        return
    }
    )
    public open func symbolShadow(shadow: Option<ShadowOptions>): Unit {
        if (this.checkPriority("symbolShadow")) {
            let shadow_casted: Option<ShadowOptions> = if (let Some(shadow) <- shadow) {shadow} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSymbolShadowAttribute(shadow_casted)
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
class SymbolGlyphAttributeStyleHolder {
    var value: ?((attributes: SymbolGlyphAttribute) -> Unit)
    init (value: ?((attributes: SymbolGlyphAttribute) -> Unit)) {
        this.value = value
    }
}

class SymbolGlyphAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSymbolGlyph(
        style: ?((attributes: SymbolGlyphAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<Resource>
    ): Unit {
        let styleHolder = SymbolGlyphAttributeStyleHolder(style)
        let contentHolder = SymbolGlyphAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSymbolGlyphComponent()
        })
        NodeAttach<ArkSymbolGlyphPeer>({ => ArkSymbolGlyphPeer.create(receiver, 0) }) {
            receiver.setSymbolGlyphOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
