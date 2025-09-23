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

// @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true, noninterop: true]
public type OnBlankStyleCallback = (attributes: BlankAttributeInterfaces) -> Unit
public type OnBlankContentCallback = () -> Unit
public open class ArkBlankComponent <: ArkCommonMethodComponent {
    protected  func getPeer(): ArkBlankPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkBlankPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func setBlankOptions(min!: Float64 = 0.0): This {
        this.getPeer().blankOptionsAttribute(Some(min))
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func color(value: ResourceColor): This {
        this.getPeer().colorAttribute(value)
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
class BlankAttributeStyleHolder {
    var value: Option<OnBlankStyleCallback>
    init (value: Option<OnBlankStyleCallback>) {
        this.value = value
    }
}

class BlankAttributeContentHolder {
    var value: Option<OnBlankContentCallback>
    init (value: Option<OnBlankContentCallback>) {
        this.value = value
    }
}


@Memo
public func ArkBlank(
    style: Option<OnBlankStyleCallback>,
    content_: Option<OnBlankContentCallback>,
min!: Float64 = 0.0
): Unit {
    let receiver = remember<ArkBlankComponent>({ => 
        ArkBlankComponent()
    })
    NodeAttach<ArkBlankPeer>(
        { => ArkBlankPeer.create(receiver, 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        },
        Option.None
    )
}

