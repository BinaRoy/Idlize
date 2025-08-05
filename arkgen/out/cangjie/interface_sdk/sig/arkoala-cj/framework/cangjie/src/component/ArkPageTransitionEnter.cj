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
public interface PageTransitionEnter {
}
public open class ArkPageTransitionEnterComponent <: ArkCommonTransitionComponent & PageTransitionEnter {
    public open func getPeer(): ArkPageTransitionEnterPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkPageTransitionEnterPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setPageTransitionEnterOptions(value: PageTransitionOptions): Unit {
        if (this.checkPriority("setPageTransitionEnterOptions")) {
            let value_casted: PageTransitionOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setPageTransitionEnterOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public static func dollar__invoke(value: PageTransitionOptions): Unit {
        if (this.checkPriority("dollar__invoke")) {
            let value_casted: PageTransitionOptions = value
            PageTransitionEnter.setDollar__invokeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onEnter(event: PageTransitionCallback): Any {
        if (this.checkPriority("onEnter")) {
            let event_casted: PageTransitionCallback = event
            return this.getPeer().setOnEnterAttribute(event_casted)
        }
        return
    }
    )
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class PageTransitionEnterStyleHolder {
    var value: ?((attributes: PageTransitionEnter) -> Unit)
    init (value: ?((attributes: PageTransitionEnter) -> Unit)) {
        this.value = value
    }
}

class PageTransitionEnterContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkPageTransitionEnter(
        style: ?((attributes: PageTransitionEnter) -> Unit),
        content_: ?(() -> Unit),
value: PageTransitionOptions
    ): Unit {
        let styleHolder = PageTransitionEnterStyleHolder(style)
        let contentHolder = PageTransitionEnterContentHolder(content_)
        let receiver = remember({ =>
            ArkPageTransitionEnterComponent()
        })
        NodeAttach<ArkPageTransitionEnterPeer>({ => ArkPageTransitionEnterPeer.create(receiver, 0) }) {
            receiver.setPageTransitionEnterOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
