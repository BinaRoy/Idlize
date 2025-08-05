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
public interface DataPanelAttributeInterfaces <: CommonMethodInterfaces {
}
public open class DataPanelAttribute <: DataPanelAttributeInterfaces {
    DataPanelAttribute() {
    }
}
public interface DataPanelAttribute {
}
public open class ArkDataPanelComponent <: ArkCommonMethodComponent & DataPanelAttribute {
    public open func getPeer(): ArkDataPanelPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkDataPanelPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setDataPanelOptions(options: DataPanelOptions): Unit {
        if (this.checkPriority("setDataPanelOptions")) {
            let options_casted: DataPanelOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setDataPanelOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func closeEffect(value: Bool): Unit {
        if (this.checkPriority("closeEffect")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setCloseEffectAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func valueColors(value: ArrayList<Union_ResourceColor_LinearGradient>): Unit {
        if (this.checkPriority("valueColors")) {
            let value_casted: ArrayList<Union_ResourceColor_LinearGradient> = value
            let thisPeer = this.getPeer()
            thisPeer.setValueColorsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func trackBackgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("trackBackgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setTrackBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func strokeWidth(value: Length): Unit {
        if (this.checkPriority("strokeWidth")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func trackShadow(value: DataPanelShadowOptions): Unit {
        if (this.checkPriority("trackShadow")) {
            let value_casted: DataPanelShadowOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setTrackShadowAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func contentModifier(modifier: ContentModifier<DataPanelConfiguration>): Unit {
        if (this.checkPriority("contentModifier")) {
            let modifier_casted: ContentModifier<DataPanelConfiguration> = modifier
            let thisPeer = this.getPeer()
            thisPeer.setContentModifierAttribute(modifier_casted)
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
class DataPanelAttributeStyleHolder {
    var value: ?((attributes: DataPanelAttribute) -> Unit)
    init (value: ?((attributes: DataPanelAttribute) -> Unit)) {
        this.value = value
    }
}

class DataPanelAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkDataPanel(
        style: ?((attributes: DataPanelAttribute) -> Unit),
        content_: ?(() -> Unit),
options: DataPanelOptions
    ): Unit {
        let styleHolder = DataPanelAttributeStyleHolder(style)
        let contentHolder = DataPanelAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkDataPanelComponent()
        })
        NodeAttach<ArkDataPanelPeer>({ => ArkDataPanelPeer.create(receiver, 0) }) {
            receiver.setDataPanelOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
