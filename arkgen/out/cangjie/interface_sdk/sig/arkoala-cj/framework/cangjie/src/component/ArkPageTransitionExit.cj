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
public interface PageTransitionExit {
}
public open class ArkPageTransitionExitComponent <: ArkCommonTransitionComponent & PageTransitionExit {
    public open func getPeer(): ArkPageTransitionExitPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkPageTransitionExitPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setPageTransitionExitOptions(value: PageTransitionOptions): Unit {
        if (this.checkPriority("setPageTransitionExitOptions")) {
            let value_casted: PageTransitionOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setPageTransitionExitOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public static func dollar__invoke(value: PageTransitionOptions): Unit {
        if (this.checkPriority("dollar__invoke")) {
            let value_casted: PageTransitionOptions = value
            PageTransitionExit.setDollar__invokeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onExit(event: PageTransitionCallback): Any {
        if (this.checkPriority("onExit")) {
            let event_casted: PageTransitionCallback = event
            return this.getPeer().setOnExitAttribute(event_casted)
        }
        return
    }
    )
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class PageTransitionExitStyleHolder {
    var value: ?((attributes: PageTransitionExit) -> Unit)
    init (value: ?((attributes: PageTransitionExit) -> Unit)) {
        this.value = value
    }
}

class PageTransitionExitContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkPageTransitionExit(
        style: ?((attributes: PageTransitionExit) -> Unit),
        content_: ?(() -> Unit),
value: PageTransitionOptions
    ): Unit {
        let styleHolder = PageTransitionExitStyleHolder(style)
        let contentHolder = PageTransitionExitContentHolder(content_)
        let receiver = remember({ =>
            ArkPageTransitionExitComponent()
        })
        NodeAttach<ArkPageTransitionExitPeer>({ => ArkPageTransitionExitPeer.create(receiver, 0) }) {
            receiver.setPageTransitionExitOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
