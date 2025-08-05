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
public interface SaveButtonAttributeInterfaces <: SecurityComponentMethodInterfaces {
}
public open class SaveButtonAttribute <: SaveButtonAttributeInterfaces {
    SaveButtonAttribute() {
    }
}
public interface SaveButtonAttribute {
}
public open class ArkSaveButtonComponent <: ArkSecurityComponentMethodComponent & SaveButtonAttribute {
    public open func getPeer(): ArkSaveButtonPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSaveButtonPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setSaveButtonOptions(): Unit {
        if (this.checkPriority("setSaveButtonOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setSaveButtonOptions0Attribute()
            return
        }
        return
    }
    )
    public open func setSaveButtonOptions(options: SaveButtonOptions): Unit {
        if (this.checkPriority("setSaveButtonOptions")) {
            let options_casted: SaveButtonOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setSaveButtonOptions1Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func onClick(event: SaveButtonCallback): Unit {
        if (this.checkPriority("onClick")) {
            let event_casted: SaveButtonCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnClickAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func setIcon(icon: Resource): Unit {
        if (this.checkPriority("setIcon")) {
            let icon_casted: Resource = icon
            let thisPeer = this.getPeer()
            thisPeer.setSetIconAttribute(icon_casted)
            return
        }
        return
    }
    )
    public open func setText(text: Union_String_Resource): Unit {
        if (this.checkPriority("setText")) {
            let text_casted: Union_String_Resource = text
            let thisPeer = this.getPeer()
            thisPeer.setSetTextAttribute(text_casted)
            return
        }
        return
    }
    )
    public open func iconSize(size: Union_Dimension_SizeOptions): Unit {
        if (this.checkPriority("iconSize")) {
            let size_casted: Union_Dimension_SizeOptions = size
            let thisPeer = this.getPeer()
            thisPeer.setIconSizeAttribute(size_casted)
            return
        }
        return
    }
    )
    public open func iconBorderRadius(radius: Union_Dimension_BorderRadiuses): Unit {
        if (this.checkPriority("iconBorderRadius")) {
            let radius_casted: Union_Dimension_BorderRadiuses = radius
            let thisPeer = this.getPeer()
            thisPeer.setIconBorderRadiusAttribute(radius_casted)
            return
        }
        return
    }
    )
    public open func stateEffect(enabled: Bool): Unit {
        if (this.checkPriority("stateEffect")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setStateEffectAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func tipPosition(position: SaveButtonTipPosition): Unit {
        if (this.checkPriority("tipPosition")) {
            let position_casted: SaveButtonTipPosition = position
            let thisPeer = this.getPeer()
            thisPeer.setTipPositionAttribute(position_casted)
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
class SaveButtonAttributeStyleHolder {
    var value: ?((attributes: SaveButtonAttribute) -> Unit)
    init (value: ?((attributes: SaveButtonAttribute) -> Unit)) {
        this.value = value
    }
}

class SaveButtonAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkSaveButton(
        style: ?((attributes: SaveButtonAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<SaveButtonOptions>
    ): Unit {
        let styleHolder = SaveButtonAttributeStyleHolder(style)
        let contentHolder = SaveButtonAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkSaveButtonComponent()
        })
        NodeAttach<ArkSaveButtonPeer>({ => ArkSaveButtonPeer.create(receiver, 0) }) {
            receiver.setSaveButtonOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
