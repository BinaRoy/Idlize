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
public interface MenuAttributeInterfaces <: CommonMethodInterfaces {
}
public open class MenuAttribute <: MenuAttributeInterfaces {
    MenuAttribute() {
    }
}
public interface MenuAttribute {
}
public open class ArkMenuComponent <: ArkCommonMethodComponent & MenuAttribute {
    public open func getPeer(): ArkMenuPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkMenuPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setMenuOptions(): Unit {
        if (this.checkPriority("setMenuOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setMenuOptionsAttribute()
            return
        }
        return
    }
    )
    public open func fontSize(value: Length): Unit {
        if (this.checkPriority("fontSize")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setFontSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func font(value: Font): Unit {
        if (this.checkPriority("font")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontColor(value: ResourceColor): Unit {
        if (this.checkPriority("fontColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setFontColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func radius(value: Union_Dimension_BorderRadiuses): Unit {
        if (this.checkPriority("radius")) {
            let value_casted: Union_Dimension_BorderRadiuses = value
            let thisPeer = this.getPeer()
            thisPeer.setRadiusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func menuItemDivider(options: Option<DividerStyleOptions>): Unit {
        if (this.checkPriority("menuItemDivider")) {
            let options_casted: Option<DividerStyleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenuItemDividerAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func menuItemGroupDivider(options: Option<DividerStyleOptions>): Unit {
        if (this.checkPriority("menuItemGroupDivider")) {
            let options_casted: Option<DividerStyleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenuItemGroupDividerAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func subMenuExpandingMode(mode: SubMenuExpandingMode): Unit {
        if (this.checkPriority("subMenuExpandingMode")) {
            let mode_casted: SubMenuExpandingMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setSubMenuExpandingModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func subMenuExpandSymbol(symbol: SymbolGlyphModifier): Unit {
        if (this.checkPriority("subMenuExpandSymbol")) {
            let symbol_casted: SymbolGlyphModifier = symbol
            let thisPeer = this.getPeer()
            thisPeer.setSubMenuExpandSymbolAttribute(symbol_casted)
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
class MenuAttributeStyleHolder {
    var value: ?((attributes: MenuAttribute) -> Unit)
    init (value: ?((attributes: MenuAttribute) -> Unit)) {
        this.value = value
    }
}

class MenuAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkMenu(
        style: ?((attributes: MenuAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = MenuAttributeStyleHolder(style)
        let contentHolder = MenuAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkMenuComponent()
        })
        NodeAttach<ArkMenuPeer>({ => ArkMenuPeer.create(receiver, 0) }) {
            receiver.setMenuOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
