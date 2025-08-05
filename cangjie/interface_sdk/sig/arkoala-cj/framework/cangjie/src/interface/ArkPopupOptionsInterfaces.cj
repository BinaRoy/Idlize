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
public interface PopupOptionsInterfaces <:  {
    public mut open prop message: String
    public mut open prop placementOnTop: Option<Bool>
    public mut open prop placement: Option<Placement>
    public mut open prop primaryButton: Option<Literal_String_value_Callback_Void_action>
    public mut open prop secondaryButton: Option<Literal_String_value_Callback_Void_action>
    public mut open prop onStateChange: Option<((event: Literal_Boolean_isVisible) -> Unit)>
    public mut open prop arrowOffset: Option<Length>
    public mut open prop showInSubWindow: Option<Bool>
    public mut open prop mask: Option<Union_Boolean_Literal_ResourceColor_color>
    public mut open prop messageOptions: Option<PopupMessageOptions>
    public mut open prop targetSpace: Option<Length>
    public mut open prop enableArrow: Option<Bool>
    public mut open prop offset: Option<Position>
    public mut open prop popupColor: Option<Union_Color_String_Resource_Number>
    public mut open prop autoCancel: Option<Bool>
    public mut open prop width: Option<Dimension>
    public mut open prop arrowPointPosition: Option<ArrowPointPosition>
    public mut open prop arrowWidth: Option<Dimension>
    public mut open prop arrowHeight: Option<Dimension>
    public mut open prop radius: Option<Dimension>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    public mut open prop transition: Option<TransitionEffect>
    public mut open prop onWillDismiss: Option<Union_Boolean_Callback_DismissPopupAction_Void>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop followTransformOfTarget: Option<Bool>
    public mut open prop keyboardAvoidMode: Option<KeyboardAvoidMode>
    public mut open prop avoidTarget: Option<AvoidanceMode>
    public mut open prop outlineWidth: Option<Dimension>
    public mut open prop borderWidth: Option<Dimension>
    public mut open prop outlineLinearGradient: Option<PopupBorderLinearGradient>
    public mut open prop borderLinearGradient: Option<PopupBorderLinearGradient>
}
public open class PopupOptions <: PopupOptionsInterfaces {
    private var message_container: String
    public mut open prop message: String
    {
        get() {
            return message_container
        }
        set(message) {
            message_container = message
        }
    }
    private var placementOnTop_container: Option<Bool>
    public mut open prop placementOnTop: Option<Bool>
    {
        get() {
            return placementOnTop_container
        }
        set(placementOnTop) {
            placementOnTop_container = placementOnTop
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
    private var primaryButton_container: Option<Literal_String_value_Callback_Void_action>
    public mut open prop primaryButton: Option<Literal_String_value_Callback_Void_action>
    {
        get() {
            return primaryButton_container
        }
        set(primaryButton) {
            primaryButton_container = primaryButton
        }
    }
    private var secondaryButton_container: Option<Literal_String_value_Callback_Void_action>
    public mut open prop secondaryButton: Option<Literal_String_value_Callback_Void_action>
    {
        get() {
            return secondaryButton_container
        }
        set(secondaryButton) {
            secondaryButton_container = secondaryButton
        }
    }
    private var onStateChange_container: Option<((event: Literal_Boolean_isVisible) -> Unit)>
    public mut open prop onStateChange: Option<((event: Literal_Boolean_isVisible) -> Unit)>
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
    private var mask_container: Option<Union_Boolean_Literal_ResourceColor_color>
    public mut open prop mask: Option<Union_Boolean_Literal_ResourceColor_color>
    {
        get() {
            return mask_container
        }
        set(mask) {
            mask_container = mask
        }
    }
    private var messageOptions_container: Option<PopupMessageOptions>
    public mut open prop messageOptions: Option<PopupMessageOptions>
    {
        get() {
            return messageOptions_container
        }
        set(messageOptions) {
            messageOptions_container = messageOptions
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
    private var popupColor_container: Option<Union_Color_String_Resource_Number>
    public mut open prop popupColor: Option<Union_Color_String_Resource_Number>
    {
        get() {
            return popupColor_container
        }
        set(popupColor) {
            popupColor_container = popupColor
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
    PopupOptions(message: String, placementOnTop: Option<Bool>, placement: Option<Placement>, primaryButton: Option<Literal_String_value_Callback_Void_action>, secondaryButton: Option<Literal_String_value_Callback_Void_action>, onStateChange: Option<((event: Literal_Boolean_isVisible) -> Unit)>, arrowOffset: Option<Length>, showInSubWindow: Option<Bool>, mask: Option<Union_Boolean_Literal_ResourceColor_color>, messageOptions: Option<PopupMessageOptions>, targetSpace: Option<Length>, enableArrow: Option<Bool>, offset: Option<Position>, popupColor: Option<Union_Color_String_Resource_Number>, autoCancel: Option<Bool>, width: Option<Dimension>, arrowPointPosition: Option<ArrowPointPosition>, arrowWidth: Option<Dimension>, arrowHeight: Option<Dimension>, radius: Option<Dimension>, shadow: Option<Union_ShadowOptions_ShadowStyle>, backgroundBlurStyle: Option<BlurStyle>, transition: Option<TransitionEffect>, onWillDismiss: Option<Union_Boolean_Callback_DismissPopupAction_Void>, enableHoverMode: Option<Bool>, followTransformOfTarget: Option<Bool>, keyboardAvoidMode: Option<KeyboardAvoidMode>, avoidTarget: Option<AvoidanceMode>, outlineWidth: Option<Dimension>, borderWidth: Option<Dimension>, outlineLinearGradient: Option<PopupBorderLinearGradient>, borderLinearGradient: Option<PopupBorderLinearGradient>) {
        this.message_container = message
        this.placementOnTop_container = placementOnTop
        this.placement_container = placement
        this.primaryButton_container = primaryButton
        this.secondaryButton_container = secondaryButton
        this.onStateChange_container = onStateChange
        this.arrowOffset_container = arrowOffset
        this.showInSubWindow_container = showInSubWindow
        this.mask_container = mask
        this.messageOptions_container = messageOptions
        this.targetSpace_container = targetSpace
        this.enableArrow_container = enableArrow
        this.offset_container = offset
        this.popupColor_container = popupColor
        this.autoCancel_container = autoCancel
        this.width_container = width
        this.arrowPointPosition_container = arrowPointPosition
        this.arrowWidth_container = arrowWidth
        this.arrowHeight_container = arrowHeight
        this.radius_container = radius
        this.shadow_container = shadow
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.transition_container = transition
        this.onWillDismiss_container = onWillDismiss
        this.enableHoverMode_container = enableHoverMode
        this.followTransformOfTarget_container = followTransformOfTarget
        this.keyboardAvoidMode_container = keyboardAvoidMode
        this.avoidTarget_container = avoidTarget
        this.outlineWidth_container = outlineWidth
        this.borderWidth_container = borderWidth
        this.outlineLinearGradient_container = outlineLinearGradient
        this.borderLinearGradient_container = borderLinearGradient
    }
}
public open class PopupOptions_serializer {
    public static func write(buffer: SerializerBase, value: PopupOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMessage = value.message
        valueSerializer.writeString(valueHolderForMessage);
        let valueHolderForPlacementOnTop = value.placementOnTop
        if (valueHolderForPlacementOnTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPlacementOnTopTmpValue = valueHolderForPlacementOnTop
            valueSerializer.writeBoolean(valueHolderForPlacementOnTopTmpValue);
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
        let valueHolderForPrimaryButton = value.primaryButton
        if (valueHolderForPrimaryButton.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPrimaryButtonTmpValue = valueHolderForPrimaryButton
            let valueHolderForPrimaryButtonTmpValueValue = valueHolderForPrimaryButtonTmpValue.value
            valueSerializer.writeString(valueHolderForPrimaryButtonTmpValueValue);
            let valueHolderForPrimaryButtonTmpValueAction = valueHolderForPrimaryButtonTmpValue.action
            valueSerializer.holdAndWriteCallback(valueHolderForPrimaryButtonTmpValueAction);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSecondaryButton = value.secondaryButton
        if (valueHolderForSecondaryButton.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSecondaryButtonTmpValue = valueHolderForSecondaryButton
            let valueHolderForSecondaryButtonTmpValueValue = valueHolderForSecondaryButtonTmpValue.value
            valueSerializer.writeString(valueHolderForSecondaryButtonTmpValueValue);
            let valueHolderForSecondaryButtonTmpValueAction = valueHolderForSecondaryButtonTmpValue.action
            valueSerializer.holdAndWriteCallback(valueHolderForSecondaryButtonTmpValueAction);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnStateChange = value.onStateChange
        if (valueHolderForOnStateChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnStateChangeTmpValue = valueHolderForOnStateChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnStateChangeTmpValue);
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
        let valueHolderForShowInSubWindow = value.showInSubWindow
        if (valueHolderForShowInSubWindow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowInSubWindowTmpValue = valueHolderForShowInSubWindow
            valueSerializer.writeBoolean(valueHolderForShowInSubWindowTmpValue);
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
                let valueHolderForMaskTmpValueForIdx1Color = valueHolderForMaskTmpValueForIdx1.color
                if (valueHolderForMaskTmpValueForIdx1Color.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForMaskTmpValueForIdx1ColorForIdx0 = valueHolderForMaskTmpValueForIdx1Color.getValue0()
                    valueSerializer.writeInt32(valueHolderForMaskTmpValueForIdx1ColorForIdx0.value);
                } else if (valueHolderForMaskTmpValueForIdx1Color.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForMaskTmpValueForIdx1ColorForIdx1 = valueHolderForMaskTmpValueForIdx1Color.getValue1()
                    valueSerializer.writeNumber(valueHolderForMaskTmpValueForIdx1ColorForIdx1);
                } else if (valueHolderForMaskTmpValueForIdx1Color.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForMaskTmpValueForIdx1ColorForIdx2 = valueHolderForMaskTmpValueForIdx1Color.getValue2()
                    valueSerializer.writeString(valueHolderForMaskTmpValueForIdx1ColorForIdx2);
                } else if (valueHolderForMaskTmpValueForIdx1Color.getSelector() == 3) {
                    valueSerializer.writeInt8(Int8(3));
                    let valueHolderForMaskTmpValueForIdx1ColorForIdx3 = valueHolderForMaskTmpValueForIdx1Color.getValue3()
                    valueSerializer.writeCustomObject("Any", valueHolderForMaskTmpValueForIdx1ColorForIdx3);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMessageOptions = value.messageOptions
        if (valueHolderForMessageOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMessageOptionsTmpValue = valueHolderForMessageOptions
            PopupMessageOptions_serializer.write(valueSerializer, valueHolderForMessageOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTargetSpace = value.targetSpace
        if (valueHolderForTargetSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTargetSpaceTmpValue = valueHolderForTargetSpace
            if (valueHolderForTargetSpaceTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTargetSpaceTmpValueForIdx0 = valueHolderForTargetSpaceTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForTargetSpaceTmpValueForIdx0);
            } else if (valueHolderForTargetSpaceTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTargetSpaceTmpValueForIdx1 = valueHolderForTargetSpaceTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTargetSpaceTmpValueForIdx1);
            } else if (valueHolderForTargetSpaceTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTargetSpaceTmpValueForIdx2 = valueHolderForTargetSpaceTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForTargetSpaceTmpValueForIdx2);
            }
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
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            Position_serializer.write(valueSerializer, valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPopupColor = value.popupColor
        if (valueHolderForPopupColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPopupColorTmpValue = valueHolderForPopupColor
            if (valueHolderForPopupColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPopupColorTmpValueForIdx0 = valueHolderForPopupColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForPopupColorTmpValueForIdx0.value);
            } else if (valueHolderForPopupColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPopupColorTmpValueForIdx1 = valueHolderForPopupColorTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForPopupColorTmpValueForIdx1);
            } else if (valueHolderForPopupColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForPopupColorTmpValueForIdx2 = valueHolderForPopupColorTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForPopupColorTmpValueForIdx2);
            } else if (valueHolderForPopupColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForPopupColorTmpValueForIdx3 = valueHolderForPopupColorTmpValue.getValue3()
                valueSerializer.writeNumber(valueHolderForPopupColorTmpValueForIdx3);
            }
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
        let valueHolderForArrowPointPosition = value.arrowPointPosition
        if (valueHolderForArrowPointPosition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForArrowPointPositionTmpValue = valueHolderForArrowPointPosition
            valueSerializer.writeInt32(valueHolderForArrowPointPositionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForArrowWidth = value.arrowWidth
        if (valueHolderForArrowWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForArrowWidthTmpValue = valueHolderForArrowWidth
            if (valueHolderForArrowWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForArrowWidthTmpValueForIdx0 = valueHolderForArrowWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForArrowWidthTmpValueForIdx0);
            } else if (valueHolderForArrowWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForArrowWidthTmpValueForIdx1 = valueHolderForArrowWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForArrowWidthTmpValueForIdx1);
            } else if (valueHolderForArrowWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForArrowWidthTmpValueForIdx2 = valueHolderForArrowWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForArrowWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForArrowHeight = value.arrowHeight
        if (valueHolderForArrowHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForArrowHeightTmpValue = valueHolderForArrowHeight
            if (valueHolderForArrowHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForArrowHeightTmpValueForIdx0 = valueHolderForArrowHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForArrowHeightTmpValueForIdx0);
            } else if (valueHolderForArrowHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForArrowHeightTmpValueForIdx1 = valueHolderForArrowHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForArrowHeightTmpValueForIdx1);
            } else if (valueHolderForArrowHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForArrowHeightTmpValueForIdx2 = valueHolderForArrowHeightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForArrowHeightTmpValueForIdx2);
            }
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
                valueSerializer.writeString(valueHolderForRadiusTmpValueForIdx0);
            } else if (valueHolderForRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRadiusTmpValueForIdx1 = valueHolderForRadiusTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForRadiusTmpValueForIdx1);
            } else if (valueHolderForRadiusTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForRadiusTmpValueForIdx2 = valueHolderForRadiusTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForRadiusTmpValueForIdx2);
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
        let valueHolderForTransition = value.transition
        if (valueHolderForTransition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTransitionTmpValue = valueHolderForTransition
            TransitionEffect_serializer.write(valueSerializer, valueHolderForTransitionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillDismiss = value.onWillDismiss
        if (valueHolderForOnWillDismiss.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillDismissTmpValue = valueHolderForOnWillDismiss
            if (valueHolderForOnWillDismissTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOnWillDismissTmpValueForIdx0 = valueHolderForOnWillDismissTmpValue.getValue0()
                valueSerializer.writeBoolean(valueHolderForOnWillDismissTmpValueForIdx0);
            } else if (valueHolderForOnWillDismissTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOnWillDismissTmpValueForIdx1 = valueHolderForOnWillDismissTmpValue.getValue1()
                valueSerializer.holdAndWriteCallback(valueHolderForOnWillDismissTmpValueForIdx1);
            }
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
        let valueHolderForFollowTransformOfTarget = value.followTransformOfTarget
        if (valueHolderForFollowTransformOfTarget.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFollowTransformOfTargetTmpValue = valueHolderForFollowTransformOfTarget
            valueSerializer.writeBoolean(valueHolderForFollowTransformOfTargetTmpValue);
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
        let valueHolderForAvoidTarget = value.avoidTarget
        if (valueHolderForAvoidTarget.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAvoidTargetTmpValue = valueHolderForAvoidTarget
            valueSerializer.writeInt32(valueHolderForAvoidTargetTmpValue.value);
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
                valueSerializer.writeString(valueHolderForOutlineWidthTmpValueForIdx0);
            } else if (valueHolderForOutlineWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOutlineWidthTmpValueForIdx1 = valueHolderForOutlineWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForOutlineWidthTmpValueForIdx1);
            } else if (valueHolderForOutlineWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForOutlineWidthTmpValueForIdx2 = valueHolderForOutlineWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForOutlineWidthTmpValueForIdx2);
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
                valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx0);
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthTmpValueForIdx1 = valueHolderForBorderWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx1);
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthTmpValueForIdx2 = valueHolderForBorderWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBorderWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOutlineLinearGradient = value.outlineLinearGradient
        if (valueHolderForOutlineLinearGradient.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOutlineLinearGradientTmpValue = valueHolderForOutlineLinearGradient
            PopupBorderLinearGradient_serializer.write(valueSerializer, valueHolderForOutlineLinearGradientTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderLinearGradient = value.borderLinearGradient
        if (valueHolderForBorderLinearGradient.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderLinearGradientTmpValue = valueHolderForBorderLinearGradient
            PopupBorderLinearGradient_serializer.write(valueSerializer, valueHolderForBorderLinearGradientTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PopupOptions {
        var valueDeserializer: DeserializerBase = buffer
        let messageTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let placementOnTopTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var placementOnTopTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(placementOnTopTmpBuf_runtimeType))) {
            placementOnTopTmpBuf = valueDeserializer.readBoolean()
        }
        let placementOnTopTmpResult: Option<Bool> = placementOnTopTmpBuf
        let placementTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var placementTmpBuf: Option<Placement> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(placementTmpBuf_runtimeType))) {
            placementTmpBuf = Placement(valueDeserializer.readInt32())
        }
        let placementTmpResult: Option<Placement> = placementTmpBuf
        let primaryButtonTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var primaryButtonTmpBuf: Option<Literal_String_value_Callback_Void_action> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(primaryButtonTmpBuf_runtimeType))) {
            let primaryButtonTmpBuf_Value: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let primaryButtonTmpBuf_ActionTempBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let primaryButtonTmpBuf_ActionTempBufBufCall: UInt64 = valueDeserializer.readPointer()
            let primaryButtonTmpBuf_ActionTempBufBufCallSync: UInt64 = valueDeserializer.readPointer()
            let primaryButtonTmpBuf_Action: (() -> Unit) = { => let primaryButtonTmpBuf_ActionTempBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
primaryButtonTmpBuf_ActionTempBufBufArgsSerializer.writeInt32(primaryButtonTmpBuf_ActionTempBufBufResource.resourceId);
primaryButtonTmpBuf_ActionTempBufBufArgsSerializer.writePointer(primaryButtonTmpBuf_ActionTempBufBufCall);
primaryButtonTmpBuf_ActionTempBufBufArgsSerializer.writePointer(primaryButtonTmpBuf_ActionTempBufBufCallSync);
InteropNativeModule._CallCallback(-1867723152, primaryButtonTmpBuf_ActionTempBufBufArgsSerializer.asBuffer(), primaryButtonTmpBuf_ActionTempBufBufArgsSerializer.length());
primaryButtonTmpBuf_ActionTempBufBufArgsSerializer.release();
return; }
            primaryButtonTmpBuf = Literal_String_value_Callback_Void_action(primaryButtonTmpBuf__value, primaryButtonTmpBuf__action)
        }
        let primaryButtonTmpResult: Option<Literal_String_value_Callback_Void_action> = primaryButtonTmpBuf
        let secondaryButtonTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var secondaryButtonTmpBuf: Option<Literal_String_value_Callback_Void_action> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(secondaryButtonTmpBuf_runtimeType))) {
            let secondaryButtonTmpBuf_Value: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let secondaryButtonTmpBuf_ActionTempBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let secondaryButtonTmpBuf_ActionTempBufBufCall: UInt64 = valueDeserializer.readPointer()
            let secondaryButtonTmpBuf_ActionTempBufBufCallSync: UInt64 = valueDeserializer.readPointer()
            let secondaryButtonTmpBuf_Action: (() -> Unit) = { => let secondaryButtonTmpBuf_ActionTempBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
secondaryButtonTmpBuf_ActionTempBufBufArgsSerializer.writeInt32(secondaryButtonTmpBuf_ActionTempBufBufResource.resourceId);
secondaryButtonTmpBuf_ActionTempBufBufArgsSerializer.writePointer(secondaryButtonTmpBuf_ActionTempBufBufCall);
secondaryButtonTmpBuf_ActionTempBufBufArgsSerializer.writePointer(secondaryButtonTmpBuf_ActionTempBufBufCallSync);
InteropNativeModule._CallCallback(-1867723152, secondaryButtonTmpBuf_ActionTempBufBufArgsSerializer.asBuffer(), secondaryButtonTmpBuf_ActionTempBufBufArgsSerializer.length());
secondaryButtonTmpBuf_ActionTempBufBufArgsSerializer.release();
return; }
            secondaryButtonTmpBuf = Literal_String_value_Callback_Void_action(secondaryButtonTmpBuf__value, secondaryButtonTmpBuf__action)
        }
        let secondaryButtonTmpResult: Option<Literal_String_value_Callback_Void_action> = secondaryButtonTmpBuf
        let onStateChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onStateChangeTmpBuf: Option<((event: Literal_Boolean_isVisible) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onStateChangeTmpBuf_runtimeType))) {
            let onStateChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onStateChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onStateChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onStateChangeTmpBuf = {event: Literal_Boolean_isVisible => let onStateChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onStateChangeTmpBuf_BufArgsSerializer.writeInt32(onStateChangeTmpBuf_BufResource.resourceId);
onStateChangeTmpBuf_BufArgsSerializer.writePointer(onStateChangeTmpBuf_BufCall);
onStateChangeTmpBuf_BufArgsSerializer.writePointer(onStateChangeTmpBuf_BufCallSync);
let eventIsVisible = event.isVisible;
onStateChangeTmpBuf_BufArgsSerializer.writeBoolean(eventIsVisible);
InteropNativeModule._CallCallback(-1561407084, onStateChangeTmpBuf_BufArgsSerializer.asBuffer(), onStateChangeTmpBuf_BufArgsSerializer.length());
onStateChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onStateChangeTmpResult: Option<((event: Literal_Boolean_isVisible) -> Unit)> = onStateChangeTmpBuf
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
        let showInSubWindowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showInSubWindowTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showInSubWindowTmpBuf_runtimeType))) {
            showInSubWindowTmpBuf = valueDeserializer.readBoolean()
        }
        let showInSubWindowTmpResult: Option<Bool> = showInSubWindowTmpBuf
        let maskTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskTmpBuf: Option<Union_Boolean_Literal_ResourceColor_color> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskTmpBuf_runtimeType))) {
            let maskTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var maskTmpBuf_: Union_Boolean_Literal_ResourceColor_color 
            if (maskTmpBuf_UnionSelector == Int8(0)) {
                maskTmpBuf_ = Union_Boolean_Literal_ResourceColor_color(valueDeserializer.readBoolean())
            } else if (maskTmpBuf_UnionSelector == Int8(1)) {
                let maskTmpBuf_BufUColorTempBufUnionSelector: Int8 = valueDeserializer.readInt8()
                var maskTmpBuf_BufUColorTempBuf: ResourceColor 
                if (maskTmpBuf_BufUColorTempBufUnionSelector == Int8(0)) {
                    maskTmpBuf_BufUColorTempBuf = ResourceColor(Color(valueDeserializer.readInt32()))
                } else if (maskTmpBuf_BufUColorTempBufUnionSelector == Int8(1)) {
                    maskTmpBuf_BufUColorTempBuf = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (maskTmpBuf_BufUColorTempBufUnionSelector == Int8(2)) {
                    maskTmpBuf_BufUColorTempBuf = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (maskTmpBuf_BufUColorTempBufUnionSelector == Int8(3)) {
                    maskTmpBuf_BufUColorTempBuf = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for maskTmpBuf_BufUColorTempBuf has to be chosen through deserialisation.")
                }
                let maskTmpBuf_BufUColor: ResourceColor = match (maskTmpBuf_BufUColorTempBuf as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                maskTmpBuf_ = Union_Boolean_Literal_ResourceColor_color(Literal_ResourceColor_color(maskTmpBuf_BufU_color))
            } else {
                throw Exception("One of the branches for maskTmpBuf_ has to be chosen through deserialisation.")
            }
            maskTmpBuf = match (maskTmpBuf_ as Union_Boolean_Literal_ResourceColor_color) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maskTmpResult: Option<Union_Boolean_Literal_ResourceColor_color> = maskTmpBuf
        let messageOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var messageOptionsTmpBuf: Option<PopupMessageOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(messageOptionsTmpBuf_runtimeType))) {
            messageOptionsTmpBuf = PopupMessageOptions_serializer.read(valueDeserializer)
        }
        let messageOptionsTmpResult: Option<PopupMessageOptions> = messageOptionsTmpBuf
        let targetSpaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var targetSpaceTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(targetSpaceTmpBuf_runtimeType))) {
            let targetSpaceTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var targetSpaceTmpBuf_: Length 
            if (targetSpaceTmpBuf_UnionSelector == Int8(0)) {
                targetSpaceTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (targetSpaceTmpBuf_UnionSelector == Int8(1)) {
                targetSpaceTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (targetSpaceTmpBuf_UnionSelector == Int8(2)) {
                targetSpaceTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for targetSpaceTmpBuf_ has to be chosen through deserialisation.")
            }
            targetSpaceTmpBuf = match (targetSpaceTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let targetSpaceTmpResult: Option<Length> = targetSpaceTmpBuf
        let enableArrowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableArrowTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableArrowTmpBuf_runtimeType))) {
            enableArrowTmpBuf = valueDeserializer.readBoolean()
        }
        let enableArrowTmpResult: Option<Bool> = enableArrowTmpBuf
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Position> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = Position_serializer.read(valueDeserializer)
        }
        let offsetTmpResult: Option<Position> = offsetTmpBuf
        let popupColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var popupColorTmpBuf: Option<Union_Color_String_Resource_Number> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(popupColorTmpBuf_runtimeType))) {
            let popupColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var popupColorTmpBuf_: Union_Color_String_Resource_Number 
            if (popupColorTmpBuf_UnionSelector == Int8(0)) {
                popupColorTmpBuf_ = Union_Color_String_Resource_Number(Color(valueDeserializer.readInt32()))
            } else if (popupColorTmpBuf_UnionSelector == Int8(1)) {
                popupColorTmpBuf_ = Union_Color_String_Resource_Number(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (popupColorTmpBuf_UnionSelector == Int8(2)) {
                popupColorTmpBuf_ = Union_Color_String_Resource_Number(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (popupColorTmpBuf_UnionSelector == Int8(3)) {
                popupColorTmpBuf_ = Union_Color_String_Resource_Number(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for popupColorTmpBuf_ has to be chosen through deserialisation.")
            }
            popupColorTmpBuf = match (popupColorTmpBuf_ as Union_Color_String_Resource_Number) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let popupColorTmpResult: Option<Union_Color_String_Resource_Number> = popupColorTmpBuf
        let autoCancelTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var autoCancelTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(autoCancelTmpBuf_runtimeType))) {
            autoCancelTmpBuf = valueDeserializer.readBoolean()
        }
        let autoCancelTmpResult: Option<Bool> = autoCancelTmpBuf
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
        let arrowPointPositionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var arrowPointPositionTmpBuf: Option<ArrowPointPosition> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(arrowPointPositionTmpBuf_runtimeType))) {
            arrowPointPositionTmpBuf = ArrowPointPosition(valueDeserializer.readInt32())
        }
        let arrowPointPositionTmpResult: Option<ArrowPointPosition> = arrowPointPositionTmpBuf
        let arrowWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var arrowWidthTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(arrowWidthTmpBuf_runtimeType))) {
            let arrowWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var arrowWidthTmpBuf_: Dimension 
            if (arrowWidthTmpBuf_UnionSelector == Int8(0)) {
                arrowWidthTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowWidthTmpBuf_UnionSelector == Int8(1)) {
                arrowWidthTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowWidthTmpBuf_UnionSelector == Int8(2)) {
                arrowWidthTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for arrowWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            arrowWidthTmpBuf = match (arrowWidthTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let arrowWidthTmpResult: Option<Dimension> = arrowWidthTmpBuf
        let arrowHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var arrowHeightTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(arrowHeightTmpBuf_runtimeType))) {
            let arrowHeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var arrowHeightTmpBuf_: Dimension 
            if (arrowHeightTmpBuf_UnionSelector == Int8(0)) {
                arrowHeightTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowHeightTmpBuf_UnionSelector == Int8(1)) {
                arrowHeightTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowHeightTmpBuf_UnionSelector == Int8(2)) {
                arrowHeightTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for arrowHeightTmpBuf_ has to be chosen through deserialisation.")
            }
            arrowHeightTmpBuf = match (arrowHeightTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let arrowHeightTmpResult: Option<Dimension> = arrowHeightTmpBuf
        let radiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var radiusTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(radiusTmpBuf_runtimeType))) {
            let radiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var radiusTmpBuf_: Dimension 
            if (radiusTmpBuf_UnionSelector == Int8(0)) {
                radiusTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (radiusTmpBuf_UnionSelector == Int8(1)) {
                radiusTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (radiusTmpBuf_UnionSelector == Int8(2)) {
                radiusTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for radiusTmpBuf_ has to be chosen through deserialisation.")
            }
            radiusTmpBuf = match (radiusTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let radiusTmpResult: Option<Dimension> = radiusTmpBuf
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
        let transitionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var transitionTmpBuf: Option<TransitionEffect> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(transitionTmpBuf_runtimeType))) {
            transitionTmpBuf = match (TransitionEffect_serializer.read(valueDeserializer) as TransitionEffect) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let transitionTmpResult: Option<TransitionEffect> = transitionTmpBuf
        let onWillDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDismissTmpBuf: Option<Union_Boolean_Callback_DismissPopupAction_Void> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDismissTmpBuf_runtimeType))) {
            let onWillDismissTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var onWillDismissTmpBuf_: Union_Boolean_Callback_DismissPopupAction_Void 
            if (onWillDismissTmpBuf_UnionSelector == Int8(0)) {
                onWillDismissTmpBuf_ = Union_Boolean_Callback_DismissPopupAction_Void(valueDeserializer.readBoolean())
            } else if (onWillDismissTmpBuf_UnionSelector == Int8(1)) {
                let onWillDismissTmpBuf_BufUBufResource: CallbackResource = valueDeserializer.readCallbackResource()
                let onWillDismissTmpBuf_BufUBufCall: UInt64 = valueDeserializer.readPointer()
                let onWillDismissTmpBuf_BufUBufCallSync: UInt64 = valueDeserializer.readPointer()
                onWillDismissTmpBuf_ = Union_Boolean_Callback_DismissPopupAction_Void({parameter: DismissPopupAction => let onWillDismissTmpBuf_BufUBufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDismissTmpBuf_BufUBufArgsSerializer.writeInt32(onWillDismissTmpBuf_BufUBufResource.resourceId);
onWillDismissTmpBuf_BufUBufArgsSerializer.writePointer(onWillDismissTmpBuf_BufUBufCall);
onWillDismissTmpBuf_BufUBufArgsSerializer.writePointer(onWillDismissTmpBuf_BufUBufCallSync);
DismissPopupAction_serializer.write(onWillDismissTmpBuf_BufUBufArgsSerializer, parameter);
InteropNativeModule._CallCallback(-2004166751, onWillDismissTmpBuf_BufUBufArgsSerializer.asBuffer(), onWillDismissTmpBuf_BufUBufArgsSerializer.length());
onWillDismissTmpBuf_BufUBufArgsSerializer.release();
return; })
            } else {
                throw Exception("One of the branches for onWillDismissTmpBuf_ has to be chosen through deserialisation.")
            }
            onWillDismissTmpBuf = match (onWillDismissTmpBuf_ as Union_Boolean_Callback_DismissPopupAction_Void) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let onWillDismissTmpResult: Option<Union_Boolean_Callback_DismissPopupAction_Void> = onWillDismissTmpBuf
        let enableHoverModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHoverModeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHoverModeTmpBuf_runtimeType))) {
            enableHoverModeTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHoverModeTmpResult: Option<Bool> = enableHoverModeTmpBuf
        let followTransformOfTargetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var followTransformOfTargetTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(followTransformOfTargetTmpBuf_runtimeType))) {
            followTransformOfTargetTmpBuf = valueDeserializer.readBoolean()
        }
        let followTransformOfTargetTmpResult: Option<Bool> = followTransformOfTargetTmpBuf
        let keyboardAvoidModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var keyboardAvoidModeTmpBuf: Option<KeyboardAvoidMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(keyboardAvoidModeTmpBuf_runtimeType))) {
            keyboardAvoidModeTmpBuf = KeyboardAvoidMode(valueDeserializer.readInt32())
        }
        let keyboardAvoidModeTmpResult: Option<KeyboardAvoidMode> = keyboardAvoidModeTmpBuf
        let avoidTargetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var avoidTargetTmpBuf: Option<AvoidanceMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(avoidTargetTmpBuf_runtimeType))) {
            avoidTargetTmpBuf = AvoidanceMode(valueDeserializer.readInt32())
        }
        let avoidTargetTmpResult: Option<AvoidanceMode> = avoidTargetTmpBuf
        let outlineWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var outlineWidthTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(outlineWidthTmpBuf_runtimeType))) {
            let outlineWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var outlineWidthTmpBuf_: Dimension 
            if (outlineWidthTmpBuf_UnionSelector == Int8(0)) {
                outlineWidthTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (outlineWidthTmpBuf_UnionSelector == Int8(1)) {
                outlineWidthTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (outlineWidthTmpBuf_UnionSelector == Int8(2)) {
                outlineWidthTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for outlineWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            outlineWidthTmpBuf = match (outlineWidthTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let outlineWidthTmpResult: Option<Dimension> = outlineWidthTmpBuf
        let borderWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBuf_runtimeType))) {
            let borderWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBuf_: Dimension 
            if (borderWidthTmpBuf_UnionSelector == Int8(0)) {
                borderWidthTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBuf_UnionSelector == Int8(1)) {
                borderWidthTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBuf_UnionSelector == Int8(2)) {
                borderWidthTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for borderWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            borderWidthTmpBuf = match (borderWidthTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpResult: Option<Dimension> = borderWidthTmpBuf
        let outlineLinearGradientTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var outlineLinearGradientTmpBuf: Option<PopupBorderLinearGradient> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(outlineLinearGradientTmpBuf_runtimeType))) {
            outlineLinearGradientTmpBuf = PopupBorderLinearGradient_serializer.read(valueDeserializer)
        }
        let outlineLinearGradientTmpResult: Option<PopupBorderLinearGradient> = outlineLinearGradientTmpBuf
        let borderLinearGradientTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderLinearGradientTmpBuf: Option<PopupBorderLinearGradient> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderLinearGradientTmpBuf_runtimeType))) {
            borderLinearGradientTmpBuf = PopupBorderLinearGradient_serializer.read(valueDeserializer)
        }
        let borderLinearGradientTmpResult: Option<PopupBorderLinearGradient> = borderLinearGradientTmpBuf
        var value: PopupOptions = PopupOptions(messageTmpResult, placementOnTopTmpResult, placementTmpResult, primaryButtonTmpResult, secondaryButtonTmpResult, onStateChangeTmpResult, arrowOffsetTmpResult, showInSubWindowTmpResult, maskTmpResult, messageOptionsTmpResult, targetSpaceTmpResult, enableArrowTmpResult, offsetTmpResult, popupColorTmpResult, autoCancelTmpResult, widthTmpResult, arrowPointPositionTmpResult, arrowWidthTmpResult, arrowHeightTmpResult, radiusTmpResult, shadowTmpResult, backgroundBlurStyleTmpResult, transitionTmpResult, onWillDismissTmpResult, enableHoverModeTmpResult, followTransformOfTargetTmpResult, keyboardAvoidModeTmpResult, avoidTargetTmpResult, outlineWidthTmpResult, borderWidthTmpResult, outlineLinearGradientTmpResult, borderLinearGradientTmpResult)
        return value
    }
}
