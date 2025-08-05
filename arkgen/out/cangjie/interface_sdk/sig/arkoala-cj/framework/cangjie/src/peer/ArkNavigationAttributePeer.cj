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
public open class ArkNavigationPeer <: ArkCommonMethodPeer {
    protected ArkNavigationPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkNavigationPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Navigation_construct(peerId, flags)
        let _peer = ArkNavigationPeer(_peerPtr, peerId, "Navigation", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setNavigationOptions0Attribute(): Unit {
        ArkUIGeneratedNativeModule._NavigationInterface_setNavigationOptions0(this.peer.ptr);
    }
    public open func setNavigationOptions1Attribute(pathInfos: NavPathStack): Unit {
        ArkUIGeneratedNativeModule._NavigationInterface_setNavigationOptions1(this.peer.ptr, MaterializedBase.toPeerPtr(pathInfos));
    }
    public open func setNavigationOptions2Attribute(pathInfos: NavPathStack, homeDestination: HomePathInfo): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        HomePathInfo_serializer.write(thisSerializer, homeDestination);
        ArkUIGeneratedNativeModule._NavigationInterface_setNavigationOptions2(this.peer.ptr, MaterializedBase.toPeerPtr(pathInfos), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNavBarWidthAttribute(value: Union_Length_Bindable): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            if (valueForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx0ForIdx0 = valueForIdx0.getValue0()
                thisSerializer.writeString(valueForIdx0ForIdx0);
            } else if (valueForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx0ForIdx1 = valueForIdx0.getValue1()
                thisSerializer.writeNumber(valueForIdx0ForIdx1);
            } else if (valueForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx0ForIdx2 = valueForIdx0.getValue2()
                thisSerializer.writeCustomObject("Any", valueForIdx0ForIdx2);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setNavBarWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNavBarPositionAttribute(value: NavBarPosition): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setNavBarPosition(this.peer.ptr, value.value);
    }
    public open func setNavBarWidthRangeAttribute(value: Tuple_Dimension_Dimension): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let value_0 = value.value0
        if (value_0.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let value_0ForIdx0 = value_0.getValue0()
            thisSerializer.writeString(value_0ForIdx0);
        } else if (value_0.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let value_0ForIdx1 = value_0.getValue1()
            thisSerializer.writeNumber(value_0ForIdx1);
        } else if (value_0.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let value_0ForIdx2 = value_0.getValue2()
            thisSerializer.writeCustomObject("Any", value_0ForIdx2);
        }
        let value_1 = value.value1
        if (value_1.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let value_1ForIdx0 = value_1.getValue0()
            thisSerializer.writeString(value_1ForIdx0);
        } else if (value_1.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let value_1ForIdx1 = value_1.getValue1()
            thisSerializer.writeNumber(value_1ForIdx1);
        } else if (value_1.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let value_1ForIdx2 = value_1.getValue2()
            thisSerializer.writeCustomObject("Any", value_1ForIdx2);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setNavBarWidthRange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMinContentWidthAttribute(value: Dimension): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setMinContentWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setModeAttribute(value: NavigationMode): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setMode(this.peer.ptr, value.value);
    }
    public open func setBackButtonIconAttribute(icon: Union_String_PixelMap_Resource_SymbolGlyphModifier, accessibilityText: Option<ResourceStr>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (icon.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let iconForIdx0 = icon.getValue0()
            thisSerializer.writeString(iconForIdx0);
        } else if (icon.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let iconForIdx1 = icon.getValue1()
            thisSerializer.writeCustomObject("Any", iconForIdx1);
        } else if (icon.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let iconForIdx2 = icon.getValue2()
            thisSerializer.writeCustomObject("Any", iconForIdx2);
        } else if (icon.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let iconForIdx3 = icon.getValue3()
            thisSerializer.writeCustomObject("Any", iconForIdx3);
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
        ArkUIGeneratedNativeModule._NavigationAttribute_setBackButtonIcon(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHideNavBarAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setHideNavBar(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setTitleAttribute(value: Type_NavigationAttribute_title_value, options: Option<NavigationTitleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            if (valueForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx0ForIdx0 = valueForIdx0.getValue0()
                thisSerializer.writeString(valueForIdx0ForIdx0);
            } else if (valueForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx0ForIdx1 = valueForIdx0.getValue1()
                thisSerializer.writeCustomObject("Any", valueForIdx0ForIdx1);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueForIdx1));
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            NavigationCommonTitle_serializer.write(thisSerializer, valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            NavigationCustomTitle_serializer.write(thisSerializer, valueForIdx3);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationTitleOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setTitle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSubTitleAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setSubTitle(this.peer.ptr, value);
    }
    public open func setHideTitleBar0Attribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setHideTitleBar0(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setHideTitleBar1Attribute(hide: Bool, animated: Bool): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setHideTitleBar1(this.peer.ptr, if (hide) { Int32(1) } else { Int32(0) }, if (animated) { Int32(1) } else { Int32(0) });
    }
    public open func setHideBackButtonAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setHideBackButton(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setTitleModeAttribute(value: NavigationTitleMode): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setTitleMode(this.peer.ptr, value.value);
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
        ArkUIGeneratedNativeModule._NavigationAttribute_setMenus(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setToolBarAttribute(value: CustomBuilder): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(value));
        ArkUIGeneratedNativeModule._NavigationAttribute_setToolBar(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setToolbarConfigurationAttribute(value: Union_Array_ToolbarItem_CustomBuilder, options: Option<NavigationToolbarOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(Int32(valueForIdx0.size));
            for (valueForIdx0CounterI in 0..valueForIdx0.size) {
                let valueForIdx0TmpElement: ToolbarItem = valueForIdx0[Int64(valueForIdx0CounterI)]
                ToolbarItem_serializer.write(thisSerializer, valueForIdx0TmpElement);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueForIdx1));
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationToolbarOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setToolbarConfiguration(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHideToolBar0Attribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setHideToolBar0(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setHideToolBar1Attribute(hide: Bool, animated: Bool): Unit {
        ArkUIGeneratedNativeModule._NavigationAttribute_setHideToolBar1(this.peer.ptr, if (hide) { Int32(1) } else { Int32(0) }, if (animated) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableToolBarAdaptationAttribute(enable: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enable.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enableTmpValue = enable
            thisSerializer.writeBoolean(enableTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setEnableToolBarAdaptation(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnTitleModeChangeAttribute(callback_: ((titleMode: NavigationTitleMode) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavigationAttribute_setOnTitleModeChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNavBarStateChangeAttribute(callback_: ((parameter: Bool) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavigationAttribute_setOnNavBarStateChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNavigationModeChangeAttribute(callback_: ((mode: NavigationMode) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._NavigationAttribute_setOnNavigationModeChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNavDestination0Attribute(builder: ((name: String, param: Any) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._NavigationAttribute_setNavDestination0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNavDestination1Attribute(builder: Option<Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (builder.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let builderTmpValue = builder
            thisSerializer.writeCustomObject("Any", builderTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setNavDestination1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCustomNavContentTransitionAttribute(delegate: ((from_: NavContentInfo, to: NavContentInfo, operation: NavigationOperation) -> Option<NavigationAnimatedTransition>)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(delegate);
        ArkUIGeneratedNativeModule._NavigationAttribute_setCustomNavContentTransition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._NavigationAttribute_setIgnoreLayoutSafeArea(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._NavigationAttribute_setSystemBarStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._NavigationAttribute_setRecoverable(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableDragBarAttribute(isEnabled: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isEnabled.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isEnabledTmpValue = isEnabled
            thisSerializer.writeBoolean(isEnabledTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setEnableDragBar(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableModeChangeAnimationAttribute(isEnabled: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isEnabled.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isEnabledTmpValue = isEnabled
            thisSerializer.writeBoolean(isEnabledTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationAttribute_setEnableModeChangeAnimation(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSplitPlaceholderAttribute(placeholder: ComponentContent): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", placeholder);
        ArkUIGeneratedNativeModule._NavigationAttribute_setSplitPlaceholder(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
