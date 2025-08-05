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
public interface UIExtensionComponentAttributeInterfaces <: CommonMethodInterfaces {
}
public open class UIExtensionComponentAttribute <: UIExtensionComponentAttributeInterfaces {
    UIExtensionComponentAttribute() {
    }
}
public interface UIExtensionComponentAttribute {
}
public open class ArkUIExtensionComponentComponent <: ArkCommonMethodComponent & UIExtensionComponentAttribute {
    public open func getPeer(): ArkUIExtensionComponentPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkUIExtensionComponentPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setUIExtensionComponentOptions(want: Any, options: Option<UIExtensionOptions>): Unit {
        if (this.checkPriority("setUIExtensionComponentOptions")) {
            let want_casted: Any = want
            let options_casted: Option<UIExtensionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setUIExtensionComponentOptions0Attribute(want_casted, options_casted)
            return
        }
        return
    }
    )
    public open func setUIExtensionComponentOptions(want: Want, options: Option<UIExtensionOptions>): Unit {
        if (this.checkPriority("setUIExtensionComponentOptions")) {
            let want_casted: Want = want
            let options_casted: Option<UIExtensionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setUIExtensionComponentOptions1Attribute(want_casted, options_casted)
            return
        }
        return
    }
    )
    public open func onRemoteReady(callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit {
        if (this.checkPriority("onRemoteReady")) {
            let callback__casted: ((parameter: UIExtensionProxy) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRemoteReady0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRemoteReady(callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit {
        if (this.checkPriority("onRemoteReady")) {
            let callback__casted: ((parameter: UIExtensionProxy) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRemoteReady1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onReceive(callback_: ((parameter: HashMap<String, Any>) -> Unit)): Unit {
        if (this.checkPriority("onReceive")) {
            let callback__casted: ((parameter: HashMap<String, Any>) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnReceiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onResult(callback_: ((parameter: Literal_Number_code__want) -> Unit)): Unit {
        if (this.checkPriority("onResult")) {
            let callback__casted: ((parameter: Literal_Number_code__want) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnResultAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRelease(callback_: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onRelease")) {
            let callback__casted: ((parameter: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnReleaseAttribute(callback__casted)
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
    public open func onTerminated(callback_: ((parameter: TerminationInfo) -> Unit)): Unit {
        if (this.checkPriority("onTerminated")) {
            let callback__casted: ((parameter: TerminationInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTerminatedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDrawReady(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onDrawReady")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDrawReadyAttribute(callback__casted)
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
class UIExtensionComponentAttributeStyleHolder {
    var value: ?((attributes: UIExtensionComponentAttribute) -> Unit)
    init (value: ?((attributes: UIExtensionComponentAttribute) -> Unit)) {
        this.value = value
    }
}

class UIExtensionComponentAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkUIExtensionComponent(
        style: ?((attributes: UIExtensionComponentAttribute) -> Unit),
        content_: ?(() -> Unit),
want: Union__default_Want, options: Option<UIExtensionOptions>
    ): Unit {
        let styleHolder = UIExtensionComponentAttributeStyleHolder(style)
        let contentHolder = UIExtensionComponentAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkUIExtensionComponentComponent()
        })
        NodeAttach<ArkUIExtensionComponentPeer>({ => ArkUIExtensionComponentPeer.create(receiver, 0) }) {
            receiver.setUIExtensionComponentOptions(want,options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
