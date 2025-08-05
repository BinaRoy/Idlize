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
public interface TextPickerDialogOptionsInterfaces <: TextPickerOptionsInterfaces {
    public mut open prop defaultPickerItemHeight: Option<Union_Number_String>
    public mut open prop canLoop: Option<Bool>
    public mut open prop disappearTextStyle: Option<PickerTextStyle>
    public mut open prop textStyle: Option<PickerTextStyle>
    public mut open prop acceptButtonStyle: Option<PickerDialogButtonStyle>
    public mut open prop cancelButtonStyle: Option<PickerDialogButtonStyle>
    public mut open prop selectedTextStyle: Option<PickerTextStyle>
    public mut open prop disableTextStyleAnimation: Option<Bool>
    public mut open prop defaultTextStyle: Option<TextPickerTextStyle>
    public mut open prop onAccept: Option<((value: TextPickerResult) -> Unit)>
    public mut open prop onCancel: Option<(() -> Unit)>
    public mut open prop onChange: Option<((value: TextPickerResult) -> Unit)>
    public mut open prop onScrollStop: Option<((value: TextPickerResult) -> Unit)>
    public mut open prop onEnterSelectedArea: Option<((value: TextPickerResult) -> Unit)>
    public mut open prop maskRect: Option<Rectangle>
    public mut open prop alignment: Option<DialogAlignment>
    public mut open prop offset: Option<Offset>
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    public mut open prop backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>
    public mut open prop backgroundEffect: Option<BackgroundEffectOptions>
    public mut open prop onDidAppear: Option<(() -> Unit)>
    public mut open prop onDidDisappear: Option<(() -> Unit)>
    public mut open prop onWillAppear: Option<(() -> Unit)>
    public mut open prop onWillDisappear: Option<(() -> Unit)>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    public mut open prop enableHapticFeedback: Option<Bool>
    public mut open prop selectedBackgroundStyle: Option<PickerBackgroundStyle>
}
public open class TextPickerDialogOptions <: TextPickerDialogOptionsInterfaces {
    private var defaultPickerItemHeight_container: Option<Union_Number_String>
    public mut open prop defaultPickerItemHeight: Option<Union_Number_String>
    {
        get() {
            return defaultPickerItemHeight_container
        }
        set(defaultPickerItemHeight) {
            defaultPickerItemHeight_container = defaultPickerItemHeight
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
    private var disableTextStyleAnimation_container: Option<Bool>
    public mut open prop disableTextStyleAnimation: Option<Bool>
    {
        get() {
            return disableTextStyleAnimation_container
        }
        set(disableTextStyleAnimation) {
            disableTextStyleAnimation_container = disableTextStyleAnimation
        }
    }
    private var defaultTextStyle_container: Option<TextPickerTextStyle>
    public mut open prop defaultTextStyle: Option<TextPickerTextStyle>
    {
        get() {
            return defaultTextStyle_container
        }
        set(defaultTextStyle) {
            defaultTextStyle_container = defaultTextStyle
        }
    }
    private var onAccept_container: Option<((value: TextPickerResult) -> Unit)>
    public mut open prop onAccept: Option<((value: TextPickerResult) -> Unit)>
    {
        get() {
            return onAccept_container
        }
        set(onAccept) {
            onAccept_container = onAccept
        }
    }
    private var onCancel_container: Option<(() -> Unit)>
    public mut open prop onCancel: Option<(() -> Unit)>
    {
        get() {
            return onCancel_container
        }
        set(onCancel) {
            onCancel_container = onCancel
        }
    }
    private var onChange_container: Option<((value: TextPickerResult) -> Unit)>
    public mut open prop onChange: Option<((value: TextPickerResult) -> Unit)>
    {
        get() {
            return onChange_container
        }
        set(onChange) {
            onChange_container = onChange
        }
    }
    private var onScrollStop_container: Option<((value: TextPickerResult) -> Unit)>
    public mut open prop onScrollStop: Option<((value: TextPickerResult) -> Unit)>
    {
        get() {
            return onScrollStop_container
        }
        set(onScrollStop) {
            onScrollStop_container = onScrollStop
        }
    }
    private var onEnterSelectedArea_container: Option<((value: TextPickerResult) -> Unit)>
    public mut open prop onEnterSelectedArea: Option<((value: TextPickerResult) -> Unit)>
    {
        get() {
            return onEnterSelectedArea_container
        }
        set(onEnterSelectedArea) {
            onEnterSelectedArea_container = onEnterSelectedArea
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
    private var selectedBackgroundStyle_container: Option<PickerBackgroundStyle>
    public mut open prop selectedBackgroundStyle: Option<PickerBackgroundStyle>
    {
        get() {
            return selectedBackgroundStyle_container
        }
        set(selectedBackgroundStyle) {
            selectedBackgroundStyle_container = selectedBackgroundStyle
        }
    }
    private var range_container: Type_TextPickerOptions_range
    public mut open prop range: Type_TextPickerOptions_range
    {
        get() {
            return range_container
        }
        set(range) {
            range_container = range
        }
    }
    private var value_container: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable>
    public mut open prop value: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable>
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var selected_container: Option<Union_Number_Array_Number_Bindable_Bindable>
    public mut open prop selected: Option<Union_Number_Array_Number_Bindable_Bindable>
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    private var columnWidths_container: Option<ArrayList<LengthMetrics>>
    public mut open prop columnWidths: Option<ArrayList<LengthMetrics>>
    {
        get() {
            return columnWidths_container
        }
        set(columnWidths) {
            columnWidths_container = columnWidths
        }
    }
    TextPickerDialogOptions(defaultPickerItemHeight: Option<Union_Number_String>, canLoop: Option<Bool>, disappearTextStyle: Option<PickerTextStyle>, textStyle: Option<PickerTextStyle>, acceptButtonStyle: Option<PickerDialogButtonStyle>, cancelButtonStyle: Option<PickerDialogButtonStyle>, selectedTextStyle: Option<PickerTextStyle>, disableTextStyleAnimation: Option<Bool>, defaultTextStyle: Option<TextPickerTextStyle>, onAccept: Option<((value: TextPickerResult) -> Unit)>, onCancel: Option<(() -> Unit)>, onChange: Option<((value: TextPickerResult) -> Unit)>, onScrollStop: Option<((value: TextPickerResult) -> Unit)>, onEnterSelectedArea: Option<((value: TextPickerResult) -> Unit)>, maskRect: Option<Rectangle>, alignment: Option<DialogAlignment>, offset: Option<Offset>, backgroundColor: Option<ResourceColor>, backgroundBlurStyle: Option<BlurStyle>, backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>, backgroundEffect: Option<BackgroundEffectOptions>, onDidAppear: Option<(() -> Unit)>, onDidDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>, shadow: Option<Union_ShadowOptions_ShadowStyle>, enableHoverMode: Option<Bool>, hoverModeArea: Option<HoverModeAreaType>, enableHapticFeedback: Option<Bool>, selectedBackgroundStyle: Option<PickerBackgroundStyle>, range: Type_TextPickerOptions_range, value: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable>, selected: Option<Union_Number_Array_Number_Bindable_Bindable>, columnWidths: Option<ArrayList<LengthMetrics>>) {
        this.defaultPickerItemHeight_container = defaultPickerItemHeight
        this.canLoop_container = canLoop
        this.disappearTextStyle_container = disappearTextStyle
        this.textStyle_container = textStyle
        this.acceptButtonStyle_container = acceptButtonStyle
        this.cancelButtonStyle_container = cancelButtonStyle
        this.selectedTextStyle_container = selectedTextStyle
        this.disableTextStyleAnimation_container = disableTextStyleAnimation
        this.defaultTextStyle_container = defaultTextStyle
        this.onAccept_container = onAccept
        this.onCancel_container = onCancel
        this.onChange_container = onChange
        this.onScrollStop_container = onScrollStop
        this.onEnterSelectedArea_container = onEnterSelectedArea
        this.maskRect_container = maskRect
        this.alignment_container = alignment
        this.offset_container = offset
        this.backgroundColor_container = backgroundColor
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        this.backgroundEffect_container = backgroundEffect
        this.onDidAppear_container = onDidAppear
        this.onDidDisappear_container = onDidDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
        this.shadow_container = shadow
        this.enableHoverMode_container = enableHoverMode
        this.hoverModeArea_container = hoverModeArea
        this.enableHapticFeedback_container = enableHapticFeedback
        this.selectedBackgroundStyle_container = selectedBackgroundStyle
        this.range_container = range
        this.value_container = value
        this.selected_container = selected
        this.columnWidths_container = columnWidths
    }
}
public open class TextPickerDialogOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextPickerDialogOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRange = value.range
        if (valueHolderForRange.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForRangeForIdx0 = valueHolderForRange.getValue0()
            valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx0.size));
            for (valueHolderForRangeForIdx0CounterI in 0..valueHolderForRangeForIdx0.size) {
                let valueHolderForRangeForIdx0TmpElement: String = valueHolderForRangeForIdx0[Int64(valueHolderForRangeForIdx0CounterI)]
                valueSerializer.writeString(valueHolderForRangeForIdx0TmpElement);
            }
        } else if (valueHolderForRange.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForRangeForIdx1 = valueHolderForRange.getValue1()
            valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx1.size));
            for (valueHolderForRangeForIdx1CounterI in 0..valueHolderForRangeForIdx1.size) {
                let valueHolderForRangeForIdx1TmpElement: ArrayList<String> = valueHolderForRangeForIdx1[Int64(valueHolderForRangeForIdx1CounterI)]
                valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx1TmpElement.size));
                for (valueHolderForRangeForIdx1TmpElementCounterI in 0..valueHolderForRangeForIdx1TmpElement.size) {
                    let valueHolderForRangeForIdx1TmpElementTmpElement: String = valueHolderForRangeForIdx1TmpElement[Int64(valueHolderForRangeForIdx1TmpElementCounterI)]
                    valueSerializer.writeString(valueHolderForRangeForIdx1TmpElementTmpElement);
                }
            }
        } else if (valueHolderForRange.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForRangeForIdx2 = valueHolderForRange.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForRangeForIdx2);
        } else if (valueHolderForRange.getSelector() == 3) {
            valueSerializer.writeInt8(Int8(3));
            let valueHolderForRangeForIdx3 = valueHolderForRange.getValue3()
            valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx3.size));
            for (valueHolderForRangeForIdx3CounterI in 0..valueHolderForRangeForIdx3.size) {
                let valueHolderForRangeForIdx3TmpElement: TextPickerRangeContent = valueHolderForRangeForIdx3[Int64(valueHolderForRangeForIdx3CounterI)]
                TextPickerRangeContent_serializer.write(valueSerializer, valueHolderForRangeForIdx3TmpElement);
            }
        } else if (valueHolderForRange.getSelector() == 4) {
            valueSerializer.writeInt8(Int8(4));
            let valueHolderForRangeForIdx4 = valueHolderForRange.getValue4()
            valueSerializer.writeInt32(Int32(valueHolderForRangeForIdx4.size));
            for (valueHolderForRangeForIdx4CounterI in 0..valueHolderForRangeForIdx4.size) {
                let valueHolderForRangeForIdx4TmpElement: TextCascadePickerRangeContent = valueHolderForRangeForIdx4[Int64(valueHolderForRangeForIdx4CounterI)]
                TextCascadePickerRangeContent_serializer.write(valueSerializer, valueHolderForRangeForIdx4TmpElement);
            }
        }
        let valueHolderForValue = value.value
        if (valueHolderForValue.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValueTmpValue = valueHolderForValue
            if (valueHolderForValueTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForValueTmpValueForIdx0 = valueHolderForValueTmpValue.getValue0()
                if (valueHolderForValueTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForValueTmpValueForIdx0ForIdx0 = valueHolderForValueTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForValueTmpValueForIdx0ForIdx0);
                } else if (valueHolderForValueTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForValueTmpValueForIdx0ForIdx1 = valueHolderForValueTmpValueForIdx0.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx0ForIdx1);
                }
            } else if (valueHolderForValueTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForValueTmpValueForIdx1 = valueHolderForValueTmpValue.getValue1()
                valueSerializer.writeInt32(Int32(valueHolderForValueTmpValueForIdx1.size));
                for (valueHolderForValueTmpValueForIdx1CounterI in 0..valueHolderForValueTmpValueForIdx1.size) {
                    let valueHolderForValueTmpValueForIdx1TmpElement: ResourceStr = valueHolderForValueTmpValueForIdx1[Int64(valueHolderForValueTmpValueForIdx1CounterI)]
                    if (valueHolderForValueTmpValueForIdx1TmpElement.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForValueTmpValueForIdx1TmpElementForIdx0 = valueHolderForValueTmpValueForIdx1TmpElement.getValue0()
                        valueSerializer.writeString(valueHolderForValueTmpValueForIdx1TmpElementForIdx0);
                    } else if (valueHolderForValueTmpValueForIdx1TmpElement.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForValueTmpValueForIdx1TmpElementForIdx1 = valueHolderForValueTmpValueForIdx1TmpElement.getValue1()
                        valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx1TmpElementForIdx1);
                    }
                }
            } else if (valueHolderForValueTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForValueTmpValueForIdx2 = valueHolderForValueTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx2);
            } else if (valueHolderForValueTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForValueTmpValueForIdx3 = valueHolderForValueTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx3);
            }
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
                valueSerializer.writeNumber(valueHolderForSelectedTmpValueForIdx0);
            } else if (valueHolderForSelectedTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSelectedTmpValueForIdx1 = valueHolderForSelectedTmpValue.getValue1()
                valueSerializer.writeInt32(Int32(valueHolderForSelectedTmpValueForIdx1.size));
                for (valueHolderForSelectedTmpValueForIdx1CounterI in 0..valueHolderForSelectedTmpValueForIdx1.size) {
                    let valueHolderForSelectedTmpValueForIdx1TmpElement: Float64 = valueHolderForSelectedTmpValueForIdx1[Int64(valueHolderForSelectedTmpValueForIdx1CounterI)]
                    valueSerializer.writeNumber(valueHolderForSelectedTmpValueForIdx1TmpElement);
                }
            } else if (valueHolderForSelectedTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSelectedTmpValueForIdx2 = valueHolderForSelectedTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSelectedTmpValueForIdx2);
            } else if (valueHolderForSelectedTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForSelectedTmpValueForIdx3 = valueHolderForSelectedTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForSelectedTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColumnWidths = value.columnWidths
        if (valueHolderForColumnWidths.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColumnWidthsTmpValue = valueHolderForColumnWidths
            valueSerializer.writeInt32(Int32(valueHolderForColumnWidthsTmpValue.size));
            for (valueHolderForColumnWidthsTmpValueCounterI in 0..valueHolderForColumnWidthsTmpValue.size) {
                let valueHolderForColumnWidthsTmpValueTmpElement: LengthMetrics = valueHolderForColumnWidthsTmpValue[Int64(valueHolderForColumnWidthsTmpValueCounterI)]
                valueSerializer.writeCustomObject("Any", valueHolderForColumnWidthsTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDefaultPickerItemHeight = value.defaultPickerItemHeight
        if (valueHolderForDefaultPickerItemHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDefaultPickerItemHeightTmpValue = valueHolderForDefaultPickerItemHeight
            if (valueHolderForDefaultPickerItemHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForDefaultPickerItemHeightTmpValueForIdx0 = valueHolderForDefaultPickerItemHeightTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForDefaultPickerItemHeightTmpValueForIdx0);
            } else if (valueHolderForDefaultPickerItemHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForDefaultPickerItemHeightTmpValueForIdx1 = valueHolderForDefaultPickerItemHeightTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForDefaultPickerItemHeightTmpValueForIdx1);
            }
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
        let valueHolderForDisableTextStyleAnimation = value.disableTextStyleAnimation
        if (valueHolderForDisableTextStyleAnimation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisableTextStyleAnimationTmpValue = valueHolderForDisableTextStyleAnimation
            valueSerializer.writeBoolean(valueHolderForDisableTextStyleAnimationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDefaultTextStyle = value.defaultTextStyle
        if (valueHolderForDefaultTextStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDefaultTextStyleTmpValue = valueHolderForDefaultTextStyle
            TextPickerTextStyle_serializer.write(valueSerializer, valueHolderForDefaultTextStyleTmpValue);
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
        let valueHolderForOnScrollStop = value.onScrollStop
        if (valueHolderForOnScrollStop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnScrollStopTmpValue = valueHolderForOnScrollStop
            valueSerializer.holdAndWriteCallback(valueHolderForOnScrollStopTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnEnterSelectedArea = value.onEnterSelectedArea
        if (valueHolderForOnEnterSelectedArea.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnEnterSelectedAreaTmpValue = valueHolderForOnEnterSelectedArea
            valueSerializer.holdAndWriteCallback(valueHolderForOnEnterSelectedAreaTmpValue);
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
        let valueHolderForSelectedBackgroundStyle = value.selectedBackgroundStyle
        if (valueHolderForSelectedBackgroundStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedBackgroundStyleTmpValue = valueHolderForSelectedBackgroundStyle
            PickerBackgroundStyle_serializer.write(valueSerializer, valueHolderForSelectedBackgroundStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextPickerDialogOptions {
        var valueDeserializer: DeserializerBase = buffer
        let rangeTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var rangeTmpBuf: Type_TextPickerOptions_range 
        if (rangeTmpBufUnionSelector == Int8(0)) {
            let rangeTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var rangeTmpBufBufU: ArrayList<String> = ArrayList<String>(Int64(rangeTmpBufBufULength))
            rangeTmpBufBufU = ArrayList<String>(Int64(rangeTmpBufBufULength))
            for (rangeTmpBufBufUBufCounterI in 0..rangeTmpBufBufULength) {
                rangeTmpBufBufU[Int64(rangeTmpBufBufUBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            rangeTmpBuf = Type_TextPickerOptions_range(rangeTmpBufBufU)
        } else if (rangeTmpBufUnionSelector == Int8(1)) {
            let rangeTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var rangeTmpBufBufU: ArrayList<ArrayList<String>> = ArrayList<ArrayList<String>>(Int64(rangeTmpBufBufULength))
            rangeTmpBufBufU = ArrayList<ArrayList<String>>(Int64(rangeTmpBufBufULength))
            for (rangeTmpBufBufUBufCounterI in 0..rangeTmpBufBufULength) {
                let rangeTmpBufBufUTempBufLength: Int32 = valueDeserializer.readInt32()
                var rangeTmpBufBufUTempBuf: ArrayList<String> = ArrayList<String>(Int64(rangeTmpBufBufUTempBufLength))
                rangeTmpBufBufUTempBuf = ArrayList<String>(Int64(rangeTmpBufBufUTempBufLength))
                for (rangeTmpBufBufUTempBufBufCounterI in 0..rangeTmpBufBufUTempBufLength) {
                    rangeTmpBufBufUTempBuf[Int64(rangeTmpBufBufUTempBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                rangeTmpBufBufU[Int64(rangeTmpBufBufUBufCounterI)] = rangeTmpBufBufUTempBuf
            }
            rangeTmpBuf = Type_TextPickerOptions_range(rangeTmpBufBufU)
        } else if (rangeTmpBufUnionSelector == Int8(2)) {
            rangeTmpBuf = Type_TextPickerOptions_range(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (rangeTmpBufUnionSelector == Int8(3)) {
            let rangeTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var rangeTmpBufBufU: ArrayList<TextPickerRangeContent> = ArrayList<TextPickerRangeContent>(Int64(rangeTmpBufBufULength))
            rangeTmpBufBufU = ArrayList<TextPickerRangeContent>(Int64(rangeTmpBufBufULength))
            for (rangeTmpBufBufUBufCounterI in 0..rangeTmpBufBufULength) {
                rangeTmpBufBufU[Int64(rangeTmpBufBufUBufCounterI)] = TextPickerRangeContent_serializer.read(valueDeserializer)
            }
            rangeTmpBuf = Type_TextPickerOptions_range(rangeTmpBufBufU)
        } else if (rangeTmpBufUnionSelector == Int8(4)) {
            let rangeTmpBufBufULength: Int32 = valueDeserializer.readInt32()
            var rangeTmpBufBufU: ArrayList<TextCascadePickerRangeContent> = ArrayList<TextCascadePickerRangeContent>(Int64(rangeTmpBufBufULength))
            rangeTmpBufBufU = ArrayList<TextCascadePickerRangeContent>(Int64(rangeTmpBufBufULength))
            for (rangeTmpBufBufUBufCounterI in 0..rangeTmpBufBufULength) {
                rangeTmpBufBufU[Int64(rangeTmpBufBufUBufCounterI)] = TextCascadePickerRangeContent_serializer.read(valueDeserializer)
            }
            rangeTmpBuf = Type_TextPickerOptions_range(rangeTmpBufBufU)
        } else {
            throw Exception("One of the branches for rangeTmpBuf has to be chosen through deserialisation.")
        }
        let rangeTmpResult: Type_TextPickerOptions_range = match (rangeTmpBuf as Type_TextPickerOptions_range) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let valueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueTmpBuf: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueTmpBuf_runtimeType))) {
            let valueTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var valueTmpBuf_: Union_ResourceStr_Array_ResourceStr_Bindable_Bindable 
            if (valueTmpBuf_UnionSelector == Int8(0)) {
                let valueTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var valueTmpBuf_BufU: ResourceStr 
                if (valueTmpBuf_BufUUnionSelector == Int8(0)) {
                    valueTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (valueTmpBuf_BufUUnionSelector == Int8(1)) {
                    valueTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for valueTmpBuf_BufU has to be chosen through deserialisation.")
                }
                valueTmpBuf_ = Union_ResourceStr_Array_ResourceStr_Bindable_Bindable(match (valueTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (valueTmpBuf_UnionSelector == Int8(1)) {
                let valueTmpBuf_BufULength: Int32 = valueDeserializer.readInt32()
                var valueTmpBuf_BufU: ArrayList<ResourceStr> = ArrayList<ResourceStr>(Int64(valueTmpBuf_BufULength))
                valueTmpBuf_BufU = ArrayList<ResourceStr>(Int64(valueTmpBuf_BufULength))
                for (valueTmpBuf_BufUBufCounterI in 0..valueTmpBuf_BufULength) {
                    let valueTmpBuf_BufUTempBufUnionSelector: Int8 = valueDeserializer.readInt8()
                    var valueTmpBuf_BufUTempBuf: ResourceStr 
                    if (valueTmpBuf_BufUTempBufUnionSelector == Int8(0)) {
                        valueTmpBuf_BufUTempBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (valueTmpBuf_BufUTempBufUnionSelector == Int8(1)) {
                        valueTmpBuf_BufUTempBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else {
                        throw Exception("One of the branches for valueTmpBuf_BufUTempBuf has to be chosen through deserialisation.")
                    }
                    valueTmpBuf_BufU[Int64(valueTmpBuf_BufUBufCounterI)] = match (valueTmpBuf_BufUTempBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                valueTmpBuf_ = Union_ResourceStr_Array_ResourceStr_Bindable_Bindable(valueTmpBuf_BufU)
            } else if (valueTmpBuf_UnionSelector == Int8(2)) {
                valueTmpBuf_ = Union_ResourceStr_Array_ResourceStr_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (valueTmpBuf_UnionSelector == Int8(3)) {
                valueTmpBuf_ = Union_ResourceStr_Array_ResourceStr_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for valueTmpBuf_ has to be chosen through deserialisation.")
            }
            valueTmpBuf = match (valueTmpBuf_ as Union_ResourceStr_Array_ResourceStr_Bindable_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueTmpResult: Option<Union_ResourceStr_Array_ResourceStr_Bindable_Bindable> = valueTmpBuf
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<Union_Number_Array_Number_Bindable_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            let selectedTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var selectedTmpBuf_: Union_Number_Array_Number_Bindable_Bindable 
            if (selectedTmpBuf_UnionSelector == Int8(0)) {
                selectedTmpBuf_ = Union_Number_Array_Number_Bindable_Bindable(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (selectedTmpBuf_UnionSelector == Int8(1)) {
                let selectedTmpBuf_BufULength: Int32 = valueDeserializer.readInt32()
                var selectedTmpBuf_BufU: ArrayList<Float64> = ArrayList<Float64>(Int64(selectedTmpBuf_BufULength))
                selectedTmpBuf_BufU = ArrayList<Float64>(Int64(selectedTmpBuf_BufULength))
                for (selectedTmpBuf_BufUBufCounterI in 0..selectedTmpBuf_BufULength) {
                    selectedTmpBuf_BufU[Int64(selectedTmpBuf_BufUBufCounterI)] = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                selectedTmpBuf_ = Union_Number_Array_Number_Bindable_Bindable(selectedTmpBuf_BufU)
            } else if (selectedTmpBuf_UnionSelector == Int8(2)) {
                selectedTmpBuf_ = Union_Number_Array_Number_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (selectedTmpBuf_UnionSelector == Int8(3)) {
                selectedTmpBuf_ = Union_Number_Array_Number_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for selectedTmpBuf_ has to be chosen through deserialisation.")
            }
            selectedTmpBuf = match (selectedTmpBuf_ as Union_Number_Array_Number_Bindable_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedTmpResult: Option<Union_Number_Array_Number_Bindable_Bindable> = selectedTmpBuf
        let columnWidthsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var columnWidthsTmpBuf: Option<ArrayList<LengthMetrics>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(columnWidthsTmpBuf_runtimeType))) {
            let columnWidthsTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var columnWidthsTmpBuf_: ArrayList<LengthMetrics> = ArrayList<LengthMetrics>(Int64(columnWidthsTmpBuf_Length))
            columnWidthsTmpBuf_ = ArrayList<LengthMetrics>(Int64(columnWidthsTmpBuf_Length))
            for (columnWidthsTmpBuf_BufCounterI in 0..columnWidthsTmpBuf_Length) {
                columnWidthsTmpBuf_[Int64(columnWidthsTmpBuf_BufCounterI)] = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            columnWidthsTmpBuf = columnWidthsTmpBuf_
        }
        let columnWidthsTmpResult: Option<ArrayList<LengthMetrics>> = columnWidthsTmpBuf
        let defaultPickerItemHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var defaultPickerItemHeightTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(defaultPickerItemHeightTmpBuf_runtimeType))) {
            let defaultPickerItemHeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var defaultPickerItemHeightTmpBuf_: Union_Number_String 
            if (defaultPickerItemHeightTmpBuf_UnionSelector == Int8(0)) {
                defaultPickerItemHeightTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (defaultPickerItemHeightTmpBuf_UnionSelector == Int8(1)) {
                defaultPickerItemHeightTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for defaultPickerItemHeightTmpBuf_ has to be chosen through deserialisation.")
            }
            defaultPickerItemHeightTmpBuf = match (defaultPickerItemHeightTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let defaultPickerItemHeightTmpResult: Option<Union_Number_String> = defaultPickerItemHeightTmpBuf
        let canLoopTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var canLoopTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(canLoopTmpBuf_runtimeType))) {
            canLoopTmpBuf = valueDeserializer.readBoolean()
        }
        let canLoopTmpResult: Option<Bool> = canLoopTmpBuf
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
        let disableTextStyleAnimationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disableTextStyleAnimationTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disableTextStyleAnimationTmpBuf_runtimeType))) {
            disableTextStyleAnimationTmpBuf = valueDeserializer.readBoolean()
        }
        let disableTextStyleAnimationTmpResult: Option<Bool> = disableTextStyleAnimationTmpBuf
        let defaultTextStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var defaultTextStyleTmpBuf: Option<TextPickerTextStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(defaultTextStyleTmpBuf_runtimeType))) {
            defaultTextStyleTmpBuf = TextPickerTextStyle_serializer.read(valueDeserializer)
        }
        let defaultTextStyleTmpResult: Option<TextPickerTextStyle> = defaultTextStyleTmpBuf
        let onAcceptTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onAcceptTmpBuf: Option<((value: TextPickerResult) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onAcceptTmpBuf_runtimeType))) {
            let onAcceptTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onAcceptTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onAcceptTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onAcceptTmpBuf = {value: TextPickerResult => let onAcceptTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onAcceptTmpBuf_BufArgsSerializer.writeInt32(onAcceptTmpBuf_BufResource.resourceId);
onAcceptTmpBuf_BufArgsSerializer.writePointer(onAcceptTmpBuf_BufCall);
onAcceptTmpBuf_BufArgsSerializer.writePointer(onAcceptTmpBuf_BufCallSync);
TextPickerResult_serializer.write(onAcceptTmpBuf_BufArgsSerializer, value);
InteropNativeModule._CallCallback(1290504509, onAcceptTmpBuf_BufArgsSerializer.asBuffer(), onAcceptTmpBuf_BufArgsSerializer.length());
onAcceptTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onAcceptTmpResult: Option<((value: TextPickerResult) -> Unit)> = onAcceptTmpBuf
        let onCancelTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onCancelTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onCancelTmpBuf_runtimeType))) {
            let onCancelTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onCancelTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onCancelTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onCancelTmpBuf = { => let onCancelTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onCancelTmpBuf_BufArgsSerializer.writeInt32(onCancelTmpBuf_BufResource.resourceId);
onCancelTmpBuf_BufArgsSerializer.writePointer(onCancelTmpBuf_BufCall);
onCancelTmpBuf_BufArgsSerializer.writePointer(onCancelTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onCancelTmpBuf_BufArgsSerializer.asBuffer(), onCancelTmpBuf_BufArgsSerializer.length());
onCancelTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onCancelTmpResult: Option<(() -> Unit)> = onCancelTmpBuf
        let onChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onChangeTmpBuf: Option<((value: TextPickerResult) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onChangeTmpBuf_runtimeType))) {
            let onChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onChangeTmpBuf = {value: TextPickerResult => let onChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onChangeTmpBuf_BufArgsSerializer.writeInt32(onChangeTmpBuf_BufResource.resourceId);
onChangeTmpBuf_BufArgsSerializer.writePointer(onChangeTmpBuf_BufCall);
onChangeTmpBuf_BufArgsSerializer.writePointer(onChangeTmpBuf_BufCallSync);
TextPickerResult_serializer.write(onChangeTmpBuf_BufArgsSerializer, value);
InteropNativeModule._CallCallback(1290504509, onChangeTmpBuf_BufArgsSerializer.asBuffer(), onChangeTmpBuf_BufArgsSerializer.length());
onChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onChangeTmpResult: Option<((value: TextPickerResult) -> Unit)> = onChangeTmpBuf
        let onScrollStopTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onScrollStopTmpBuf: Option<((value: TextPickerResult) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onScrollStopTmpBuf_runtimeType))) {
            let onScrollStopTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onScrollStopTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onScrollStopTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onScrollStopTmpBuf = {value: TextPickerResult => let onScrollStopTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onScrollStopTmpBuf_BufArgsSerializer.writeInt32(onScrollStopTmpBuf_BufResource.resourceId);
onScrollStopTmpBuf_BufArgsSerializer.writePointer(onScrollStopTmpBuf_BufCall);
onScrollStopTmpBuf_BufArgsSerializer.writePointer(onScrollStopTmpBuf_BufCallSync);
TextPickerResult_serializer.write(onScrollStopTmpBuf_BufArgsSerializer, value);
InteropNativeModule._CallCallback(1290504509, onScrollStopTmpBuf_BufArgsSerializer.asBuffer(), onScrollStopTmpBuf_BufArgsSerializer.length());
onScrollStopTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onScrollStopTmpResult: Option<((value: TextPickerResult) -> Unit)> = onScrollStopTmpBuf
        let onEnterSelectedAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onEnterSelectedAreaTmpBuf: Option<((value: TextPickerResult) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onEnterSelectedAreaTmpBuf_runtimeType))) {
            let onEnterSelectedAreaTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onEnterSelectedAreaTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onEnterSelectedAreaTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onEnterSelectedAreaTmpBuf = {value: TextPickerResult => let onEnterSelectedAreaTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onEnterSelectedAreaTmpBuf_BufArgsSerializer.writeInt32(onEnterSelectedAreaTmpBuf_BufResource.resourceId);
onEnterSelectedAreaTmpBuf_BufArgsSerializer.writePointer(onEnterSelectedAreaTmpBuf_BufCall);
onEnterSelectedAreaTmpBuf_BufArgsSerializer.writePointer(onEnterSelectedAreaTmpBuf_BufCallSync);
TextPickerResult_serializer.write(onEnterSelectedAreaTmpBuf_BufArgsSerializer, value);
InteropNativeModule._CallCallback(1290504509, onEnterSelectedAreaTmpBuf_BufArgsSerializer.asBuffer(), onEnterSelectedAreaTmpBuf_BufArgsSerializer.length());
onEnterSelectedAreaTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onEnterSelectedAreaTmpResult: Option<((value: TextPickerResult) -> Unit)> = onEnterSelectedAreaTmpBuf
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
        let enableHapticFeedbackTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHapticFeedbackTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHapticFeedbackTmpBuf_runtimeType))) {
            enableHapticFeedbackTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHapticFeedbackTmpResult: Option<Bool> = enableHapticFeedbackTmpBuf
        let selectedBackgroundStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedBackgroundStyleTmpBuf: Option<PickerBackgroundStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedBackgroundStyleTmpBuf_runtimeType))) {
            selectedBackgroundStyleTmpBuf = PickerBackgroundStyle_serializer.read(valueDeserializer)
        }
        let selectedBackgroundStyleTmpResult: Option<PickerBackgroundStyle> = selectedBackgroundStyleTmpBuf
        var value: TextPickerDialogOptions = TextPickerDialogOptions(defaultPickerItemHeightTmpResult, canLoopTmpResult, disappearTextStyleTmpResult, textStyleTmpResult, acceptButtonStyleTmpResult, cancelButtonStyleTmpResult, selectedTextStyleTmpResult, disableTextStyleAnimationTmpResult, defaultTextStyleTmpResult, onAcceptTmpResult, onCancelTmpResult, onChangeTmpResult, onScrollStopTmpResult, onEnterSelectedAreaTmpResult, maskRectTmpResult, alignmentTmpResult, offsetTmpResult, backgroundColorTmpResult, backgroundBlurStyleTmpResult, backgroundBlurStyleOptionsTmpResult, backgroundEffectTmpResult, onDidAppearTmpResult, onDidDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult, shadowTmpResult, enableHoverModeTmpResult, hoverModeAreaTmpResult, enableHapticFeedbackTmpResult, selectedBackgroundStyleTmpResult, rangeTmpResult, valueTmpResult, selectedTmpResult, columnWidthsTmpResult)
        return value
    }
}
