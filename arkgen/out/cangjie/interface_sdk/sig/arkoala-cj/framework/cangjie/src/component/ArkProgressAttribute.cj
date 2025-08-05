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
public interface ProgressAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ProgressAttribute <: ProgressAttributeInterfaces {
    ProgressAttribute() {
    }
}
public interface ProgressAttribute {
}
public open class ArkProgressComponent <: ArkCommonMethodComponent & ProgressAttribute {
    public open func getPeer(): ArkProgressPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkProgressPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setProgressOptions(options: ProgressOptions): Unit {
        if (this.checkPriority("setProgressOptions")) {
            let options_casted: ProgressOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setProgressOptions0Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func setProgressOptions(options: ProgressOptions): Unit {
        if (this.checkPriority("setProgressOptions")) {
            let options_casted: ProgressOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setProgressOptions1Attribute(options_casted)
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
    public open func color(value: Union_ResourceColor_LinearGradient): Unit {
        if (this.checkPriority("color")) {
            let value_casted: Union_ResourceColor_LinearGradient = value
            let thisPeer = this.getPeer()
            thisPeer.setColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func style(value: Union_LinearStyleOptions_RingStyleOptions_CapsuleStyleOptions_ProgressStyleOptions): Unit {
        if (this.checkPriority("style")) {
            let value_casted: Union_LinearStyleOptions_RingStyleOptions_CapsuleStyleOptions_ProgressStyleOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setStyleAttribute(value_casted)
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
    public open func contentModifier(modifier: ContentModifier<ProgressConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<ProgressConfiguration> = modifier
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
class ProgressAttributeStyleHolder {
    var value: ?((attributes: ProgressAttribute) -> Unit)
    init (value: ?((attributes: ProgressAttribute) -> Unit)) {
        this.value = value
    }
}

class ProgressAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkProgress(
        style: ?((attributes: ProgressAttribute) -> Unit),
        content_: ?(() -> Unit),
options: ProgressOptions
    ): Unit {
        let styleHolder = ProgressAttributeStyleHolder(style)
        let contentHolder = ProgressAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkProgressComponent()
        })
        NodeAttach<ArkProgressPeer>({ => ArkProgressPeer.create(receiver, 0) }) {
            receiver.setProgressOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
public interface ProgressAttribute {
}
public open class ArkProgressComponent <: ArkCommonMethodComponent & ProgressAttribute {
    public open func getPeer(): ArkProgressPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkProgressPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setProgressOptions(options: ProgressOptions): Unit {
        if (this.checkPriority("setProgressOptions")) {
            let options_casted: ProgressOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setProgressOptions0Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func setProgressOptions(options: ProgressOptions): Unit {
        if (this.checkPriority("setProgressOptions")) {
            let options_casted: ProgressOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setProgressOptions1Attribute(options_casted)
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
    public open func color(value: Union_ResourceColor_LinearGradient): Unit {
        if (this.checkPriority("color")) {
            let value_casted: Union_ResourceColor_LinearGradient = value
            let thisPeer = this.getPeer()
            thisPeer.setColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func style(value: Type_ProgressAttribute_style_value): Unit {
        if (this.checkPriority("style")) {
            let value_casted: Type_ProgressAttribute_style_value = value
            let thisPeer = this.getPeer()
            thisPeer.setStyleAttribute(value_casted)
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
    public open func contentModifier(modifier: ContentModifier<ProgressConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<ProgressConfiguration> = modifier
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
class ProgressAttributeStyleHolder {
    var value: ?((attributes: ProgressAttribute) -> Unit)
    init (value: ?((attributes: ProgressAttribute) -> Unit)) {
        this.value = value
    }
}

class ProgressAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkProgress(
        style: ?((attributes: ProgressAttribute) -> Unit),
        content_: ?(() -> Unit),
options: ProgressOptions
    ): Unit {
        let styleHolder = ProgressAttributeStyleHolder(style)
        let contentHolder = ProgressAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkProgressComponent()
        })
        NodeAttach<ArkProgressPeer>({ => ArkProgressPeer.create(receiver, 0) }) {
            receiver.setProgressOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
