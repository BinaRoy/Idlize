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
public interface AlertDialogParamInterfaces <:  {
    public mut open prop title: Option<ResourceStr>
    public mut open prop subtitle: Option<ResourceStr>
    public mut open prop message: ResourceStr
    public mut open prop autoCancel: Option<Bool>
    public mut open prop cancel: Option<VoidCallback>
    public mut open prop alignment: Option<DialogAlignment>
    public mut open prop offset: Option<Offset>
    public mut open prop gridCount: Option<Float64>
    public mut open prop maskRect: Option<Rectangle>
    public mut open prop showInSubWindow: Option<Bool>
    public mut open prop isModal: Option<Bool>
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    public mut open prop backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>
    public mut open prop backgroundEffect: Option<BackgroundEffectOptions>
    public mut open prop onWillDismiss: Option<((parameter: DismissDialogAction) -> Unit)>
    public mut open prop transition: Option<TransitionEffect>
    public mut open prop cornerRadius: Option<Union_Dimension_BorderRadiuses_LocalizedBorderRadiuses>
    public mut open prop width: Option<Dimension>
    public mut open prop height: Option<Dimension>
    public mut open prop borderWidth: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop borderColor: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>
    public mut open prop borderStyle: Option<Union_BorderStyle_EdgeStyles>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop textStyle: Option<TextStyle_alert_dialog>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    public mut open prop onDidAppear: Option<(() -> Unit)>
    public mut open prop onDidDisappear: Option<(() -> Unit)>
    public mut open prop onWillAppear: Option<(() -> Unit)>
    public mut open prop onWillDisappear: Option<(() -> Unit)>
    public mut open prop levelMode: Option<LevelMode>
    public mut open prop levelUniqueId: Option<Float64>
    public mut open prop immersiveMode: Option<ImmersiveMode>
    public mut open prop levelOrder: Option<LevelOrder>
}
public open class AlertDialogParam <: AlertDialogParamInterfaces {
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
    private var subtitle_container: Option<ResourceStr>
    public mut open prop subtitle: Option<ResourceStr>
    {
        get() {
            return subtitle_container
        }
        set(subtitle) {
            subtitle_container = subtitle
        }
    }
    private var message_container: ResourceStr
    public mut open prop message: ResourceStr
    {
        get() {
            return message_container
        }
        set(message) {
            message_container = message
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
    private var cancel_container: Option<VoidCallback>
    public mut open prop cancel: Option<VoidCallback>
    {
        get() {
            return cancel_container
        }
        set(cancel) {
            cancel_container = cancel
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
    private var cornerRadius_container: Option<Union_Dimension_BorderRadiuses_LocalizedBorderRadiuses>
    public mut open prop cornerRadius: Option<Union_Dimension_BorderRadiuses_LocalizedBorderRadiuses>
    {
        get() {
            return cornerRadius_container
        }
        set(cornerRadius) {
            cornerRadius_container = cornerRadius
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
    private var textStyle_container: Option<TextStyle_alert_dialog>
    public mut open prop textStyle: Option<TextStyle_alert_dialog>
    {
        get() {
            return textStyle_container
        }
        set(textStyle) {
            textStyle_container = textStyle
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
    AlertDialogParam(title: Option<ResourceStr>, subtitle: Option<ResourceStr>, message: ResourceStr, autoCancel: Option<Bool>, cancel: Option<VoidCallback>, alignment: Option<DialogAlignment>, offset: Option<Offset>, gridCount: Option<Float64>, maskRect: Option<Rectangle>, showInSubWindow: Option<Bool>, isModal: Option<Bool>, backgroundColor: Option<ResourceColor>, backgroundBlurStyle: Option<BlurStyle>, backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>, backgroundEffect: Option<BackgroundEffectOptions>, onWillDismiss: Option<((parameter: DismissDialogAction) -> Unit)>, transition: Option<TransitionEffect>, cornerRadius: Option<Union_Dimension_BorderRadiuses_LocalizedBorderRadiuses>, width: Option<Dimension>, height: Option<Dimension>, borderWidth: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>, borderColor: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>, borderStyle: Option<Union_BorderStyle_EdgeStyles>, shadow: Option<Union_ShadowOptions_ShadowStyle>, textStyle: Option<TextStyle_alert_dialog>, enableHoverMode: Option<Bool>, hoverModeArea: Option<HoverModeAreaType>, onDidAppear: Option<(() -> Unit)>, onDidDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>, levelMode: Option<LevelMode>, levelUniqueId: Option<Float64>, immersiveMode: Option<ImmersiveMode>, levelOrder: Option<LevelOrder>) {
        this.title_container = title
        this.subtitle_container = subtitle
        this.message_container = message
        this.autoCancel_container = autoCancel
        this.cancel_container = cancel
        this.alignment_container = alignment
        this.offset_container = offset
        this.gridCount_container = gridCount
        this.maskRect_container = maskRect
        this.showInSubWindow_container = showInSubWindow
        this.isModal_container = isModal
        this.backgroundColor_container = backgroundColor
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        this.backgroundEffect_container = backgroundEffect
        this.onWillDismiss_container = onWillDismiss
        this.transition_container = transition
        this.cornerRadius_container = cornerRadius
        this.width_container = width
        this.height_container = height
        this.borderWidth_container = borderWidth
        this.borderColor_container = borderColor
        this.borderStyle_container = borderStyle
        this.shadow_container = shadow
        this.textStyle_container = textStyle
        this.enableHoverMode_container = enableHoverMode
        this.hoverModeArea_container = hoverModeArea
        this.onDidAppear_container = onDidAppear
        this.onDidDisappear_container = onDidDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
        this.levelMode_container = levelMode
        this.levelUniqueId_container = levelUniqueId
        this.immersiveMode_container = immersiveMode
        this.levelOrder_container = levelOrder
    }
}
