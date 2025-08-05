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
public interface PopupCommonOptionsInterfaces <:  {
    public mut open prop placement: Option<Placement>
    public mut open prop popupColor: Option<ResourceColor>
    public mut open prop enableArrow: Option<Bool>
    public mut open prop autoCancel: Option<Bool>
    public mut open prop onStateChange: Option<PopupStateChangeCallback>
    public mut open prop arrowOffset: Option<Length>
    public mut open prop showInSubWindow: Option<Bool>
    public mut open prop mask: Option<Union_Boolean_PopupMaskType>
    public mut open prop targetSpace: Option<Length>
    public mut open prop offset: Option<Position>
    public mut open prop width: Option<Dimension>
    public mut open prop arrowPointPosition: Option<ArrowPointPosition>
    public mut open prop arrowWidth: Option<Dimension>
    public mut open prop arrowHeight: Option<Dimension>
    public mut open prop radius: Option<Dimension>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    public mut open prop focusable: Option<Bool>
    public mut open prop transition: Option<TransitionEffect>
    public mut open prop onWillDismiss: Option<Union_Boolean_Callback_DismissPopupAction_Void>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop followTransformOfTarget: Option<Bool>
    public mut open prop avoidTarget: Option<AvoidanceMode>
    public mut open prop outlineWidth: Option<Dimension>
    public mut open prop borderWidth: Option<Dimension>
    public mut open prop outlineLinearGradient: Option<PopupBorderLinearGradient>
    public mut open prop borderLinearGradient: Option<PopupBorderLinearGradient>
}
public open class PopupCommonOptions <: PopupCommonOptionsInterfaces {
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
    private var popupColor_container: Option<ResourceColor>
    public mut open prop popupColor: Option<ResourceColor>
    {
        get() {
            return popupColor_container
        }
        set(popupColor) {
            popupColor_container = popupColor
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
    private var onStateChange_container: Option<PopupStateChangeCallback>
    public mut open prop onStateChange: Option<PopupStateChangeCallback>
    {
        get() {
            return onStateChange_container
        }
        set(onStateChange) {
            onStateChange_container = onStateChange
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
    private var mask_container: Option<Union_Boolean_PopupMaskType>
    public mut open prop mask: Option<Union_Boolean_PopupMaskType>
    {
        get() {
            return mask_container
        }
        set(mask) {
            mask_container = mask
        }
    }
    private var targetSpace_container: Option<Length>
    public mut open prop targetSpace: Option<Length>
    {
        get() {
            return targetSpace_container
        }
        set(targetSpace) {
            targetSpace_container = targetSpace
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
    private var arrowPointPosition_container: Option<ArrowPointPosition>
    public mut open prop arrowPointPosition: Option<ArrowPointPosition>
    {
        get() {
            return arrowPointPosition_container
        }
        set(arrowPointPosition) {
            arrowPointPosition_container = arrowPointPosition
        }
    }
    private var arrowWidth_container: Option<Dimension>
    public mut open prop arrowWidth: Option<Dimension>
    {
        get() {
            return arrowWidth_container
        }
        set(arrowWidth) {
            arrowWidth_container = arrowWidth
        }
    }
    private var arrowHeight_container: Option<Dimension>
    public mut open prop arrowHeight: Option<Dimension>
    {
        get() {
            return arrowHeight_container
        }
        set(arrowHeight) {
            arrowHeight_container = arrowHeight
        }
    }
    private var radius_container: Option<Dimension>
    public mut open prop radius: Option<Dimension>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
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
    private var onWillDismiss_container: Option<Union_Boolean_Callback_DismissPopupAction_Void>
    public mut open prop onWillDismiss: Option<Union_Boolean_Callback_DismissPopupAction_Void>
    {
        get() {
            return onWillDismiss_container
        }
        set(onWillDismiss) {
            onWillDismiss_container = onWillDismiss
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
    private var followTransformOfTarget_container: Option<Bool>
    public mut open prop followTransformOfTarget: Option<Bool>
    {
        get() {
            return followTransformOfTarget_container
        }
        set(followTransformOfTarget) {
            followTransformOfTarget_container = followTransformOfTarget
        }
    }
    private var avoidTarget_container: Option<AvoidanceMode>
    public mut open prop avoidTarget: Option<AvoidanceMode>
    {
        get() {
            return avoidTarget_container
        }
        set(avoidTarget) {
            avoidTarget_container = avoidTarget
        }
    }
    private var outlineWidth_container: Option<Dimension>
    public mut open prop outlineWidth: Option<Dimension>
    {
        get() {
            return outlineWidth_container
        }
        set(outlineWidth) {
            outlineWidth_container = outlineWidth
        }
    }
    private var borderWidth_container: Option<Dimension>
    public mut open prop borderWidth: Option<Dimension>
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var outlineLinearGradient_container: Option<PopupBorderLinearGradient>
    public mut open prop outlineLinearGradient: Option<PopupBorderLinearGradient>
    {
        get() {
            return outlineLinearGradient_container
        }
        set(outlineLinearGradient) {
            outlineLinearGradient_container = outlineLinearGradient
        }
    }
    private var borderLinearGradient_container: Option<PopupBorderLinearGradient>
    public mut open prop borderLinearGradient: Option<PopupBorderLinearGradient>
    {
        get() {
            return borderLinearGradient_container
        }
        set(borderLinearGradient) {
            borderLinearGradient_container = borderLinearGradient
        }
    }
    PopupCommonOptions(placement: Option<Placement>, popupColor: Option<ResourceColor>, enableArrow: Option<Bool>, autoCancel: Option<Bool>, onStateChange: Option<PopupStateChangeCallback>, arrowOffset: Option<Length>, showInSubWindow: Option<Bool>, mask: Option<Union_Boolean_PopupMaskType>, targetSpace: Option<Length>, offset: Option<Position>, width: Option<Dimension>, arrowPointPosition: Option<ArrowPointPosition>, arrowWidth: Option<Dimension>, arrowHeight: Option<Dimension>, radius: Option<Dimension>, shadow: Option<Union_ShadowOptions_ShadowStyle>, backgroundBlurStyle: Option<BlurStyle>, focusable: Option<Bool>, transition: Option<TransitionEffect>, onWillDismiss: Option<Union_Boolean_Callback_DismissPopupAction_Void>, enableHoverMode: Option<Bool>, followTransformOfTarget: Option<Bool>, avoidTarget: Option<AvoidanceMode>, outlineWidth: Option<Dimension>, borderWidth: Option<Dimension>, outlineLinearGradient: Option<PopupBorderLinearGradient>, borderLinearGradient: Option<PopupBorderLinearGradient>) {
        this.placement_container = placement
        this.popupColor_container = popupColor
        this.enableArrow_container = enableArrow
        this.autoCancel_container = autoCancel
        this.onStateChange_container = onStateChange
        this.arrowOffset_container = arrowOffset
        this.showInSubWindow_container = showInSubWindow
        this.mask_container = mask
        this.targetSpace_container = targetSpace
        this.offset_container = offset
        this.width_container = width
        this.arrowPointPosition_container = arrowPointPosition
        this.arrowWidth_container = arrowWidth
        this.arrowHeight_container = arrowHeight
        this.radius_container = radius
        this.shadow_container = shadow
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.focusable_container = focusable
        this.transition_container = transition
        this.onWillDismiss_container = onWillDismiss
        this.enableHoverMode_container = enableHoverMode
        this.followTransformOfTarget_container = followTransformOfTarget
        this.avoidTarget_container = avoidTarget
        this.outlineWidth_container = outlineWidth
        this.borderWidth_container = borderWidth
        this.outlineLinearGradient_container = outlineLinearGradient
        this.borderLinearGradient_container = borderLinearGradient
    }
}
