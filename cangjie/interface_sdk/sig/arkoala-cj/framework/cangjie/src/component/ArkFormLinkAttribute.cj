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
public interface FormLinkAttributeInterfaces <: CommonMethodInterfaces {
}
public open class FormLinkAttribute <: FormLinkAttributeInterfaces {
    FormLinkAttribute() {
    }
}
public interface FormLinkAttribute {
}
public open class ArkFormLinkComponent <: ArkCommonMethodComponent & FormLinkAttribute {
    public open func getPeer(): ArkFormLinkPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkFormLinkPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setFormLinkOptions(options: FormLinkOptions): Unit {
        if (this.checkPriority("setFormLinkOptions")) {
            let options_casted: FormLinkOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setFormLinkOptionsAttribute(options_casted)
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
class FormLinkAttributeStyleHolder {
    var value: ?((attributes: FormLinkAttribute) -> Unit)
    init (value: ?((attributes: FormLinkAttribute) -> Unit)) {
        this.value = value
    }
}

class FormLinkAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkFormLink(
        style: ?((attributes: FormLinkAttribute) -> Unit),
        content_: ?(() -> Unit),
options: FormLinkOptions
    ): Unit {
        let styleHolder = FormLinkAttributeStyleHolder(style)
        let contentHolder = FormLinkAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkFormLinkComponent()
        })
        NodeAttach<ArkFormLinkPeer>({ => ArkFormLinkPeer.create(receiver, 0) }) {
            receiver.setFormLinkOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
