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
public interface FolderStackAttributeInterfaces <: CommonMethodInterfaces {
}
public open class FolderStackAttribute <: FolderStackAttributeInterfaces {
    FolderStackAttribute() {
    }
}
public interface FolderStackAttribute {
}
public open class ArkFolderStackComponent <: ArkCommonMethodComponent & FolderStackAttribute {
    public open func getPeer(): ArkFolderStackPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkFolderStackPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setFolderStackOptions(options: Option<FolderStackOptions>): Unit {
        if (this.checkPriority("setFolderStackOptions")) {
            let options_casted: Option<FolderStackOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFolderStackOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func alignContent(value: Alignment): Unit {
        if (this.checkPriority("alignContent")) {
            let value_casted: Alignment = value
            let thisPeer = this.getPeer()
            thisPeer.setAlignContentAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onFolderStateChange(callback_: OnFoldStatusChangeCallback): Unit {
        if (this.checkPriority("onFolderStateChange")) {
            let callback__casted: OnFoldStatusChangeCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFolderStateChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onHoverStatusChange(handler: OnHoverStatusChangeCallback): Unit {
        if (this.checkPriority("onHoverStatusChange")) {
            let handler_casted: OnHoverStatusChangeCallback = handler
            let thisPeer = this.getPeer()
            thisPeer.setOnHoverStatusChangeAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func enableAnimation(value: Bool): Unit {
        if (this.checkPriority("enableAnimation")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setEnableAnimationAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func autoHalfFold(value: Bool): Unit {
        if (this.checkPriority("autoHalfFold")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAutoHalfFoldAttribute(value_casted)
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
class FolderStackAttributeStyleHolder {
    var value: ?((attributes: FolderStackAttribute) -> Unit)
    init (value: ?((attributes: FolderStackAttribute) -> Unit)) {
        this.value = value
    }
}

class FolderStackAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkFolderStack(
        style: ?((attributes: FolderStackAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<FolderStackOptions>
    ): Unit {
        let styleHolder = FolderStackAttributeStyleHolder(style)
        let contentHolder = FolderStackAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkFolderStackComponent()
        })
        NodeAttach<ArkFolderStackPeer>({ => ArkFolderStackPeer.create(receiver, 0) }) {
            receiver.setFolderStackOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
