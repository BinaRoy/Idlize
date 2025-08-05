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
public interface NavDestinationAttributeInterfaces <: CommonMethodInterfaces {
}
public open class NavDestinationAttribute <: NavDestinationAttributeInterfaces {
    NavDestinationAttribute() {
    }
}
public interface NavDestinationAttribute {
}
public open class ArkNavDestinationComponent <: ArkCommonMethodComponent & NavDestinationAttribute {
    public open func getPeer(): ArkNavDestinationPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkNavDestinationPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setNavDestinationOptions(): Unit {
        if (this.checkPriority("setNavDestinationOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setNavDestinationOptionsAttribute()
            return
        }
        return
    }
    )
    public open func title(value: Type_NavDestinationAttribute_title_value, options: Option<NavigationTitleOptions>): Unit {
        if (this.checkPriority("title")) {
            let value_casted: Type_NavDestinationAttribute_title_value = value
            let options_casted: Option<NavigationTitleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTitleAttribute(value_casted, options_casted)
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
    public open func hideBackButton(hide: Option<Bool>): Unit {
        if (this.checkPriority("hideBackButton")) {
            let hide_casted: Option<Bool> = if (let Some(hide) <- hide) {hide} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setHideBackButtonAttribute(hide_casted)
            return
        }
        return
    }
    )
    public open func onShown(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onShown")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnShownAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onHidden(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onHidden")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnHiddenAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onBackPressed(callback_: (() -> Bool)): Unit {
        if (this.checkPriority("onBackPressed")) {
            let callback__casted: (() -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnBackPressedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onResult(callback_: Option<((parameter: Option<Any>) -> Unit)>): Unit {
        if (this.checkPriority("onResult")) {
            let callback__casted: Option<((parameter: Option<Any>) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnResultAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func mode(value: NavDestinationMode): Unit {
        if (this.checkPriority("mode")) {
            let value_casted: NavDestinationMode = value
            let thisPeer = this.getPeer()
            thisPeer.setModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func backButtonIcon(icon: Union_ResourceStr_PixelMap_SymbolGlyphModifier, accessibilityText: Option<ResourceStr>): Unit {
        if (this.checkPriority("backButtonIcon")) {
            let icon_casted: Union_ResourceStr_PixelMap_SymbolGlyphModifier = icon
            let accessibilityText_casted: Option<ResourceStr> = if (let Some(accessibilityText) <- accessibilityText) {accessibilityText} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackButtonIconAttribute(icon_casted, accessibilityText_casted)
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
    public open func toolbarConfiguration(toolbarParam: Union_Array_ToolbarItem_CustomBuilder, options: Option<NavigationToolbarOptions>): Unit {
        if (this.checkPriority("toolbarConfiguration")) {
            let toolbarParam_casted: Union_Array_ToolbarItem_CustomBuilder = toolbarParam
            let options_casted: Option<NavigationToolbarOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setToolbarConfigurationAttribute(toolbarParam_casted, options_casted)
            return
        }
        return
    }
    )
    public open func hideToolBar(hide: Bool, animated: Option<Bool>): Unit {
        if (this.checkPriority("hideToolBar")) {
            let hide_casted: Bool = hide
            let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setHideToolBarAttribute(hide_casted, animated_casted)
            return
        }
        return
    }
    )
    public open func onReady(callback_: ((parameter: NavDestinationContext) -> Unit)): Unit {
        if (this.checkPriority("onReady")) {
            let callback__casted: ((parameter: NavDestinationContext) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnReady0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onReady(callback_: ((parameter: NavDestinationContext) -> Unit)): Unit {
        if (this.checkPriority("onReady")) {
            let callback__casted: ((parameter: NavDestinationContext) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnReady1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onWillAppear(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onWillAppear")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillAppearAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onWillDisappear(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onWillDisappear")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillDisappearAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onWillShow(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onWillShow")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillShowAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onWillHide(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onWillHide")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWillHideAttribute(callback__casted)
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
    public open func systemTransition(type_: NavigationSystemTransitionType): Unit {
        if (this.checkPriority("systemTransition")) {
            let type_casted: NavigationSystemTransitionType = type_
            let thisPeer = this.getPeer()
            thisPeer.setSystemTransitionAttribute(type_casted)
            return
        }
        return
    }
    )
    public open func bindToScrollable(scrollers: ArrayList<Scroller>): Unit {
        if (this.checkPriority("bindToScrollable")) {
            let scrollers_casted: ArrayList<Scroller> = scrollers
            let thisPeer = this.getPeer()
            thisPeer.setBindToScrollableAttribute(scrollers_casted)
            return
        }
        return
    }
    )
    public open func bindToNestedScrollable(scrollInfos: ArrayList<NestedScrollInfo>): Unit {
        if (this.checkPriority("bindToNestedScrollable")) {
            let scrollInfos_casted: ArrayList<NestedScrollInfo> = scrollInfos
            let thisPeer = this.getPeer()
            thisPeer.setBindToNestedScrollableAttribute(scrollInfos_casted)
            return
        }
        return
    }
    )
    public open func onActive(callback_: Option<((parameter: NavDestinationActiveReason) -> Unit)>): Unit {
        if (this.checkPriority("onActive")) {
            let callback__casted: Option<((parameter: NavDestinationActiveReason) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnActiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onInactive(callback_: Option<((parameter: NavDestinationActiveReason) -> Unit)>): Unit {
        if (this.checkPriority("onInactive")) {
            let callback__casted: Option<((parameter: NavDestinationActiveReason) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnInactiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func customTransition(delegate: NavDestinationTransitionDelegate): Unit {
        if (this.checkPriority("customTransition")) {
            let delegate_casted: NavDestinationTransitionDelegate = delegate
            let thisPeer = this.getPeer()
            thisPeer.setCustomTransitionAttribute(delegate_casted)
            return
        }
        return
    }
    )
    public open func onNewParam(callback_: Option<((parameter: Any) -> Unit)>): Unit {
        if (this.checkPriority("onNewParam")) {
            let callback__casted: Option<((parameter: Any) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnNewParam0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onNewParam(callback_: Option<((parameter: Option<Any>) -> Unit)>): Unit {
        if (this.checkPriority("onNewParam")) {
            let callback__casted: Option<((parameter: Option<Any>) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnNewParam1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func preferredOrientation(orientation: Option<Orientation>): Unit {
        if (this.checkPriority("preferredOrientation")) {
            let orientation_casted: Option<Orientation> = if (let Some(orientation) <- orientation) {orientation} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPreferredOrientationAttribute(orientation_casted)
            return
        }
        return
    }
    )
    public open func enableStatusBar(enabled: Option<Bool>, animated: Option<Bool>): Unit {
        if (this.checkPriority("enableStatusBar")) {
            let enabled_casted: Option<Bool> = if (let Some(enabled) <- enabled) {enabled} else { throw Exception("Type has to be not None")}
            let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableStatusBarAttribute(enabled_casted, animated_casted)
            return
        }
        return
    }
    )
    public open func enableNavigationIndicator(enabled: Option<Bool>): Unit {
        if (this.checkPriority("enableNavigationIndicator")) {
            let enabled_casted: Option<Bool> = if (let Some(enabled) <- enabled) {enabled} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableNavigationIndicatorAttribute(enabled_casted)
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
class NavDestinationAttributeStyleHolder {
    var value: ?((attributes: NavDestinationAttribute) -> Unit)
    init (value: ?((attributes: NavDestinationAttribute) -> Unit)) {
        this.value = value
    }
}

class NavDestinationAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkNavDestination(
        style: ?((attributes: NavDestinationAttribute) -> Unit),
        content_: ?(() -> Unit)
    ): Unit {
        let styleHolder = NavDestinationAttributeStyleHolder(style)
        let contentHolder = NavDestinationAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkNavDestinationComponent()
        })
        NodeAttach<ArkNavDestinationPeer>({ => ArkNavDestinationPeer.create(receiver, 0) }) {
            receiver.setNavDestinationOptions()
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
