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

import idlize.peers.*

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

// @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true, noninterop: true]
public type OnButtonStyleCallback = (attributes: ArkButtonComponent) -> Unit
public type OnButtonContentCallback = () -> Unit
public open class ArkButtonComponent <: ArkCommonMethodComponent {
    protected  func getPeer(): ArkButtonPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkButtonPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func setButtonOptions(): This {
        this.getPeer().buttonOptionsAttribute()
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func type_(value: ButtonType): This {
        this.getPeer().typeAttribute(value)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func fontColor(value: ResourceColor): This {
        this.getPeer().fontColorAttribute(value)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func labelStyle(value: LabelStyle): This {
        this.getPeer().labelStyleAttribute(value)
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
@Memo
public func ArkButton(
    style: Option<OnButtonStyleCallback>,
    content_: Option<OnButtonContentCallback>
): Unit {
    let receiver = remember<ArkButtonComponent>({ => 
        ArkButtonComponent()
    })
    NodeAttach<ArkButtonPeer>(
        { => ArkButtonPeer.create(receiver, flags: 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        }
    )
}

