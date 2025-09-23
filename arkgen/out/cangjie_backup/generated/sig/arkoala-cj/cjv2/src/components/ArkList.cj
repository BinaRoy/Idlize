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

// @!APILevel[20, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true, noninterop: true]
public type OnListStyleCallback = (attributes: ListAttributeInterfaces) -> Unit
public type OnListContentCallback = () -> Unit
public open class ArkListComponent <: ArkScrollableCommonMethodComponent {
    protected  func getPeer(): ArkListPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkListPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[18, syscap: "SystemCapability.ArkUI.ArkUI.Full", form: true, crossplatform: true, atomicservice: true]
    public func setListOptions(): This {
        this.getPeer().listOptionsAttribute()
        return this
    }
    public func someOptional(param: Bool): This {
        this.getPeer().someOptionalAttribute(param)
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
class ListAttributeStyleHolder {
    var value: Option<OnListStyleCallback>
    init (value: Option<OnListStyleCallback>) {
        this.value = value
    }
}

class ListAttributeContentHolder {
    var value: Option<OnListContentCallback>
    init (value: Option<OnListContentCallback>) {
        this.value = value
    }
}


@Memo
public func ArkList(
    style: Option<OnListStyleCallback>,
    content_: Option<OnListContentCallback>
): Unit {
    let receiver = remember<ArkListComponent>({ => 
        ArkListComponent()
    })
    NodeAttach<ArkListPeer>(
        { => ArkListPeer.create(receiver, 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        },
        Option.None
    )
}

