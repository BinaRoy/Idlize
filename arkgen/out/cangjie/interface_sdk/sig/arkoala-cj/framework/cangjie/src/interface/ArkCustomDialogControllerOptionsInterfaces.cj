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
public interface CustomDialogControllerOptionsInterfaces <:  {
    public mut open prop builder: CustomDialogControllerBuilder
    public mut open prop cancel: Option<(() -> Unit)>
    public mut open prop autoCancel: Option<Bool>
    public mut open prop alignment: Option<DialogAlignment>
    public mut open prop offset: Option<Offset>
    public mut open prop customStyle: Option<Bool>
    public mut open prop gridCount: Option<Float64>
    public mut open prop maskColor: Option<ResourceColor>
    public mut open prop maskRect: Option<Rectangle>
    public mut open prop openAnimation: Option<AnimateParam>
    public mut open prop closeAnimation: Option<AnimateParam>
    public mut open prop showInSubWindow: Option<Bool>
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop cornerRadius: Option<Union_Dimension_BorderRadiuses>
    public mut open prop isModal: Option<Bool>
    public mut open prop onWillDismiss: Option<((parameter: DismissDialogAction) -> Unit)>
    public mut open prop width: Option<Dimension>
    public mut open prop height: Option<Dimension>
    public mut open prop borderWidth: Option<Union_Dimension_EdgeWidths>
    public mut open prop borderColor: Option<Union_ResourceColor_EdgeColors>
    public mut open prop borderStyle: Option<Union_BorderStyle_EdgeStyles>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    public mut open prop backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>
    public mut open prop backgroundEffect: Option<BackgroundEffectOptions>
    public mut open prop keyboardAvoidMode: Option<KeyboardAvoidMode>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    public mut open prop onDidAppear: Option<(() -> Unit)>
    public mut open prop onDidDisappear: Option<(() -> Unit)>
    public mut open prop onWillAppear: Option<(() -> Unit)>
    public mut open prop onWillDisappear: Option<(() -> Unit)>
    public mut open prop keyboardAvoidDistance: Option<LengthMetrics>
    public mut open prop levelMode: Option<LevelMode>
    public mut open prop levelUniqueId: Option<Float64>
    public mut open prop immersiveMode: Option<ImmersiveMode>
    public mut open prop levelOrder: Option<LevelOrder>
    public mut open prop focusable: Option<Bool>
}
public open class CustomDialogControllerOptions <: CustomDialogControllerOptionsInterfaces {
    private var builder_container: CustomDialogControllerBuilder
    public mut open prop builder: CustomDialogControllerBuilder
    {
        get() {
            return builder_container
        }
        set(builder) {
            builder_container = builder
        }
    }
    private var cancel_container: Option<(() -> Unit)>
    public mut open prop cancel: Option<(() -> Unit)>
    {
        get() {
            return cancel_container
        }
        set(cancel) {
            cancel_container = cancel
        }
    }
    private var autoCancel_container: Option<Bool>
    public mut open prop autoCancel: Option<Bool>
    {
        get() {
            return autoCancel_container
        }
        set(autoCancel) {
            autoCancel_container = autoCancel
        }
    }
    private var alignment_container: Option<DialogAlignment>
    public mut open prop alignment: Option<DialogAlignment>
    {
        get() {
            return alignment_container
        }
        set(alignment) {
            alignment_container = alignment
        }
    }
    private var offset_container: Option<Offset>
    public mut open prop offset: Option<Offset>
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    private var customStyle_container: Option<Bool>
    public mut open prop customStyle: Option<Bool>
    {
        get() {
            return customStyle_container
        }
        set(customStyle) {
            customStyle_container = customStyle
        }
    }
    private var gridCount_container: Option<Float64>
    public mut open prop gridCount: Option<Float64>
    {
        get() {
            return gridCount_container
        }
        set(gridCount) {
            gridCount_container = gridCount
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
    private var maskRect_container: Option<Rectangle>
    public mut open prop maskRect: Option<Rectangle>
    {
        get() {
            return maskRect_container
        }
        set(maskRect) {
            maskRect_container = maskRect
        }
    }
    private var openAnimation_container: Option<AnimateParam>
    public mut open prop openAnimation: Option<AnimateParam>
    {
        get() {
            return openAnimation_container
        }
        set(openAnimation) {
            openAnimation_container = openAnimation
        }
    }
    private var closeAnimation_container: Option<AnimateParam>
    public mut open prop closeAnimation: Option<AnimateParam>
    {
        get() {
            return closeAnimation_container
        }
        set(closeAnimation) {
            closeAnimation_container = closeAnimation
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
    private var cornerRadius_container: Option<Union_Dimension_BorderRadiuses>
    public mut open prop cornerRadius: Option<Union_Dimension_BorderRadiuses>
    {
        get() {
            return cornerRadius_container
        }
        set(cornerRadius) {
            cornerRadius_container = cornerRadius
        }
    }
    private var isModal_container: Option<Bool>
    public mut open prop isModal: Option<Bool>
    {
        get() {
            return isModal_container
        }
        set(isModal) {
            isModal_container = isModal
        }
    }
    private var onWillDismiss_container: Option<((parameter: DismissDialogAction) -> Unit)>
    public mut open prop onWillDismiss: Option<((parameter: DismissDialogAction) -> Unit)>
    {
        get() {
            return onWillDismiss_container
        }
        set(onWillDismiss) {
            onWillDismiss_container = onWillDismiss
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
    private var height_container: Option<Dimension>
    public mut open prop height: Option<Dimension>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var borderWidth_container: Option<Union_Dimension_EdgeWidths>
    public mut open prop borderWidth: Option<Union_Dimension_EdgeWidths>
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var borderColor_container: Option<Union_ResourceColor_EdgeColors>
    public mut open prop borderColor: Option<Union_ResourceColor_EdgeColors>
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
    private var keyboardAvoidMode_container: Option<KeyboardAvoidMode>
    public mut open prop keyboardAvoidMode: Option<KeyboardAvoidMode>
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
    private var keyboardAvoidDistance_container: Option<LengthMetrics>
    public mut open prop keyboardAvoidDistance: Option<LengthMetrics>
    {
        get() {
            return keyboardAvoidDistance_container
        }
        set(keyboardAvoidDistance) {
            keyboardAvoidDistance_container = keyboardAvoidDistance
        }
    }
    private var levelMode_container: Option<LevelMode>
    public mut open prop levelMode: Option<LevelMode>
    {
        get() {
            return levelMode_container
        }
        set(levelMode) {
            levelMode_container = levelMode
        }
    }
    private var levelUniqueId_container: Option<Float64>
    public mut open prop levelUniqueId: Option<Float64>
    {
        get() {
            return levelUniqueId_container
        }
        set(levelUniqueId) {
            levelUniqueId_container = levelUniqueId
        }
    }
    private var immersiveMode_container: Option<ImmersiveMode>
    public mut open prop immersiveMode: Option<ImmersiveMode>
    {
        get() {
            return immersiveMode_container
        }
        set(immersiveMode) {
            immersiveMode_container = immersiveMode
        }
    }
    private var levelOrder_container: Option<LevelOrder>
    public mut open prop levelOrder: Option<LevelOrder>
    {
        get() {
            return levelOrder_container
        }
        set(levelOrder) {
            levelOrder_container = levelOrder
        }
    }
    private var focusable_container: Option<Bool>
    public mut open prop focusable: Option<Bool>
    {
        get() {
            return focusable_container
        }
        set(focusable) {
            focusable_container = focusable
        }
    }
    CustomDialogControllerOptions(builder: CustomDialogControllerBuilder, cancel: Option<(() -> Unit)>, autoCancel: Option<Bool>, alignment: Option<DialogAlignment>, offset: Option<Offset>, customStyle: Option<Bool>, gridCount: Option<Float64>, maskColor: Option<ResourceColor>, maskRect: Option<Rectangle>, openAnimation: Option<AnimateParam>, closeAnimation: Option<AnimateParam>, showInSubWindow: Option<Bool>, backgroundColor: Option<ResourceColor>, cornerRadius: Option<Union_Dimension_BorderRadiuses>, isModal: Option<Bool>, onWillDismiss: Option<((parameter: DismissDialogAction) -> Unit)>, width: Option<Dimension>, height: Option<Dimension>, borderWidth: Option<Union_Dimension_EdgeWidths>, borderColor: Option<Union_ResourceColor_EdgeColors>, borderStyle: Option<Union_BorderStyle_EdgeStyles>, shadow: Option<Union_ShadowOptions_ShadowStyle>, backgroundBlurStyle: Option<BlurStyle>, backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>, backgroundEffect: Option<BackgroundEffectOptions>, keyboardAvoidMode: Option<KeyboardAvoidMode>, enableHoverMode: Option<Bool>, hoverModeArea: Option<HoverModeAreaType>, onDidAppear: Option<(() -> Unit)>, onDidDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>, keyboardAvoidDistance: Option<LengthMetrics>, levelMode: Option<LevelMode>, levelUniqueId: Option<Float64>, immersiveMode: Option<ImmersiveMode>, levelOrder: Option<LevelOrder>, focusable: Option<Bool>) {
        this.builder_container = builder
        this.cancel_container = cancel
        this.autoCancel_container = autoCancel
        this.alignment_container = alignment
        this.offset_container = offset
        this.customStyle_container = customStyle
        this.gridCount_container = gridCount
        this.maskColor_container = maskColor
        this.maskRect_container = maskRect
        this.openAnimation_container = openAnimation
        this.closeAnimation_container = closeAnimation
        this.showInSubWindow_container = showInSubWindow
        this.backgroundColor_container = backgroundColor
        this.cornerRadius_container = cornerRadius
        this.isModal_container = isModal
        this.onWillDismiss_container = onWillDismiss
        this.width_container = width
        this.height_container = height
        this.borderWidth_container = borderWidth
        this.borderColor_container = borderColor
        this.borderStyle_container = borderStyle
        this.shadow_container = shadow
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        this.backgroundEffect_container = backgroundEffect
        this.keyboardAvoidMode_container = keyboardAvoidMode
        this.enableHoverMode_container = enableHoverMode
        this.hoverModeArea_container = hoverModeArea
        this.onDidAppear_container = onDidAppear
        this.onDidDisappear_container = onDidDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
        this.keyboardAvoidDistance_container = keyboardAvoidDistance
        this.levelMode_container = levelMode
        this.levelUniqueId_container = levelUniqueId
        this.immersiveMode_container = immersiveMode
        this.levelOrder_container = levelOrder
        this.focusable_container = focusable
    }
}
public open class CustomDialogControllerOptions_serializer {
    public static func write(buffer: SerializerBase, value: CustomDialogControllerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBuilder = value.builder
        CustomDialogControllerBuilder_serializer.write(valueSerializer, valueHolderForBuilder);
        let valueHolderForCancel = value.cancel
        if (valueHolderForCancel.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCancelTmpValue = valueHolderForCancel
            valueSerializer.holdAndWriteCallback(valueHolderForCancelTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAutoCancel = value.autoCancel
        if (valueHolderForAutoCancel.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAutoCancelTmpValue = valueHolderForAutoCancel
            valueSerializer.writeBoolean(valueHolderForAutoCancelTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAlignment = value.alignment
        if (valueHolderForAlignment.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAlignmentTmpValue = valueHolderForAlignment
            valueSerializer.writeInt32(valueHolderForAlignmentTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            Offset_serializer.write(valueSerializer, valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCustomStyle = value.customStyle
        if (valueHolderForCustomStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCustomStyleTmpValue = valueHolderForCustomStyle
            valueSerializer.writeBoolean(valueHolderForCustomStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForGridCount = value.gridCount
        if (valueHolderForGridCount.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGridCountTmpValue = valueHolderForGridCount
            valueSerializer.writeNumber(valueHolderForGridCountTmpValue);
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
        let valueHolderForMaskRect = value.maskRect
        if (valueHolderForMaskRect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaskRectTmpValue = valueHolderForMaskRect
            Rectangle_serializer.write(valueSerializer, valueHolderForMaskRectTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOpenAnimation = value.openAnimation
        if (valueHolderForOpenAnimation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOpenAnimationTmpValue = valueHolderForOpenAnimation
            AnimateParam_serializer.write(valueSerializer, valueHolderForOpenAnimationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCloseAnimation = value.closeAnimation
        if (valueHolderForCloseAnimation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCloseAnimationTmpValue = valueHolderForCloseAnimation
            AnimateParam_serializer.write(valueSerializer, valueHolderForCloseAnimationTmpValue);
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
        let valueHolderForCornerRadius = value.cornerRadius
        if (valueHolderForCornerRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCornerRadiusTmpValue = valueHolderForCornerRadius
            if (valueHolderForCornerRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForCornerRadiusTmpValueForIdx0 = valueHolderForCornerRadiusTmpValue.getValue0()
                if (valueHolderForCornerRadiusTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForCornerRadiusTmpValueForIdx0ForIdx0 = valueHolderForCornerRadiusTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForCornerRadiusTmpValueForIdx0ForIdx0);
                } else if (valueHolderForCornerRadiusTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForCornerRadiusTmpValueForIdx0ForIdx1 = valueHolderForCornerRadiusTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForCornerRadiusTmpValueForIdx0ForIdx1);
                } else if (valueHolderForCornerRadiusTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForCornerRadiusTmpValueForIdx0ForIdx2 = valueHolderForCornerRadiusTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForCornerRadiusTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForCornerRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForCornerRadiusTmpValueForIdx1 = valueHolderForCornerRadiusTmpValue.getValue1()
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForCornerRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIsModal = value.isModal
        if (valueHolderForIsModal.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsModalTmpValue = valueHolderForIsModal
            valueSerializer.writeBoolean(valueHolderForIsModalTmpValue);
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
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            if (valueHolderForHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForHeightTmpValueForIdx0);
            } else if (valueHolderForHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx1);
            } else if (valueHolderForHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForHeightTmpValueForIdx2 = valueHolderForHeightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForHeightTmpValueForIdx2);
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
        let valueHolderForKeyboardAvoidDistance = value.keyboardAvoidDistance
        if (valueHolderForKeyboardAvoidDistance.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForKeyboardAvoidDistanceTmpValue = valueHolderForKeyboardAvoidDistance
            valueSerializer.writeCustomObject("Any", valueHolderForKeyboardAvoidDistanceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLevelMode = value.levelMode
        if (valueHolderForLevelMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLevelModeTmpValue = valueHolderForLevelMode
            valueSerializer.writeCustomObject("Any", valueHolderForLevelModeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLevelUniqueId = value.levelUniqueId
        if (valueHolderForLevelUniqueId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLevelUniqueIdTmpValue = valueHolderForLevelUniqueId
            valueSerializer.writeNumber(valueHolderForLevelUniqueIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForImmersiveMode = value.immersiveMode
        if (valueHolderForImmersiveMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForImmersiveModeTmpValue = valueHolderForImmersiveMode
            valueSerializer.writeCustomObject("Any", valueHolderForImmersiveModeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLevelOrder = value.levelOrder
        if (valueHolderForLevelOrder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLevelOrderTmpValue = valueHolderForLevelOrder
            valueSerializer.writeCustomObject("Any", valueHolderForLevelOrderTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFocusable = value.focusable
        if (valueHolderForFocusable.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFocusableTmpValue = valueHolderForFocusable
            valueSerializer.writeBoolean(valueHolderForFocusableTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CustomDialogControllerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let builderTmpResult: CustomDialogControllerBuilder = CustomDialogControllerBuilder_serializer.read(valueDeserializer)
        let cancelTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var cancelTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(cancelTmpBuf_runtimeType))) {
            let cancelTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let cancelTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let cancelTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            cancelTmpBuf = { => let cancelTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
cancelTmpBuf_BufArgsSerializer.writeInt32(cancelTmpBuf_BufResource.resourceId);
cancelTmpBuf_BufArgsSerializer.writePointer(cancelTmpBuf_BufCall);
cancelTmpBuf_BufArgsSerializer.writePointer(cancelTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, cancelTmpBuf_BufArgsSerializer.asBuffer(), cancelTmpBuf_BufArgsSerializer.length());
cancelTmpBuf_BufArgsSerializer.release();
return; }
        }
        let cancelTmpResult: Option<(() -> Unit)> = cancelTmpBuf
        let autoCancelTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var autoCancelTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(autoCancelTmpBuf_runtimeType))) {
            autoCancelTmpBuf = valueDeserializer.readBoolean()
        }
        let autoCancelTmpResult: Option<Bool> = autoCancelTmpBuf
        let alignmentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var alignmentTmpBuf: Option<DialogAlignment> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(alignmentTmpBuf_runtimeType))) {
            alignmentTmpBuf = DialogAlignment(valueDeserializer.readInt32())
        }
        let alignmentTmpResult: Option<DialogAlignment> = alignmentTmpBuf
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Offset> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = Offset_serializer.read(valueDeserializer)
        }
        let offsetTmpResult: Option<Offset> = offsetTmpBuf
        let customStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var customStyleTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(customStyleTmpBuf_runtimeType))) {
            customStyleTmpBuf = valueDeserializer.readBoolean()
        }
        let customStyleTmpResult: Option<Bool> = customStyleTmpBuf
        let gridCountTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var gridCountTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(gridCountTmpBuf_runtimeType))) {
            gridCountTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let gridCountTmpResult: Option<Float64> = gridCountTmpBuf
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
        let maskRectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskRectTmpBuf: Option<Rectangle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskRectTmpBuf_runtimeType))) {
            maskRectTmpBuf = Rectangle_serializer.read(valueDeserializer)
        }
        let maskRectTmpResult: Option<Rectangle> = maskRectTmpBuf
        let openAnimationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var openAnimationTmpBuf: Option<AnimateParam> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(openAnimationTmpBuf_runtimeType))) {
            openAnimationTmpBuf = AnimateParam_serializer.read(valueDeserializer)
        }
        let openAnimationTmpResult: Option<AnimateParam> = openAnimationTmpBuf
        let closeAnimationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var closeAnimationTmpBuf: Option<AnimateParam> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(closeAnimationTmpBuf_runtimeType))) {
            closeAnimationTmpBuf = AnimateParam_serializer.read(valueDeserializer)
        }
        let closeAnimationTmpResult: Option<AnimateParam> = closeAnimationTmpBuf
        let showInSubWindowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showInSubWindowTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showInSubWindowTmpBuf_runtimeType))) {
            showInSubWindowTmpBuf = valueDeserializer.readBoolean()
        }
        let showInSubWindowTmpResult: Option<Bool> = showInSubWindowTmpBuf
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
        let cornerRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var cornerRadiusTmpBuf: Option<Union_Dimension_BorderRadiuses> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(cornerRadiusTmpBuf_runtimeType))) {
            let cornerRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var cornerRadiusTmpBuf_: Union_Dimension_BorderRadiuses 
            if (cornerRadiusTmpBuf_UnionSelector == Int8(0)) {
                let cornerRadiusTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var cornerRadiusTmpBuf_BufU: Dimension 
                if (cornerRadiusTmpBuf_BufUUnionSelector == Int8(0)) {
                    cornerRadiusTmpBuf_BufU = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (cornerRadiusTmpBuf_BufUUnionSelector == Int8(1)) {
                    cornerRadiusTmpBuf_BufU = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (cornerRadiusTmpBuf_BufUUnionSelector == Int8(2)) {
                    cornerRadiusTmpBuf_BufU = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for cornerRadiusTmpBuf_BufU has to be chosen through deserialisation.")
                }
                cornerRadiusTmpBuf_ = Union_Dimension_BorderRadiuses(match (cornerRadiusTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (cornerRadiusTmpBuf_UnionSelector == Int8(1)) {
                cornerRadiusTmpBuf_ = Union_Dimension_BorderRadiuses(BorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for cornerRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            cornerRadiusTmpBuf = match (cornerRadiusTmpBuf_ as Union_Dimension_BorderRadiuses) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let cornerRadiusTmpResult: Option<Union_Dimension_BorderRadiuses> = cornerRadiusTmpBuf
        let isModalTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isModalTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isModalTmpBuf_runtimeType))) {
            isModalTmpBuf = valueDeserializer.readBoolean()
        }
        let isModalTmpResult: Option<Bool> = isModalTmpBuf
        let onWillDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDismissTmpBuf: Option<((parameter: DismissDialogAction) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDismissTmpBuf_runtimeType))) {
            let onWillDismissTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillDismissTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillDismissTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillDismissTmpBuf = {parameter: DismissDialogAction => let onWillDismissTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDismissTmpBuf_BufArgsSerializer.writeInt32(onWillDismissTmpBuf_BufResource.resourceId);
onWillDismissTmpBuf_BufArgsSerializer.writePointer(onWillDismissTmpBuf_BufCall);
onWillDismissTmpBuf_BufArgsSerializer.writePointer(onWillDismissTmpBuf_BufCallSync);
DismissDialogAction_serializer.write(onWillDismissTmpBuf_BufArgsSerializer, parameter);
InteropNativeModule._CallCallback(-2095828093, onWillDismissTmpBuf_BufArgsSerializer.asBuffer(), onWillDismissTmpBuf_BufArgsSerializer.length());
onWillDismissTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillDismissTmpResult: Option<((parameter: DismissDialogAction) -> Unit)> = onWillDismissTmpBuf
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
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            let heightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var heightTmpBuf_: Dimension 
            if (heightTmpBuf_UnionSelector == Int8(0)) {
                heightTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBuf_UnionSelector == Int8(1)) {
                heightTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBuf_UnionSelector == Int8(2)) {
                heightTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for heightTmpBuf_ has to be chosen through deserialisation.")
            }
            heightTmpBuf = match (heightTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Dimension> = heightTmpBuf
        let borderWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBuf: Option<Union_Dimension_EdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBuf_runtimeType))) {
            let borderWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBuf_: Union_Dimension_EdgeWidths 
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
                borderWidthTmpBuf_ = Union_Dimension_EdgeWidths(match (borderWidthTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBuf_UnionSelector == Int8(1)) {
                borderWidthTmpBuf_ = Union_Dimension_EdgeWidths(EdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            borderWidthTmpBuf = match (borderWidthTmpBuf_ as Union_Dimension_EdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpResult: Option<Union_Dimension_EdgeWidths> = borderWidthTmpBuf
        let borderColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderColorTmpBuf: Option<Union_ResourceColor_EdgeColors> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBuf_runtimeType))) {
            let borderColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderColorTmpBuf_: Union_ResourceColor_EdgeColors 
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
                borderColorTmpBuf_ = Union_ResourceColor_EdgeColors(match (borderColorTmpBuf_BufU as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderColorTmpBuf_UnionSelector == Int8(1)) {
                borderColorTmpBuf_ = Union_ResourceColor_EdgeColors(EdgeColors_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderColorTmpBuf_ has to be chosen through deserialisation.")
            }
            borderColorTmpBuf = match (borderColorTmpBuf_ as Union_ResourceColor_EdgeColors) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderColorTmpResult: Option<Union_ResourceColor_EdgeColors> = borderColorTmpBuf
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
        let keyboardAvoidModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var keyboardAvoidModeTmpBuf: Option<KeyboardAvoidMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(keyboardAvoidModeTmpBuf_runtimeType))) {
            keyboardAvoidModeTmpBuf = KeyboardAvoidMode(valueDeserializer.readInt32())
        }
        let keyboardAvoidModeTmpResult: Option<KeyboardAvoidMode> = keyboardAvoidModeTmpBuf
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
        let keyboardAvoidDistanceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var keyboardAvoidDistanceTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(keyboardAvoidDistanceTmpBuf_runtimeType))) {
            keyboardAvoidDistanceTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let keyboardAvoidDistanceTmpResult: Option<LengthMetrics> = keyboardAvoidDistanceTmpBuf
        let levelModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var levelModeTmpBuf: Option<LevelMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(levelModeTmpBuf_runtimeType))) {
            levelModeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let levelModeTmpResult: Option<LevelMode> = levelModeTmpBuf
        let levelUniqueIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var levelUniqueIdTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(levelUniqueIdTmpBuf_runtimeType))) {
            levelUniqueIdTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let levelUniqueIdTmpResult: Option<Float64> = levelUniqueIdTmpBuf
        let immersiveModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var immersiveModeTmpBuf: Option<ImmersiveMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(immersiveModeTmpBuf_runtimeType))) {
            immersiveModeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let immersiveModeTmpResult: Option<ImmersiveMode> = immersiveModeTmpBuf
        let levelOrderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var levelOrderTmpBuf: Option<LevelOrder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(levelOrderTmpBuf_runtimeType))) {
            levelOrderTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let levelOrderTmpResult: Option<LevelOrder> = levelOrderTmpBuf
        let focusableTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var focusableTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(focusableTmpBuf_runtimeType))) {
            focusableTmpBuf = valueDeserializer.readBoolean()
        }
        let focusableTmpResult: Option<Bool> = focusableTmpBuf
        var value: CustomDialogControllerOptions = CustomDialogControllerOptions(builderTmpResult, cancelTmpResult, autoCancelTmpResult, alignmentTmpResult, offsetTmpResult, customStyleTmpResult, gridCountTmpResult, maskColorTmpResult, maskRectTmpResult, openAnimationTmpResult, closeAnimationTmpResult, showInSubWindowTmpResult, backgroundColorTmpResult, cornerRadiusTmpResult, isModalTmpResult, onWillDismissTmpResult, widthTmpResult, heightTmpResult, borderWidthTmpResult, borderColorTmpResult, borderStyleTmpResult, shadowTmpResult, backgroundBlurStyleTmpResult, backgroundBlurStyleOptionsTmpResult, backgroundEffectTmpResult, keyboardAvoidModeTmpResult, enableHoverModeTmpResult, hoverModeAreaTmpResult, onDidAppearTmpResult, onDidDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult, keyboardAvoidDistanceTmpResult, levelModeTmpResult, levelUniqueIdTmpResult, immersiveModeTmpResult, levelOrderTmpResult, focusableTmpResult)
        return value
    }
}
