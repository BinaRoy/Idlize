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
public interface ButtonAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ButtonAttribute <: ButtonAttributeInterfaces {
    ButtonAttribute() {
    }
}
public interface ButtonAttribute {
}
public open class ArkButtonComponent <: ArkCommonMethodComponent & ButtonAttribute {
    public open func getPeer(): ArkButtonPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkButtonPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setButtonOptions(): Unit {
        if (this.checkPriority("setButtonOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setButtonOptions0Attribute()
            return
        }
        return
    }
    )
    public open func setButtonOptions(options: ButtonOptions): Unit {
        if (this.checkPriority("setButtonOptions")) {
            let options_casted: ButtonOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setButtonOptions1Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func setButtonOptions(label: ResourceStr, options: Option<ButtonOptions>): Unit {
        if (this.checkPriority("setButtonOptions")) {
            let label_casted: ResourceStr = label
            let options_casted: Option<ButtonOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setButtonOptions2Attribute(label_casted, options_casted)
            return
        }
        return
    }
    )
    public open func type_(value: ButtonType): Unit {
        if (this.checkPriority("type")) {
            let value_casted: ButtonType = value
            let thisPeer = this.getPeer()
            thisPeer.setTypeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func stateEffect(value: Bool): Unit {
        if (this.checkPriority("stateEffect")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setStateEffectAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func buttonStyle(value: ButtonStyleMode): Unit {
        if (this.checkPriority("buttonStyle")) {
            let value_casted: ButtonStyleMode = value
            let thisPeer = this.getPeer()
            thisPeer.setButtonStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func controlSize(value: ControlSize): Unit {
        if (this.checkPriority("controlSize")) {
            let value_casted: ControlSize = value
            let thisPeer = this.getPeer()
            thisPeer.setControlSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func role(value: ButtonRole): Unit {
        if (this.checkPriority("role")) {
            let value_casted: ButtonRole = value
            let thisPeer = this.getPeer()
            thisPeer.setRoleAttribute(value_casted)
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
    public open func contentModifier(modifier: ContentModifier<ButtonConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<ButtonConfiguration> = modifier
            let thisPeer = this.getPeer()
            thisPeer.setContentModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func labelStyle(value: LabelStyle): Unit {
        if (this.checkPriority("labelStyle")) {
            let value_casted: LabelStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setLabelStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func minFontScale(scale: Union_Number_Resource): Unit {
        if (this.checkPriority("minFontScale")) {
            let scale_casted: Union_Number_Resource = scale
            let thisPeer = this.getPeer()
            thisPeer.setMinFontScaleAttribute(scale_casted)
            return
        }
        return
    }
    )
    public open func maxFontScale(scale: Union_Number_Resource): Unit {
        if (this.checkPriority("maxFontScale")) {
            let scale_casted: Union_Number_Resource = scale
            let thisPeer = this.getPeer()
            thisPeer.setMaxFontScaleAttribute(scale_casted)
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
class ButtonAttributeStyleHolder {
    var value: ?((attributes: ButtonAttribute) -> Unit)
    init (value: ?((attributes: ButtonAttribute) -> Unit)) {
        this.value = value
    }
}

class ButtonAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkButton(
        style: ?((attributes: ButtonAttribute) -> Unit),
        content_: ?(() -> Unit),
label: Option<Union_ButtonOptions_ResourceStr>, options: Option<ButtonOptions>
    ): Unit {
        let styleHolder = ButtonAttributeStyleHolder(style)
        let contentHolder = ButtonAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkButtonComponent()
        })
        NodeAttach<ArkButtonPeer>({ => ArkButtonPeer.create(receiver, 0) }) {
            receiver.setButtonOptions(label,options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
