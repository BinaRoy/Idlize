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

// @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
public type OnNavigationStyleCallback = (attributes: NavigationAttributeInterfaces) -> Unit
public type OnNavigationContentCallback = () -> Unit
public open class ArkNavigationComponent <: ArkCommonMethodComponent {
    protected  func getPeer(): ArkNavigationPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkNavigationPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[20, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func setNavigationOptions(): This {
        this.getPeer().navigationOptionsAttribute()
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func onTitleModeChange(callback_: OnNavigationTitleModeChangeCallback): This {
        this.getPeer().onTitleModeChangeAttribute(callback_)
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
class NavigationAttributeStyleHolder {
    var value: Option<OnNavigationStyleCallback>
    init (value: Option<OnNavigationStyleCallback>) {
        this.value = value
    }
}

class NavigationAttributeContentHolder {
    var value: Option<OnNavigationContentCallback>
    init (value: Option<OnNavigationContentCallback>) {
        this.value = value
    }
}


@Memo
public func ArkNavigation(
    style: Option<OnNavigationStyleCallback>,
    content_: Option<OnNavigationContentCallback>
): Unit {
    let receiver = remember<ArkNavigationComponent>({ => 
        ArkNavigationComponent()
    })
    NodeAttach<ArkNavigationPeer>(
        { => ArkNavigationPeer.create(receiver, 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        },
        Option.None
    )
}

