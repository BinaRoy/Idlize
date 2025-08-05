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
public interface QRCodeAttributeInterfaces <: CommonMethodInterfaces {
}
public open class QRCodeAttribute <: QRCodeAttributeInterfaces {
    QRCodeAttribute() {
    }
}
public interface QRCodeAttribute {
}
public open class ArkQRCodeComponent <: ArkCommonMethodComponent & QRCodeAttribute {
    public open func getPeer(): ArkQRCodePeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkQRCodePeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setQRCodeOptions(value: ResourceStr): Unit {
        if (this.checkPriority("setQRCodeOptions")) {
            let value_casted: ResourceStr = value
            let thisPeer = this.getPeer()
            thisPeer.setQRCodeOptionsAttribute(value_casted)
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
    public open func backgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("backgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func contentOpacity(value: Union_Number_Resource): Unit {
        if (this.checkPriority("contentOpacity")) {
            let value_casted: Union_Number_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setContentOpacityAttribute(value_casted)
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
class QRCodeAttributeStyleHolder {
    var value: ?((attributes: QRCodeAttribute) -> Unit)
    init (value: ?((attributes: QRCodeAttribute) -> Unit)) {
        this.value = value
    }
}

class QRCodeAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkQRCode(
        style: ?((attributes: QRCodeAttribute) -> Unit),
        content_: ?(() -> Unit),
value: ResourceStr
    ): Unit {
        let styleHolder = QRCodeAttributeStyleHolder(style)
        let contentHolder = QRCodeAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkQRCodeComponent()
        })
        NodeAttach<ArkQRCodePeer>({ => ArkQRCodePeer.create(receiver, 0) }) {
            receiver.setQRCodeOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
