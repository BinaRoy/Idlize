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
public interface TextTimerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class TextTimerAttribute <: TextTimerAttributeInterfaces {
    TextTimerAttribute() {
    }
}
public interface TextTimerAttribute {
}
public open class ArkTextTimerComponent <: ArkCommonMethodComponent & TextTimerAttribute {
    public open func getPeer(): ArkTextTimerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTextTimerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setTextTimerOptions(options: Option<TextTimerOptions>): Unit {
        if (this.checkPriority("setTextTimerOptions")) {
            let options_casted: Option<TextTimerOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextTimerOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func format(value: String): Unit {
        if (this.checkPriority("format")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setFormatAttribute(value_casted)
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
    public open func fontSize(value: Length): Unit {
        if (this.checkPriority("fontSize")) {
            let value_casted: Length = value
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
            thisPeer.setFontWeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontFamily(value: ResourceStr): Unit {
        if (this.checkPriority("fontFamily")) {
            let value_casted: ResourceStr = value
            let thisPeer = this.getPeer()
            thisPeer.setFontFamilyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onTimer(event: ((utc: Int64, elapsedTime: Int64) -> Unit)): Unit {
        if (this.checkPriority("onTimer")) {
            let event_casted: ((utc: Int64, elapsedTime: Int64) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnTimerAttribute(event_casted)
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
    public open func contentModifier(modifier: ContentModifier<TextTimerConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<TextTimerConfiguration> = modifier
            let thisPeer = this.getPeer()
            thisPeer.setContentModifierAttribute(modifier_casted)
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
class TextTimerAttributeStyleHolder {
    var value: ?((attributes: TextTimerAttribute) -> Unit)
    init (value: ?((attributes: TextTimerAttribute) -> Unit)) {
        this.value = value
    }
}

class TextTimerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkTextTimer(
        style: ?((attributes: TextTimerAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<TextTimerOptions>
    ): Unit {
        let styleHolder = TextTimerAttributeStyleHolder(style)
        let contentHolder = TextTimerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkTextTimerComponent()
        })
        NodeAttach<ArkTextTimerPeer>({ => ArkTextTimerPeer.create(receiver, 0) }) {
            receiver.setTextTimerOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
