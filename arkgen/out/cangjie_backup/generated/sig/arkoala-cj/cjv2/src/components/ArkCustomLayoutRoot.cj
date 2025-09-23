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

public type OnCustomLayoutRootStyleCallback = (attributes: CustomLayoutRootAttributeInterfaces) -> Unit
public type OnCustomLayoutRootContentCallback = () -> Unit
public open class ArkCustomLayoutRootComponent <: ComponentBase {
    protected  func getPeer(): ArkCustomLayoutRootPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCustomLayoutRootPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public func subscribeOnMeasureSize(value: Callback_onMeasureSize_SizeResult): This {
        this.getPeer().subscribeOnMeasureSizeAttribute(value)
        return this
    }
    public func subscribeOnPlaceChildren(value: Callback_onPlaceChildren_Void): This {
        this.getPeer().subscribeOnPlaceChildrenAttribute(value)
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
