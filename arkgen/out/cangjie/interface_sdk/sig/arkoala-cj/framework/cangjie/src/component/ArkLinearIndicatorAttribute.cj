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
public interface LinearIndicatorAttributeInterfaces <: CommonMethodInterfaces {
}
public open class LinearIndicatorAttribute <: LinearIndicatorAttributeInterfaces {
    LinearIndicatorAttribute() {
    }
}
public interface LinearIndicatorAttribute {
}
public open class ArkLinearIndicatorComponent <: ArkCommonMethodComponent & LinearIndicatorAttribute {
    public open func getPeer(): ArkLinearIndicatorPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkLinearIndicatorPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setLinearIndicatorOptions(count: Option<Float64>, controller: Option<LinearIndicatorController>): Unit {
        if (this.checkPriority("setLinearIndicatorOptions")) {
            let count_casted: Option<Float64> = if (let Some(count) <- count) {count} else { throw Exception("Type has to be not None")}
            let controller_casted: Option<LinearIndicatorController> = if (let Some(controller) <- controller) {controller} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLinearIndicatorOptionsAttribute(count_casted, controller_casted)
            return
        }
        return
    }
    )
    public open func indicatorStyle(style: Option<LinearIndicatorStyle>): Unit {
        if (this.checkPriority("indicatorStyle")) {
            let style_casted: Option<LinearIndicatorStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setIndicatorStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func indicatorLoop(loop: Option<Bool>): Unit {
        if (this.checkPriority("indicatorLoop")) {
            let loop_casted: Option<Bool> = if (let Some(loop) <- loop) {loop} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setIndicatorLoopAttribute(loop_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: Option<OnLinearIndicatorChangeCallback>): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: Option<OnLinearIndicatorChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
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
class LinearIndicatorAttributeStyleHolder {
    var value: ?((attributes: LinearIndicatorAttribute) -> Unit)
    init (value: ?((attributes: LinearIndicatorAttribute) -> Unit)) {
        this.value = value
    }
}

class LinearIndicatorAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkLinearIndicator(
        style: ?((attributes: LinearIndicatorAttribute) -> Unit),
        content_: ?(() -> Unit),
count: Option<Float64>, controller: Option<LinearIndicatorController>
    ): Unit {
        let styleHolder = LinearIndicatorAttributeStyleHolder(style)
        let contentHolder = LinearIndicatorAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkLinearIndicatorComponent()
        })
        NodeAttach<ArkLinearIndicatorPeer>({ => ArkLinearIndicatorPeer.create(receiver, 0) }) {
            receiver.setLinearIndicatorOptions(count,controller)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
