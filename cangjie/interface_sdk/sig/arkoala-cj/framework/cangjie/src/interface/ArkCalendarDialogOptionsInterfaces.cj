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
public interface CalendarDialogOptionsInterfaces <: CalendarOptionsInterfaces {
    public mut open prop onAccept: Option<((parameter: DateTime) -> Unit)>
    public mut open prop onCancel: Option<VoidCallback>
    public mut open prop onChange: Option<((parameter: DateTime) -> Unit)>
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    public mut open prop backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>
    public mut open prop backgroundEffect: Option<BackgroundEffectOptions>
    public mut open prop acceptButtonStyle: Option<PickerDialogButtonStyle>
    public mut open prop cancelButtonStyle: Option<PickerDialogButtonStyle>
    public mut open prop onDidAppear: Option<VoidCallback>
    public mut open prop onDidDisappear: Option<VoidCallback>
    public mut open prop onWillAppear: Option<VoidCallback>
    public mut open prop onWillDisappear: Option<VoidCallback>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    public mut open prop markToday: Option<Bool>
}
public open class CalendarDialogOptions <: CalendarDialogOptionsInterfaces {
    private var onAccept_container: Option<((parameter: DateTime) -> Unit)>
    public mut open prop onAccept: Option<((parameter: DateTime) -> Unit)>
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
    private var onChange_container: Option<((parameter: DateTime) -> Unit)>
    public mut open prop onChange: Option<((parameter: DateTime) -> Unit)>
    {
        get() {
            return onChange_container
        }
        set(onChange) {
            onChange_container = onChange
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
    private var markToday_container: Option<Bool>
    public mut open prop markToday: Option<Bool>
    {
        get() {
            return markToday_container
        }
        set(markToday) {
            markToday_container = markToday
        }
    }
    private var hintRadius_container: Option<Union_Number_Resource>
    public mut open prop hintRadius: Option<Union_Number_Resource>
    {
        get() {
            return hintRadius_container
        }
        set(hintRadius) {
            hintRadius_container = hintRadius
        }
    }
    private var selected_container: Option<DateTime>
    public mut open prop selected: Option<DateTime>
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
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
    private var disabledDateRange_container: Option<ArrayList<DateRange>>
    public mut open prop disabledDateRange: Option<ArrayList<DateRange>>
    {
        get() {
            return disabledDateRange_container
        }
        set(disabledDateRange) {
            disabledDateRange_container = disabledDateRange
        }
    }
    CalendarDialogOptions(onAccept: Option<((parameter: DateTime) -> Unit)>, onCancel: Option<VoidCallback>, onChange: Option<((parameter: DateTime) -> Unit)>, backgroundColor: Option<ResourceColor>, backgroundBlurStyle: Option<BlurStyle>, backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>, backgroundEffect: Option<BackgroundEffectOptions>, acceptButtonStyle: Option<PickerDialogButtonStyle>, cancelButtonStyle: Option<PickerDialogButtonStyle>, onDidAppear: Option<VoidCallback>, onDidDisappear: Option<VoidCallback>, onWillAppear: Option<VoidCallback>, onWillDisappear: Option<VoidCallback>, shadow: Option<Union_ShadowOptions_ShadowStyle>, enableHoverMode: Option<Bool>, hoverModeArea: Option<HoverModeAreaType>, markToday: Option<Bool>, hintRadius: Option<Union_Number_Resource>, selected: Option<DateTime>, start: Option<DateTime>, end: Option<DateTime>, disabledDateRange: Option<ArrayList<DateRange>>) {
        this.onAccept_container = onAccept
        this.onCancel_container = onCancel
        this.onChange_container = onChange
        this.backgroundColor_container = backgroundColor
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        this.backgroundEffect_container = backgroundEffect
        this.acceptButtonStyle_container = acceptButtonStyle
        this.cancelButtonStyle_container = cancelButtonStyle
        this.onDidAppear_container = onDidAppear
        this.onDidDisappear_container = onDidDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
        this.shadow_container = shadow
        this.enableHoverMode_container = enableHoverMode
        this.hoverModeArea_container = hoverModeArea
        this.markToday_container = markToday
        this.hintRadius_container = hintRadius
        this.selected_container = selected
        this.start_container = start
        this.end_container = end
        this.disabledDateRange_container = disabledDateRange
    }
}
public open class CalendarDialogOptions_serializer {
    public static func write(buffer: SerializerBase, value: CalendarDialogOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHintRadius = value.hintRadius
        if (valueHolderForHintRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHintRadiusTmpValue = valueHolderForHintRadius
            if (valueHolderForHintRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHintRadiusTmpValueForIdx0 = valueHolderForHintRadiusTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForHintRadiusTmpValueForIdx0);
            } else if (valueHolderForHintRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHintRadiusTmpValueForIdx1 = valueHolderForHintRadiusTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForHintRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSelected = value.selected
        if (valueHolderForSelected.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedTmpValue = valueHolderForSelected
            valueSerializer.writeInt64(match (valueHolderForSelectedTmpValue as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
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
        let valueHolderForDisabledDateRange = value.disabledDateRange
        if (valueHolderForDisabledDateRange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisabledDateRangeTmpValue = valueHolderForDisabledDateRange
            valueSerializer.writeInt32(Int32(valueHolderForDisabledDateRangeTmpValue.size));
            for (valueHolderForDisabledDateRangeTmpValueCounterI in 0..valueHolderForDisabledDateRangeTmpValue.size) {
                let valueHolderForDisabledDateRangeTmpValueTmpElement: DateRange = valueHolderForDisabledDateRangeTmpValue[Int64(valueHolderForDisabledDateRangeTmpValueCounterI)]
                DateRange_serializer.write(valueSerializer, valueHolderForDisabledDateRangeTmpValueTmpElement);
            }
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
        let valueHolderForMarkToday = value.markToday
        if (valueHolderForMarkToday.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarkTodayTmpValue = valueHolderForMarkToday
            valueSerializer.writeBoolean(valueHolderForMarkTodayTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CalendarDialogOptions {
        var valueDeserializer: DeserializerBase = buffer
        let hintRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hintRadiusTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hintRadiusTmpBuf_runtimeType))) {
            let hintRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var hintRadiusTmpBuf_: Union_Number_Resource 
            if (hintRadiusTmpBuf_UnionSelector == Int8(0)) {
                hintRadiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (hintRadiusTmpBuf_UnionSelector == Int8(1)) {
                hintRadiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for hintRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            hintRadiusTmpBuf = match (hintRadiusTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let hintRadiusTmpResult: Option<Union_Number_Resource> = hintRadiusTmpBuf
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<DateTime> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            selectedTmpBuf = DateTime.now()
        }
        let selectedTmpResult: Option<DateTime> = selectedTmpBuf
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
        let disabledDateRangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disabledDateRangeTmpBuf: Option<ArrayList<DateRange>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disabledDateRangeTmpBuf_runtimeType))) {
            let disabledDateRangeTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var disabledDateRangeTmpBuf_: ArrayList<DateRange> = ArrayList<DateRange>(Int64(disabledDateRangeTmpBuf_Length))
            disabledDateRangeTmpBuf_ = ArrayList<DateRange>(Int64(disabledDateRangeTmpBuf_Length))
            for (disabledDateRangeTmpBuf_BufCounterI in 0..disabledDateRangeTmpBuf_Length) {
                disabledDateRangeTmpBuf_[Int64(disabledDateRangeTmpBuf_BufCounterI)] = DateRange_serializer.read(valueDeserializer)
            }
            disabledDateRangeTmpBuf = disabledDateRangeTmpBuf_
        }
        let disabledDateRangeTmpResult: Option<ArrayList<DateRange>> = disabledDateRangeTmpBuf
        let onAcceptTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onAcceptTmpBuf: Option<((parameter: DateTime) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onAcceptTmpBuf_runtimeType))) {
            let onAcceptTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onAcceptTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onAcceptTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onAcceptTmpBuf = {parameter: DateTime => let onAcceptTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onAcceptTmpBuf_BufArgsSerializer.writeInt32(onAcceptTmpBuf_BufResource.resourceId);
onAcceptTmpBuf_BufArgsSerializer.writePointer(onAcceptTmpBuf_BufCall);
onAcceptTmpBuf_BufArgsSerializer.writePointer(onAcceptTmpBuf_BufCallSync);
onAcceptTmpBuf_BufArgsSerializer.writeInt64(match (parameter as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
InteropNativeModule._CallCallback(1405382363, onAcceptTmpBuf_BufArgsSerializer.asBuffer(), onAcceptTmpBuf_BufArgsSerializer.length());
onAcceptTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onAcceptTmpResult: Option<((parameter: DateTime) -> Unit)> = onAcceptTmpBuf
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
        var onChangeTmpBuf: Option<((parameter: DateTime) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onChangeTmpBuf_runtimeType))) {
            let onChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onChangeTmpBuf = {parameter: DateTime => let onChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onChangeTmpBuf_BufArgsSerializer.writeInt32(onChangeTmpBuf_BufResource.resourceId);
onChangeTmpBuf_BufArgsSerializer.writePointer(onChangeTmpBuf_BufCall);
onChangeTmpBuf_BufArgsSerializer.writePointer(onChangeTmpBuf_BufCallSync);
onChangeTmpBuf_BufArgsSerializer.writeInt64(match (parameter as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
InteropNativeModule._CallCallback(1405382363, onChangeTmpBuf_BufArgsSerializer.asBuffer(), onChangeTmpBuf_BufArgsSerializer.length());
onChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onChangeTmpResult: Option<((parameter: DateTime) -> Unit)> = onChangeTmpBuf
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
        let markTodayTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var markTodayTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(markTodayTmpBuf_runtimeType))) {
            markTodayTmpBuf = valueDeserializer.readBoolean()
        }
        let markTodayTmpResult: Option<Bool> = markTodayTmpBuf
        var value: CalendarDialogOptions = CalendarDialogOptions(onAcceptTmpResult, onCancelTmpResult, onChangeTmpResult, backgroundColorTmpResult, backgroundBlurStyleTmpResult, backgroundBlurStyleOptionsTmpResult, backgroundEffectTmpResult, acceptButtonStyleTmpResult, cancelButtonStyleTmpResult, onDidAppearTmpResult, onDidDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult, shadowTmpResult, enableHoverModeTmpResult, hoverModeAreaTmpResult, markTodayTmpResult, hintRadiusTmpResult, selectedTmpResult, startTmpResult, endTmpResult, disabledDateRangeTmpResult)
        return value
    }
}
