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
public interface GaugeAttributeInterfaces <: CommonMethodInterfaces {
}
public open class GaugeAttribute <: GaugeAttributeInterfaces {
    GaugeAttribute() {
    }
}
public interface GaugeAttribute {
}
public open class ArkGaugeComponent <: ArkCommonMethodComponent & GaugeAttribute {
    public open func getPeer(): ArkGaugePeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkGaugePeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setGaugeOptions(options: GaugeOptions): Unit {
        if (this.checkPriority("setGaugeOptions")) {
            let options_casted: GaugeOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setGaugeOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func value(value: Float64): Unit {
        if (this.checkPriority("value")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setValueAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func startAngle(angle: Float64): Unit {
        if (this.checkPriority("startAngle")) {
            let angle_casted: Float64 = angle
            let thisPeer = this.getPeer()
            thisPeer.setStartAngleAttribute(angle_casted)
            return
        }
        return
    }
    )
    public open func endAngle(angle: Float64): Unit {
        if (this.checkPriority("endAngle")) {
            let angle_casted: Float64 = angle
            let thisPeer = this.getPeer()
            thisPeer.setEndAngleAttribute(angle_casted)
            return
        }
        return
    }
    )
    public open func colors(colors: Type_GaugeAttribute_colors_colors): Unit {
        if (this.checkPriority("colors")) {
            let colors_casted: Type_GaugeAttribute_colors_colors = colors
            let thisPeer = this.getPeer()
            thisPeer.setColorsAttribute(colors_casted)
            return
        }
        return
    }
    )
    public open func strokeWidth(length: Length): Unit {
        if (this.checkPriority("strokeWidth")) {
            let length_casted: Length = length
            let thisPeer = this.getPeer()
            thisPeer.setStrokeWidthAttribute(length_casted)
            return
        }
        return
    }
    )
    public open func description(value: CustomBuilder): Unit {
        if (this.checkPriority("description")) {
            let value_casted: CustomBuilder = value
            let thisPeer = this.getPeer()
            thisPeer.setDescriptionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func trackShadow(value: GaugeShadowOptions): Unit {
        if (this.checkPriority("trackShadow")) {
            let value_casted: GaugeShadowOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setTrackShadowAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func indicator(value: GaugeIndicatorOptions): Unit {
        if (this.checkPriority("indicator")) {
            let value_casted: GaugeIndicatorOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setIndicatorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func privacySensitive(isPrivacySensitiveMode: Option<Bool>): Unit {
        if (this.checkPriority("privacySensitive")) {
            let isPrivacySensitiveMode_casted: Option<Bool> = if (let Some(isPrivacySensitiveMode) <- isPrivacySensitiveMode) {isPrivacySensitiveMode} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPrivacySensitiveAttribute(isPrivacySensitiveMode_casted)
            return
        }
        return
    }
    )
    public open func contentModifier(modifier: ContentModifier<GaugeConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<GaugeConfiguration> = modifier
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
class GaugeAttributeStyleHolder {
    var value: ?((attributes: GaugeAttribute) -> Unit)
    init (value: ?((attributes: GaugeAttribute) -> Unit)) {
        this.value = value
    }
}

class GaugeAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkGauge(
        style: ?((attributes: GaugeAttribute) -> Unit),
        content_: ?(() -> Unit),
options: GaugeOptions
    ): Unit {
        let styleHolder = GaugeAttributeStyleHolder(style)
        let contentHolder = GaugeAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkGaugeComponent()
        })
        NodeAttach<ArkGaugePeer>({ => ArkGaugePeer.create(receiver, 0) }) {
            receiver.setGaugeOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
