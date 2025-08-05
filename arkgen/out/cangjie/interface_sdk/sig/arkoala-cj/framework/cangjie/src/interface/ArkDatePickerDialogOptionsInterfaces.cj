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
public interface DatePickerDialogOptionsInterfaces <: DatePickerOptionsInterfaces {
    public mut open prop lunar: Option<Bool>
    public mut open prop lunarSwitch: Option<Bool>
    public mut open prop lunarSwitchStyle: Option<LunarSwitchStyle>
    public mut open prop showTime: Option<Bool>
    public mut open prop useMilitaryTime: Option<Bool>
    public mut open prop disappearTextStyle: Option<PickerTextStyle>
    public mut open prop textStyle: Option<PickerTextStyle>
    public mut open prop acceptButtonStyle: Option<PickerDialogButtonStyle>
    public mut open prop cancelButtonStyle: Option<PickerDialogButtonStyle>
    public mut open prop selectedTextStyle: Option<PickerTextStyle>
    public mut open prop maskRect: Option<Rectangle>
    public mut open prop alignment: Option<DialogAlignment>
    public mut open prop offset: Option<Offset>
    public mut open prop onAccept: Option<((value: DatePickerResult) -> Unit)>
    public mut open prop onCancel: Option<VoidCallback>
    public mut open prop onChange: Option<((value: DatePickerResult) -> Unit)>
    public mut open prop onDateAccept: Option<((parameter: DateTime) -> Unit)>
    public mut open prop onDateChange: Option<((parameter: DateTime) -> Unit)>
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    public mut open prop backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>
    public mut open prop backgroundEffect: Option<BackgroundEffectOptions>
    public mut open prop onDidAppear: Option<VoidCallback>
    public mut open prop onDidDisappear: Option<VoidCallback>
    public mut open prop onWillAppear: Option<VoidCallback>
    public mut open prop onWillDisappear: Option<VoidCallback>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop dateTimeOptions: Option<DateTimeOptions>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    public mut open prop enableHapticFeedback: Option<Bool>
    public mut open prop canLoop: Option<Bool>
}
public open class DatePickerDialogOptions <: DatePickerDialogOptionsInterfaces {
    private var lunar_container: Option<Bool>
    public mut open prop lunar: Option<Bool>
    {
        get() {
            return lunar_container
        }
        set(lunar) {
            lunar_container = lunar
        }
    }
    private var lunarSwitch_container: Option<Bool>
    public mut open prop lunarSwitch: Option<Bool>
    {
        get() {
            return lunarSwitch_container
        }
        set(lunarSwitch) {
            lunarSwitch_container = lunarSwitch
        }
    }
    private var lunarSwitchStyle_container: Option<LunarSwitchStyle>
    public mut open prop lunarSwitchStyle: Option<LunarSwitchStyle>
    {
        get() {
            return lunarSwitchStyle_container
        }
        set(lunarSwitchStyle) {
            lunarSwitchStyle_container = lunarSwitchStyle
        }
    }
    private var showTime_container: Option<Bool>
    public mut open prop showTime: Option<Bool>
    {
        get() {
            return showTime_container
        }
        set(showTime) {
            showTime_container = showTime
        }
    }
    private var useMilitaryTime_container: Option<Bool>
    public mut open prop useMilitaryTime: Option<Bool>
    {
        get() {
            return useMilitaryTime_container
        }
        set(useMilitaryTime) {
            useMilitaryTime_container = useMilitaryTime
        }
    }
    private var disappearTextStyle_container: Option<PickerTextStyle>
    public mut open prop disappearTextStyle: Option<PickerTextStyle>
    {
        get() {
            return disappearTextStyle_container
        }
        set(disappearTextStyle) {
            disappearTextStyle_container = disappearTextStyle
        }
    }
    private var textStyle_container: Option<PickerTextStyle>
    public mut open prop textStyle: Option<PickerTextStyle>
    {
        get() {
            return textStyle_container
        }
        set(textStyle) {
            textStyle_container = textStyle
        }
    }
    private var acceptButtonStyle_container: Option<PickerDialogButtonStyle>
    public mut open prop acceptButtonStyle: Option<PickerDialogButtonStyle>
    {
        get() {
            return acceptButtonStyle_container
        }
        set(acceptButtonStyle) {
            acceptButtonStyle_container = acceptButtonStyle
        }
    }
    private var cancelButtonStyle_container: Option<PickerDialogButtonStyle>
    public mut open prop cancelButtonStyle: Option<PickerDialogButtonStyle>
    {
        get() {
            return cancelButtonStyle_container
        }
        set(cancelButtonStyle) {
            cancelButtonStyle_container = cancelButtonStyle
        }
    }
    private var selectedTextStyle_container: Option<PickerTextStyle>
    public mut open prop selectedTextStyle: Option<PickerTextStyle>
    {
        get() {
            return selectedTextStyle_container
        }
        set(selectedTextStyle) {
            selectedTextStyle_container = selectedTextStyle
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
    private var onAccept_container: Option<((value: DatePickerResult) -> Unit)>
    public mut open prop onAccept: Option<((value: DatePickerResult) -> Unit)>
    {
        get() {
            return onAccept_container
        }
        set(onAccept) {
            onAccept_container = onAccept
        }
    }
    private var onCancel_container: Option<VoidCallback>
    public mut open prop onCancel: Option<VoidCallback>
    {
        get() {
            return onCancel_container
        }
        set(onCancel) {
            onCancel_container = onCancel
        }
    }
    private var onChange_container: Option<((value: DatePickerResult) -> Unit)>
    public mut open prop onChange: Option<((value: DatePickerResult) -> Unit)>
    {
        get() {
            return onChange_container
        }
        set(onChange) {
            onChange_container = onChange
        }
    }
    private var onDateAccept_container: Option<((parameter: DateTime) -> Unit)>
    public mut open prop onDateAccept: Option<((parameter: DateTime) -> Unit)>
    {
        get() {
            return onDateAccept_container
        }
        set(onDateAccept) {
            onDateAccept_container = onDateAccept
        }
    }
    private var onDateChange_container: Option<((parameter: DateTime) -> Unit)>
    public mut open prop onDateChange: Option<((parameter: DateTime) -> Unit)>
    {
        get() {
            return onDateChange_container
        }
        set(onDateChange) {
            onDateChange_container = onDateChange
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
    private var onDidAppear_container: Option<VoidCallback>
    public mut open prop onDidAppear: Option<VoidCallback>
    {
        get() {
            return onDidAppear_container
        }
        set(onDidAppear) {
            onDidAppear_container = onDidAppear
        }
    }
    private var onDidDisappear_container: Option<VoidCallback>
    public mut open prop onDidDisappear: Option<VoidCallback>
    {
        get() {
            return onDidDisappear_container
        }
        set(onDidDisappear) {
            onDidDisappear_container = onDidDisappear
        }
    }
    private var onWillAppear_container: Option<VoidCallback>
    public mut open prop onWillAppear: Option<VoidCallback>
    {
        get() {
            return onWillAppear_container
        }
        set(onWillAppear) {
            onWillAppear_container = onWillAppear
        }
    }
    private var onWillDisappear_container: Option<VoidCallback>
    public mut open prop onWillDisappear: Option<VoidCallback>
    {
        get() {
            return onWillDisappear_container
        }
        set(onWillDisappear) {
            onWillDisappear_container = onWillDisappear
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
    private var dateTimeOptions_container: Option<DateTimeOptions>
    public mut open prop dateTimeOptions: Option<DateTimeOptions>
    {
        get() {
            return dateTimeOptions_container
        }
        set(dateTimeOptions) {
            dateTimeOptions_container = dateTimeOptions
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
    private var enableHapticFeedback_container: Option<Bool>
    public mut open prop enableHapticFeedback: Option<Bool>
    {
        get() {
            return enableHapticFeedback_container
        }
        set(enableHapticFeedback) {
            enableHapticFeedback_container = enableHapticFeedback
        }
    }
    private var canLoop_container: Option<Bool>
    public mut open prop canLoop: Option<Bool>
    {
        get() {
            return canLoop_container
        }
        set(canLoop) {
            canLoop_container = canLoop
        }
    }
    private var start_container: Option<DateTime>
    public mut open prop start: Option<DateTime>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Option<DateTime>
    public mut open prop end: Option<DateTime>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var selected_container: Option<Union_Date_Bindable>
    public mut open prop selected: Option<Union_Date_Bindable>
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    private var mode_container: Option<DatePickerMode>
    public mut open prop mode: Option<DatePickerMode>
    {
        get() {
            return mode_container
        }
        set(mode) {
            mode_container = mode
        }
    }
    DatePickerDialogOptions(lunar: Option<Bool>, lunarSwitch: Option<Bool>, lunarSwitchStyle: Option<LunarSwitchStyle>, showTime: Option<Bool>, useMilitaryTime: Option<Bool>, disappearTextStyle: Option<PickerTextStyle>, textStyle: Option<PickerTextStyle>, acceptButtonStyle: Option<PickerDialogButtonStyle>, cancelButtonStyle: Option<PickerDialogButtonStyle>, selectedTextStyle: Option<PickerTextStyle>, maskRect: Option<Rectangle>, alignment: Option<DialogAlignment>, offset: Option<Offset>, onAccept: Option<((value: DatePickerResult) -> Unit)>, onCancel: Option<VoidCallback>, onChange: Option<((value: DatePickerResult) -> Unit)>, onDateAccept: Option<((parameter: DateTime) -> Unit)>, onDateChange: Option<((parameter: DateTime) -> Unit)>, backgroundColor: Option<ResourceColor>, backgroundBlurStyle: Option<BlurStyle>, backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>, backgroundEffect: Option<BackgroundEffectOptions>, onDidAppear: Option<VoidCallback>, onDidDisappear: Option<VoidCallback>, onWillAppear: Option<VoidCallback>, onWillDisappear: Option<VoidCallback>, shadow: Option<Union_ShadowOptions_ShadowStyle>, dateTimeOptions: Option<DateTimeOptions>, enableHoverMode: Option<Bool>, hoverModeArea: Option<HoverModeAreaType>, enableHapticFeedback: Option<Bool>, canLoop: Option<Bool>, start: Option<DateTime>, end: Option<DateTime>, selected: Option<Union_Date_Bindable>, mode: Option<DatePickerMode>) {
        this.lunar_container = lunar
        this.lunarSwitch_container = lunarSwitch
        this.lunarSwitchStyle_container = lunarSwitchStyle
        this.showTime_container = showTime
        this.useMilitaryTime_container = useMilitaryTime
        this.disappearTextStyle_container = disappearTextStyle
        this.textStyle_container = textStyle
        this.acceptButtonStyle_container = acceptButtonStyle
        this.cancelButtonStyle_container = cancelButtonStyle
        this.selectedTextStyle_container = selectedTextStyle
        this.maskRect_container = maskRect
        this.alignment_container = alignment
        this.offset_container = offset
        this.onAccept_container = onAccept
        this.onCancel_container = onCancel
        this.onChange_container = onChange
        this.onDateAccept_container = onDateAccept
        this.onDateChange_container = onDateChange
        this.backgroundColor_container = backgroundColor
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        this.backgroundEffect_container = backgroundEffect
        this.onDidAppear_container = onDidAppear
        this.onDidDisappear_container = onDidDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
        this.shadow_container = shadow
        this.dateTimeOptions_container = dateTimeOptions
        this.enableHoverMode_container = enableHoverMode
        this.hoverModeArea_container = hoverModeArea
        this.enableHapticFeedback_container = enableHapticFeedback
        this.canLoop_container = canLoop
        this.start_container = start
        this.end_container = end
        this.selected_container = selected
        this.mode_container = mode
    }
}
public open class DatePickerDialogOptions_serializer {
    public static func write(buffer: SerializerBase, value: DatePickerDialogOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            valueSerializer.writeInt64(match (valueHolderForStartTmpValue as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            valueSerializer.writeInt64(match (valueHolderForEndTmpValue as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSelected = value.selected
        if (valueHolderForSelected.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedTmpValue = valueHolderForSelected
            if (valueHolderForSelectedTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSelectedTmpValueForIdx0 = valueHolderForSelectedTmpValue.getValue0()
                valueSerializer.writeInt64(match (valueHolderForSelectedTmpValueForIdx0 as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
            } else if (valueHolderForSelectedTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSelectedTmpValueForIdx1 = valueHolderForSelectedTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSelectedTmpValueForIdx1);
            }
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
        let valueHolderForLunar = value.lunar
        if (valueHolderForLunar.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLunarTmpValue = valueHolderForLunar
            valueSerializer.writeBoolean(valueHolderForLunarTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLunarSwitch = value.lunarSwitch
        if (valueHolderForLunarSwitch.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLunarSwitchTmpValue = valueHolderForLunarSwitch
            valueSerializer.writeBoolean(valueHolderForLunarSwitchTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLunarSwitchStyle = value.lunarSwitchStyle
        if (valueHolderForLunarSwitchStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLunarSwitchStyleTmpValue = valueHolderForLunarSwitchStyle
            LunarSwitchStyle_serializer.write(valueSerializer, valueHolderForLunarSwitchStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShowTime = value.showTime
        if (valueHolderForShowTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowTimeTmpValue = valueHolderForShowTime
            valueSerializer.writeBoolean(valueHolderForShowTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUseMilitaryTime = value.useMilitaryTime
        if (valueHolderForUseMilitaryTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUseMilitaryTimeTmpValue = valueHolderForUseMilitaryTime
            valueSerializer.writeBoolean(valueHolderForUseMilitaryTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDisappearTextStyle = value.disappearTextStyle
        if (valueHolderForDisappearTextStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisappearTextStyleTmpValue = valueHolderForDisappearTextStyle
            PickerTextStyle_serializer.write(valueSerializer, valueHolderForDisappearTextStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTextStyle = value.textStyle
        if (valueHolderForTextStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextStyleTmpValue = valueHolderForTextStyle
            PickerTextStyle_serializer.write(valueSerializer, valueHolderForTextStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAcceptButtonStyle = value.acceptButtonStyle
        if (valueHolderForAcceptButtonStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAcceptButtonStyleTmpValue = valueHolderForAcceptButtonStyle
            PickerDialogButtonStyle_serializer.write(valueSerializer, valueHolderForAcceptButtonStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCancelButtonStyle = value.cancelButtonStyle
        if (valueHolderForCancelButtonStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCancelButtonStyleTmpValue = valueHolderForCancelButtonStyle
            PickerDialogButtonStyle_serializer.write(valueSerializer, valueHolderForCancelButtonStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSelectedTextStyle = value.selectedTextStyle
        if (valueHolderForSelectedTextStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedTextStyleTmpValue = valueHolderForSelectedTextStyle
            PickerTextStyle_serializer.write(valueSerializer, valueHolderForSelectedTextStyleTmpValue);
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
        let valueHolderForOnAccept = value.onAccept
        if (valueHolderForOnAccept.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnAcceptTmpValue = valueHolderForOnAccept
            valueSerializer.holdAndWriteCallback(valueHolderForOnAcceptTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnCancel = value.onCancel
        if (valueHolderForOnCancel.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnCancelTmpValue = valueHolderForOnCancel
            valueSerializer.holdAndWriteCallback(valueHolderForOnCancelTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnChange = value.onChange
        if (valueHolderForOnChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnChangeTmpValue = valueHolderForOnChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDateAccept = value.onDateAccept
        if (valueHolderForOnDateAccept.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDateAcceptTmpValue = valueHolderForOnDateAccept
            valueSerializer.holdAndWriteCallback(valueHolderForOnDateAcceptTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDateChange = value.onDateChange
        if (valueHolderForOnDateChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDateChangeTmpValue = valueHolderForOnDateChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnDateChangeTmpValue);
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
        let valueHolderForDateTimeOptions = value.dateTimeOptions
        if (valueHolderForDateTimeOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDateTimeOptionsTmpValue = valueHolderForDateTimeOptions
            valueSerializer.writeCustomObject("Any", valueHolderForDateTimeOptionsTmpValue);
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
        let valueHolderForEnableHapticFeedback = value.enableHapticFeedback
        if (valueHolderForEnableHapticFeedback.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableHapticFeedbackTmpValue = valueHolderForEnableHapticFeedback
            valueSerializer.writeBoolean(valueHolderForEnableHapticFeedbackTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCanLoop = value.canLoop
        if (valueHolderForCanLoop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCanLoopTmpValue = valueHolderForCanLoop
            valueSerializer.writeBoolean(valueHolderForCanLoopTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DatePickerDialogOptions {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<DateTime> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = DateTime.now()
        }
        let startTmpResult: Option<DateTime> = startTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<DateTime> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            endTmpBuf = DateTime.now()
        }
        let endTmpResult: Option<DateTime> = endTmpBuf
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<Union_Date_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            let selectedTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var selectedTmpBuf_: Union_Date_Bindable 
            if (selectedTmpBuf_UnionSelector == Int8(0)) {
                selectedTmpBuf_ = Union_Date_Bindable(DateTime.now())
            } else if (selectedTmpBuf_UnionSelector == Int8(1)) {
                selectedTmpBuf_ = Union_Date_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for selectedTmpBuf_ has to be chosen through deserialisation.")
            }
            selectedTmpBuf = match (selectedTmpBuf_ as Union_Date_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedTmpResult: Option<Union_Date_Bindable> = selectedTmpBuf
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<DatePickerMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            modeTmpBuf = DatePickerMode(valueDeserializer.readInt32())
        }
        let modeTmpResult: Option<DatePickerMode> = modeTmpBuf
        let lunarTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lunarTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lunarTmpBuf_runtimeType))) {
            lunarTmpBuf = valueDeserializer.readBoolean()
        }
        let lunarTmpResult: Option<Bool> = lunarTmpBuf
        let lunarSwitchTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lunarSwitchTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lunarSwitchTmpBuf_runtimeType))) {
            lunarSwitchTmpBuf = valueDeserializer.readBoolean()
        }
        let lunarSwitchTmpResult: Option<Bool> = lunarSwitchTmpBuf
        let lunarSwitchStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lunarSwitchStyleTmpBuf: Option<LunarSwitchStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lunarSwitchStyleTmpBuf_runtimeType))) {
            lunarSwitchStyleTmpBuf = LunarSwitchStyle_serializer.read(valueDeserializer)
        }
        let lunarSwitchStyleTmpResult: Option<LunarSwitchStyle> = lunarSwitchStyleTmpBuf
        let showTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showTimeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showTimeTmpBuf_runtimeType))) {
            showTimeTmpBuf = valueDeserializer.readBoolean()
        }
        let showTimeTmpResult: Option<Bool> = showTimeTmpBuf
        let useMilitaryTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var useMilitaryTimeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(useMilitaryTimeTmpBuf_runtimeType))) {
            useMilitaryTimeTmpBuf = valueDeserializer.readBoolean()
        }
        let useMilitaryTimeTmpResult: Option<Bool> = useMilitaryTimeTmpBuf
        let disappearTextStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disappearTextStyleTmpBuf: Option<PickerTextStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disappearTextStyleTmpBuf_runtimeType))) {
            disappearTextStyleTmpBuf = PickerTextStyle_serializer.read(valueDeserializer)
        }
        let disappearTextStyleTmpResult: Option<PickerTextStyle> = disappearTextStyleTmpBuf
        let textStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textStyleTmpBuf: Option<PickerTextStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textStyleTmpBuf_runtimeType))) {
            textStyleTmpBuf = PickerTextStyle_serializer.read(valueDeserializer)
        }
        let textStyleTmpResult: Option<PickerTextStyle> = textStyleTmpBuf
        let acceptButtonStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var acceptButtonStyleTmpBuf: Option<PickerDialogButtonStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(acceptButtonStyleTmpBuf_runtimeType))) {
            acceptButtonStyleTmpBuf = PickerDialogButtonStyle_serializer.read(valueDeserializer)
        }
        let acceptButtonStyleTmpResult: Option<PickerDialogButtonStyle> = acceptButtonStyleTmpBuf
        let cancelButtonStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var cancelButtonStyleTmpBuf: Option<PickerDialogButtonStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(cancelButtonStyleTmpBuf_runtimeType))) {
            cancelButtonStyleTmpBuf = PickerDialogButtonStyle_serializer.read(valueDeserializer)
        }
        let cancelButtonStyleTmpResult: Option<PickerDialogButtonStyle> = cancelButtonStyleTmpBuf
        let selectedTextStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTextStyleTmpBuf: Option<PickerTextStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTextStyleTmpBuf_runtimeType))) {
            selectedTextStyleTmpBuf = PickerTextStyle_serializer.read(valueDeserializer)
        }
        let selectedTextStyleTmpResult: Option<PickerTextStyle> = selectedTextStyleTmpBuf
        let maskRectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskRectTmpBuf: Option<Rectangle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskRectTmpBuf_runtimeType))) {
            maskRectTmpBuf = Rectangle_serializer.read(valueDeserializer)
        }
        let maskRectTmpResult: Option<Rectangle> = maskRectTmpBuf
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
        let onAcceptTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onAcceptTmpBuf: Option<((value: DatePickerResult) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onAcceptTmpBuf_runtimeType))) {
            let onAcceptTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onAcceptTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onAcceptTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onAcceptTmpBuf = {value: DatePickerResult => let onAcceptTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onAcceptTmpBuf_BufArgsSerializer.writeInt32(onAcceptTmpBuf_BufResource.resourceId);
onAcceptTmpBuf_BufArgsSerializer.writePointer(onAcceptTmpBuf_BufCall);
onAcceptTmpBuf_BufArgsSerializer.writePointer(onAcceptTmpBuf_BufCallSync);
DatePickerResult_serializer.write(onAcceptTmpBuf_BufArgsSerializer, value);
InteropNativeModule._CallCallback(1280920532, onAcceptTmpBuf_BufArgsSerializer.asBuffer(), onAcceptTmpBuf_BufArgsSerializer.length());
onAcceptTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onAcceptTmpResult: Option<((value: DatePickerResult) -> Unit)> = onAcceptTmpBuf
        let onCancelTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onCancelTmpBuf: Option<VoidCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onCancelTmpBuf_runtimeType))) {
            let onCancelTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onCancelTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onCancelTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onCancelTmpBuf = { => let onCancelTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onCancelTmpBuf_BufArgsSerializer.writeInt32(onCancelTmpBuf_BufResource.resourceId);
onCancelTmpBuf_BufArgsSerializer.writePointer(onCancelTmpBuf_BufCall);
onCancelTmpBuf_BufArgsSerializer.writePointer(onCancelTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-2038961969, onCancelTmpBuf_BufArgsSerializer.asBuffer(), onCancelTmpBuf_BufArgsSerializer.length());
onCancelTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onCancelTmpResult: Option<VoidCallback> = onCancelTmpBuf
        let onChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onChangeTmpBuf: Option<((value: DatePickerResult) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onChangeTmpBuf_runtimeType))) {
            let onChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onChangeTmpBuf = {value: DatePickerResult => let onChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onChangeTmpBuf_BufArgsSerializer.writeInt32(onChangeTmpBuf_BufResource.resourceId);
onChangeTmpBuf_BufArgsSerializer.writePointer(onChangeTmpBuf_BufCall);
onChangeTmpBuf_BufArgsSerializer.writePointer(onChangeTmpBuf_BufCallSync);
DatePickerResult_serializer.write(onChangeTmpBuf_BufArgsSerializer, value);
InteropNativeModule._CallCallback(1280920532, onChangeTmpBuf_BufArgsSerializer.asBuffer(), onChangeTmpBuf_BufArgsSerializer.length());
onChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onChangeTmpResult: Option<((value: DatePickerResult) -> Unit)> = onChangeTmpBuf
        let onDateAcceptTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDateAcceptTmpBuf: Option<((parameter: DateTime) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDateAcceptTmpBuf_runtimeType))) {
            let onDateAcceptTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDateAcceptTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDateAcceptTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDateAcceptTmpBuf = {parameter: DateTime => let onDateAcceptTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDateAcceptTmpBuf_BufArgsSerializer.writeInt32(onDateAcceptTmpBuf_BufResource.resourceId);
onDateAcceptTmpBuf_BufArgsSerializer.writePointer(onDateAcceptTmpBuf_BufCall);
onDateAcceptTmpBuf_BufArgsSerializer.writePointer(onDateAcceptTmpBuf_BufCallSync);
onDateAcceptTmpBuf_BufArgsSerializer.writeInt64(match (parameter as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
InteropNativeModule._CallCallback(1405382363, onDateAcceptTmpBuf_BufArgsSerializer.asBuffer(), onDateAcceptTmpBuf_BufArgsSerializer.length());
onDateAcceptTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDateAcceptTmpResult: Option<((parameter: DateTime) -> Unit)> = onDateAcceptTmpBuf
        let onDateChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDateChangeTmpBuf: Option<((parameter: DateTime) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDateChangeTmpBuf_runtimeType))) {
            let onDateChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDateChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDateChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDateChangeTmpBuf = {parameter: DateTime => let onDateChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDateChangeTmpBuf_BufArgsSerializer.writeInt32(onDateChangeTmpBuf_BufResource.resourceId);
onDateChangeTmpBuf_BufArgsSerializer.writePointer(onDateChangeTmpBuf_BufCall);
onDateChangeTmpBuf_BufArgsSerializer.writePointer(onDateChangeTmpBuf_BufCallSync);
onDateChangeTmpBuf_BufArgsSerializer.writeInt64(match (parameter as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
InteropNativeModule._CallCallback(1405382363, onDateChangeTmpBuf_BufArgsSerializer.asBuffer(), onDateChangeTmpBuf_BufArgsSerializer.length());
onDateChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDateChangeTmpResult: Option<((parameter: DateTime) -> Unit)> = onDateChangeTmpBuf
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
        let onDidAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDidAppearTmpBuf: Option<VoidCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDidAppearTmpBuf_runtimeType))) {
            let onDidAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDidAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDidAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDidAppearTmpBuf = { => let onDidAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDidAppearTmpBuf_BufArgsSerializer.writeInt32(onDidAppearTmpBuf_BufResource.resourceId);
onDidAppearTmpBuf_BufArgsSerializer.writePointer(onDidAppearTmpBuf_BufCall);
onDidAppearTmpBuf_BufArgsSerializer.writePointer(onDidAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-2038961969, onDidAppearTmpBuf_BufArgsSerializer.asBuffer(), onDidAppearTmpBuf_BufArgsSerializer.length());
onDidAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDidAppearTmpResult: Option<VoidCallback> = onDidAppearTmpBuf
        let onDidDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDidDisappearTmpBuf: Option<VoidCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDidDisappearTmpBuf_runtimeType))) {
            let onDidDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDidDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDidDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDidDisappearTmpBuf = { => let onDidDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDidDisappearTmpBuf_BufArgsSerializer.writeInt32(onDidDisappearTmpBuf_BufResource.resourceId);
onDidDisappearTmpBuf_BufArgsSerializer.writePointer(onDidDisappearTmpBuf_BufCall);
onDidDisappearTmpBuf_BufArgsSerializer.writePointer(onDidDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-2038961969, onDidDisappearTmpBuf_BufArgsSerializer.asBuffer(), onDidDisappearTmpBuf_BufArgsSerializer.length());
onDidDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDidDisappearTmpResult: Option<VoidCallback> = onDidDisappearTmpBuf
        let onWillAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillAppearTmpBuf: Option<VoidCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillAppearTmpBuf_runtimeType))) {
            let onWillAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillAppearTmpBuf = { => let onWillAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillAppearTmpBuf_BufArgsSerializer.writeInt32(onWillAppearTmpBuf_BufResource.resourceId);
onWillAppearTmpBuf_BufArgsSerializer.writePointer(onWillAppearTmpBuf_BufCall);
onWillAppearTmpBuf_BufArgsSerializer.writePointer(onWillAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-2038961969, onWillAppearTmpBuf_BufArgsSerializer.asBuffer(), onWillAppearTmpBuf_BufArgsSerializer.length());
onWillAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillAppearTmpResult: Option<VoidCallback> = onWillAppearTmpBuf
        let onWillDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDisappearTmpBuf: Option<VoidCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDisappearTmpBuf_runtimeType))) {
            let onWillDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillDisappearTmpBuf = { => let onWillDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDisappearTmpBuf_BufArgsSerializer.writeInt32(onWillDisappearTmpBuf_BufResource.resourceId);
onWillDisappearTmpBuf_BufArgsSerializer.writePointer(onWillDisappearTmpBuf_BufCall);
onWillDisappearTmpBuf_BufArgsSerializer.writePointer(onWillDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-2038961969, onWillDisappearTmpBuf_BufArgsSerializer.asBuffer(), onWillDisappearTmpBuf_BufArgsSerializer.length());
onWillDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillDisappearTmpResult: Option<VoidCallback> = onWillDisappearTmpBuf
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
        let dateTimeOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dateTimeOptionsTmpBuf: Option<DateTimeOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dateTimeOptionsTmpBuf_runtimeType))) {
            dateTimeOptionsTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dateTimeOptionsTmpResult: Option<DateTimeOptions> = dateTimeOptionsTmpBuf
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
        let enableHapticFeedbackTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHapticFeedbackTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHapticFeedbackTmpBuf_runtimeType))) {
            enableHapticFeedbackTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHapticFeedbackTmpResult: Option<Bool> = enableHapticFeedbackTmpBuf
        let canLoopTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var canLoopTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(canLoopTmpBuf_runtimeType))) {
            canLoopTmpBuf = valueDeserializer.readBoolean()
        }
        let canLoopTmpResult: Option<Bool> = canLoopTmpBuf
        var value: DatePickerDialogOptions = DatePickerDialogOptions(lunarTmpResult, lunarSwitchTmpResult, lunarSwitchStyleTmpResult, showTimeTmpResult, useMilitaryTimeTmpResult, disappearTextStyleTmpResult, textStyleTmpResult, acceptButtonStyleTmpResult, cancelButtonStyleTmpResult, selectedTextStyleTmpResult, maskRectTmpResult, alignmentTmpResult, offsetTmpResult, onAcceptTmpResult, onCancelTmpResult, onChangeTmpResult, onDateAcceptTmpResult, onDateChangeTmpResult, backgroundColorTmpResult, backgroundBlurStyleTmpResult, backgroundBlurStyleOptionsTmpResult, backgroundEffectTmpResult, onDidAppearTmpResult, onDidDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult, shadowTmpResult, dateTimeOptionsTmpResult, enableHoverModeTmpResult, hoverModeAreaTmpResult, enableHapticFeedbackTmpResult, canLoopTmpResult, startTmpResult, endTmpResult, selectedTmpResult, modeTmpResult)
        return value
    }
}
