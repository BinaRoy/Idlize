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
public interface MenuItemAttributeInterfaces <: CommonMethodInterfaces {
}
public open class MenuItemAttribute <: MenuItemAttributeInterfaces {
    MenuItemAttribute() {
    }
}
public interface MenuItemAttribute {
}
public open class ArkMenuItemComponent <: ArkCommonMethodComponent & MenuItemAttribute {
    public open func getPeer(): ArkMenuItemPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkMenuItemPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setMenuItemOptions(value: Option<Union_MenuItemOptions_CustomBuilder>): Unit {
        if (this.checkPriority("setMenuItemOptions")) {
            let value_casted: Option<Union_MenuItemOptions_CustomBuilder> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenuItemOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selected(value: Option<Union_Boolean_Bindable>): Unit {
        if (this.checkPriority("selected")) {
            let value_casted: Option<Union_Boolean_Bindable> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectIcon(value: Union_Boolean_ResourceStr_SymbolGlyphModifier): Unit {
        if (this.checkPriority("selectIcon")) {
            let value_casted: Union_Boolean_ResourceStr_SymbolGlyphModifier = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectIconAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: ((parameter: Bool) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((parameter: Bool) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func contentFont(value: Font): Unit {
        if (this.checkPriority("contentFont")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setContentFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func contentFontColor(value: ResourceColor): Unit {
        if (this.checkPriority("contentFontColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setContentFontColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func labelFont(value: Font): Unit {
        if (this.checkPriority("labelFont")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setLabelFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func labelFontColor(value: ResourceColor): Unit {
        if (this.checkPriority("labelFontColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setLabelFontColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_selected(callback: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_selected")) {
            let callback_casted: ((parameter: Float64) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectedAttribute(callback_casted)
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
class MenuItemAttributeStyleHolder {
    var value: ?((attributes: MenuItemAttribute) -> Unit)
    init (value: ?((attributes: MenuItemAttribute) -> Unit)) {
        this.value = value
    }
}

class MenuItemAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkMenuItem(
        style: ?((attributes: MenuItemAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Option<Union_MenuItemOptions_CustomBuilder>
    ): Unit {
        let styleHolder = MenuItemAttributeStyleHolder(style)
        let contentHolder = MenuItemAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkMenuItemComponent()
        })
        NodeAttach<ArkMenuItemPeer>({ => ArkMenuItemPeer.create(receiver, 0) }) {
            receiver.setMenuItemOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
