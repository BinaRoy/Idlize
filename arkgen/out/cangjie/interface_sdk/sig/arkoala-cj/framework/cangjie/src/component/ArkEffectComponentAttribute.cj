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
public interface EffectComponentAttributeInterfaces <: CommonMethodInterfaces {
}
public open class EffectComponentAttribute <: EffectComponentAttributeInterfaces {
    EffectComponentAttribute() {
    }
}
public interface EffectComponentAttribute {
}
public open class ArkEffectComponentComponent <: ArkCommonMethodComponent & EffectComponentAttribute {
    public open func getPeer(): ArkEffectComponentPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkEffectComponentPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setEffectComponentOptions(): Unit {
        if (this.checkPriority("setEffectComponentOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setEffectComponentOptions0Attribute()
            return
        }
        return
    }
    )
    public open func setEffectComponentOptions(options: Option<EffectComponentOptions>): Unit {
        if (this.checkPriority("setEffectComponentOptions")) {
            let options_casted: Option<EffectComponentOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEffectComponentOptions1Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func alwaysSnapshot(enable: Bool): Unit {
        if (this.checkPriority("alwaysSnapshot")) {
            let enable_casted: Bool = enable
            let thisPeer = this.getPeer()
            thisPeer.setAlwaysSnapshotAttribute(enable_casted)
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
class EffectComponentAttributeStyleHolder {
    var value: ?((attributes: EffectComponentAttribute) -> Unit)
    init (value: ?((attributes: EffectComponentAttribute) -> Unit)) {
        this.value = value
    }
}

class EffectComponentAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkEffectComponent(
        style: ?((attributes: EffectComponentAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<EffectComponentOptions>
    ): Unit {
        let styleHolder = EffectComponentAttributeStyleHolder(style)
        let contentHolder = EffectComponentAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkEffectComponentComponent()
        })
        NodeAttach<ArkEffectComponentPeer>({ => ArkEffectComponentPeer.create(receiver, 0) }) {
            receiver.setEffectComponentOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
