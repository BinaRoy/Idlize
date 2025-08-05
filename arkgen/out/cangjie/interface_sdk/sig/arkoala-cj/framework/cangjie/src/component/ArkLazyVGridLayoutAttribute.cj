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
public interface LazyVGridLayoutAttributeInterfaces <: LazyGridLayoutAttributeInterfaces {
}
public open class LazyVGridLayoutAttribute <: LazyVGridLayoutAttributeInterfaces {
    LazyVGridLayoutAttribute() {
    }
}
public interface LazyVGridLayoutAttribute {
}
public open class ArkLazyVGridLayoutComponent <: ArkLazyGridLayoutComponent & LazyVGridLayoutAttribute {
    public open func getPeer(): ArkLazyVGridLayoutPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkLazyVGridLayoutPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setLazyVGridLayoutOptions(): Unit {
        if (this.checkPriority("setLazyVGridLayoutOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setLazyVGridLayoutOptionsAttribute()
            return
        }
        return
    }
    )
    public open func columnsTemplate(value: String): Unit {
        if (this.checkPriority("columnsTemplate")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setColumnsTemplateAttribute(value_casted)
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
class LazyVGridLayoutAttributeStyleHolder {
    var value: ?((attributes: LazyVGridLayoutAttribute) -> Unit)
    init (value: ?((attributes: LazyVGridLayoutAttribute) -> Unit)) {
        this.value = value
    }
}

class LazyVGridLayoutAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkLazyVGridLayout(
        style: ?((attributes: LazyVGridLayoutAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = LazyVGridLayoutAttributeStyleHolder(style)
        let contentHolder = LazyVGridLayoutAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkLazyVGridLayoutComponent()
        })
        NodeAttach<ArkLazyVGridLayoutPeer>({ => ArkLazyVGridLayoutPeer.create(receiver, 0) }) {
            receiver.setLazyVGridLayoutOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
