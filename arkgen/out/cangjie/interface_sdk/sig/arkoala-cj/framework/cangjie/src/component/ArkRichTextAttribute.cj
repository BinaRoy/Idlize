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
public interface RichTextAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RichTextAttribute <: RichTextAttributeInterfaces {
    RichTextAttribute() {
    }
}
public interface RichTextAttribute {
}
public open class ArkRichTextComponent <: ArkCommonMethodComponent & RichTextAttribute {
    public open func getPeer(): ArkRichTextPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRichTextPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRichTextOptions(content: Union_String_Resource): Unit {
        if (this.checkPriority("setRichTextOptions")) {
            let content_casted: Union_String_Resource = content
            let thisPeer = this.getPeer()
            thisPeer.setRichTextOptions0Attribute(content_casted)
            return
        }
        return
    }
    )
    public open func setRichTextOptions(content: String): Unit {
        if (this.checkPriority("setRichTextOptions")) {
            let content_casted: String = content
            let thisPeer = this.getPeer()
            thisPeer.setRichTextOptions1Attribute(content_casted)
            return
        }
        return
    }
    )
    public open func onStart(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onStart")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnStartAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onComplete(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onComplete")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnCompleteAttribute(callback__casted)
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
class RichTextAttributeStyleHolder {
    var value: ?((attributes: RichTextAttribute) -> Unit)
    init (value: ?((attributes: RichTextAttribute) -> Unit)) {
        this.value = value
    }
}

class RichTextAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRichText(
        style: ?((attributes: RichTextAttribute) -> Unit),
        content_: ?(() -> Unit),
content: Union_Union_String_Resource_String
    ): Unit {
        let styleHolder = RichTextAttributeStyleHolder(style)
        let contentHolder = RichTextAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRichTextComponent()
        })
        NodeAttach<ArkRichTextPeer>({ => ArkRichTextPeer.create(receiver, 0) }) {
            receiver.setRichTextOptions(content)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
