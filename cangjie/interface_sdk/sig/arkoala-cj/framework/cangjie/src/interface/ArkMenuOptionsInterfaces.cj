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
public interface MenuOptionsInterfaces <: ContextMenuOptionsInterfaces {
    public mut open prop title: Option<ResourceStr>
    public mut open prop showInSubWindow: Option<Bool>
}
public open class MenuOptions <: MenuOptionsInterfaces {
    private var title_container: Option<ResourceStr>
    public mut open prop title: Option<ResourceStr>
    {
        get() {
            return title_container
        }
        set(title) {
            title_container = title
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
    private var enableArrow_container: Option<Bool>
    public mut open prop enableArrow: Option<Bool>
    {
        get() {
            return enableArrow_container
        }
        set(enableArrow) {
            enableArrow_container = enableArrow
        }
    }
    private var arrowOffset_container: Option<Length>
    public mut open prop arrowOffset: Option<Length>
    {
        get() {
            return arrowOffset_container
        }
        set(arrowOffset) {
            arrowOffset_container = arrowOffset
        }
    }
    private var preview_container: Option<Union_MenuPreviewMode_CustomBuilder>
    public mut open prop preview: Option<Union_MenuPreviewMode_CustomBuilder>
    {
        get() {
            return preview_container
        }
        set(preview) {
            preview_container = preview
        }
    }
    private var previewBorderRadius_container: Option<BorderRadiusType>
    public mut open prop previewBorderRadius: Option<BorderRadiusType>
    {
        get() {
            return previewBorderRadius_container
        }
        set(previewBorderRadius) {
            previewBorderRadius_container = previewBorderRadius
        }
    }
    private var borderRadius_container: Option<Union_Length_BorderRadiuses_LocalizedBorderRadiuses>
    public mut open prop borderRadius: Option<Union_Length_BorderRadiuses_LocalizedBorderRadiuses>
    {
        get() {
            return borderRadius_container
        }
        set(borderRadius) {
            borderRadius_container = borderRadius
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
    private var aboutToAppear_container: Option<(() -> Unit)>
    public mut open prop aboutToAppear: Option<(() -> Unit)>
    {
        get() {
            return aboutToAppear_container
        }
        set(aboutToAppear) {
            aboutToAppear_container = aboutToAppear
        }
    }
    private var aboutToDisappear_container: Option<(() -> Unit)>
    public mut open prop aboutToDisappear: Option<(() -> Unit)>
    {
        get() {
            return aboutToDisappear_container
        }
        set(aboutToDisappear) {
            aboutToDisappear_container = aboutToDisappear
        }
    }
    private var layoutRegionMargin_container: Option<Margin>
    public mut open prop layoutRegionMargin: Option<Margin>
    {
        get() {
            return layoutRegionMargin_container
        }
        set(layoutRegionMargin) {
            layoutRegionMargin_container = layoutRegionMargin
        }
    }
    private var previewAnimationOptions_container: Option<ContextMenuAnimationOptions>
    public mut open prop previewAnimationOptions: Option<ContextMenuAnimationOptions>
    {
        get() {
            return previewAnimationOptions_container
        }
        set(previewAnimationOptions) {
            previewAnimationOptions_container = previewAnimationOptions
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
    private var backgroundBlurStyle_container: Option<BlurStyle>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    {
        get() {
            return backgroundBlurStyle_container
        }
        set(backgroundBlurStyle) {
            backgroundBlurStyle_container = backgroundBlurStyle
        }
    }
    private var backgroundBlurStyleOptions_container: Option<BackgroundBlurStyleOptions>
    public mut open prop backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>
    {
        get() {
            return backgroundBlurStyleOptions_container
        }
        set(backgroundBlurStyleOptions) {
            backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        }
    }
    private var backgroundEffect_container: Option<BackgroundEffectOptions>
    public mut open prop backgroundEffect: Option<BackgroundEffectOptions>
    {
        get() {
            return backgroundEffect_container
        }
        set(backgroundEffect) {
            backgroundEffect_container = backgroundEffect
        }
    }
    private var transition_container: Option<TransitionEffect>
    public mut open prop transition: Option<TransitionEffect>
    {
        get() {
            return transition_container
        }
        set(transition) {
            transition_container = transition
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
    private var outlineColor_container: Option<Union_ResourceColor_EdgeColors>
    public mut open prop outlineColor: Option<Union_ResourceColor_EdgeColors>
    {
        get() {
            return outlineColor_container
        }
        set(outlineColor) {
            outlineColor_container = outlineColor
        }
    }
    private var outlineWidth_container: Option<Union_Dimension_EdgeOutlineWidths>
    public mut open prop outlineWidth: Option<Union_Dimension_EdgeOutlineWidths>
    {
        get() {
            return outlineWidth_container
        }
        set(outlineWidth) {
            outlineWidth_container = outlineWidth
        }
    }
    private var hapticFeedbackMode_container: Option<HapticFeedbackMode>
    public mut open prop hapticFeedbackMode: Option<HapticFeedbackMode>
    {
        get() {
            return hapticFeedbackMode_container
        }
        set(hapticFeedbackMode) {
            hapticFeedbackMode_container = hapticFeedbackMode
        }
    }
    private var mask_container: Option<Union_Boolean_MenuMaskType>
    public mut open prop mask: Option<Union_Boolean_MenuMaskType>
    {
        get() {
            return mask_container
        }
        set(mask) {
            mask_container = mask
        }
    }
    private var modalMode_container: Option<ModalMode>
    public mut open prop modalMode: Option<ModalMode>
    {
        get() {
            return modalMode_container
        }
        set(modalMode) {
            modalMode_container = modalMode
        }
    }
    private var anchorPosition_container: Option<Position>
    public mut open prop anchorPosition: Option<Position>
    {
        get() {
            return anchorPosition_container
        }
        set(anchorPosition) {
            anchorPosition_container = anchorPosition
        }
    }
    private var onDidAppear_container: Option<(() -> Unit)>
    public mut open prop onDidAppear: Option<(() -> Unit)>
    {
        get() {
            return onDidAppear_container
        }
        set(onDidAppear) {
            onDidAppear_container = onDidAppear
        }
    }
    private var onDidDisappear_container: Option<(() -> Unit)>
    public mut open prop onDidDisappear: Option<(() -> Unit)>
    {
        get() {
            return onDidDisappear_container
        }
        set(onDidDisappear) {
            onDidDisappear_container = onDidDisappear
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
    private var previewScaleMode_container: Option<PreviewScaleMode>
    public mut open prop previewScaleMode: Option<PreviewScaleMode>
    {
        get() {
            return previewScaleMode_container
        }
        set(previewScaleMode) {
            previewScaleMode_container = previewScaleMode
        }
    }
    private var availableLayoutArea_container: Option<AvailableLayoutArea>
    public mut open prop availableLayoutArea: Option<AvailableLayoutArea>
    {
        get() {
            return availableLayoutArea_container
        }
        set(availableLayoutArea) {
            availableLayoutArea_container = availableLayoutArea
        }
    }
    MenuOptions(title: Option<ResourceStr>, showInSubWindow: Option<Bool>, offset: Option<Position>, placement: Option<Placement>, enableArrow: Option<Bool>, arrowOffset: Option<Length>, preview: Option<Union_MenuPreviewMode_CustomBuilder>, previewBorderRadius: Option<BorderRadiusType>, borderRadius: Option<Union_Length_BorderRadiuses_LocalizedBorderRadiuses>, onAppear: Option<(() -> Unit)>, onDisappear: Option<(() -> Unit)>, aboutToAppear: Option<(() -> Unit)>, aboutToDisappear: Option<(() -> Unit)>, layoutRegionMargin: Option<Margin>, previewAnimationOptions: Option<ContextMenuAnimationOptions>, backgroundColor: Option<ResourceColor>, backgroundBlurStyle: Option<BlurStyle>, backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>, backgroundEffect: Option<BackgroundEffectOptions>, transition: Option<TransitionEffect>, enableHoverMode: Option<Bool>, outlineColor: Option<Union_ResourceColor_EdgeColors>, outlineWidth: Option<Union_Dimension_EdgeOutlineWidths>, hapticFeedbackMode: Option<HapticFeedbackMode>, mask: Option<Union_Boolean_MenuMaskType>, modalMode: Option<ModalMode>, anchorPosition: Option<Position>, onDidAppear: Option<(() -> Unit)>, onDidDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>, previewScaleMode: Option<PreviewScaleMode>, availableLayoutArea: Option<AvailableLayoutArea>) {
        this.title_container = title
        this.showInSubWindow_container = showInSubWindow
        this.offset_container = offset
        this.placement_container = placement
        this.enableArrow_container = enableArrow
        this.arrowOffset_container = arrowOffset
        this.preview_container = preview
        this.previewBorderRadius_container = previewBorderRadius
        this.borderRadius_container = borderRadius
        this.onAppear_container = onAppear
        this.onDisappear_container = onDisappear
        this.aboutToAppear_container = aboutToAppear
        this.aboutToDisappear_container = aboutToDisappear
        this.layoutRegionMargin_container = layoutRegionMargin
        this.previewAnimationOptions_container = previewAnimationOptions
        this.backgroundColor_container = backgroundColor
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        this.backgroundEffect_container = backgroundEffect
        this.transition_container = transition
        this.enableHoverMode_container = enableHoverMode
        this.outlineColor_container = outlineColor
        this.outlineWidth_container = outlineWidth
        this.hapticFeedbackMode_container = hapticFeedbackMode
        this.mask_container = mask
        this.modalMode_container = modalMode
        this.anchorPosition_container = anchorPosition
        this.onDidAppear_container = onDidAppear
        this.onDidDisappear_container = onDidDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
        this.previewScaleMode_container = previewScaleMode
        this.availableLayoutArea_container = availableLayoutArea
    }
}
public open class MenuOptions_serializer {
    public static func write(buffer: SerializerBase, value: MenuOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            Position_serializer.write(valueSerializer, valueHolderForOffsetTmpValue);
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
        let valueHolderForEnableArrow = value.enableArrow
        if (valueHolderForEnableArrow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableArrowTmpValue = valueHolderForEnableArrow
            valueSerializer.writeBoolean(valueHolderForEnableArrowTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForArrowOffset = value.arrowOffset
        if (valueHolderForArrowOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForArrowOffsetTmpValue = valueHolderForArrowOffset
            if (valueHolderForArrowOffsetTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForArrowOffsetTmpValueForIdx0 = valueHolderForArrowOffsetTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForArrowOffsetTmpValueForIdx0);
            } else if (valueHolderForArrowOffsetTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForArrowOffsetTmpValueForIdx1 = valueHolderForArrowOffsetTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForArrowOffsetTmpValueForIdx1);
            } else if (valueHolderForArrowOffsetTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForArrowOffsetTmpValueForIdx2 = valueHolderForArrowOffsetTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForArrowOffsetTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreview = value.preview
        if (valueHolderForPreview.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewTmpValue = valueHolderForPreview
            if (valueHolderForPreviewTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPreviewTmpValueForIdx0 = valueHolderForPreviewTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForPreviewTmpValueForIdx0.value);
            } else if (valueHolderForPreviewTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPreviewTmpValueForIdx1 = valueHolderForPreviewTmpValue.getValue1()
                valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForPreviewTmpValueForIdx1));
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreviewBorderRadius = value.previewBorderRadius
        if (valueHolderForPreviewBorderRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewBorderRadiusTmpValue = valueHolderForPreviewBorderRadius
            if (valueHolderForPreviewBorderRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPreviewBorderRadiusTmpValueForIdx0 = valueHolderForPreviewBorderRadiusTmpValue.getValue0()
                if (valueHolderForPreviewBorderRadiusTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForPreviewBorderRadiusTmpValueForIdx0ForIdx0 = valueHolderForPreviewBorderRadiusTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForPreviewBorderRadiusTmpValueForIdx0ForIdx0);
                } else if (valueHolderForPreviewBorderRadiusTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForPreviewBorderRadiusTmpValueForIdx0ForIdx1 = valueHolderForPreviewBorderRadiusTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForPreviewBorderRadiusTmpValueForIdx0ForIdx1);
                } else if (valueHolderForPreviewBorderRadiusTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForPreviewBorderRadiusTmpValueForIdx0ForIdx2 = valueHolderForPreviewBorderRadiusTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForPreviewBorderRadiusTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForPreviewBorderRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPreviewBorderRadiusTmpValueForIdx1 = valueHolderForPreviewBorderRadiusTmpValue.getValue1()
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForPreviewBorderRadiusTmpValueForIdx1);
            } else if (valueHolderForPreviewBorderRadiusTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForPreviewBorderRadiusTmpValueForIdx2 = valueHolderForPreviewBorderRadiusTmpValue.getValue2()
                LocalizedBorderRadiuses_serializer.write(valueSerializer, valueHolderForPreviewBorderRadiusTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderRadius = value.borderRadius
        if (valueHolderForBorderRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderRadiusTmpValue = valueHolderForBorderRadius
            if (valueHolderForBorderRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderRadiusTmpValueForIdx0 = valueHolderForBorderRadiusTmpValue.getValue0()
                if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx0 = valueHolderForBorderRadiusTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForBorderRadiusTmpValueForIdx0ForIdx0);
                } else if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx1 = valueHolderForBorderRadiusTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForBorderRadiusTmpValueForIdx0ForIdx1);
                } else if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx2 = valueHolderForBorderRadiusTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForBorderRadiusTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderRadiusTmpValueForIdx1 = valueHolderForBorderRadiusTmpValue.getValue1()
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForBorderRadiusTmpValueForIdx1);
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderRadiusTmpValueForIdx2 = valueHolderForBorderRadiusTmpValue.getValue2()
                LocalizedBorderRadiuses_serializer.write(valueSerializer, valueHolderForBorderRadiusTmpValueForIdx2);
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
        let valueHolderForAboutToAppear = value.aboutToAppear
        if (valueHolderForAboutToAppear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAboutToAppearTmpValue = valueHolderForAboutToAppear
            valueSerializer.holdAndWriteCallback(valueHolderForAboutToAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAboutToDisappear = value.aboutToDisappear
        if (valueHolderForAboutToDisappear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAboutToDisappearTmpValue = valueHolderForAboutToDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForAboutToDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLayoutRegionMargin = value.layoutRegionMargin
        if (valueHolderForLayoutRegionMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLayoutRegionMarginTmpValue = valueHolderForLayoutRegionMargin
            Padding_serializer.write(valueSerializer, valueHolderForLayoutRegionMarginTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreviewAnimationOptions = value.previewAnimationOptions
        if (valueHolderForPreviewAnimationOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewAnimationOptionsTmpValue = valueHolderForPreviewAnimationOptions
            ContextMenuAnimationOptions_serializer.write(valueSerializer, valueHolderForPreviewAnimationOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
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
        let valueHolderForBackgroundBlurStyle = value.backgroundBlurStyle
        if (valueHolderForBackgroundBlurStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundBlurStyleTmpValue = valueHolderForBackgroundBlurStyle
            valueSerializer.writeInt32(valueHolderForBackgroundBlurStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackgroundBlurStyleOptions = value.backgroundBlurStyleOptions
        if (valueHolderForBackgroundBlurStyleOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundBlurStyleOptionsTmpValue = valueHolderForBackgroundBlurStyleOptions
            BackgroundBlurStyleOptions_serializer.write(valueSerializer, valueHolderForBackgroundBlurStyleOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackgroundEffect = value.backgroundEffect
        if (valueHolderForBackgroundEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundEffectTmpValue = valueHolderForBackgroundEffect
            BackgroundEffectOptions_serializer.write(valueSerializer, valueHolderForBackgroundEffectTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTransition = value.transition
        if (valueHolderForTransition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTransitionTmpValue = valueHolderForTransition
            TransitionEffect_serializer.write(valueSerializer, valueHolderForTransitionTmpValue);
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
        let valueHolderForOutlineColor = value.outlineColor
        if (valueHolderForOutlineColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOutlineColorTmpValue = valueHolderForOutlineColor
            if (valueHolderForOutlineColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOutlineColorTmpValueForIdx0 = valueHolderForOutlineColorTmpValue.getValue0()
                if (valueHolderForOutlineColorTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForOutlineColorTmpValueForIdx0ForIdx0 = valueHolderForOutlineColorTmpValueForIdx0.getValue0()
                    valueSerializer.writeInt32(valueHolderForOutlineColorTmpValueForIdx0ForIdx0.value);
                } else if (valueHolderForOutlineColorTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForOutlineColorTmpValueForIdx0ForIdx1 = valueHolderForOutlineColorTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForOutlineColorTmpValueForIdx0ForIdx1);
                } else if (valueHolderForOutlineColorTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForOutlineColorTmpValueForIdx0ForIdx2 = valueHolderForOutlineColorTmpValueForIdx0.getValue2()
                    valueSerializer.writeString(valueHolderForOutlineColorTmpValueForIdx0ForIdx2);
                } else if (valueHolderForOutlineColorTmpValueForIdx0.getSelector() == 3) {
                    valueSerializer.writeInt8(Int8(3));
                    let valueHolderForOutlineColorTmpValueForIdx0ForIdx3 = valueHolderForOutlineColorTmpValueForIdx0.getValue3()
                    valueSerializer.writeCustomObject("Any", valueHolderForOutlineColorTmpValueForIdx0ForIdx3);
                }
            } else if (valueHolderForOutlineColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOutlineColorTmpValueForIdx1 = valueHolderForOutlineColorTmpValue.getValue1()
                EdgeColors_serializer.write(valueSerializer, valueHolderForOutlineColorTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOutlineWidth = value.outlineWidth
        if (valueHolderForOutlineWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOutlineWidthTmpValue = valueHolderForOutlineWidth
            if (valueHolderForOutlineWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOutlineWidthTmpValueForIdx0 = valueHolderForOutlineWidthTmpValue.getValue0()
                if (valueHolderForOutlineWidthTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForOutlineWidthTmpValueForIdx0ForIdx0 = valueHolderForOutlineWidthTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForOutlineWidthTmpValueForIdx0ForIdx0);
                } else if (valueHolderForOutlineWidthTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForOutlineWidthTmpValueForIdx0ForIdx1 = valueHolderForOutlineWidthTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForOutlineWidthTmpValueForIdx0ForIdx1);
                } else if (valueHolderForOutlineWidthTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForOutlineWidthTmpValueForIdx0ForIdx2 = valueHolderForOutlineWidthTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForOutlineWidthTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForOutlineWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOutlineWidthTmpValueForIdx1 = valueHolderForOutlineWidthTmpValue.getValue1()
                EdgeOutlineWidths_serializer.write(valueSerializer, valueHolderForOutlineWidthTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHapticFeedbackMode = value.hapticFeedbackMode
        if (valueHolderForHapticFeedbackMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHapticFeedbackModeTmpValue = valueHolderForHapticFeedbackMode
            valueSerializer.writeInt32(valueHolderForHapticFeedbackModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMask = value.mask
        if (valueHolderForMask.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaskTmpValue = valueHolderForMask
            if (valueHolderForMaskTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMaskTmpValueForIdx0 = valueHolderForMaskTmpValue.getValue0()
                valueSerializer.writeBoolean(valueHolderForMaskTmpValueForIdx0);
            } else if (valueHolderForMaskTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMaskTmpValueForIdx1 = valueHolderForMaskTmpValue.getValue1()
                MenuMaskType_serializer.write(valueSerializer, valueHolderForMaskTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForModalMode = value.modalMode
        if (valueHolderForModalMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModalModeTmpValue = valueHolderForModalMode
            valueSerializer.writeInt32(valueHolderForModalModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAnchorPosition = value.anchorPosition
        if (valueHolderForAnchorPosition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAnchorPositionTmpValue = valueHolderForAnchorPosition
            Position_serializer.write(valueSerializer, valueHolderForAnchorPositionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDidAppear = value.onDidAppear
        if (valueHolderForOnDidAppear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDidAppearTmpValue = valueHolderForOnDidAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDidAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDidDisappear = value.onDidDisappear
        if (valueHolderForOnDidDisappear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDidDisappearTmpValue = valueHolderForOnDidDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDidDisappearTmpValue);
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
        let valueHolderForPreviewScaleMode = value.previewScaleMode
        if (valueHolderForPreviewScaleMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewScaleModeTmpValue = valueHolderForPreviewScaleMode
            valueSerializer.writeInt32(valueHolderForPreviewScaleModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAvailableLayoutArea = value.availableLayoutArea
        if (valueHolderForAvailableLayoutArea.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAvailableLayoutAreaTmpValue = valueHolderForAvailableLayoutArea
            valueSerializer.writeInt32(valueHolderForAvailableLayoutAreaTmpValue.value);
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
                valueSerializer.writeString(valueHolderForTitleTmpValueForIdx0);
            } else if (valueHolderForTitleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTitleTmpValueForIdx1 = valueHolderForTitleTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForTitleTmpValueForIdx1);
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
    }
    public static func read(buffer: DeserializerBase): MenuOptions {
        var valueDeserializer: DeserializerBase = buffer
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Position> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = Position_serializer.read(valueDeserializer)
        }
        let offsetTmpResult: Option<Position> = offsetTmpBuf
        let placementTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var placementTmpBuf: Option<Placement> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(placementTmpBuf_runtimeType))) {
            placementTmpBuf = Placement(valueDeserializer.readInt32())
        }
        let placementTmpResult: Option<Placement> = placementTmpBuf
        let enableArrowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableArrowTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableArrowTmpBuf_runtimeType))) {
            enableArrowTmpBuf = valueDeserializer.readBoolean()
        }
        let enableArrowTmpResult: Option<Bool> = enableArrowTmpBuf
        let arrowOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var arrowOffsetTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(arrowOffsetTmpBuf_runtimeType))) {
            let arrowOffsetTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var arrowOffsetTmpBuf_: Length 
            if (arrowOffsetTmpBuf_UnionSelector == Int8(0)) {
                arrowOffsetTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowOffsetTmpBuf_UnionSelector == Int8(1)) {
                arrowOffsetTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowOffsetTmpBuf_UnionSelector == Int8(2)) {
                arrowOffsetTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for arrowOffsetTmpBuf_ has to be chosen through deserialisation.")
            }
            arrowOffsetTmpBuf = match (arrowOffsetTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let arrowOffsetTmpResult: Option<Length> = arrowOffsetTmpBuf
        let previewTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewTmpBuf: Option<Union_MenuPreviewMode_CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewTmpBuf_runtimeType))) {
            let previewTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var previewTmpBuf_: Union_MenuPreviewMode_CustomBuilder 
            if (previewTmpBuf_UnionSelector == Int8(0)) {
                previewTmpBuf_ = Union_MenuPreviewMode_CustomBuilder(MenuPreviewMode(valueDeserializer.readInt32()))
            } else if (previewTmpBuf_UnionSelector == Int8(1)) {
                let previewTmpBuf_BufUBufResource: CallbackResource = valueDeserializer.readCallbackResource()
                let previewTmpBuf_BufUBufCall: UInt64 = valueDeserializer.readPointer()
                let previewTmpBuf_BufUBufCallSync: UInt64 = valueDeserializer.readPointer()
                previewTmpBuf_ = Union_MenuPreviewMode_CustomBuilder({ => let previewTmpBuf_BufUBufArgsSerializer: SerializerBase = SerializerBase.hold();
previewTmpBuf_BufUBufArgsSerializer.writeInt32(previewTmpBuf_BufUBufResource.resourceId);
previewTmpBuf_BufUBufArgsSerializer.writePointer(previewTmpBuf_BufUBufCall);
previewTmpBuf_BufUBufArgsSerializer.writePointer(previewTmpBuf_BufUBufCallSync);
InteropNativeModule._CallCallback(737226752, previewTmpBuf_BufUBufArgsSerializer.asBuffer(), previewTmpBuf_BufUBufArgsSerializer.length());
previewTmpBuf_BufUBufArgsSerializer.release();
return; })
            } else {
                throw Exception("One of the branches for previewTmpBuf_ has to be chosen through deserialisation.")
            }
            previewTmpBuf = match (previewTmpBuf_ as Union_MenuPreviewMode_CustomBuilder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let previewTmpResult: Option<Union_MenuPreviewMode_CustomBuilder> = previewTmpBuf
        let previewBorderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewBorderRadiusTmpBuf: Option<BorderRadiusType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewBorderRadiusTmpBuf_runtimeType))) {
            let previewBorderRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var previewBorderRadiusTmpBuf_: BorderRadiusType 
            if (previewBorderRadiusTmpBuf_UnionSelector == Int8(0)) {
                let previewBorderRadiusTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var previewBorderRadiusTmpBuf_BufU: Length 
                if (previewBorderRadiusTmpBuf_BufUUnionSelector == Int8(0)) {
                    previewBorderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (previewBorderRadiusTmpBuf_BufUUnionSelector == Int8(1)) {
                    previewBorderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (previewBorderRadiusTmpBuf_BufUUnionSelector == Int8(2)) {
                    previewBorderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for previewBorderRadiusTmpBuf_BufU has to be chosen through deserialisation.")
                }
                previewBorderRadiusTmpBuf_ = BorderRadiusType(match (previewBorderRadiusTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (previewBorderRadiusTmpBuf_UnionSelector == Int8(1)) {
                previewBorderRadiusTmpBuf_ = BorderRadiusType(BorderRadiuses_serializer.read(valueDeserializer))
            } else if (previewBorderRadiusTmpBuf_UnionSelector == Int8(2)) {
                previewBorderRadiusTmpBuf_ = BorderRadiusType(LocalizedBorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for previewBorderRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            previewBorderRadiusTmpBuf = match (previewBorderRadiusTmpBuf_ as BorderRadiusType) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let previewBorderRadiusTmpResult: Option<BorderRadiusType> = previewBorderRadiusTmpBuf
        let borderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderRadiusTmpBuf: Option<Union_Length_BorderRadiuses_LocalizedBorderRadiuses> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderRadiusTmpBuf_runtimeType))) {
            let borderRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderRadiusTmpBuf_: Union_Length_BorderRadiuses_LocalizedBorderRadiuses 
            if (borderRadiusTmpBuf_UnionSelector == Int8(0)) {
                let borderRadiusTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var borderRadiusTmpBuf_BufU: Length 
                if (borderRadiusTmpBuf_BufUUnionSelector == Int8(0)) {
                    borderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderRadiusTmpBuf_BufUUnionSelector == Int8(1)) {
                    borderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderRadiusTmpBuf_BufUUnionSelector == Int8(2)) {
                    borderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for borderRadiusTmpBuf_BufU has to be chosen through deserialisation.")
                }
                borderRadiusTmpBuf_ = Union_Length_BorderRadiuses_LocalizedBorderRadiuses(match (borderRadiusTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(1)) {
                borderRadiusTmpBuf_ = Union_Length_BorderRadiuses_LocalizedBorderRadiuses(BorderRadiuses_serializer.read(valueDeserializer))
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(2)) {
                borderRadiusTmpBuf_ = Union_Length_BorderRadiuses_LocalizedBorderRadiuses(LocalizedBorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            borderRadiusTmpBuf = match (borderRadiusTmpBuf_ as Union_Length_BorderRadiuses_LocalizedBorderRadiuses) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderRadiusTmpResult: Option<Union_Length_BorderRadiuses_LocalizedBorderRadiuses> = borderRadiusTmpBuf
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
        let aboutToAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var aboutToAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(aboutToAppearTmpBuf_runtimeType))) {
            let aboutToAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let aboutToAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let aboutToAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            aboutToAppearTmpBuf = { => let aboutToAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
aboutToAppearTmpBuf_BufArgsSerializer.writeInt32(aboutToAppearTmpBuf_BufResource.resourceId);
aboutToAppearTmpBuf_BufArgsSerializer.writePointer(aboutToAppearTmpBuf_BufCall);
aboutToAppearTmpBuf_BufArgsSerializer.writePointer(aboutToAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, aboutToAppearTmpBuf_BufArgsSerializer.asBuffer(), aboutToAppearTmpBuf_BufArgsSerializer.length());
aboutToAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let aboutToAppearTmpResult: Option<(() -> Unit)> = aboutToAppearTmpBuf
        let aboutToDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var aboutToDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(aboutToDisappearTmpBuf_runtimeType))) {
            let aboutToDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let aboutToDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let aboutToDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            aboutToDisappearTmpBuf = { => let aboutToDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
aboutToDisappearTmpBuf_BufArgsSerializer.writeInt32(aboutToDisappearTmpBuf_BufResource.resourceId);
aboutToDisappearTmpBuf_BufArgsSerializer.writePointer(aboutToDisappearTmpBuf_BufCall);
aboutToDisappearTmpBuf_BufArgsSerializer.writePointer(aboutToDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, aboutToDisappearTmpBuf_BufArgsSerializer.asBuffer(), aboutToDisappearTmpBuf_BufArgsSerializer.length());
aboutToDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let aboutToDisappearTmpResult: Option<(() -> Unit)> = aboutToDisappearTmpBuf
        let layoutRegionMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var layoutRegionMarginTmpBuf: Option<Margin> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(layoutRegionMarginTmpBuf_runtimeType))) {
            layoutRegionMarginTmpBuf = Padding_serializer.read(valueDeserializer)
        }
        let layoutRegionMarginTmpResult: Option<Margin> = layoutRegionMarginTmpBuf
        let previewAnimationOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewAnimationOptionsTmpBuf: Option<ContextMenuAnimationOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewAnimationOptionsTmpBuf_runtimeType))) {
            previewAnimationOptionsTmpBuf = ContextMenuAnimationOptions_serializer.read(valueDeserializer)
        }
        let previewAnimationOptionsTmpResult: Option<ContextMenuAnimationOptions> = previewAnimationOptionsTmpBuf
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
        let backgroundBlurStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundBlurStyleTmpBuf: Option<BlurStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundBlurStyleTmpBuf_runtimeType))) {
            backgroundBlurStyleTmpBuf = BlurStyle(valueDeserializer.readInt32())
        }
        let backgroundBlurStyleTmpResult: Option<BlurStyle> = backgroundBlurStyleTmpBuf
        let backgroundBlurStyleOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundBlurStyleOptionsTmpBuf: Option<BackgroundBlurStyleOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundBlurStyleOptionsTmpBuf_runtimeType))) {
            backgroundBlurStyleOptionsTmpBuf = BackgroundBlurStyleOptions_serializer.read(valueDeserializer)
        }
        let backgroundBlurStyleOptionsTmpResult: Option<BackgroundBlurStyleOptions> = backgroundBlurStyleOptionsTmpBuf
        let backgroundEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundEffectTmpBuf: Option<BackgroundEffectOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundEffectTmpBuf_runtimeType))) {
            backgroundEffectTmpBuf = BackgroundEffectOptions_serializer.read(valueDeserializer)
        }
        let backgroundEffectTmpResult: Option<BackgroundEffectOptions> = backgroundEffectTmpBuf
        let transitionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var transitionTmpBuf: Option<TransitionEffect> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(transitionTmpBuf_runtimeType))) {
            transitionTmpBuf = match (TransitionEffect_serializer.read(valueDeserializer) as TransitionEffect) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let transitionTmpResult: Option<TransitionEffect> = transitionTmpBuf
        let enableHoverModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHoverModeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHoverModeTmpBuf_runtimeType))) {
            enableHoverModeTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHoverModeTmpResult: Option<Bool> = enableHoverModeTmpBuf
        let outlineColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var outlineColorTmpBuf: Option<Union_ResourceColor_EdgeColors> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(outlineColorTmpBuf_runtimeType))) {
            let outlineColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var outlineColorTmpBuf_: Union_ResourceColor_EdgeColors 
            if (outlineColorTmpBuf_UnionSelector == Int8(0)) {
                let outlineColorTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var outlineColorTmpBuf_BufU: ResourceColor 
                if (outlineColorTmpBuf_BufUUnionSelector == Int8(0)) {
                    outlineColorTmpBuf_BufU = ResourceColor(Color(valueDeserializer.readInt32()))
                } else if (outlineColorTmpBuf_BufUUnionSelector == Int8(1)) {
                    outlineColorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (outlineColorTmpBuf_BufUUnionSelector == Int8(2)) {
                    outlineColorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (outlineColorTmpBuf_BufUUnionSelector == Int8(3)) {
                    outlineColorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for outlineColorTmpBuf_BufU has to be chosen through deserialisation.")
                }
                outlineColorTmpBuf_ = Union_ResourceColor_EdgeColors(match (outlineColorTmpBuf_BufU as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (outlineColorTmpBuf_UnionSelector == Int8(1)) {
                outlineColorTmpBuf_ = Union_ResourceColor_EdgeColors(EdgeColors_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for outlineColorTmpBuf_ has to be chosen through deserialisation.")
            }
            outlineColorTmpBuf = match (outlineColorTmpBuf_ as Union_ResourceColor_EdgeColors) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let outlineColorTmpResult: Option<Union_ResourceColor_EdgeColors> = outlineColorTmpBuf
        let outlineWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var outlineWidthTmpBuf: Option<Union_Dimension_EdgeOutlineWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(outlineWidthTmpBuf_runtimeType))) {
            let outlineWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var outlineWidthTmpBuf_: Union_Dimension_EdgeOutlineWidths 
            if (outlineWidthTmpBuf_UnionSelector == Int8(0)) {
                let outlineWidthTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var outlineWidthTmpBuf_BufU: Dimension 
                if (outlineWidthTmpBuf_BufUUnionSelector == Int8(0)) {
                    outlineWidthTmpBuf_BufU = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (outlineWidthTmpBuf_BufUUnionSelector == Int8(1)) {
                    outlineWidthTmpBuf_BufU = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (outlineWidthTmpBuf_BufUUnionSelector == Int8(2)) {
                    outlineWidthTmpBuf_BufU = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for outlineWidthTmpBuf_BufU has to be chosen through deserialisation.")
                }
                outlineWidthTmpBuf_ = Union_Dimension_EdgeOutlineWidths(match (outlineWidthTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (outlineWidthTmpBuf_UnionSelector == Int8(1)) {
                outlineWidthTmpBuf_ = Union_Dimension_EdgeOutlineWidths(EdgeOutlineWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for outlineWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            outlineWidthTmpBuf = match (outlineWidthTmpBuf_ as Union_Dimension_EdgeOutlineWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let outlineWidthTmpResult: Option<Union_Dimension_EdgeOutlineWidths> = outlineWidthTmpBuf
        let hapticFeedbackModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hapticFeedbackModeTmpBuf: Option<HapticFeedbackMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hapticFeedbackModeTmpBuf_runtimeType))) {
            hapticFeedbackModeTmpBuf = HapticFeedbackMode(valueDeserializer.readInt32())
        }
        let hapticFeedbackModeTmpResult: Option<HapticFeedbackMode> = hapticFeedbackModeTmpBuf
        let maskTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskTmpBuf: Option<Union_Boolean_MenuMaskType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskTmpBuf_runtimeType))) {
            let maskTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var maskTmpBuf_: Union_Boolean_MenuMaskType 
            if (maskTmpBuf_UnionSelector == Int8(0)) {
                maskTmpBuf_ = Union_Boolean_MenuMaskType(valueDeserializer.readBoolean())
            } else if (maskTmpBuf_UnionSelector == Int8(1)) {
                maskTmpBuf_ = Union_Boolean_MenuMaskType(MenuMaskType_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for maskTmpBuf_ has to be chosen through deserialisation.")
            }
            maskTmpBuf = match (maskTmpBuf_ as Union_Boolean_MenuMaskType) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maskTmpResult: Option<Union_Boolean_MenuMaskType> = maskTmpBuf
        let modalModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modalModeTmpBuf: Option<ModalMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modalModeTmpBuf_runtimeType))) {
            modalModeTmpBuf = ModalMode(valueDeserializer.readInt32())
        }
        let modalModeTmpResult: Option<ModalMode> = modalModeTmpBuf
        let anchorPositionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var anchorPositionTmpBuf: Option<Position> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(anchorPositionTmpBuf_runtimeType))) {
            anchorPositionTmpBuf = Position_serializer.read(valueDeserializer)
        }
        let anchorPositionTmpResult: Option<Position> = anchorPositionTmpBuf
        let onDidAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDidAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDidAppearTmpBuf_runtimeType))) {
            let onDidAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDidAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDidAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDidAppearTmpBuf = { => let onDidAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDidAppearTmpBuf_BufArgsSerializer.writeInt32(onDidAppearTmpBuf_BufResource.resourceId);
onDidAppearTmpBuf_BufArgsSerializer.writePointer(onDidAppearTmpBuf_BufCall);
onDidAppearTmpBuf_BufArgsSerializer.writePointer(onDidAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onDidAppearTmpBuf_BufArgsSerializer.asBuffer(), onDidAppearTmpBuf_BufArgsSerializer.length());
onDidAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDidAppearTmpResult: Option<(() -> Unit)> = onDidAppearTmpBuf
        let onDidDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDidDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDidDisappearTmpBuf_runtimeType))) {
            let onDidDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDidDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDidDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDidDisappearTmpBuf = { => let onDidDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDidDisappearTmpBuf_BufArgsSerializer.writeInt32(onDidDisappearTmpBuf_BufResource.resourceId);
onDidDisappearTmpBuf_BufArgsSerializer.writePointer(onDidDisappearTmpBuf_BufCall);
onDidDisappearTmpBuf_BufArgsSerializer.writePointer(onDidDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onDidDisappearTmpBuf_BufArgsSerializer.asBuffer(), onDidDisappearTmpBuf_BufArgsSerializer.length());
onDidDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDidDisappearTmpResult: Option<(() -> Unit)> = onDidDisappearTmpBuf
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
        let previewScaleModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewScaleModeTmpBuf: Option<PreviewScaleMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewScaleModeTmpBuf_runtimeType))) {
            previewScaleModeTmpBuf = PreviewScaleMode(valueDeserializer.readInt32())
        }
        let previewScaleModeTmpResult: Option<PreviewScaleMode> = previewScaleModeTmpBuf
        let availableLayoutAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var availableLayoutAreaTmpBuf: Option<AvailableLayoutArea> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(availableLayoutAreaTmpBuf_runtimeType))) {
            availableLayoutAreaTmpBuf = AvailableLayoutArea(valueDeserializer.readInt32())
        }
        let availableLayoutAreaTmpResult: Option<AvailableLayoutArea> = availableLayoutAreaTmpBuf
        let titleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var titleTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(titleTmpBuf_runtimeType))) {
            let titleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var titleTmpBuf_: ResourceStr 
            if (titleTmpBuf_UnionSelector == Int8(0)) {
                titleTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (titleTmpBuf_UnionSelector == Int8(1)) {
                titleTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for titleTmpBuf_ has to be chosen through deserialisation.")
            }
            titleTmpBuf = match (titleTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let titleTmpResult: Option<ResourceStr> = titleTmpBuf
        let showInSubWindowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showInSubWindowTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showInSubWindowTmpBuf_runtimeType))) {
            showInSubWindowTmpBuf = valueDeserializer.readBoolean()
        }
        let showInSubWindowTmpResult: Option<Bool> = showInSubWindowTmpBuf
        var value: MenuOptions = MenuOptions(titleTmpResult, showInSubWindowTmpResult, offsetTmpResult, placementTmpResult, enableArrowTmpResult, arrowOffsetTmpResult, previewTmpResult, previewBorderRadiusTmpResult, borderRadiusTmpResult, onAppearTmpResult, onDisappearTmpResult, aboutToAppearTmpResult, aboutToDisappearTmpResult, layoutRegionMarginTmpResult, previewAnimationOptionsTmpResult, backgroundColorTmpResult, backgroundBlurStyleTmpResult, backgroundBlurStyleOptionsTmpResult, backgroundEffectTmpResult, transitionTmpResult, enableHoverModeTmpResult, outlineColorTmpResult, outlineWidthTmpResult, hapticFeedbackModeTmpResult, maskTmpResult, modalModeTmpResult, anchorPositionTmpResult, onDidAppearTmpResult, onDidDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult, previewScaleModeTmpResult, availableLayoutAreaTmpResult)
        return value
    }
}
