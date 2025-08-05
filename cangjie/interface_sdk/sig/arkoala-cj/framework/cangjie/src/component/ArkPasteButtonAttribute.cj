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
public interface PasteButtonAttributeInterfaces <: SecurityComponentMethodInterfaces {
}
public open class PasteButtonAttribute <: PasteButtonAttributeInterfaces {
    PasteButtonAttribute() {
    }
}
public interface PasteButtonAttribute {
}
public open class ArkPasteButtonComponent <: ArkSecurityComponentMethodComponent & PasteButtonAttribute {
    public open func getPeer(): ArkPasteButtonPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkPasteButtonPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setPasteButtonOptions(): Unit {
        if (this.checkPriority("setPasteButtonOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setPasteButtonOptions0Attribute()
            return
        }
        return
    }
    )
    public open func setPasteButtonOptions(options: PasteButtonOptions): Unit {
        if (this.checkPriority("setPasteButtonOptions")) {
            let options_casted: PasteButtonOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setPasteButtonOptions1Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func onClick(event: PasteButtonCallback): Unit {
        if (this.checkPriority("onClick")) {
            let event_casted: PasteButtonCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnClickAttribute(event_casted)
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
class PasteButtonAttributeStyleHolder {
    var value: ?((attributes: PasteButtonAttribute) -> Unit)
    init (value: ?((attributes: PasteButtonAttribute) -> Unit)) {
        this.value = value
    }
}

class PasteButtonAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkPasteButton(
        style: ?((attributes: PasteButtonAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<PasteButtonOptions>
    ): Unit {
        let styleHolder = PasteButtonAttributeStyleHolder(style)
        let contentHolder = PasteButtonAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkPasteButtonComponent()
        })
        NodeAttach<ArkPasteButtonPeer>({ => ArkPasteButtonPeer.create(receiver, 0) }) {
            receiver.setPasteButtonOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
