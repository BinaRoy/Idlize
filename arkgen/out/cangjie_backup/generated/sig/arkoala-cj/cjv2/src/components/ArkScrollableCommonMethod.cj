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

// @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true, form: true]
public type OnScrollableCommonMethodStyleCallback = (attributes: ScrollableCommonMethodAttributeInterfaces) -> Unit
public type OnScrollableCommonMethodContentCallback = () -> Unit
public open class ArkScrollableCommonMethodComponent <: ArkCommonMethodComponent {
    protected  func getPeer(): ArkScrollableCommonMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkScrollableCommonMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func scrollBarWidth(value: Float64): This {
        this.getPeer().scrollBarWidthAttribute(Some(value))
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func scrollBarWidth(value: String): This {
        this.getPeer().scrollBarWidthAttribute(Some(value))
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
