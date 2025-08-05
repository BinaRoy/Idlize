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
public interface SheetOptionsInterfaces <: BindOptionsInterfaces {
    public mut open prop height: Option<Union_SheetSize_Length>
    public mut open prop dragBar: Option<Bool>
    public mut open prop enableFloatingDragBar: Option<Bool>
    public mut open prop maskColor: Option<ResourceColor>
    public mut open prop detents: Option<Type_SheetOptions_detents>
    public mut open prop blurStyle: Option<BlurStyle>
    public mut open prop showClose: Option<Union_Boolean_Resource>
    public mut open prop preferType: Option<SheetType>
    public mut open prop title: Option<Union_SheetTitleOptions_CustomBuilder>
    public mut open prop shouldDismiss: Option<((sheetDismiss: SheetDismiss) -> Unit)>
    public mut open prop onWillDismiss: Option<((parameter: DismissSheetAction) -> Unit)>
    public mut open prop onWillSpringBackWhenDismiss: Option<((parameter: SpringBackAction) -> Unit)>
    public mut open prop enableOutsideInteractive: Option<Bool>
    public mut open prop width: Option<Dimension>
    public mut open prop borderWidth: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop borderColor: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>
    public mut open prop borderStyle: Option<Union_BorderStyle_EdgeStyles>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop onHeightDidChange: Option<((parameter: Float64) -> Unit)>
    public mut open prop mode: Option<SheetMode>
    public mut open prop scrollSizeMode: Option<ScrollSizeMode>
    public mut open prop onDetentsDidChange: Option<((parameter: Float64) -> Unit)>
    public mut open prop onWidthDidChange: Option<((parameter: Float64) -> Unit)>
    public mut open prop onTypeDidChange: Option<((parameter: SheetType) -> Unit)>
    public mut open prop uiContext: Option<UIContext>
    public mut open prop keyboardAvoidMode: Option<SheetKeyboardAvoidMode>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    public mut open prop offset: Option<Position>
    public mut open prop effectEdge: Option<Float64>
    public mut open prop radius: Option<Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses>
    public mut open prop detentSelection: Option<Union_SheetSize_Length>
    public mut open prop showInSubWindow: Option<Bool>
    public mut open prop placement: Option<Placement>
    public mut open prop placementOnTarget: Option<Bool>
}
public open class SheetOptions <: SheetOptionsInterfaces {
    private var height_container: Option<Union_SheetSize_Length>
    public mut open prop height: Option<Union_SheetSize_Length>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var dragBar_container: Option<Bool>
    public mut open prop dragBar: Option<Bool>
    {
        get() {
            return dragBar_container
        }
        set(dragBar) {
            dragBar_container = dragBar
        }
    }
    private var enableFloatingDragBar_container: Option<Bool>
    public mut open prop enableFloatingDragBar: Option<Bool>
    {
        get() {
            return enableFloatingDragBar_container
        }
        set(enableFloatingDragBar) {
            enableFloatingDragBar_container = enableFloatingDragBar
        }
    }
    private var maskColor_container: Option<ResourceColor>
    public mut open prop maskColor: Option<ResourceColor>
    {
        get() {
            return maskColor_container
        }
        set(maskColor) {
            maskColor_container = maskColor
        }
    }
    private var detents_container: Option<Type_SheetOptions_detents>
    public mut open prop detents: Option<Type_SheetOptions_detents>
    {
        get() {
            return detents_container
        }
        set(detents) {
            detents_container = detents
        }
    }
    private var blurStyle_container: Option<BlurStyle>
    public mut open prop blurStyle: Option<BlurStyle>
    {
        get() {
            return blurStyle_container
        }
        set(blurStyle) {
            blurStyle_container = blurStyle
        }
    }
    private var showClose_container: Option<Union_Boolean_Resource>
    public mut open prop showClose: Option<Union_Boolean_Resource>
    {
        get() {
            return showClose_container
        }
        set(showClose) {
            showClose_container = showClose
        }
    }
    private var preferType_container: Option<SheetType>
    public mut open prop preferType: Option<SheetType>
    {
        get() {
            return preferType_container
        }
        set(preferType) {
            preferType_container = preferType
        }
    }
    private var title_container: Option<Union_SheetTitleOptions_CustomBuilder>
    public mut open prop title: Option<Union_SheetTitleOptions_CustomBuilder>
    {
        get() {
            return title_container
        }
        set(title) {
            title_container = title
        }
    }
    private var shouldDismiss_container: Option<((sheetDismiss: SheetDismiss) -> Unit)>
    public mut open prop shouldDismiss: Option<((sheetDismiss: SheetDismiss) -> Unit)>
    {
        get() {
            return shouldDismiss_container
        }
        set(shouldDismiss) {
            shouldDismiss_container = shouldDismiss
        }
    }
    private var onWillDismiss_container: Option<((parameter: DismissSheetAction) -> Unit)>
    public mut open prop onWillDismiss: Option<((parameter: DismissSheetAction) -> Unit)>
    {
        get() {
            return onWillDismiss_container
        }
        set(onWillDismiss) {
            onWillDismiss_container = onWillDismiss
        }
    }
    private var onWillSpringBackWhenDismiss_container: Option<((parameter: SpringBackAction) -> Unit)>
    public mut open prop onWillSpringBackWhenDismiss: Option<((parameter: SpringBackAction) -> Unit)>
    {
        get() {
            return onWillSpringBackWhenDismiss_container
        }
        set(onWillSpringBackWhenDismiss) {
            onWillSpringBackWhenDismiss_container = onWillSpringBackWhenDismiss
        }
    }
    private var enableOutsideInteractive_container: Option<Bool>
    public mut open prop enableOutsideInteractive: Option<Bool>
    {
        get() {
            return enableOutsideInteractive_container
        }
        set(enableOutsideInteractive) {
            enableOutsideInteractive_container = enableOutsideInteractive
        }
    }
    private var width_container: Option<Dimension>
    public mut open prop width: Option<Dimension>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var borderWidth_container: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop borderWidth: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var borderColor_container: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>
    public mut open prop borderColor: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>
    {
        get() {
            return borderColor_container
        }
        set(borderColor) {
            borderColor_container = borderColor
        }
    }
    private var borderStyle_container: Option<Union_BorderStyle_EdgeStyles>
    public mut open prop borderStyle: Option<Union_BorderStyle_EdgeStyles>
    {
        get() {
            return borderStyle_container
        }
        set(borderStyle) {
            borderStyle_container = borderStyle
        }
    }
    private var shadow_container: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    {
        get() {
            return shadow_container
        }
        set(shadow) {
            shadow_container = shadow
        }
    }
    private var onHeightDidChange_container: Option<((parameter: Float64) -> Unit)>
    public mut open prop onHeightDidChange: Option<((parameter: Float64) -> Unit)>
    {
        get() {
            return onHeightDidChange_container
        }
        set(onHeightDidChange) {
            onHeightDidChange_container = onHeightDidChange
        }
    }
    private var mode_container: Option<SheetMode>
    public mut open prop mode: Option<SheetMode>
    {
        get() {
            return mode_container
        }
        set(mode) {
            mode_container = mode
        }
    }
    private var scrollSizeMode_container: Option<ScrollSizeMode>
    public mut open prop scrollSizeMode: Option<ScrollSizeMode>
    {
        get() {
            return scrollSizeMode_container
        }
        set(scrollSizeMode) {
            scrollSizeMode_container = scrollSizeMode
        }
    }
    private var onDetentsDidChange_container: Option<((parameter: Float64) -> Unit)>
    public mut open prop onDetentsDidChange: Option<((parameter: Float64) -> Unit)>
    {
        get() {
            return onDetentsDidChange_container
        }
        set(onDetentsDidChange) {
            onDetentsDidChange_container = onDetentsDidChange
        }
    }
    private var onWidthDidChange_container: Option<((parameter: Float64) -> Unit)>
    public mut open prop onWidthDidChange: Option<((parameter: Float64) -> Unit)>
    {
        get() {
            return onWidthDidChange_container
        }
        set(onWidthDidChange) {
            onWidthDidChange_container = onWidthDidChange
        }
    }
    private var onTypeDidChange_container: Option<((parameter: SheetType) -> Unit)>
    public mut open prop onTypeDidChange: Option<((parameter: SheetType) -> Unit)>
    {
        get() {
            return onTypeDidChange_container
        }
        set(onTypeDidChange) {
            onTypeDidChange_container = onTypeDidChange
        }
    }
    private var uiContext_container: Option<UIContext>
    public mut open prop uiContext: Option<UIContext>
    {
        get() {
            return uiContext_container
        }
        set(uiContext) {
            uiContext_container = uiContext
        }
    }
    private var keyboardAvoidMode_container: Option<SheetKeyboardAvoidMode>
    public mut open prop keyboardAvoidMode: Option<SheetKeyboardAvoidMode>
    {
        get() {
            return keyboardAvoidMode_container
        }
        set(keyboardAvoidMode) {
            keyboardAvoidMode_container = keyboardAvoidMode
        }
    }
    private var enableHoverMode_container: Option<Bool>
    public mut open prop enableHoverMode: Option<Bool>
    {
        get() {
            return enableHoverMode_container
        }
        set(enableHoverMode) {
            enableHoverMode_container = enableHoverMode
        }
    }
    private var hoverModeArea_container: Option<HoverModeAreaType>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    {
        get() {
            return hoverModeArea_container
        }
        set(hoverModeArea) {
            hoverModeArea_container = hoverModeArea
        }
    }
    private var offset_container: Option<Position>
    public mut open prop offset: Option<Position>
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    private var effectEdge_container: Option<Float64>
    public mut open prop effectEdge: Option<Float64>
    {
        get() {
            return effectEdge_container
        }
        set(effectEdge) {
            effectEdge_container = effectEdge
        }
    }
    private var radius_container: Option<Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses>
    public mut open prop radius: Option<Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var detentSelection_container: Option<Union_SheetSize_Length>
    public mut open prop detentSelection: Option<Union_SheetSize_Length>
    {
        get() {
            return detentSelection_container
        }
        set(detentSelection) {
            detentSelection_container = detentSelection
        }
    }
    private var showInSubWindow_container: Option<Bool>
    public mut open prop showInSubWindow: Option<Bool>
    {
        get() {
            return showInSubWindow_container
        }
        set(showInSubWindow) {
            showInSubWindow_container = showInSubWindow
        }
    }
    private var placement_container: Option<Placement>
    public mut open prop placement: Option<Placement>
    {
        get() {
            return placement_container
        }
        set(placement) {
            placement_container = placement
        }
    }
    private var placementOnTarget_container: Option<Bool>
    public mut open prop placementOnTarget: Option<Bool>
    {
        get() {
            return placementOnTarget_container
        }
        set(placementOnTarget) {
            placementOnTarget_container = placementOnTarget
        }
    }
    private var backgroundColor_container: Option<ResourceColor>
    public mut open prop backgroundColor: Option<ResourceColor>
    {
        get() {
            return backgroundColor_container
        }
        set(backgroundColor) {
            backgroundColor_container = backgroundColor
        }
    }
    private var onAppear_container: Option<(() -> Unit)>
    public mut open prop onAppear: Option<(() -> Unit)>
    {
        get() {
            return onAppear_container
        }
        set(onAppear) {
            onAppear_container = onAppear
        }
    }
    private var onDisappear_container: Option<(() -> Unit)>
    public mut open prop onDisappear: Option<(() -> Unit)>
    {
        get() {
            return onDisappear_container
        }
        set(onDisappear) {
            onDisappear_container = onDisappear
        }
    }
    private var onWillAppear_container: Option<(() -> Unit)>
    public mut open prop onWillAppear: Option<(() -> Unit)>
    {
        get() {
            return onWillAppear_container
        }
        set(onWillAppear) {
            onWillAppear_container = onWillAppear
        }
    }
    private var onWillDisappear_container: Option<(() -> Unit)>
    public mut open prop onWillDisappear: Option<(() -> Unit)>
    {
        get() {
            return onWillDisappear_container
        }
        set(onWillDisappear) {
            onWillDisappear_container = onWillDisappear
        }
    }
    SheetOptions(height: Option<Union_SheetSize_Length>, dragBar: Option<Bool>, enableFloatingDragBar: Option<Bool>, maskColor: Option<ResourceColor>, detents: Option<Type_SheetOptions_detents>, blurStyle: Option<BlurStyle>, showClose: Option<Union_Boolean_Resource>, preferType: Option<SheetType>, title: Option<Union_SheetTitleOptions_CustomBuilder>, shouldDismiss: Option<((sheetDismiss: SheetDismiss) -> Unit)>, onWillDismiss: Option<((parameter: DismissSheetAction) -> Unit)>, onWillSpringBackWhenDismiss: Option<((parameter: SpringBackAction) -> Unit)>, enableOutsideInteractive: Option<Bool>, width: Option<Dimension>, borderWidth: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>, borderColor: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>, borderStyle: Option<Union_BorderStyle_EdgeStyles>, shadow: Option<Union_ShadowOptions_ShadowStyle>, onHeightDidChange: Option<((parameter: Float64) -> Unit)>, mode: Option<SheetMode>, scrollSizeMode: Option<ScrollSizeMode>, onDetentsDidChange: Option<((parameter: Float64) -> Unit)>, onWidthDidChange: Option<((parameter: Float64) -> Unit)>, onTypeDidChange: Option<((parameter: SheetType) -> Unit)>, uiContext: Option<UIContext>, keyboardAvoidMode: Option<SheetKeyboardAvoidMode>, enableHoverMode: Option<Bool>, hoverModeArea: Option<HoverModeAreaType>, offset: Option<Position>, effectEdge: Option<Float64>, radius: Option<Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses>, detentSelection: Option<Union_SheetSize_Length>, showInSubWindow: Option<Bool>, placement: Option<Placement>, placementOnTarget: Option<Bool>, backgroundColor: Option<ResourceColor>, onAppear: Option<(() -> Unit)>, onDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>) {
        this.height_container = height
        this.dragBar_container = dragBar
        this.enableFloatingDragBar_container = enableFloatingDragBar
        this.maskColor_container = maskColor
        this.detents_container = detents
        this.blurStyle_container = blurStyle
        this.showClose_container = showClose
        this.preferType_container = preferType
        this.title_container = title
        this.shouldDismiss_container = shouldDismiss
        this.onWillDismiss_container = onWillDismiss
        this.onWillSpringBackWhenDismiss_container = onWillSpringBackWhenDismiss
        this.enableOutsideInteractive_container = enableOutsideInteractive
        this.width_container = width
        this.borderWidth_container = borderWidth
        this.borderColor_container = borderColor
        this.borderStyle_container = borderStyle
        this.shadow_container = shadow
        this.onHeightDidChange_container = onHeightDidChange
        this.mode_container = mode
        this.scrollSizeMode_container = scrollSizeMode
        this.onDetentsDidChange_container = onDetentsDidChange
        this.onWidthDidChange_container = onWidthDidChange
        this.onTypeDidChange_container = onTypeDidChange
        this.uiContext_container = uiContext
        this.keyboardAvoidMode_container = keyboardAvoidMode
        this.enableHoverMode_container = enableHoverMode
        this.hoverModeArea_container = hoverModeArea
        this.offset_container = offset
        this.effectEdge_container = effectEdge
        this.radius_container = radius
        this.detentSelection_container = detentSelection
        this.showInSubWindow_container = showInSubWindow
        this.placement_container = placement
        this.placementOnTarget_container = placementOnTarget
        this.backgroundColor_container = backgroundColor
        this.onAppear_container = onAppear
        this.onDisappear_container = onDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
    }
}
public open class SheetOptions_serializer {
    public static func write(buffer: SerializerBase, value: SheetOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBackgroundColor = value.backgroundColor
        if (valueHolderForBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor
            if (valueHolderForBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBackgroundColorTmpValueForIdx0.value);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBackgroundColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnAppear = value.onAppear
        if (valueHolderForOnAppear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnAppearTmpValue = valueHolderForOnAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDisappear = value.onDisappear
        if (valueHolderForOnDisappear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDisappearTmpValue = valueHolderForOnDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillAppear = value.onWillAppear
        if (valueHolderForOnWillAppear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillAppearTmpValue = valueHolderForOnWillAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillDisappear = value.onWillDisappear
        if (valueHolderForOnWillDisappear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillDisappearTmpValue = valueHolderForOnWillDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            if (valueHolderForHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForHeightTmpValueForIdx0.value);
            } else if (valueHolderForHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.getValue1()
                if (valueHolderForHeightTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForHeightTmpValueForIdx1ForIdx0 = valueHolderForHeightTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForHeightTmpValueForIdx1ForIdx0);
                } else if (valueHolderForHeightTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForHeightTmpValueForIdx1ForIdx1 = valueHolderForHeightTmpValueForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx1ForIdx1);
                } else if (valueHolderForHeightTmpValueForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForHeightTmpValueForIdx1ForIdx2 = valueHolderForHeightTmpValueForIdx1.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForHeightTmpValueForIdx1ForIdx2);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDragBar = value.dragBar
        if (valueHolderForDragBar.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDragBarTmpValue = valueHolderForDragBar
            valueSerializer.writeBoolean(valueHolderForDragBarTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableFloatingDragBar = value.enableFloatingDragBar
        if (valueHolderForEnableFloatingDragBar.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableFloatingDragBarTmpValue = valueHolderForEnableFloatingDragBar
            valueSerializer.writeBoolean(valueHolderForEnableFloatingDragBarTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMaskColor = value.maskColor
        if (valueHolderForMaskColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaskColorTmpValue = valueHolderForMaskColor
            if (valueHolderForMaskColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMaskColorTmpValueForIdx0 = valueHolderForMaskColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForMaskColorTmpValueForIdx0.value);
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMaskColorTmpValueForIdx1 = valueHolderForMaskColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMaskColorTmpValueForIdx1);
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMaskColorTmpValueForIdx2 = valueHolderForMaskColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForMaskColorTmpValueForIdx2);
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForMaskColorTmpValueForIdx3 = valueHolderForMaskColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForMaskColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDetents = value.detents
        if (valueHolderForDetents.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDetentsTmpValue = valueHolderForDetents
            let valueHolderForDetentsTmpValue_0 = valueHolderForDetentsTmpValue.value0
            if (valueHolderForDetentsTmpValue_0.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForDetentsTmpValue_0ForIdx0 = valueHolderForDetentsTmpValue_0.getValue0()
                valueSerializer.writeInt32(valueHolderForDetentsTmpValue_0ForIdx0.value);
            } else if (valueHolderForDetentsTmpValue_0.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForDetentsTmpValue_0ForIdx1 = valueHolderForDetentsTmpValue_0.getValue1()
                if (valueHolderForDetentsTmpValue_0ForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForDetentsTmpValue_0ForIdx1ForIdx0 = valueHolderForDetentsTmpValue_0ForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForDetentsTmpValue_0ForIdx1ForIdx0);
                } else if (valueHolderForDetentsTmpValue_0ForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForDetentsTmpValue_0ForIdx1ForIdx1 = valueHolderForDetentsTmpValue_0ForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForDetentsTmpValue_0ForIdx1ForIdx1);
                } else if (valueHolderForDetentsTmpValue_0ForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForDetentsTmpValue_0ForIdx1ForIdx2 = valueHolderForDetentsTmpValue_0ForIdx1.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForDetentsTmpValue_0ForIdx1ForIdx2);
                }
            }
            let valueHolderForDetentsTmpValue_1 = valueHolderForDetentsTmpValue.value1
            if (valueHolderForDetentsTmpValue_1.isSome()) {
                valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueHolderForDetentsTmpValue_1TmpValue = valueHolderForDetentsTmpValue_1
                if (valueHolderForDetentsTmpValue_1TmpValue.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForDetentsTmpValue_1TmpValueForIdx0 = valueHolderForDetentsTmpValue_1TmpValue.getValue0()
                    valueSerializer.writeInt32(valueHolderForDetentsTmpValue_1TmpValueForIdx0.value);
                } else if (valueHolderForDetentsTmpValue_1TmpValue.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForDetentsTmpValue_1TmpValueForIdx1 = valueHolderForDetentsTmpValue_1TmpValue.getValue1()
                    if (valueHolderForDetentsTmpValue_1TmpValueForIdx1.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx0 = valueHolderForDetentsTmpValue_1TmpValueForIdx1.getValue0()
                        valueSerializer.writeString(valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx0);
                    } else if (valueHolderForDetentsTmpValue_1TmpValueForIdx1.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx1 = valueHolderForDetentsTmpValue_1TmpValueForIdx1.getValue1()
                        valueSerializer.writeNumber(valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx1);
                    } else if (valueHolderForDetentsTmpValue_1TmpValueForIdx1.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx2 = valueHolderForDetentsTmpValue_1TmpValueForIdx1.getValue2()
                        valueSerializer.writeCustomObject("Any", valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx2);
                    }
                }
            } else {
                valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
            let valueHolderForDetentsTmpValue_2 = valueHolderForDetentsTmpValue.value2
            if (valueHolderForDetentsTmpValue_2.isSome()) {
                valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueHolderForDetentsTmpValue_2TmpValue = valueHolderForDetentsTmpValue_2
                if (valueHolderForDetentsTmpValue_2TmpValue.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForDetentsTmpValue_2TmpValueForIdx0 = valueHolderForDetentsTmpValue_2TmpValue.getValue0()
                    valueSerializer.writeInt32(valueHolderForDetentsTmpValue_2TmpValueForIdx0.value);
                } else if (valueHolderForDetentsTmpValue_2TmpValue.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForDetentsTmpValue_2TmpValueForIdx1 = valueHolderForDetentsTmpValue_2TmpValue.getValue1()
                    if (valueHolderForDetentsTmpValue_2TmpValueForIdx1.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx0 = valueHolderForDetentsTmpValue_2TmpValueForIdx1.getValue0()
                        valueSerializer.writeString(valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx0);
                    } else if (valueHolderForDetentsTmpValue_2TmpValueForIdx1.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx1 = valueHolderForDetentsTmpValue_2TmpValueForIdx1.getValue1()
                        valueSerializer.writeNumber(valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx1);
                    } else if (valueHolderForDetentsTmpValue_2TmpValueForIdx1.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx2 = valueHolderForDetentsTmpValue_2TmpValueForIdx1.getValue2()
                        valueSerializer.writeCustomObject("Any", valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx2);
                    }
                }
            } else {
                valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBlurStyle = value.blurStyle
        if (valueHolderForBlurStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBlurStyleTmpValue = valueHolderForBlurStyle
            valueSerializer.writeInt32(valueHolderForBlurStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShowClose = value.showClose
        if (valueHolderForShowClose.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowCloseTmpValue = valueHolderForShowClose
            if (valueHolderForShowCloseTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForShowCloseTmpValueForIdx0 = valueHolderForShowCloseTmpValue.getValue0()
                valueSerializer.writeBoolean(valueHolderForShowCloseTmpValueForIdx0);
            } else if (valueHolderForShowCloseTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForShowCloseTmpValueForIdx1 = valueHolderForShowCloseTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForShowCloseTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreferType = value.preferType
        if (valueHolderForPreferType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreferTypeTmpValue = valueHolderForPreferType
            valueSerializer.writeInt32(valueHolderForPreferTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTitle = value.title
        if (valueHolderForTitle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTitleTmpValue = valueHolderForTitle
            if (valueHolderForTitleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTitleTmpValueForIdx0 = valueHolderForTitleTmpValue.getValue0()
                SheetTitleOptions_serializer.write(valueSerializer, valueHolderForTitleTmpValueForIdx0);
            } else if (valueHolderForTitleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTitleTmpValueForIdx1 = valueHolderForTitleTmpValue.getValue1()
                valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForTitleTmpValueForIdx1));
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShouldDismiss = value.shouldDismiss
        if (valueHolderForShouldDismiss.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShouldDismissTmpValue = valueHolderForShouldDismiss
            valueSerializer.holdAndWriteCallback(valueHolderForShouldDismissTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillDismiss = value.onWillDismiss
        if (valueHolderForOnWillDismiss.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillDismissTmpValue = valueHolderForOnWillDismiss
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillDismissTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillSpringBackWhenDismiss = value.onWillSpringBackWhenDismiss
        if (valueHolderForOnWillSpringBackWhenDismiss.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillSpringBackWhenDismissTmpValue = valueHolderForOnWillSpringBackWhenDismiss
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillSpringBackWhenDismissTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableOutsideInteractive = value.enableOutsideInteractive
        if (valueHolderForEnableOutsideInteractive.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableOutsideInteractiveTmpValue = valueHolderForEnableOutsideInteractive
            valueSerializer.writeBoolean(valueHolderForEnableOutsideInteractiveTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0);
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx1);
            } else if (valueHolderForWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderWidth = value.borderWidth
        if (valueHolderForBorderWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderWidthTmpValue = valueHolderForBorderWidth
            if (valueHolderForBorderWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderWidthTmpValueForIdx0 = valueHolderForBorderWidthTmpValue.getValue0()
                if (valueHolderForBorderWidthTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForBorderWidthTmpValueForIdx0ForIdx0 = valueHolderForBorderWidthTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx0ForIdx0);
                } else if (valueHolderForBorderWidthTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForBorderWidthTmpValueForIdx0ForIdx1 = valueHolderForBorderWidthTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx0ForIdx1);
                } else if (valueHolderForBorderWidthTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForBorderWidthTmpValueForIdx0ForIdx2 = valueHolderForBorderWidthTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForBorderWidthTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthTmpValueForIdx1 = valueHolderForBorderWidthTmpValue.getValue1()
                EdgeWidths_serializer.write(valueSerializer, valueHolderForBorderWidthTmpValueForIdx1);
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthTmpValueForIdx2 = valueHolderForBorderWidthTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(valueSerializer, valueHolderForBorderWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderColor = value.borderColor
        if (valueHolderForBorderColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderColorTmpValue = valueHolderForBorderColor
            if (valueHolderForBorderColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderColorTmpValueForIdx0 = valueHolderForBorderColorTmpValue.getValue0()
                if (valueHolderForBorderColorTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForBorderColorTmpValueForIdx0ForIdx0 = valueHolderForBorderColorTmpValueForIdx0.getValue0()
                    valueSerializer.writeInt32(valueHolderForBorderColorTmpValueForIdx0ForIdx0.value);
                } else if (valueHolderForBorderColorTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForBorderColorTmpValueForIdx0ForIdx1 = valueHolderForBorderColorTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForBorderColorTmpValueForIdx0ForIdx1);
                } else if (valueHolderForBorderColorTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForBorderColorTmpValueForIdx0ForIdx2 = valueHolderForBorderColorTmpValueForIdx0.getValue2()
                    valueSerializer.writeString(valueHolderForBorderColorTmpValueForIdx0ForIdx2);
                } else if (valueHolderForBorderColorTmpValueForIdx0.getSelector() == 3) {
                    valueSerializer.writeInt8(Int8(3));
                    let valueHolderForBorderColorTmpValueForIdx0ForIdx3 = valueHolderForBorderColorTmpValueForIdx0.getValue3()
                    valueSerializer.writeCustomObject("Any", valueHolderForBorderColorTmpValueForIdx0ForIdx3);
                }
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderColorTmpValueForIdx1 = valueHolderForBorderColorTmpValue.getValue1()
                EdgeColors_serializer.write(valueSerializer, valueHolderForBorderColorTmpValueForIdx1);
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderColorTmpValueForIdx2 = valueHolderForBorderColorTmpValue.getValue2()
                LocalizedEdgeColors_serializer.write(valueSerializer, valueHolderForBorderColorTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderStyle = value.borderStyle
        if (valueHolderForBorderStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderStyleTmpValue = valueHolderForBorderStyle
            if (valueHolderForBorderStyleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderStyleTmpValueForIdx0 = valueHolderForBorderStyleTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBorderStyleTmpValueForIdx0.value);
            } else if (valueHolderForBorderStyleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderStyleTmpValueForIdx1 = valueHolderForBorderStyleTmpValue.getValue1()
                EdgeStyles_serializer.write(valueSerializer, valueHolderForBorderStyleTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShadow = value.shadow
        if (valueHolderForShadow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShadowTmpValue = valueHolderForShadow
            if (valueHolderForShadowTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForShadowTmpValueForIdx0 = valueHolderForShadowTmpValue.getValue0()
                ShadowOptions_serializer.write(valueSerializer, valueHolderForShadowTmpValueForIdx0);
            } else if (valueHolderForShadowTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForShadowTmpValueForIdx1 = valueHolderForShadowTmpValue.getValue1()
                valueSerializer.writeInt32(valueHolderForShadowTmpValueForIdx1.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnHeightDidChange = value.onHeightDidChange
        if (valueHolderForOnHeightDidChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnHeightDidChangeTmpValue = valueHolderForOnHeightDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnHeightDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMode = value.mode
        if (valueHolderForMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModeTmpValue = valueHolderForMode
            valueSerializer.writeInt32(valueHolderForModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScrollSizeMode = value.scrollSizeMode
        if (valueHolderForScrollSizeMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScrollSizeModeTmpValue = valueHolderForScrollSizeMode
            valueSerializer.writeInt32(valueHolderForScrollSizeModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDetentsDidChange = value.onDetentsDidChange
        if (valueHolderForOnDetentsDidChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDetentsDidChangeTmpValue = valueHolderForOnDetentsDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnDetentsDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWidthDidChange = value.onWidthDidChange
        if (valueHolderForOnWidthDidChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWidthDidChangeTmpValue = valueHolderForOnWidthDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnWidthDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnTypeDidChange = value.onTypeDidChange
        if (valueHolderForOnTypeDidChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnTypeDidChangeTmpValue = valueHolderForOnTypeDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnTypeDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUiContext = value.uiContext
        if (valueHolderForUiContext.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUiContextTmpValue = valueHolderForUiContext
            valueSerializer.writeCustomObject("Any", valueHolderForUiContextTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForKeyboardAvoidMode = value.keyboardAvoidMode
        if (valueHolderForKeyboardAvoidMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForKeyboardAvoidModeTmpValue = valueHolderForKeyboardAvoidMode
            valueSerializer.writeInt32(valueHolderForKeyboardAvoidModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableHoverMode = value.enableHoverMode
        if (valueHolderForEnableHoverMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableHoverModeTmpValue = valueHolderForEnableHoverMode
            valueSerializer.writeBoolean(valueHolderForEnableHoverModeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHoverModeArea = value.hoverModeArea
        if (valueHolderForHoverModeArea.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHoverModeAreaTmpValue = valueHolderForHoverModeArea
            valueSerializer.writeInt32(valueHolderForHoverModeAreaTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            Position_serializer.write(valueSerializer, valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEffectEdge = value.effectEdge
        if (valueHolderForEffectEdge.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEffectEdgeTmpValue = valueHolderForEffectEdge
            valueSerializer.writeNumber(valueHolderForEffectEdgeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRadius = value.radius
        if (valueHolderForRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRadiusTmpValue = valueHolderForRadius
            if (valueHolderForRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRadiusTmpValueForIdx0 = valueHolderForRadiusTmpValue.getValue0()
                valueSerializer.writeCustomObject("Any", valueHolderForRadiusTmpValueForIdx0);
            } else if (valueHolderForRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRadiusTmpValueForIdx1 = valueHolderForRadiusTmpValue.getValue1()
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForRadiusTmpValueForIdx1);
            } else if (valueHolderForRadiusTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForRadiusTmpValueForIdx2 = valueHolderForRadiusTmpValue.getValue2()
                LocalizedBorderRadiuses_serializer.write(valueSerializer, valueHolderForRadiusTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDetentSelection = value.detentSelection
        if (valueHolderForDetentSelection.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDetentSelectionTmpValue = valueHolderForDetentSelection
            if (valueHolderForDetentSelectionTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForDetentSelectionTmpValueForIdx0 = valueHolderForDetentSelectionTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForDetentSelectionTmpValueForIdx0.value);
            } else if (valueHolderForDetentSelectionTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForDetentSelectionTmpValueForIdx1 = valueHolderForDetentSelectionTmpValue.getValue1()
                if (valueHolderForDetentSelectionTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForDetentSelectionTmpValueForIdx1ForIdx0 = valueHolderForDetentSelectionTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForDetentSelectionTmpValueForIdx1ForIdx0);
                } else if (valueHolderForDetentSelectionTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForDetentSelectionTmpValueForIdx1ForIdx1 = valueHolderForDetentSelectionTmpValueForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForDetentSelectionTmpValueForIdx1ForIdx1);
                } else if (valueHolderForDetentSelectionTmpValueForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForDetentSelectionTmpValueForIdx1ForIdx2 = valueHolderForDetentSelectionTmpValueForIdx1.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForDetentSelectionTmpValueForIdx1ForIdx2);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShowInSubWindow = value.showInSubWindow
        if (valueHolderForShowInSubWindow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowInSubWindowTmpValue = valueHolderForShowInSubWindow
            valueSerializer.writeBoolean(valueHolderForShowInSubWindowTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPlacement = value.placement
        if (valueHolderForPlacement.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPlacementTmpValue = valueHolderForPlacement
            valueSerializer.writeInt32(valueHolderForPlacementTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPlacementOnTarget = value.placementOnTarget
        if (valueHolderForPlacementOnTarget.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPlacementOnTargetTmpValue = valueHolderForPlacementOnTarget
            valueSerializer.writeBoolean(valueHolderForPlacementOnTargetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SheetOptions {
        var valueDeserializer: DeserializerBase = buffer
        let backgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundColorTmpBuf_runtimeType))) {
            let backgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundColorTmpBuf_: ResourceColor 
            if (backgroundColorTmpBuf_UnionSelector == Int8(0)) {
                backgroundColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(1)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(2)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(3)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            backgroundColorTmpBuf = match (backgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundColorTmpResult: Option<ResourceColor> = backgroundColorTmpBuf
        let onAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onAppearTmpBuf_runtimeType))) {
            let onAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onAppearTmpBuf = { => let onAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onAppearTmpBuf_BufArgsSerializer.writeInt32(onAppearTmpBuf_BufResource.resourceId);
onAppearTmpBuf_BufArgsSerializer.writePointer(onAppearTmpBuf_BufCall);
onAppearTmpBuf_BufArgsSerializer.writePointer(onAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onAppearTmpBuf_BufArgsSerializer.asBuffer(), onAppearTmpBuf_BufArgsSerializer.length());
onAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onAppearTmpResult: Option<(() -> Unit)> = onAppearTmpBuf
        let onDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDisappearTmpBuf_runtimeType))) {
            let onDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDisappearTmpBuf = { => let onDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDisappearTmpBuf_BufArgsSerializer.writeInt32(onDisappearTmpBuf_BufResource.resourceId);
onDisappearTmpBuf_BufArgsSerializer.writePointer(onDisappearTmpBuf_BufCall);
onDisappearTmpBuf_BufArgsSerializer.writePointer(onDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onDisappearTmpBuf_BufArgsSerializer.asBuffer(), onDisappearTmpBuf_BufArgsSerializer.length());
onDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDisappearTmpResult: Option<(() -> Unit)> = onDisappearTmpBuf
        let onWillAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillAppearTmpBuf_runtimeType))) {
            let onWillAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillAppearTmpBuf = { => let onWillAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillAppearTmpBuf_BufArgsSerializer.writeInt32(onWillAppearTmpBuf_BufResource.resourceId);
onWillAppearTmpBuf_BufArgsSerializer.writePointer(onWillAppearTmpBuf_BufCall);
onWillAppearTmpBuf_BufArgsSerializer.writePointer(onWillAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onWillAppearTmpBuf_BufArgsSerializer.asBuffer(), onWillAppearTmpBuf_BufArgsSerializer.length());
onWillAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillAppearTmpResult: Option<(() -> Unit)> = onWillAppearTmpBuf
        let onWillDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDisappearTmpBuf_runtimeType))) {
            let onWillDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillDisappearTmpBuf = { => let onWillDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDisappearTmpBuf_BufArgsSerializer.writeInt32(onWillDisappearTmpBuf_BufResource.resourceId);
onWillDisappearTmpBuf_BufArgsSerializer.writePointer(onWillDisappearTmpBuf_BufCall);
onWillDisappearTmpBuf_BufArgsSerializer.writePointer(onWillDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onWillDisappearTmpBuf_BufArgsSerializer.asBuffer(), onWillDisappearTmpBuf_BufArgsSerializer.length());
onWillDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillDisappearTmpResult: Option<(() -> Unit)> = onWillDisappearTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Union_SheetSize_Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            let heightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var heightTmpBuf_: Union_SheetSize_Length 
            if (heightTmpBuf_UnionSelector == Int8(0)) {
                heightTmpBuf_ = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
            } else if (heightTmpBuf_UnionSelector == Int8(1)) {
                let heightTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var heightTmpBuf_BufU: Length 
                if (heightTmpBuf_BufUUnionSelector == Int8(0)) {
                    heightTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (heightTmpBuf_BufUUnionSelector == Int8(1)) {
                    heightTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (heightTmpBuf_BufUUnionSelector == Int8(2)) {
                    heightTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for heightTmpBuf_BufU has to be chosen through deserialisation.")
                }
                heightTmpBuf_ = Union_SheetSize_Length(match (heightTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for heightTmpBuf_ has to be chosen through deserialisation.")
            }
            heightTmpBuf = match (heightTmpBuf_ as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Union_SheetSize_Length> = heightTmpBuf
        let dragBarTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dragBarTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dragBarTmpBuf_runtimeType))) {
            dragBarTmpBuf = valueDeserializer.readBoolean()
        }
        let dragBarTmpResult: Option<Bool> = dragBarTmpBuf
        let enableFloatingDragBarTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableFloatingDragBarTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableFloatingDragBarTmpBuf_runtimeType))) {
            enableFloatingDragBarTmpBuf = valueDeserializer.readBoolean()
        }
        let enableFloatingDragBarTmpResult: Option<Bool> = enableFloatingDragBarTmpBuf
        let maskColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskColorTmpBuf_runtimeType))) {
            let maskColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var maskColorTmpBuf_: ResourceColor 
            if (maskColorTmpBuf_UnionSelector == Int8(0)) {
                maskColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (maskColorTmpBuf_UnionSelector == Int8(1)) {
                maskColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maskColorTmpBuf_UnionSelector == Int8(2)) {
                maskColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maskColorTmpBuf_UnionSelector == Int8(3)) {
                maskColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for maskColorTmpBuf_ has to be chosen through deserialisation.")
            }
            maskColorTmpBuf = match (maskColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maskColorTmpResult: Option<ResourceColor> = maskColorTmpBuf
        let detentsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var detentsTmpBuf: Option<Type_SheetOptions_detents> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(detentsTmpBuf_runtimeType))) {
            let detentsTmpBuf_Value0TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var detentsTmpBuf_Value0TempBuf: Union_SheetSize_Length 
            if (detentsTmpBuf_Value0TempBufUnionSelector == Int8(0)) {
                detentsTmpBuf_Value0TempBuf = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
            } else if (detentsTmpBuf_Value0TempBufUnionSelector == Int8(1)) {
                let detentsTmpBuf_Value0TempBufBufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var detentsTmpBuf_Value0TempBufBufU: Length 
                if (detentsTmpBuf_Value0TempBufBufUUnionSelector == Int8(0)) {
                    detentsTmpBuf_Value0TempBufBufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (detentsTmpBuf_Value0TempBufBufUUnionSelector == Int8(1)) {
                    detentsTmpBuf_Value0TempBufBufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (detentsTmpBuf_Value0TempBufBufUUnionSelector == Int8(2)) {
                    detentsTmpBuf_Value0TempBufBufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for detentsTmpBuf_Value0TempBufBufU has to be chosen through deserialisation.")
                }
                detentsTmpBuf_Value0TempBuf = Union_SheetSize_Length(match (detentsTmpBuf_Value0TempBufBufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for detentsTmpBuf_Value0TempBuf has to be chosen through deserialisation.")
            }
            let detentsTmpBuf_Value0: Union_SheetSize_Length = match (detentsTmpBuf_Value0TempBuf as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let detentsTmpBuf_Value1TempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            var detentsTmpBuf_Value1TempBuf: Option<Union_SheetSize_Length> = Option.None
            if ((RuntimeType.UNDEFINED.ordinal) != (Int32(detentsTmpBuf_Value1TempBuf_runtimeType))) {
                let detentsTmpBuf_Value1TempBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
                var detentsTmpBuf_Value1TempBuf_: Union_SheetSize_Length 
                if (detentsTmpBuf_Value1TempBuf_UnionSelector == Int8(0)) {
                    detentsTmpBuf_Value1TempBuf_ = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
                } else if (detentsTmpBuf_Value1TempBuf_UnionSelector == Int8(1)) {
                    let detentsTmpBuf_Value1TempBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                    var detentsTmpBuf_Value1TempBuf_BufU: Length 
                    if (detentsTmpBuf_Value1TempBuf_BufUUnionSelector == Int8(0)) {
                        detentsTmpBuf_Value1TempBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (detentsTmpBuf_Value1TempBuf_BufUUnionSelector == Int8(1)) {
                        detentsTmpBuf_Value1TempBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (detentsTmpBuf_Value1TempBuf_BufUUnionSelector == Int8(2)) {
                        detentsTmpBuf_Value1TempBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else {
                        throw Exception("One of the branches for detentsTmpBuf_Value1TempBuf_BufU has to be chosen through deserialisation.")
                    }
                    detentsTmpBuf_Value1TempBuf_ = Union_SheetSize_Length(match (detentsTmpBuf_Value1TempBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for detentsTmpBuf_Value1TempBuf_ has to be chosen through deserialisation.")
                }
                detentsTmpBuf_Value1TempBuf = match (detentsTmpBuf_Value1TempBuf_ as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            let detentsTmpBuf_Value1: Option<Union_SheetSize_Length> = detentsTmpBuf_Value1TempBuf
            let detentsTmpBuf_Value2TempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            var detentsTmpBuf_Value2TempBuf: Option<Union_SheetSize_Length> = Option.None
            if ((RuntimeType.UNDEFINED.ordinal) != (Int32(detentsTmpBuf_Value2TempBuf_runtimeType))) {
                let detentsTmpBuf_Value2TempBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
                var detentsTmpBuf_Value2TempBuf_: Union_SheetSize_Length 
                if (detentsTmpBuf_Value2TempBuf_UnionSelector == Int8(0)) {
                    detentsTmpBuf_Value2TempBuf_ = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
                } else if (detentsTmpBuf_Value2TempBuf_UnionSelector == Int8(1)) {
                    let detentsTmpBuf_Value2TempBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                    var detentsTmpBuf_Value2TempBuf_BufU: Length 
                    if (detentsTmpBuf_Value2TempBuf_BufUUnionSelector == Int8(0)) {
                        detentsTmpBuf_Value2TempBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (detentsTmpBuf_Value2TempBuf_BufUUnionSelector == Int8(1)) {
                        detentsTmpBuf_Value2TempBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (detentsTmpBuf_Value2TempBuf_BufUUnionSelector == Int8(2)) {
                        detentsTmpBuf_Value2TempBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else {
                        throw Exception("One of the branches for detentsTmpBuf_Value2TempBuf_BufU has to be chosen through deserialisation.")
                    }
                    detentsTmpBuf_Value2TempBuf_ = Union_SheetSize_Length(match (detentsTmpBuf_Value2TempBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for detentsTmpBuf_Value2TempBuf_ has to be chosen through deserialisation.")
                }
                detentsTmpBuf_Value2TempBuf = match (detentsTmpBuf_Value2TempBuf_ as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            let detentsTmpBuf_Value2: Option<Union_SheetSize_Length> = detentsTmpBuf_Value2TempBuf
            detentsTmpBuf = Type_SheetOptions_detents(detentsTmpBuf__value0, detentsTmpBuf__value1, detentsTmpBuf__value2)
        }
        let detentsTmpResult: Option<Type_SheetOptions_detents> = detentsTmpBuf
        let blurStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var blurStyleTmpBuf: Option<BlurStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(blurStyleTmpBuf_runtimeType))) {
            blurStyleTmpBuf = BlurStyle(valueDeserializer.readInt32())
        }
        let blurStyleTmpResult: Option<BlurStyle> = blurStyleTmpBuf
        let showCloseTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showCloseTmpBuf: Option<Union_Boolean_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showCloseTmpBuf_runtimeType))) {
            let showCloseTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var showCloseTmpBuf_: Union_Boolean_Resource 
            if (showCloseTmpBuf_UnionSelector == Int8(0)) {
                showCloseTmpBuf_ = Union_Boolean_Resource(valueDeserializer.readBoolean())
            } else if (showCloseTmpBuf_UnionSelector == Int8(1)) {
                showCloseTmpBuf_ = Union_Boolean_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for showCloseTmpBuf_ has to be chosen through deserialisation.")
            }
            showCloseTmpBuf = match (showCloseTmpBuf_ as Union_Boolean_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let showCloseTmpResult: Option<Union_Boolean_Resource> = showCloseTmpBuf
        let preferTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var preferTypeTmpBuf: Option<SheetType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(preferTypeTmpBuf_runtimeType))) {
            preferTypeTmpBuf = SheetType(valueDeserializer.readInt32())
        }
        let preferTypeTmpResult: Option<SheetType> = preferTypeTmpBuf
        let titleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var titleTmpBuf: Option<Union_SheetTitleOptions_CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(titleTmpBuf_runtimeType))) {
            let titleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var titleTmpBuf_: Union_SheetTitleOptions_CustomBuilder 
            if (titleTmpBuf_UnionSelector == Int8(0)) {
                titleTmpBuf_ = Union_SheetTitleOptions_CustomBuilder(SheetTitleOptions_serializer.read(valueDeserializer))
            } else if (titleTmpBuf_UnionSelector == Int8(1)) {
                let titleTmpBuf_BufUBufResource: CallbackResource = valueDeserializer.readCallbackResource()
                let titleTmpBuf_BufUBufCall: UInt64 = valueDeserializer.readPointer()
                let titleTmpBuf_BufUBufCallSync: UInt64 = valueDeserializer.readPointer()
                titleTmpBuf_ = Union_SheetTitleOptions_CustomBuilder({ => let titleTmpBuf_BufUBufArgsSerializer: SerializerBase = SerializerBase.hold();
titleTmpBuf_BufUBufArgsSerializer.writeInt32(titleTmpBuf_BufUBufResource.resourceId);
titleTmpBuf_BufUBufArgsSerializer.writePointer(titleTmpBuf_BufUBufCall);
titleTmpBuf_BufUBufArgsSerializer.writePointer(titleTmpBuf_BufUBufCallSync);
InteropNativeModule._CallCallback(737226752, titleTmpBuf_BufUBufArgsSerializer.asBuffer(), titleTmpBuf_BufUBufArgsSerializer.length());
titleTmpBuf_BufUBufArgsSerializer.release();
return; })
            } else {
                throw Exception("One of the branches for titleTmpBuf_ has to be chosen through deserialisation.")
            }
            titleTmpBuf = match (titleTmpBuf_ as Union_SheetTitleOptions_CustomBuilder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let titleTmpResult: Option<Union_SheetTitleOptions_CustomBuilder> = titleTmpBuf
        let shouldDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var shouldDismissTmpBuf: Option<((sheetDismiss: SheetDismiss) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(shouldDismissTmpBuf_runtimeType))) {
            let shouldDismissTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let shouldDismissTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let shouldDismissTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            shouldDismissTmpBuf = {sheetDismiss: SheetDismiss => let shouldDismissTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
shouldDismissTmpBuf_BufArgsSerializer.writeInt32(shouldDismissTmpBuf_BufResource.resourceId);
shouldDismissTmpBuf_BufArgsSerializer.writePointer(shouldDismissTmpBuf_BufCall);
shouldDismissTmpBuf_BufArgsSerializer.writePointer(shouldDismissTmpBuf_BufCallSync);
SheetDismiss_serializer.write(shouldDismissTmpBuf_BufArgsSerializer, sheetDismiss);
InteropNativeModule._CallCallback(22609082, shouldDismissTmpBuf_BufArgsSerializer.asBuffer(), shouldDismissTmpBuf_BufArgsSerializer.length());
shouldDismissTmpBuf_BufArgsSerializer.release();
return; }
        }
        let shouldDismissTmpResult: Option<((sheetDismiss: SheetDismiss) -> Unit)> = shouldDismissTmpBuf
        let onWillDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDismissTmpBuf: Option<((parameter: DismissSheetAction) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDismissTmpBuf_runtimeType))) {
            let onWillDismissTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillDismissTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillDismissTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillDismissTmpBuf = {parameter: DismissSheetAction => let onWillDismissTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDismissTmpBuf_BufArgsSerializer.writeInt32(onWillDismissTmpBuf_BufResource.resourceId);
onWillDismissTmpBuf_BufArgsSerializer.writePointer(onWillDismissTmpBuf_BufCall);
onWillDismissTmpBuf_BufArgsSerializer.writePointer(onWillDismissTmpBuf_BufCallSync);
DismissSheetAction_serializer.write(onWillDismissTmpBuf_BufArgsSerializer, parameter);
InteropNativeModule._CallCallback(889549796, onWillDismissTmpBuf_BufArgsSerializer.asBuffer(), onWillDismissTmpBuf_BufArgsSerializer.length());
onWillDismissTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillDismissTmpResult: Option<((parameter: DismissSheetAction) -> Unit)> = onWillDismissTmpBuf
        let onWillSpringBackWhenDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillSpringBackWhenDismissTmpBuf: Option<((parameter: SpringBackAction) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillSpringBackWhenDismissTmpBuf_runtimeType))) {
            let onWillSpringBackWhenDismissTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillSpringBackWhenDismissTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillSpringBackWhenDismissTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillSpringBackWhenDismissTmpBuf = {parameter: SpringBackAction => let onWillSpringBackWhenDismissTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillSpringBackWhenDismissTmpBuf_BufArgsSerializer.writeInt32(onWillSpringBackWhenDismissTmpBuf_BufResource.resourceId);
onWillSpringBackWhenDismissTmpBuf_BufArgsSerializer.writePointer(onWillSpringBackWhenDismissTmpBuf_BufCall);
onWillSpringBackWhenDismissTmpBuf_BufArgsSerializer.writePointer(onWillSpringBackWhenDismissTmpBuf_BufCallSync);
SpringBackAction_serializer.write(onWillSpringBackWhenDismissTmpBuf_BufArgsSerializer, parameter);
InteropNativeModule._CallCallback(1536231691, onWillSpringBackWhenDismissTmpBuf_BufArgsSerializer.asBuffer(), onWillSpringBackWhenDismissTmpBuf_BufArgsSerializer.length());
onWillSpringBackWhenDismissTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillSpringBackWhenDismissTmpResult: Option<((parameter: SpringBackAction) -> Unit)> = onWillSpringBackWhenDismissTmpBuf
        let enableOutsideInteractiveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableOutsideInteractiveTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableOutsideInteractiveTmpBuf_runtimeType))) {
            enableOutsideInteractiveTmpBuf = valueDeserializer.readBoolean()
        }
        let enableOutsideInteractiveTmpResult: Option<Bool> = enableOutsideInteractiveTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBuf_: Dimension 
            if (widthTmpBuf_UnionSelector == Int8(0)) {
                widthTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(1)) {
                widthTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(2)) {
                widthTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Dimension> = widthTmpBuf
        let borderWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBuf: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBuf_runtimeType))) {
            let borderWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBuf_: Union_Dimension_EdgeWidths_LocalizedEdgeWidths 
            if (borderWidthTmpBuf_UnionSelector == Int8(0)) {
                let borderWidthTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var borderWidthTmpBuf_BufU: Dimension 
                if (borderWidthTmpBuf_BufUUnionSelector == Int8(0)) {
                    borderWidthTmpBuf_BufU = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderWidthTmpBuf_BufUUnionSelector == Int8(1)) {
                    borderWidthTmpBuf_BufU = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderWidthTmpBuf_BufUUnionSelector == Int8(2)) {
                    borderWidthTmpBuf_BufU = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for borderWidthTmpBuf_BufU has to be chosen through deserialisation.")
                }
                borderWidthTmpBuf_ = Union_Dimension_EdgeWidths_LocalizedEdgeWidths(match (borderWidthTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBuf_UnionSelector == Int8(1)) {
                borderWidthTmpBuf_ = Union_Dimension_EdgeWidths_LocalizedEdgeWidths(EdgeWidths_serializer.read(valueDeserializer))
            } else if (borderWidthTmpBuf_UnionSelector == Int8(2)) {
                borderWidthTmpBuf_ = Union_Dimension_EdgeWidths_LocalizedEdgeWidths(LocalizedEdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            borderWidthTmpBuf = match (borderWidthTmpBuf_ as Union_Dimension_EdgeWidths_LocalizedEdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpResult: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths> = borderWidthTmpBuf
        let borderColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderColorTmpBuf: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBuf_runtimeType))) {
            let borderColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderColorTmpBuf_: Union_ResourceColor_EdgeColors_LocalizedEdgeColors 
            if (borderColorTmpBuf_UnionSelector == Int8(0)) {
                let borderColorTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var borderColorTmpBuf_BufU: ResourceColor 
                if (borderColorTmpBuf_BufUUnionSelector == Int8(0)) {
                    borderColorTmpBuf_BufU = ResourceColor(Color(valueDeserializer.readInt32()))
                } else if (borderColorTmpBuf_BufUUnionSelector == Int8(1)) {
                    borderColorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderColorTmpBuf_BufUUnionSelector == Int8(2)) {
                    borderColorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderColorTmpBuf_BufUUnionSelector == Int8(3)) {
                    borderColorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for borderColorTmpBuf_BufU has to be chosen through deserialisation.")
                }
                borderColorTmpBuf_ = Union_ResourceColor_EdgeColors_LocalizedEdgeColors(match (borderColorTmpBuf_BufU as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderColorTmpBuf_UnionSelector == Int8(1)) {
                borderColorTmpBuf_ = Union_ResourceColor_EdgeColors_LocalizedEdgeColors(EdgeColors_serializer.read(valueDeserializer))
            } else if (borderColorTmpBuf_UnionSelector == Int8(2)) {
                borderColorTmpBuf_ = Union_ResourceColor_EdgeColors_LocalizedEdgeColors(LocalizedEdgeColors_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderColorTmpBuf_ has to be chosen through deserialisation.")
            }
            borderColorTmpBuf = match (borderColorTmpBuf_ as Union_ResourceColor_EdgeColors_LocalizedEdgeColors) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderColorTmpResult: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors> = borderColorTmpBuf
        let borderStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderStyleTmpBuf: Option<Union_BorderStyle_EdgeStyles> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderStyleTmpBuf_runtimeType))) {
            let borderStyleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderStyleTmpBuf_: Union_BorderStyle_EdgeStyles 
            if (borderStyleTmpBuf_UnionSelector == Int8(0)) {
                borderStyleTmpBuf_ = Union_BorderStyle_EdgeStyles(BorderStyle(valueDeserializer.readInt32()))
            } else if (borderStyleTmpBuf_UnionSelector == Int8(1)) {
                borderStyleTmpBuf_ = Union_BorderStyle_EdgeStyles(EdgeStyles_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderStyleTmpBuf_ has to be chosen through deserialisation.")
            }
            borderStyleTmpBuf = match (borderStyleTmpBuf_ as Union_BorderStyle_EdgeStyles) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderStyleTmpResult: Option<Union_BorderStyle_EdgeStyles> = borderStyleTmpBuf
        let shadowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var shadowTmpBuf: Option<Union_ShadowOptions_ShadowStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(shadowTmpBuf_runtimeType))) {
            let shadowTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var shadowTmpBuf_: Union_ShadowOptions_ShadowStyle 
            if (shadowTmpBuf_UnionSelector == Int8(0)) {
                shadowTmpBuf_ = Union_ShadowOptions_ShadowStyle(ShadowOptions_serializer.read(valueDeserializer))
            } else if (shadowTmpBuf_UnionSelector == Int8(1)) {
                shadowTmpBuf_ = Union_ShadowOptions_ShadowStyle(ShadowStyle(valueDeserializer.readInt32()))
            } else {
                throw Exception("One of the branches for shadowTmpBuf_ has to be chosen through deserialisation.")
            }
            shadowTmpBuf = match (shadowTmpBuf_ as Union_ShadowOptions_ShadowStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let shadowTmpResult: Option<Union_ShadowOptions_ShadowStyle> = shadowTmpBuf
        let onHeightDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onHeightDidChangeTmpBuf: Option<((parameter: Float64) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onHeightDidChangeTmpBuf_runtimeType))) {
            let onHeightDidChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onHeightDidChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onHeightDidChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onHeightDidChangeTmpBuf = {parameter: Float64 => let onHeightDidChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onHeightDidChangeTmpBuf_BufArgsSerializer.writeInt32(onHeightDidChangeTmpBuf_BufResource.resourceId);
onHeightDidChangeTmpBuf_BufArgsSerializer.writePointer(onHeightDidChangeTmpBuf_BufCall);
onHeightDidChangeTmpBuf_BufArgsSerializer.writePointer(onHeightDidChangeTmpBuf_BufCallSync);
onHeightDidChangeTmpBuf_BufArgsSerializer.writeNumber(parameter);
InteropNativeModule._CallCallback(36519084, onHeightDidChangeTmpBuf_BufArgsSerializer.asBuffer(), onHeightDidChangeTmpBuf_BufArgsSerializer.length());
onHeightDidChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onHeightDidChangeTmpResult: Option<((parameter: Float64) -> Unit)> = onHeightDidChangeTmpBuf
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<SheetMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            modeTmpBuf = SheetMode(valueDeserializer.readInt32())
        }
        let modeTmpResult: Option<SheetMode> = modeTmpBuf
        let scrollSizeModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scrollSizeModeTmpBuf: Option<ScrollSizeMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scrollSizeModeTmpBuf_runtimeType))) {
            scrollSizeModeTmpBuf = ScrollSizeMode(valueDeserializer.readInt32())
        }
        let scrollSizeModeTmpResult: Option<ScrollSizeMode> = scrollSizeModeTmpBuf
        let onDetentsDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDetentsDidChangeTmpBuf: Option<((parameter: Float64) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDetentsDidChangeTmpBuf_runtimeType))) {
            let onDetentsDidChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDetentsDidChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDetentsDidChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDetentsDidChangeTmpBuf = {parameter: Float64 => let onDetentsDidChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDetentsDidChangeTmpBuf_BufArgsSerializer.writeInt32(onDetentsDidChangeTmpBuf_BufResource.resourceId);
onDetentsDidChangeTmpBuf_BufArgsSerializer.writePointer(onDetentsDidChangeTmpBuf_BufCall);
onDetentsDidChangeTmpBuf_BufArgsSerializer.writePointer(onDetentsDidChangeTmpBuf_BufCallSync);
onDetentsDidChangeTmpBuf_BufArgsSerializer.writeNumber(parameter);
InteropNativeModule._CallCallback(36519084, onDetentsDidChangeTmpBuf_BufArgsSerializer.asBuffer(), onDetentsDidChangeTmpBuf_BufArgsSerializer.length());
onDetentsDidChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDetentsDidChangeTmpResult: Option<((parameter: Float64) -> Unit)> = onDetentsDidChangeTmpBuf
        let onWidthDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWidthDidChangeTmpBuf: Option<((parameter: Float64) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWidthDidChangeTmpBuf_runtimeType))) {
            let onWidthDidChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWidthDidChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWidthDidChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWidthDidChangeTmpBuf = {parameter: Float64 => let onWidthDidChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWidthDidChangeTmpBuf_BufArgsSerializer.writeInt32(onWidthDidChangeTmpBuf_BufResource.resourceId);
onWidthDidChangeTmpBuf_BufArgsSerializer.writePointer(onWidthDidChangeTmpBuf_BufCall);
onWidthDidChangeTmpBuf_BufArgsSerializer.writePointer(onWidthDidChangeTmpBuf_BufCallSync);
onWidthDidChangeTmpBuf_BufArgsSerializer.writeNumber(parameter);
InteropNativeModule._CallCallback(36519084, onWidthDidChangeTmpBuf_BufArgsSerializer.asBuffer(), onWidthDidChangeTmpBuf_BufArgsSerializer.length());
onWidthDidChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWidthDidChangeTmpResult: Option<((parameter: Float64) -> Unit)> = onWidthDidChangeTmpBuf
        let onTypeDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onTypeDidChangeTmpBuf: Option<((parameter: SheetType) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onTypeDidChangeTmpBuf_runtimeType))) {
            let onTypeDidChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onTypeDidChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onTypeDidChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onTypeDidChangeTmpBuf = {parameter: SheetType => let onTypeDidChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onTypeDidChangeTmpBuf_BufArgsSerializer.writeInt32(onTypeDidChangeTmpBuf_BufResource.resourceId);
onTypeDidChangeTmpBuf_BufArgsSerializer.writePointer(onTypeDidChangeTmpBuf_BufCall);
onTypeDidChangeTmpBuf_BufArgsSerializer.writePointer(onTypeDidChangeTmpBuf_BufCallSync);
onTypeDidChangeTmpBuf_BufArgsSerializer.writeInt32(parameter.value);
InteropNativeModule._CallCallback(-224451112, onTypeDidChangeTmpBuf_BufArgsSerializer.asBuffer(), onTypeDidChangeTmpBuf_BufArgsSerializer.length());
onTypeDidChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onTypeDidChangeTmpResult: Option<((parameter: SheetType) -> Unit)> = onTypeDidChangeTmpBuf
        let uiContextTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var uiContextTmpBuf: Option<UIContext> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(uiContextTmpBuf_runtimeType))) {
            uiContextTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let uiContextTmpResult: Option<UIContext> = uiContextTmpBuf
        let keyboardAvoidModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var keyboardAvoidModeTmpBuf: Option<SheetKeyboardAvoidMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(keyboardAvoidModeTmpBuf_runtimeType))) {
            keyboardAvoidModeTmpBuf = SheetKeyboardAvoidMode(valueDeserializer.readInt32())
        }
        let keyboardAvoidModeTmpResult: Option<SheetKeyboardAvoidMode> = keyboardAvoidModeTmpBuf
        let enableHoverModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHoverModeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHoverModeTmpBuf_runtimeType))) {
            enableHoverModeTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHoverModeTmpResult: Option<Bool> = enableHoverModeTmpBuf
        let hoverModeAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hoverModeAreaTmpBuf: Option<HoverModeAreaType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hoverModeAreaTmpBuf_runtimeType))) {
            hoverModeAreaTmpBuf = HoverModeAreaType(valueDeserializer.readInt32())
        }
        let hoverModeAreaTmpResult: Option<HoverModeAreaType> = hoverModeAreaTmpBuf
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Position> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = Position_serializer.read(valueDeserializer)
        }
        let offsetTmpResult: Option<Position> = offsetTmpBuf
        let effectEdgeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var effectEdgeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(effectEdgeTmpBuf_runtimeType))) {
            effectEdgeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let effectEdgeTmpResult: Option<Float64> = effectEdgeTmpBuf
        let radiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var radiusTmpBuf: Option<Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(radiusTmpBuf_runtimeType))) {
            let radiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var radiusTmpBuf_: Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses 
            if (radiusTmpBuf_UnionSelector == Int8(0)) {
                radiusTmpBuf_ = Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (radiusTmpBuf_UnionSelector == Int8(1)) {
                radiusTmpBuf_ = Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses(BorderRadiuses_serializer.read(valueDeserializer))
            } else if (radiusTmpBuf_UnionSelector == Int8(2)) {
                radiusTmpBuf_ = Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses(LocalizedBorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for radiusTmpBuf_ has to be chosen through deserialisation.")
            }
            radiusTmpBuf = match (radiusTmpBuf_ as Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let radiusTmpResult: Option<Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses> = radiusTmpBuf
        let detentSelectionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var detentSelectionTmpBuf: Option<Union_SheetSize_Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(detentSelectionTmpBuf_runtimeType))) {
            let detentSelectionTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var detentSelectionTmpBuf_: Union_SheetSize_Length 
            if (detentSelectionTmpBuf_UnionSelector == Int8(0)) {
                detentSelectionTmpBuf_ = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
            } else if (detentSelectionTmpBuf_UnionSelector == Int8(1)) {
                let detentSelectionTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var detentSelectionTmpBuf_BufU: Length 
                if (detentSelectionTmpBuf_BufUUnionSelector == Int8(0)) {
                    detentSelectionTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (detentSelectionTmpBuf_BufUUnionSelector == Int8(1)) {
                    detentSelectionTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (detentSelectionTmpBuf_BufUUnionSelector == Int8(2)) {
                    detentSelectionTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for detentSelectionTmpBuf_BufU has to be chosen through deserialisation.")
                }
                detentSelectionTmpBuf_ = Union_SheetSize_Length(match (detentSelectionTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for detentSelectionTmpBuf_ has to be chosen through deserialisation.")
            }
            detentSelectionTmpBuf = match (detentSelectionTmpBuf_ as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let detentSelectionTmpResult: Option<Union_SheetSize_Length> = detentSelectionTmpBuf
        let showInSubWindowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showInSubWindowTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showInSubWindowTmpBuf_runtimeType))) {
            showInSubWindowTmpBuf = valueDeserializer.readBoolean()
        }
        let showInSubWindowTmpResult: Option<Bool> = showInSubWindowTmpBuf
        let placementTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var placementTmpBuf: Option<Placement> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(placementTmpBuf_runtimeType))) {
            placementTmpBuf = Placement(valueDeserializer.readInt32())
        }
        let placementTmpResult: Option<Placement> = placementTmpBuf
        let placementOnTargetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var placementOnTargetTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(placementOnTargetTmpBuf_runtimeType))) {
            placementOnTargetTmpBuf = valueDeserializer.readBoolean()
        }
        let placementOnTargetTmpResult: Option<Bool> = placementOnTargetTmpBuf
        var value: SheetOptions = SheetOptions(heightTmpResult, dragBarTmpResult, enableFloatingDragBarTmpResult, maskColorTmpResult, detentsTmpResult, blurStyleTmpResult, showCloseTmpResult, preferTypeTmpResult, titleTmpResult, shouldDismissTmpResult, onWillDismissTmpResult, onWillSpringBackWhenDismissTmpResult, enableOutsideInteractiveTmpResult, widthTmpResult, borderWidthTmpResult, borderColorTmpResult, borderStyleTmpResult, shadowTmpResult, onHeightDidChangeTmpResult, modeTmpResult, scrollSizeModeTmpResult, onDetentsDidChangeTmpResult, onWidthDidChangeTmpResult, onTypeDidChangeTmpResult, uiContextTmpResult, keyboardAvoidModeTmpResult, enableHoverModeTmpResult, hoverModeAreaTmpResult, offsetTmpResult, effectEdgeTmpResult, radiusTmpResult, detentSelectionTmpResult, showInSubWindowTmpResult, placementTmpResult, placementOnTargetTmpResult, backgroundColorTmpResult, onAppearTmpResult, onDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult)
        return value
    }
}
