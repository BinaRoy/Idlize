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
public interface EmbeddedComponentAttributeInterfaces <: CommonMethodInterfaces {
}
public open class EmbeddedComponentAttribute <: EmbeddedComponentAttributeInterfaces {
    EmbeddedComponentAttribute() {
    }
}
public interface EmbeddedComponentAttribute {
}
public open class ArkEmbeddedComponentComponent <: ArkCommonMethodComponent & EmbeddedComponentAttribute {
    public open func getPeer(): ArkEmbeddedComponentPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkEmbeddedComponentPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setEmbeddedComponentOptions(loader: Any, type_: EmbeddedType): Unit {
        if (this.checkPriority("setEmbeddedComponentOptions")) {
            let loader_casted: Any = loader
            let type_casted: EmbeddedType = type_
            let thisPeer = this.getPeer()
            thisPeer.setEmbeddedComponentOptions0Attribute(loader_casted, type_casted)
            return
        }
        return
    }
    )
    public open func setEmbeddedComponentOptions(loader: Want, type_: EmbeddedType): Unit {
        if (this.checkPriority("setEmbeddedComponentOptions")) {
            let loader_casted: Want = loader
            let type_casted: EmbeddedType = type_
            let thisPeer = this.getPeer()
            thisPeer.setEmbeddedComponentOptions1Attribute(loader_casted, type_casted)
            return
        }
        return
    }
    )
    public open func onTerminated(callback_: ((parameter: TerminationInfo) -> Unit)): Unit {
        if (this.checkPriority("onTerminated")) {
            let callback__casted: ((parameter: TerminationInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTerminated0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onTerminated(callback_: ((parameter: TerminationInfo) -> Unit)): Unit {
        if (this.checkPriority("onTerminated")) {
            let callback__casted: ((parameter: TerminationInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTerminated1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onError(callback_: Any): Unit {
        if (this.checkPriority("onError")) {
            let callback__casted: Any = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnError0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onError(callback_: ErrorCallback<BusinessError>): Unit {
        if (this.checkPriority("onError")) {
            let callback__casted: ErrorCallback<BusinessError> = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnError1Attribute(callback__casted)
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
class EmbeddedComponentAttributeStyleHolder {
    var value: ?((attributes: EmbeddedComponentAttribute) -> Unit)
    init (value: ?((attributes: EmbeddedComponentAttribute) -> Unit)) {
        this.value = value
    }
}

class EmbeddedComponentAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkEmbeddedComponent(
        style: ?((attributes: EmbeddedComponentAttribute) -> Unit),
        content_: ?(() -> Unit),
loader: Union__default_Want, type: EmbeddedType
    ): Unit {
        let styleHolder = EmbeddedComponentAttributeStyleHolder(style)
        let contentHolder = EmbeddedComponentAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkEmbeddedComponentComponent()
        })
        NodeAttach<ArkEmbeddedComponentPeer>({ => ArkEmbeddedComponentPeer.create(receiver, 0) }) {
            receiver.setEmbeddedComponentOptions(loader,type)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
