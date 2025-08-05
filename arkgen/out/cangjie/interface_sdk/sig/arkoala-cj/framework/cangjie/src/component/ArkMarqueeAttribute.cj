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
public interface MarqueeAttributeInterfaces <: CommonMethodInterfaces {
}
public open class MarqueeAttribute <: MarqueeAttributeInterfaces {
    MarqueeAttribute() {
    }
}
public interface MarqueeAttribute {
}
public open class ArkMarqueeComponent <: ArkCommonMethodComponent & MarqueeAttribute {
    public open func getPeer(): ArkMarqueePeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkMarqueePeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setMarqueeOptions(options: MarqueeOptions): Unit {
        if (this.checkPriority("setMarqueeOptions")) {
            let options_casted: MarqueeOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setMarqueeOptionsAttribute(options_casted)
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
    public open func allowScale(value: Bool): Unit {
        if (this.checkPriority("allowScale")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAllowScaleAttribute(value_casted)
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
    public open func marqueeUpdateStrategy(value: MarqueeUpdateStrategy): Unit {
        if (this.checkPriority("marqueeUpdateStrategy")) {
            let value_casted: MarqueeUpdateStrategy = value
            let thisPeer = this.getPeer()
            thisPeer.setMarqueeUpdateStrategyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onStart(event: (() -> Unit)): Unit {
        if (this.checkPriority("onStart")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnStartAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onBounce(event: (() -> Unit)): Unit {
        if (this.checkPriority("onBounce")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnBounceAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onFinish(event: (() -> Unit)): Unit {
        if (this.checkPriority("onFinish")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnFinishAttribute(event_casted)
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
class MarqueeAttributeStyleHolder {
    var value: ?((attributes: MarqueeAttribute) -> Unit)
    init (value: ?((attributes: MarqueeAttribute) -> Unit)) {
        this.value = value
    }
}

class MarqueeAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkMarquee(
        style: ?((attributes: MarqueeAttribute) -> Unit),
        content_: ?(() -> Unit),
options: MarqueeOptions
    ): Unit {
        let styleHolder = MarqueeAttributeStyleHolder(style)
        let contentHolder = MarqueeAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkMarqueeComponent()
        })
        NodeAttach<ArkMarqueePeer>({ => ArkMarqueePeer.create(receiver, 0) }) {
            receiver.setMarqueeOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
