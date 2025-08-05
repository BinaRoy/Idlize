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
public interface LoadingProgressAttributeInterfaces <: CommonMethodInterfaces {
}
public open class LoadingProgressAttribute <: LoadingProgressAttributeInterfaces {
    LoadingProgressAttribute() {
    }
}
public interface LoadingProgressAttribute {
}
public open class ArkLoadingProgressComponent <: ArkCommonMethodComponent & LoadingProgressAttribute {
    public open func getPeer(): ArkLoadingProgressPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkLoadingProgressPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setLoadingProgressOptions(): Unit {
        if (this.checkPriority("setLoadingProgressOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setLoadingProgressOptionsAttribute()
            return
        }
        return
    }
    )
    public open func color(value: ResourceColor): Unit {
        if (this.checkPriority("color")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func enableLoading(value: Bool): Unit {
        if (this.checkPriority("enableLoading")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setEnableLoadingAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func contentModifier(modifier: ContentModifier<LoadingProgressConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<LoadingProgressConfiguration> = modifier
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
class LoadingProgressAttributeStyleHolder {
    var value: ?((attributes: LoadingProgressAttribute) -> Unit)
    init (value: ?((attributes: LoadingProgressAttribute) -> Unit)) {
        this.value = value
    }
}

class LoadingProgressAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkLoadingProgress(
        style: ?((attributes: LoadingProgressAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = LoadingProgressAttributeStyleHolder(style)
        let contentHolder = LoadingProgressAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkLoadingProgressComponent()
        })
        NodeAttach<ArkLoadingProgressPeer>({ => ArkLoadingProgressPeer.create(receiver, 0) }) {
            receiver.setLoadingProgressOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
