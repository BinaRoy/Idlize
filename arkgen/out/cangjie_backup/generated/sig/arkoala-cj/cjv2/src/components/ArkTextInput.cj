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

package idlize.components
import idlize.commonPara.*

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

// @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true, noninterop: true]
public type OnTextInputStyleCallback = (attributes: TextInputAttributeInterfaces) -> Unit
public type OnTextInputContentCallback = () -> Unit
public open class ArkTextInputComponent <: ArkCommonMethodComponent {
    protected  func getPeer(): ArkTextInputPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTextInputPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func setTextInputOptions(value!: Option<TextInputOptions> = Option.None): This {
        this.getPeer().textInputOptionsAttribute(value)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func type_(value: InputType): This {
        this.getPeer().typeAttribute(value)
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", atomicservice: true]
    public func contentType(value: ContentType): This {
        this.getPeer().contentTypeAttribute(value)
        return this
    }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func onCopy(callback_: OnTextInputCopyCallback): This {
        this.getPeer().onCopyAttribute(Some(callback_))
        return this
    }
    public func onText(callback: OnTextInputTextCallback): This {
        this.getPeer().onTextAttribute(callback)
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
class TextInputAttributeStyleHolder {
    var value: Option<OnTextInputStyleCallback>
    init (value: Option<OnTextInputStyleCallback>) {
        this.value = value
    }
}

class TextInputAttributeContentHolder {
    var value: Option<OnTextInputContentCallback>
    init (value: Option<OnTextInputContentCallback>) {
        this.value = value
    }
}


@Memo
public func ArkTextInput(
    style: Option<OnTextInputStyleCallback>,
    content_: Option<OnTextInputContentCallback>,
value!: Option<TextInputOptions> = Option.None
): Unit {
    let receiver = remember<ArkTextInputComponent>({ => 
        ArkTextInputComponent()
    })
    NodeAttach<ArkTextInputPeer>(
        { => ArkTextInputPeer.create(receiver, 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        },
        Option.None
    )
}

