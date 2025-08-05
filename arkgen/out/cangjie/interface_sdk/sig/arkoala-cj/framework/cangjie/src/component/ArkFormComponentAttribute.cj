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
public interface FormComponentAttributeInterfaces <: CommonMethodInterfaces {
}
public open class FormComponentAttribute <: FormComponentAttributeInterfaces {
    FormComponentAttribute() {
    }
}
public interface FormComponentAttribute {
}
public open class ArkFormComponentComponent <: ArkCommonMethodComponent & FormComponentAttribute {
    public open func getPeer(): ArkFormComponentPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkFormComponentPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setFormComponentOptions(value: FormInfo): Unit {
        if (this.checkPriority("setFormComponentOptions")) {
            let value_casted: FormInfo = value
            let thisPeer = this.getPeer()
            thisPeer.setFormComponentOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func size(formSize: FormSize): Unit {
        if (this.checkPriority("size")) {
            let formSize_casted: FormSize = formSize
            let thisPeer = this.getPeer()
            thisPeer.setSizeAttribute(formSize_casted)
            return
        }
        return
    }
    )
    public open func moduleName(value: String): Unit {
        if (this.checkPriority("moduleName")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setModuleNameAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func dimension(value: FormDimension): Unit {
        if (this.checkPriority("dimension")) {
            let value_casted: FormDimension = value
            let thisPeer = this.getPeer()
            thisPeer.setDimensionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func allowUpdate(value: Bool): Unit {
        if (this.checkPriority("allowUpdate")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAllowUpdateAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func visibility(value: Visibility): Unit {
        if (this.checkPriority("visibility")) {
            let value_casted: Visibility = value
            let thisPeer = this.getPeer()
            thisPeer.setVisibilityAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onAcquired(callback_: ((parameter: FormCallbackInfo) -> Unit)): Unit {
        if (this.checkPriority("onAcquired")) {
            let callback__casted: ((parameter: FormCallbackInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAcquiredAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onError(callback_: ((parameter: ErrorInformation) -> Unit)): Unit {
        if (this.checkPriority("onError")) {
            let callback__casted: ((parameter: ErrorInformation) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnErrorAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRouter(callback: ((info: String) -> Unit)): Unit {
        if (this.checkPriority("onRouter")) {
            let callback_casted: ((info: String) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.setOnRouterAttribute(callback_casted)
            return
        }
        return
    }
    )
    public open func onUninstall(callback_: ((parameter: FormCallbackInfo) -> Unit)): Unit {
        if (this.checkPriority("onUninstall")) {
            let callback__casted: ((parameter: FormCallbackInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnUninstallAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onLoad(callback_: VoidCallback): Unit {
        if (this.checkPriority("onLoad")) {
            let callback__casted: VoidCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnLoadAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onUpdate(callback_: ((parameter: FormCallbackInfo) -> Unit)): Unit {
        if (this.checkPriority("onUpdate")) {
            let callback__casted: ((parameter: FormCallbackInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnUpdateAttribute(callback__casted)
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
class FormComponentAttributeStyleHolder {
    var value: ?((attributes: FormComponentAttribute) -> Unit)
    init (value: ?((attributes: FormComponentAttribute) -> Unit)) {
        this.value = value
    }
}

class FormComponentAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkFormComponent(
        style: ?((attributes: FormComponentAttribute) -> Unit),
        content_: ?(() -> Unit),
value: FormInfo
    ): Unit {
        let styleHolder = FormComponentAttributeStyleHolder(style)
        let contentHolder = FormComponentAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkFormComponentComponent()
        })
        NodeAttach<ArkFormComponentPeer>({ => ArkFormComponentPeer.create(receiver, 0) }) {
            receiver.setFormComponentOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
