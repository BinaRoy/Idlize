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
public interface NavigationAttributeInterfaces <: CommonMethodInterfaces {
}
public open class NavigationAttribute <: NavigationAttributeInterfaces {
    NavigationAttribute() {
    }
}
public interface NavigationAttribute {
}
public open class ArkNavigationComponent <: ArkCommonMethodComponent & NavigationAttribute {
    public open func getPeer(): ArkNavigationPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkNavigationPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setNavigationOptions(): Unit {
        if (this.checkPriority("setNavigationOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setNavigationOptions0Attribute()
            return
        }
        return
    }
    )
    public open func setNavigationOptions(pathInfos: NavPathStack): Unit {
        if (this.checkPriority("setNavigationOptions")) {
            let pathInfos_casted: NavPathStack = pathInfos
            let thisPeer = this.getPeer()
            thisPeer.setNavigationOptions1Attribute(pathInfos_casted)
            return
        }
        return
    }
    )
    public open func setNavigationOptions(pathInfos: NavPathStack, homeDestination: HomePathInfo): Unit {
        if (this.checkPriority("setNavigationOptions")) {
            let pathInfos_casted: NavPathStack = pathInfos
            let homeDestination_casted: HomePathInfo = homeDestination
            let thisPeer = this.getPeer()
            thisPeer.setNavigationOptions2Attribute(pathInfos_casted, homeDestination_casted)
            return
        }
        return
    }
    )
    public open func navBarWidth(value: Union_Length_Bindable): Unit {
        if (this.checkPriority("navBarWidth")) {
            let value_casted: Union_Length_Bindable = value
            let thisPeer = this.getPeer()
            thisPeer.setNavBarWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func navBarPosition(value: NavBarPosition): Unit {
        if (this.checkPriority("navBarPosition")) {
            let value_casted: NavBarPosition = value
            let thisPeer = this.getPeer()
            thisPeer.setNavBarPositionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func navBarWidthRange(value: Tuple_Dimension_Dimension): Unit {
        if (this.checkPriority("navBarWidthRange")) {
            let value_casted: Tuple_Dimension_Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setNavBarWidthRangeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func minContentWidth(value: Dimension): Unit {
        if (this.checkPriority("minContentWidth")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setMinContentWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func mode(value: NavigationMode): Unit {
        if (this.checkPriority("mode")) {
            let value_casted: NavigationMode = value
            let thisPeer = this.getPeer()
            thisPeer.setModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func backButtonIcon(icon: Union_String_PixelMap_Resource_SymbolGlyphModifier, accessibilityText: Option<ResourceStr>): Unit {
        if (this.checkPriority("backButtonIcon")) {
            let icon_casted: Union_String_PixelMap_Resource_SymbolGlyphModifier = icon
            let accessibilityText_casted: Option<ResourceStr> = if (let Some(accessibilityText) <- accessibilityText) {accessibilityText} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackButtonIconAttribute(icon_casted, accessibilityText_casted)
            return
        }
        return
    }
    )
    public open func hideNavBar(value: Bool): Unit {
        if (this.checkPriority("hideNavBar")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setHideNavBarAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func title(value: Type_NavigationAttribute_title_value, options: Option<NavigationTitleOptions>): Unit {
        if (this.checkPriority("title")) {
            let value_casted: Type_NavigationAttribute_title_value = value
            let options_casted: Option<NavigationTitleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTitleAttribute(value_casted, options_casted)
            return
        }
        return
    }
    )
    public open func subTitle(value: String): Unit {
        if (this.checkPriority("subTitle")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setSubTitleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func hideTitleBar(value: Bool): Unit {
        if (this.checkPriority("hideTitleBar")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setHideTitleBar0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func hideTitleBar(hide: Bool, animated: Bool): Unit {
        if (this.checkPriority("hideTitleBar")) {
            let hide_casted: Bool = hide
            let animated_casted: Bool = animated
            let thisPeer = this.getPeer()
            thisPeer.setHideTitleBar1Attribute(hide_casted, animated_casted)
            return
        }
        return
    }
    )
    public open func hideBackButton(value: Bool): Unit {
        if (this.checkPriority("hideBackButton")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setHideBackButtonAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func titleMode(value: NavigationTitleMode): Unit {
        if (this.checkPriority("titleMode")) {
            let value_casted: NavigationTitleMode = value
            let thisPeer = this.getPeer()
            thisPeer.setTitleModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func menus(items: Union_Array_NavigationMenuItem_CustomBuilder, options: Option<NavigationMenuOptions>): Unit {
        if (this.checkPriority("menus")) {
            let items_casted: Union_Array_NavigationMenuItem_CustomBuilder = items
            let options_casted: Option<NavigationMenuOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMenusAttribute(items_casted, options_casted)
            return
        }
        return
    }
    )
    public open func toolBar(value: CustomBuilder): Unit {
        if (this.checkPriority("toolBar")) {
            let value_casted: CustomBuilder = value
            let thisPeer = this.getPeer()
            thisPeer.setToolBarAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func toolbarConfiguration(value: Union_Array_ToolbarItem_CustomBuilder, options: Option<NavigationToolbarOptions>): Unit {
        if (this.checkPriority("toolbarConfiguration")) {
            let value_casted: Union_Array_ToolbarItem_CustomBuilder = value
            let options_casted: Option<NavigationToolbarOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setToolbarConfigurationAttribute(value_casted, options_casted)
            return
        }
        return
    }
    )
    public open func hideToolBar(value: Bool): Unit {
        if (this.checkPriority("hideToolBar")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setHideToolBar0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func hideToolBar(hide: Bool, animated: Bool): Unit {
        if (this.checkPriority("hideToolBar")) {
            let hide_casted: Bool = hide
            let animated_casted: Bool = animated
            let thisPeer = this.getPeer()
            thisPeer.setHideToolBar1Attribute(hide_casted, animated_casted)
            return
        }
        return
    }
    )
    public open func enableToolBarAdaptation(enable: Option<Bool>): Unit {
        if (this.checkPriority("enableToolBarAdaptation")) {
            let enable_casted: Option<Bool> = if (let Some(enable) <- enable) {enable} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableToolBarAdaptationAttribute(enable_casted)
            return
        }
        return
    }
    )
    public open func onTitleModeChange(callback_: ((titleMode: NavigationTitleMode) -> Unit)): Unit {
        if (this.checkPriority("onTitleModeChange")) {
            let callback__casted: ((titleMode: NavigationTitleMode) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTitleModeChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onNavBarStateChange(callback_: ((parameter: Bool) -> Unit)): Unit {
        if (this.checkPriority("onNavBarStateChange")) {
            let callback__casted: ((parameter: Bool) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnNavBarStateChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onNavigationModeChange(callback_: ((mode: NavigationMode) -> Unit)): Unit {
        if (this.checkPriority("onNavigationModeChange")) {
            let callback__casted: ((mode: NavigationMode) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnNavigationModeChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func navDestination(builder: ((name: String, param: Any) -> Unit)): Unit {
        if (this.checkPriority("navDestination")) {
            let builder_casted: ((name: String, param: Any) -> Unit) = builder
            let thisPeer = this.getPeer()
            thisPeer.setNavDestination0Attribute(builder_casted)
            return
        }
        return
    }
    )
    public open func navDestination(builder: Option<Any>): Unit {
        if (this.checkPriority("navDestination")) {
            let builder_casted: Option<Any> = if (let Some(builder) <- builder) {builder} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setNavDestination1Attribute(builder_casted)
            return
        }
        return
    }
    )
    public open func customNavContentTransition(delegate: ((from_: NavContentInfo, to: NavContentInfo, operation: NavigationOperation) -> Option<NavigationAnimatedTransition>)): Unit {
        if (this.checkPriority("customNavContentTransition")) {
            let delegate_casted: ((from_: NavContentInfo, to: NavContentInfo, operation: NavigationOperation) -> Option<NavigationAnimatedTransition>) = delegate
            let thisPeer = this.getPeer()
            thisPeer.setCustomNavContentTransitionAttribute(delegate_casted)
            return
        }
        return
    }
    )
    public open func ignoreLayoutSafeArea(types: Option<ArrayList<LayoutSafeAreaType>>, edges: Option<ArrayList<LayoutSafeAreaEdge>>): Unit {
        if (this.checkPriority("ignoreLayoutSafeArea")) {
            let types_casted: Option<ArrayList<LayoutSafeAreaType>> = if (let Some(types) <- types) {types} else { throw Exception("Type has to be not None")}
            let edges_casted: Option<ArrayList<LayoutSafeAreaEdge>> = if (let Some(edges) <- edges) {edges} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setIgnoreLayoutSafeAreaAttribute(types_casted, edges_casted)
            return
        }
        return
    }
    )
    public open func systemBarStyle(style: Option<SystemBarStyle>): Unit {
        if (this.checkPriority("systemBarStyle")) {
            let style_casted: Option<SystemBarStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSystemBarStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func recoverable(recoverable: Option<Bool>): Unit {
        if (this.checkPriority("recoverable")) {
            let recoverable_casted: Option<Bool> = if (let Some(recoverable) <- recoverable) {recoverable} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRecoverableAttribute(recoverable_casted)
            return
        }
        return
    }
    )
    public open func enableDragBar(isEnabled: Option<Bool>): Unit {
        if (this.checkPriority("enableDragBar")) {
            let isEnabled_casted: Option<Bool> = if (let Some(isEnabled) <- isEnabled) {isEnabled} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableDragBarAttribute(isEnabled_casted)
            return
        }
        return
    }
    )
    public open func enableModeChangeAnimation(isEnabled: Option<Bool>): Unit {
        if (this.checkPriority("enableModeChangeAnimation")) {
            let isEnabled_casted: Option<Bool> = if (let Some(isEnabled) <- isEnabled) {isEnabled} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableModeChangeAnimationAttribute(isEnabled_casted)
            return
        }
        return
    }
    )
    public open func splitPlaceholder(placeholder: ComponentContent): Unit {
        if (this.checkPriority("splitPlaceholder")) {
            let placeholder_casted: ComponentContent = placeholder
            let thisPeer = this.getPeer()
            thisPeer.setSplitPlaceholderAttribute(placeholder_casted)
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
class NavigationAttributeStyleHolder {
    var value: ?((attributes: NavigationAttribute) -> Unit)
    init (value: ?((attributes: NavigationAttribute) -> Unit)) {
        this.value = value
    }
}

class NavigationAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkNavigation(
        style: ?((attributes: NavigationAttribute) -> Unit),
        content_: ?(() -> Unit),
pathInfos: Option<NavPathStack>, homeDestination: Option<HomePathInfo>
    ): Unit {
        let styleHolder = NavigationAttributeStyleHolder(style)
        let contentHolder = NavigationAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkNavigationComponent()
        })
        NodeAttach<ArkNavigationPeer>({ => ArkNavigationPeer.create(receiver, 0) }) {
            receiver.setNavigationOptions(pathInfos,homeDestination)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
