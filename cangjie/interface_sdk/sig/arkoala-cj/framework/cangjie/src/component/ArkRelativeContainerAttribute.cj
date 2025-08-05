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
public interface RelativeContainerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RelativeContainerAttribute <: RelativeContainerAttributeInterfaces {
    RelativeContainerAttribute() {
    }
}
public interface RelativeContainerAttribute {
}
public open class ArkRelativeContainerComponent <: ArkCommonMethodComponent & RelativeContainerAttribute {
    public open func getPeer(): ArkRelativeContainerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRelativeContainerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRelativeContainerOptions(): Unit {
        if (this.checkPriority("setRelativeContainerOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setRelativeContainerOptionsAttribute()
            return
        }
        return
    }
    )
    public open func guideLine(value: ArrayList<GuideLineStyle>): Unit {
        if (this.checkPriority("guideLine")) {
            let value_casted: ArrayList<GuideLineStyle> = value
            let thisPeer = this.getPeer()
            thisPeer.setGuideLineAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func barrier(value: ArrayList<BarrierStyle>): Unit {
        if (this.checkPriority("barrier")) {
            let value_casted: ArrayList<BarrierStyle> = value
            let thisPeer = this.getPeer()
            thisPeer.setBarrier0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func barrier(barrierStyle: ArrayList<LocalizedBarrierStyle>): Unit {
        if (this.checkPriority("barrier")) {
            let barrierStyle_casted: ArrayList<LocalizedBarrierStyle> = barrierStyle
            let thisPeer = this.getPeer()
            thisPeer.setBarrier1Attribute(barrierStyle_casted)
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
class RelativeContainerAttributeStyleHolder {
    var value: ?((attributes: RelativeContainerAttribute) -> Unit)
    init (value: ?((attributes: RelativeContainerAttribute) -> Unit)) {
        this.value = value
    }
}

class RelativeContainerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRelativeContainer(
        style: ?((attributes: RelativeContainerAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = RelativeContainerAttributeStyleHolder(style)
        let contentHolder = RelativeContainerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRelativeContainerComponent()
        })
        NodeAttach<ArkRelativeContainerPeer>({ => ArkRelativeContainerPeer.create(receiver, 0) }) {
            receiver.setRelativeContainerOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
