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
public interface TabContentAttributeInterfaces <: CommonMethodInterfaces {
}
public open class TabContentAttribute <: TabContentAttributeInterfaces {
    TabContentAttribute() {
    }
}
public interface TabContentAttribute {
}
public open class ArkTabContentComponent <: ArkCommonMethodComponent & TabContentAttribute {
    public open func getPeer(): ArkTabContentPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTabContentPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setTabContentOptions(): Unit {
        if (this.checkPriority("setTabContentOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setTabContentOptionsAttribute()
            return
        }
        return
    }
    )
    public open func tabBar(content: Type_TabContentAttribute_tabBar_content): Unit {
        if (this.checkPriority("tabBar")) {
            let content_casted: Type_TabContentAttribute_tabBar_content = content
            let thisPeer = this.getPeer()
            thisPeer.setTabBarAttribute(content_casted)
            return
        }
        return
    }
    )
    public open func onWillShow(event: VoidCallback): Unit {
        if (this.checkPriority("onWillShow")) {
            let event_casted: VoidCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnWillShowAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onWillHide(event: VoidCallback): Unit {
        if (this.checkPriority("onWillHide")) {
            let event_casted: VoidCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnWillHideAttribute(event_casted)
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
class TabContentAttributeStyleHolder {
    var value: ?((attributes: TabContentAttribute) -> Unit)
    init (value: ?((attributes: TabContentAttribute) -> Unit)) {
        this.value = value
    }
}

class TabContentAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkTabContent(
        style: ?((attributes: TabContentAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = TabContentAttributeStyleHolder(style)
        let contentHolder = TabContentAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkTabContentComponent()
        })
        NodeAttach<ArkTabContentPeer>({ => ArkTabContentPeer.create(receiver, 0) }) {
            receiver.setTabContentOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
