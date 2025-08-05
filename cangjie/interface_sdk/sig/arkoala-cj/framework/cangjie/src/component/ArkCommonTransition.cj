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
public interface CommonTransition {
}
public open class ArkCommonTransitionComponent <: ComponentBase & CommonTransition {
    public open func getPeer(): ArkCommonTransitionPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonTransitionPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func slide(value: SlideEffect): Unit {
        if (this.checkPriority("slide")) {
            let value_casted: SlideEffect = value
            let thisPeer = this.getPeer()
            thisPeer.setSlideAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func translate(value: TranslateOptions): Unit {
        if (this.checkPriority("translate")) {
            let value_casted: TranslateOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setTranslateAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func scale(value: ScaleOptions): Unit {
        if (this.checkPriority("scale")) {
            let value_casted: ScaleOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setScaleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func opacity(value: Float64): Unit {
        if (this.checkPriority("opacity")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setOpacityAttribute(value_casted)
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
