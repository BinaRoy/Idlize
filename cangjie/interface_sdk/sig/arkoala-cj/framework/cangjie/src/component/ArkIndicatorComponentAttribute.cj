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
public interface IndicatorComponentAttributeInterfaces <: CommonMethodInterfaces {
}
public open class IndicatorComponentAttribute <: IndicatorComponentAttributeInterfaces {
    IndicatorComponentAttribute() {
    }
}
public interface IndicatorComponentAttribute {
}
public open class ArkIndicatorComponentComponent <: ArkCommonMethodComponent & IndicatorComponentAttribute {
    public open func getPeer(): ArkIndicatorComponentPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkIndicatorComponentPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setIndicatorComponentOptions(controller: Option<IndicatorComponentController>): Unit {
        if (this.checkPriority("setIndicatorComponentOptions")) {
            let controller_casted: Option<IndicatorComponentController> = if (let Some(controller) <- controller) {controller} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setIndicatorComponentOptionsAttribute(controller_casted)
            return
        }
        return
    }
    )
    public open func initialIndex(index: Float64): Unit {
        if (this.checkPriority("initialIndex")) {
            let index_casted: Float64 = index
            let thisPeer = this.getPeer()
            thisPeer.setInitialIndexAttribute(index_casted)
            return
        }
        return
    }
    )
    public open func count(totalCount: Float64): Unit {
        if (this.checkPriority("count")) {
            let totalCount_casted: Float64 = totalCount
            let thisPeer = this.getPeer()
            thisPeer.setCountAttribute(totalCount_casted)
            return
        }
        return
    }
    )
    public open func style(indicatorStyle: Union_DotIndicator_DigitIndicator): Unit {
        if (this.checkPriority("style")) {
            let indicatorStyle_casted: Union_DotIndicator_DigitIndicator = indicatorStyle
            let thisPeer = this.getPeer()
            thisPeer.setStyleAttribute(indicatorStyle_casted)
            return
        }
        return
    }
    )
    public open func loop(isLoop: Bool): Unit {
        if (this.checkPriority("loop")) {
            let isLoop_casted: Bool = isLoop
            let thisPeer = this.getPeer()
            thisPeer.setLoopAttribute(isLoop_casted)
            return
        }
        return
    }
    )
    public open func vertical(isVertical: Bool): Unit {
        if (this.checkPriority("vertical")) {
            let isVertical_casted: Bool = isVertical
            let thisPeer = this.getPeer()
            thisPeer.setVerticalAttribute(isVertical_casted)
            return
        }
        return
    }
    )
    public open func onChange(event: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let event_casted: ((parameter: Float64) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(event_casted)
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
class IndicatorComponentAttributeStyleHolder {
    var value: ?((attributes: IndicatorComponentAttribute) -> Unit)
    init (value: ?((attributes: IndicatorComponentAttribute) -> Unit)) {
        this.value = value
    }
}

class IndicatorComponentAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkIndicatorComponent(
        style: ?((attributes: IndicatorComponentAttribute) -> Unit),
        content_: ?(() -> Unit),
controller: Option<IndicatorComponentController>
    ): Unit {
        let styleHolder = IndicatorComponentAttributeStyleHolder(style)
        let contentHolder = IndicatorComponentAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkIndicatorComponentComponent()
        })
        NodeAttach<ArkIndicatorComponentPeer>({ => ArkIndicatorComponentPeer.create(receiver, 0) }) {
            receiver.setIndicatorComponentOptions(controller)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
