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
public interface XComponentAttributeInterfaces <: CommonMethodInterfaces {
}
public open class XComponentAttribute <: XComponentAttributeInterfaces {
    XComponentAttribute() {
    }
}
public interface XComponentAttribute {
}
public open class ArkXComponentComponent <: ArkCommonMethodComponent & XComponentAttribute {
    public open func getPeer(): ArkXComponentPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkXComponentPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setXComponentOptions(value: Type_XComponentInterface_callable0_value): Unit {
        if (this.checkPriority("setXComponentOptions")) {
            let value_casted: Type_XComponentInterface_callable0_value = value
            let thisPeer = this.getPeer()
            thisPeer.setXComponentOptions0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func setXComponentOptions(value: Type_XComponentInterface_callable1_value): Unit {
        if (this.checkPriority("setXComponentOptions")) {
            let value_casted: Type_XComponentInterface_callable1_value = value
            let thisPeer = this.getPeer()
            thisPeer.setXComponentOptions1Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func setXComponentOptions(options: XComponentOptions): Unit {
        if (this.checkPriority("setXComponentOptions")) {
            let options_casted: XComponentOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setXComponentOptions2Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func setXComponentOptions(params: NativeXComponentParameters): Unit {
        if (this.checkPriority("setXComponentOptions")) {
            let params_casted: NativeXComponentParameters = params
            let thisPeer = this.getPeer()
            thisPeer.setXComponentOptions3Attribute(params_casted)
            return
        }
        return
    }
    )
    public open func onLoad(callback_: OnNativeLoadCallback): Unit {
        if (this.checkPriority("onLoad")) {
            let callback__casted: OnNativeLoadCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnLoadAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDestroy(event: VoidCallback): Unit {
        if (this.checkPriority("onDestroy")) {
            let event_casted: VoidCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnDestroyAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func enableAnalyzer(enable: Bool): Unit {
        if (this.checkPriority("enableAnalyzer")) {
            let enable_casted: Bool = enable
            let thisPeer = this.getPeer()
            thisPeer.setEnableAnalyzerAttribute(enable_casted)
            return
        }
        return
    }
    )
    public open func enableSecure(isSecure: Bool): Unit {
        if (this.checkPriority("enableSecure")) {
            let isSecure_casted: Bool = isSecure
            let thisPeer = this.getPeer()
            thisPeer.setEnableSecureAttribute(isSecure_casted)
            return
        }
        return
    }
    )
    public open func hdrBrightness(brightness: Float64): Unit {
        if (this.checkPriority("hdrBrightness")) {
            let brightness_casted: Float64 = brightness
            let thisPeer = this.getPeer()
            thisPeer.setHdrBrightnessAttribute(brightness_casted)
            return
        }
        return
    }
    )
    public open func enableTransparentLayer(enabled: Bool): Unit {
        if (this.checkPriority("enableTransparentLayer")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setEnableTransparentLayerAttribute(enabled_casted)
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
class XComponentAttributeStyleHolder {
    var value: ?((attributes: XComponentAttribute) -> Unit)
    init (value: ?((attributes: XComponentAttribute) -> Unit)) {
        this.value = value
    }
}

class XComponentAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkXComponent(
        style: ?((attributes: XComponentAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Union_Type_XComponentInterface_callable0_value_Type_XComponentInterface_callable1_value_XComponentOptions_NativeXComponentParameters
    ): Unit {
        let styleHolder = XComponentAttributeStyleHolder(style)
        let contentHolder = XComponentAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkXComponentComponent()
        })
        NodeAttach<ArkXComponentPeer>({ => ArkXComponentPeer.create(receiver, 0) }) {
            receiver.setXComponentOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
