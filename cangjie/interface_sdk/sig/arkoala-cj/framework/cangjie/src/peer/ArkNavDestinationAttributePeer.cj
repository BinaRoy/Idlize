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
public open class ArkNavDestinationPeer <: ArkCommonMethodPeer {
    protected ArkNavDestinationPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkNavDestinationPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._NavDestination_construct(peerId, flags)
        let _peer = ArkNavDestinationPeer(_peerPtr, peerId, "NavDestination", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setNavDestinationOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._NavDestinationInterface_setNavDestinationOptions(this.peer.ptr);
    }
    public open func setTitleAttribute(value: Type_NavDestinationAttribute_title_value, options: Option<NavigationTitleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueForIdx1));
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            NavDestinationCommonTitle_serializer.write(thisSerializer, valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            NavDestinationCustomTitle_serializer.write(thisSerializer, valueForIdx3);
        } else if (value.getSelector() == 4) {
            thisSerializer.writeInt8(Int8(4));
            let valueForIdx4 = value.getValue4()
            thisSerializer.writeCustomObject("Any", valueForIdx4);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationTitleOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setTitle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHideTitleBar0Attribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setHideTitleBar0(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setHideTitleBar1Attribute(hide: Bool, animated: Bool): Unit {
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setHideTitleBar1(this.peer.ptr, if (hide) { Int32(1) } else { Int32(0) }, if (animated) { Int32(1) } else { Int32(0) });
    }
    public open func setHideBackButtonAttribute(hide: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (hide.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let hideTmpValue = hide
            thisSerializer.writeBoolean(hideTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setHideBackButton(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnShownAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnShown(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnHiddenAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnHidden(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnBackPressedAttribute(callback_: (() -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnBackPressed(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnResultAttribute(callback_: Option<((parameter: Option<Any>) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnResult(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setModeAttribute(value: NavDestinationMode): Unit {
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setMode(this.peer.ptr, value.value);
    }
    public open func setBackButtonIconAttribute(icon: Union_ResourceStr_PixelMap_SymbolGlyphModifier, accessibilityText: Option<ResourceStr>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (icon.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let iconForIdx0 = icon.getValue0()
            if (iconForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let iconForIdx0ForIdx0 = iconForIdx0.getValue0()
                thisSerializer.writeString(iconForIdx0ForIdx0);
            } else if (iconForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let iconForIdx0ForIdx1 = iconForIdx0.getValue1()
                thisSerializer.writeCustomObject("Any", iconForIdx0ForIdx1);
            }
        } else if (icon.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let iconForIdx1 = icon.getValue1()
            thisSerializer.writeCustomObject("Any", iconForIdx1);
        } else if (icon.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let iconForIdx2 = icon.getValue2()
            thisSerializer.writeCustomObject("Any", iconForIdx2);
        }
        if (accessibilityText.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let accessibilityTextTmpValue = accessibilityText
            if (accessibilityTextTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let accessibilityTextTmpValueForIdx0 = accessibilityTextTmpValue.getValue0()
                thisSerializer.writeString(accessibilityTextTmpValueForIdx0);
            } else if (accessibilityTextTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let accessibilityTextTmpValueForIdx1 = accessibilityTextTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", accessibilityTextTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setBackButtonIcon(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMenusAttribute(items: Union_Array_NavigationMenuItem_CustomBuilder, options: Option<NavigationMenuOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (items.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let itemsForIdx0 = items.getValue0()
            thisSerializer.writeInt32(Int32(itemsForIdx0.size));
            for (itemsForIdx0CounterI in 0..itemsForIdx0.size) {
                let itemsForIdx0TmpElement: NavigationMenuItem = itemsForIdx0[Int64(itemsForIdx0CounterI)]
                NavigationMenuItem_serializer.write(thisSerializer, itemsForIdx0TmpElement);
            }
        } else if (items.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let itemsForIdx1 = items.getValue1()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(itemsForIdx1));
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationMenuOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setMenus(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setToolbarConfigurationAttribute(toolbarParam: Union_Array_ToolbarItem_CustomBuilder, options: Option<NavigationToolbarOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (toolbarParam.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let toolbarParamForIdx0 = toolbarParam.getValue0()
            thisSerializer.writeInt32(Int32(toolbarParamForIdx0.size));
            for (toolbarParamForIdx0CounterI in 0..toolbarParamForIdx0.size) {
                let toolbarParamForIdx0TmpElement: ToolbarItem = toolbarParamForIdx0[Int64(toolbarParamForIdx0CounterI)]
                ToolbarItem_serializer.write(thisSerializer, toolbarParamForIdx0TmpElement);
            }
        } else if (toolbarParam.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let toolbarParamForIdx1 = toolbarParam.getValue1()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(toolbarParamForIdx1));
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationToolbarOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setToolbarConfiguration(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHideToolBarAttribute(hide: Bool, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setHideToolBar(this.peer.ptr, if (hide) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnReady0Attribute(callback_: ((parameter: NavDestinationContext) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnReady0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnReady1Attribute(callback_: ((parameter: NavDestinationContext) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnReady1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillAppearAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnWillAppear(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillDisappearAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnWillDisappear(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillShowAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnWillShow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWillHideAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnWillHide(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIgnoreLayoutSafeAreaAttribute(types: Option<ArrayList<LayoutSafeAreaType>>, edges: Option<ArrayList<LayoutSafeAreaEdge>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (types.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let typesTmpValue = types
            thisSerializer.writeInt32(Int32(typesTmpValue.size));
            for (typesTmpValueCounterI in 0..typesTmpValue.size) {
                let typesTmpValueTmpElement: LayoutSafeAreaType = typesTmpValue[Int64(typesTmpValueCounterI)]
                thisSerializer.writeInt32(typesTmpValueTmpElement.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (edges.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let edgesTmpValue = edges
            thisSerializer.writeInt32(Int32(edgesTmpValue.size));
            for (edgesTmpValueCounterI in 0..edgesTmpValue.size) {
                let edgesTmpValueTmpElement: LayoutSafeAreaEdge = edgesTmpValue[Int64(edgesTmpValueCounterI)]
                thisSerializer.writeInt32(edgesTmpValueTmpElement.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setIgnoreLayoutSafeArea(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSystemBarStyleAttribute(style: Option<SystemBarStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            thisSerializer.writeCustomObject("Any", styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setSystemBarStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRecoverableAttribute(recoverable: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (recoverable.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let recoverableTmpValue = recoverable
            thisSerializer.writeBoolean(recoverableTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setRecoverable(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSystemTransitionAttribute(type_: NavigationSystemTransitionType): Unit {
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setSystemTransition(this.peer.ptr, type_.value);
    }
    public open func setBindToScrollableAttribute(scrollers: ArrayList<Scroller>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(scrollers.size));
        for (scrollersCounterI in 0..scrollers.size) {
            let scrollersTmpElement: Scroller = scrollers[Int64(scrollersCounterI)]
            Scroller_serializer.write(thisSerializer, scrollersTmpElement);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setBindToScrollable(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindToNestedScrollableAttribute(scrollInfos: ArrayList<NestedScrollInfo>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(scrollInfos.size));
        for (scrollInfosCounterI in 0..scrollInfos.size) {
            let scrollInfosTmpElement: NestedScrollInfo = scrollInfos[Int64(scrollInfosCounterI)]
            NestedScrollInfo_serializer.write(thisSerializer, scrollInfosTmpElement);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setBindToNestedScrollable(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnActiveAttribute(callback_: Option<((parameter: NavDestinationActiveReason) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnActive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnInactiveAttribute(callback_: Option<((parameter: NavDestinationActiveReason) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnInactive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCustomTransitionAttribute(delegate: NavDestinationTransitionDelegate): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(delegate);
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setCustomTransition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNewParam0Attribute(callback_: Option<((parameter: Any) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnNewParam0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNewParam1Attribute(callback_: Option<((parameter: Option<Any>) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setOnNewParam1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPreferredOrientationAttribute(orientation: Option<Orientation>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (orientation.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let orientationTmpValue = orientation
            thisSerializer.writeCustomObject("Any", orientationTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setPreferredOrientation(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableStatusBarAttribute(enabled: Option<Bool>, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enabled.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enabledTmpValue = enabled
            thisSerializer.writeBoolean(enabledTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setEnableStatusBar(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableNavigationIndicatorAttribute(enabled: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enabled.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enabledTmpValue = enabled
            thisSerializer.writeBoolean(enabledTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationAttribute_setEnableNavigationIndicator(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
