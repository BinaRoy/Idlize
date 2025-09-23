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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public open class TextPickerDialogOptions <: TextPickerOptions {
    public var defaultPickerItemHeight: Option<Float64>
    public var canLoop: Option<Bool>
    public var disappearTextStyle: Option<Any>
    public var textStyle: Option<Any>
    public var acceptButtonStyle: Option<Any>
    public var cancelButtonStyle: Option<Any>
    public var selectedTextStyle: Option<Any>
    public var onAccept: Option<((value: TextPickerResult) -> Unit)>
    public var onCancel: Option<(() -> Unit)>
    public var onChange: Option<((value: TextPickerResult) -> Unit)>
    public var onScrollStop: Option<((value: TextPickerResult) -> Unit)>
    public var maskRect: Option<Rectangle>
    public var alignment: Option<Any>
    public var offset: Option<Offset>
    public var backgroundColor: Option<ResourceColor>
    public var backgroundBlurStyle: Option<BlurStyle>
    public var onDidAppear: Option<(() -> Unit)>
    public var onDidDisappear: Option<(() -> Unit)>
    public var onWillAppear: Option<(() -> Unit)>
    public var onWillDisappear: Option<(() -> Unit)>
    public var shadow: Option<Any>
    public var enableHoverMode: Option<Bool>
    public var hoverModeArea: Option<Any>
    init(defaultPickerItemHeight: Option<Float64>, canLoop: Option<Bool>, disappearTextStyle: Option<Any>, textStyle: Option<Any>, acceptButtonStyle: Option<Any>, cancelButtonStyle: Option<Any>, selectedTextStyle: Option<Any>, onAccept: Option<((value: TextPickerResult) -> Unit)>, onCancel: Option<(() -> Unit)>, onChange: Option<((value: TextPickerResult) -> Unit)>, onScrollStop: Option<((value: TextPickerResult) -> Unit)>, maskRect: Option<Rectangle>, alignment: Option<Any>, offset: Option<Offset>, backgroundColor: Option<ResourceColor>, backgroundBlurStyle: Option<BlurStyle>, onDidAppear: Option<(() -> Unit)>, onDidDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>, shadow: Option<Any>, enableHoverMode: Option<Bool>, hoverModeArea: Option<Any>, range: Option<ArrayList<String>>, value: Option<String>, selected: Option<Float64>) {
        super(range, value, selected)
        this.defaultPickerItemHeight = defaultPickerItemHeight
        this.canLoop = canLoop
        this.disappearTextStyle = disappearTextStyle
        this.textStyle = textStyle
        this.acceptButtonStyle = acceptButtonStyle
        this.cancelButtonStyle = cancelButtonStyle
        this.selectedTextStyle = selectedTextStyle
        this.onAccept = onAccept
        this.onCancel = onCancel
        this.onChange = onChange
        this.onScrollStop = onScrollStop
        this.maskRect = maskRect
        this.alignment = alignment
        this.offset = offset
        this.backgroundColor = backgroundColor
        this.backgroundBlurStyle = backgroundBlurStyle
        this.onDidAppear = onDidAppear
        this.onDidDisappear = onDidDisappear
        this.onWillAppear = onWillAppear
        this.onWillDisappear = onWillDisappear
        this.shadow = shadow
        this.enableHoverMode = enableHoverMode
        this.hoverModeArea = hoverModeArea
        this.range = range
        this.value = value
        this.selected = selected
    }
}
public class TextPickerDialogOptions_serializer {
    public  static func write(buffer: SerializerBase, value: TextPickerDialogOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRange = value.range
        if (let Some(valueHolderForRange) <- valueHolderForRange) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForRangeTmpValue = valueHolderForRange
            valueSerializer.writeInt32(Int32(valueHolderForRangeTmpValue.size))
            for (valueHolderForRangeTmpValueCounterI in 0..valueHolderForRangeTmpValue.size) {
                let valueHolderForRangeTmpValueTmpElement: String = valueHolderForRangeTmpValue[Int64(valueHolderForRangeTmpValueCounterI)]
                valueSerializer.writeString(valueHolderForRangeTmpValueTmpElement)
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForValue = value.value
        if (let Some(valueHolderForValue) <- valueHolderForValue) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForValueTmpValue = valueHolderForValue
            valueSerializer.writeString(valueHolderForValueTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForSelected = value.selected
        if (let Some(valueHolderForSelected) <- valueHolderForSelected) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSelectedTmpValue = valueHolderForSelected
            valueSerializer.writeNumber(valueHolderForSelectedTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForDefaultPickerItemHeight = value.defaultPickerItemHeight
        if (let Some(valueHolderForDefaultPickerItemHeight) <- valueHolderForDefaultPickerItemHeight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForDefaultPickerItemHeightTmpValue = valueHolderForDefaultPickerItemHeight
            valueSerializer.writeNumber(valueHolderForDefaultPickerItemHeightTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForCanLoop = value.canLoop
        if (let Some(valueHolderForCanLoop) <- valueHolderForCanLoop) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForCanLoopTmpValue = valueHolderForCanLoop
            valueSerializer.writeBoolean(valueHolderForCanLoopTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForDisappearTextStyle = value.disappearTextStyle
        if (let Some(valueHolderForDisappearTextStyle) <- valueHolderForDisappearTextStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForDisappearTextStyleTmpValue = valueHolderForDisappearTextStyle
            valueSerializer.writeCustomObject("Any", valueHolderForDisappearTextStyleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForTextStyle = value.textStyle
        if (let Some(valueHolderForTextStyle) <- valueHolderForTextStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTextStyleTmpValue = valueHolderForTextStyle
            valueSerializer.writeCustomObject("Any", valueHolderForTextStyleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForAcceptButtonStyle = value.acceptButtonStyle
        if (let Some(valueHolderForAcceptButtonStyle) <- valueHolderForAcceptButtonStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForAcceptButtonStyleTmpValue = valueHolderForAcceptButtonStyle
            valueSerializer.writeCustomObject("Any", valueHolderForAcceptButtonStyleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForCancelButtonStyle = value.cancelButtonStyle
        if (let Some(valueHolderForCancelButtonStyle) <- valueHolderForCancelButtonStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForCancelButtonStyleTmpValue = valueHolderForCancelButtonStyle
            valueSerializer.writeCustomObject("Any", valueHolderForCancelButtonStyleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForSelectedTextStyle = value.selectedTextStyle
        if (let Some(valueHolderForSelectedTextStyle) <- valueHolderForSelectedTextStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSelectedTextStyleTmpValue = valueHolderForSelectedTextStyle
            valueSerializer.writeCustomObject("Any", valueHolderForSelectedTextStyleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnAccept = value.onAccept
        if (let Some(valueHolderForOnAccept) <- valueHolderForOnAccept) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnAcceptTmpValue = valueHolderForOnAccept
            valueSerializer.holdAndWriteCallback(valueHolderForOnAcceptTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnCancel = value.onCancel
        if (let Some(valueHolderForOnCancel) <- valueHolderForOnCancel) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnCancelTmpValue = valueHolderForOnCancel
            valueSerializer.holdAndWriteCallback(valueHolderForOnCancelTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnChange = value.onChange
        if (let Some(valueHolderForOnChange) <- valueHolderForOnChange) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnChangeTmpValue = valueHolderForOnChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnChangeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnScrollStop = value.onScrollStop
        if (let Some(valueHolderForOnScrollStop) <- valueHolderForOnScrollStop) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnScrollStopTmpValue = valueHolderForOnScrollStop
            valueSerializer.holdAndWriteCallback(valueHolderForOnScrollStopTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForMaskRect = value.maskRect
        if (let Some(valueHolderForMaskRect) <- valueHolderForMaskRect) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForMaskRectTmpValue = valueHolderForMaskRect
            Rectangle_serializer.write(valueSerializer, valueHolderForMaskRectTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForAlignment = value.alignment
        if (let Some(valueHolderForAlignment) <- valueHolderForAlignment) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForAlignmentTmpValue = valueHolderForAlignment
            valueSerializer.writeCustomObject("Any", valueHolderForAlignmentTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOffset = value.offset
        if (let Some(valueHolderForOffset) <- valueHolderForOffset) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            let valueHolderForOffsetTmpValueDx = valueHolderForOffsetTmpValue.dx
            if (valueHolderForOffsetTmpValueDx.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForOffsetTmpValueDxForIdx0 = valueHolderForOffsetTmpValueDx.getValue0()
                valueSerializer.writeString(valueHolderForOffsetTmpValueDxForIdx0)
            } else if (valueHolderForOffsetTmpValueDx.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForOffsetTmpValueDxForIdx1 = valueHolderForOffsetTmpValueDx.getValue1()
                valueSerializer.writeNumber(valueHolderForOffsetTmpValueDxForIdx1)
            } else if (valueHolderForOffsetTmpValueDx.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForOffsetTmpValueDxForIdx2 = valueHolderForOffsetTmpValueDx.getValue2()
                Resource_serializer.write(valueSerializer, valueHolderForOffsetTmpValueDxForIdx2)
            } else {
                throw Exception("One of the branches for valueHolderForOffsetTmpValueDx has to be chosen for serialisation.")
            }
            let valueHolderForOffsetTmpValueDy = valueHolderForOffsetTmpValue.dy
            if (valueHolderForOffsetTmpValueDy.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForOffsetTmpValueDyForIdx0 = valueHolderForOffsetTmpValueDy.getValue0()
                valueSerializer.writeString(valueHolderForOffsetTmpValueDyForIdx0)
            } else if (valueHolderForOffsetTmpValueDy.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForOffsetTmpValueDyForIdx1 = valueHolderForOffsetTmpValueDy.getValue1()
                valueSerializer.writeNumber(valueHolderForOffsetTmpValueDyForIdx1)
            } else if (valueHolderForOffsetTmpValueDy.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForOffsetTmpValueDyForIdx2 = valueHolderForOffsetTmpValueDy.getValue2()
                Resource_serializer.write(valueSerializer, valueHolderForOffsetTmpValueDyForIdx2)
            } else {
                throw Exception("One of the branches for valueHolderForOffsetTmpValueDy has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBackgroundColor = value.backgroundColor
        if (let Some(valueHolderForBackgroundColor) <- valueHolderForBackgroundColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor
            if (valueHolderForBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBackgroundColorTmpValueForIdx0.get())
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1)
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2)
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3))
                let valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.getValue3()
                Resource_serializer.write(valueSerializer, valueHolderForBackgroundColorTmpValueForIdx3)
            } else {
                throw Exception("One of the branches for valueHolderForBackgroundColorTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBackgroundBlurStyle = value.backgroundBlurStyle
        if (let Some(valueHolderForBackgroundBlurStyle) <- valueHolderForBackgroundBlurStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBackgroundBlurStyleTmpValue = valueHolderForBackgroundBlurStyle
            valueSerializer.writeInt32(valueHolderForBackgroundBlurStyleTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnDidAppear = value.onDidAppear
        if (let Some(valueHolderForOnDidAppear) <- valueHolderForOnDidAppear) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnDidAppearTmpValue = valueHolderForOnDidAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDidAppearTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnDidDisappear = value.onDidDisappear
        if (let Some(valueHolderForOnDidDisappear) <- valueHolderForOnDidDisappear) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnDidDisappearTmpValue = valueHolderForOnDidDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDidDisappearTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnWillAppear = value.onWillAppear
        if (let Some(valueHolderForOnWillAppear) <- valueHolderForOnWillAppear) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnWillAppearTmpValue = valueHolderForOnWillAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillAppearTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnWillDisappear = value.onWillDisappear
        if (let Some(valueHolderForOnWillDisappear) <- valueHolderForOnWillDisappear) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnWillDisappearTmpValue = valueHolderForOnWillDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillDisappearTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForShadow = value.shadow
        if (let Some(valueHolderForShadow) <- valueHolderForShadow) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForShadowTmpValue = valueHolderForShadow
            valueSerializer.writeCustomObject("Any", valueHolderForShadowTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForEnableHoverMode = value.enableHoverMode
        if (let Some(valueHolderForEnableHoverMode) <- valueHolderForEnableHoverMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForEnableHoverModeTmpValue = valueHolderForEnableHoverMode
            valueSerializer.writeBoolean(valueHolderForEnableHoverModeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForHoverModeArea = value.hoverModeArea
        if (let Some(valueHolderForHoverModeArea) <- valueHolderForHoverModeArea) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForHoverModeAreaTmpValue = valueHolderForHoverModeArea
            valueSerializer.writeCustomObject("Any", valueHolderForHoverModeAreaTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): TextPickerDialogOptions {
        var valueDeserializer: DeserializerBase = buffer
        let rangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rangeTmpBuf: Option<ArrayList<String>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rangeTmpBuf_runtimeType))) {
            let rangeTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var rangeTmpBuf_: ArrayList<String> = ArrayList<String>(Int64(rangeTmpBuf_Length))
            rangeTmpBuf_ = ArrayList<String>(Int64(rangeTmpBuf_Length))
            for (rangeTmpBuf_BufCounterI in 0..rangeTmpBuf_Length) {
                rangeTmpBuf_[Int64(rangeTmpBuf_BufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            rangeTmpBuf = rangeTmpBuf_
        }
        let rangeTmpResult: Option<ArrayList<String>> = rangeTmpBuf
        let valueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueTmpBuf_runtimeType))) {
            valueTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueTmpResult: Option<String> = valueTmpBuf
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            selectedTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedTmpResult: Option<Float64> = selectedTmpBuf
        let defaultPickerItemHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var defaultPickerItemHeightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(defaultPickerItemHeightTmpBuf_runtimeType))) {
            defaultPickerItemHeightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let defaultPickerItemHeightTmpResult: Option<Float64> = defaultPickerItemHeightTmpBuf
        let canLoopTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var canLoopTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(canLoopTmpBuf_runtimeType))) {
            canLoopTmpBuf = valueDeserializer.readBoolean()
        }
        let canLoopTmpResult: Option<Bool> = canLoopTmpBuf
        let disappearTextStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disappearTextStyleTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disappearTextStyleTmpBuf_runtimeType))) {
            disappearTextStyleTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let disappearTextStyleTmpResult: Option<Any> = disappearTextStyleTmpBuf
        let textStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textStyleTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textStyleTmpBuf_runtimeType))) {
            textStyleTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let textStyleTmpResult: Option<Any> = textStyleTmpBuf
        let acceptButtonStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var acceptButtonStyleTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(acceptButtonStyleTmpBuf_runtimeType))) {
            acceptButtonStyleTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let acceptButtonStyleTmpResult: Option<Any> = acceptButtonStyleTmpBuf
        let cancelButtonStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var cancelButtonStyleTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(cancelButtonStyleTmpBuf_runtimeType))) {
            cancelButtonStyleTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let cancelButtonStyleTmpResult: Option<Any> = cancelButtonStyleTmpBuf
        let selectedTextStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTextStyleTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTextStyleTmpBuf_runtimeType))) {
            selectedTextStyleTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedTextStyleTmpResult: Option<Any> = selectedTextStyleTmpBuf
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
        let maskRectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskRectTmpBuf: Option<Rectangle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskRectTmpBuf_runtimeType))) {
            maskRectTmpBuf = Rectangle_serializer.read(valueDeserializer)
        }
        let maskRectTmpResult: Option<Rectangle> = maskRectTmpBuf
        let alignmentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var alignmentTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(alignmentTmpBuf_runtimeType))) {
            alignmentTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let alignmentTmpResult: Option<Any> = alignmentTmpBuf
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Offset> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            let offsetTmpBuf_DxTempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetTmpBuf_DxTempBuf: Length 
            if (offsetTmpBuf_DxTempBufUnionSelector == Int8(0)) {
                offsetTmpBuf_DxTempBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetTmpBuf_DxTempBufUnionSelector == Int8(1)) {
                offsetTmpBuf_DxTempBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetTmpBuf_DxTempBufUnionSelector == Int8(2)) {
                offsetTmpBuf_DxTempBuf = Length(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for offsetTmpBuf_DxTempBuf has to be chosen through deserialisation.")
            }
            let offsetTmpBuf_Dx: Length = match (offsetTmpBuf_DxTempBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let offsetTmpBuf_DyTempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetTmpBuf_DyTempBuf: Length 
            if (offsetTmpBuf_DyTempBufUnionSelector == Int8(0)) {
                offsetTmpBuf_DyTempBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetTmpBuf_DyTempBufUnionSelector == Int8(1)) {
                offsetTmpBuf_DyTempBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetTmpBuf_DyTempBufUnionSelector == Int8(2)) {
                offsetTmpBuf_DyTempBuf = Length(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for offsetTmpBuf_DyTempBuf has to be chosen through deserialisation.")
            }
            let offsetTmpBuf_Dy: Length = match (offsetTmpBuf_DyTempBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            offsetTmpBuf = Offset(offsetTmpBuf_Dx, offsetTmpBuf_Dy)
        }
        let offsetTmpResult: Option<Offset> = offsetTmpBuf
        let backgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundColorTmpBuf_runtimeType))) {
            let backgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundColorTmpBuf_: ResourceColor 
            if (backgroundColorTmpBuf_UnionSelector == Int8(0)) {
                backgroundColorTmpBuf_ = ResourceColor(Color.parse(valueDeserializer.readInt32()))
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(1)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(2)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(3)) {
                backgroundColorTmpBuf_ = ResourceColor(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            backgroundColorTmpBuf = match (backgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundColorTmpResult: Option<ResourceColor> = backgroundColorTmpBuf
        let backgroundBlurStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundBlurStyleTmpBuf: Option<BlurStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundBlurStyleTmpBuf_runtimeType))) {
            backgroundBlurStyleTmpBuf = BlurStyle.parse(valueDeserializer.readInt32())
        }
        let backgroundBlurStyleTmpResult: Option<BlurStyle> = backgroundBlurStyleTmpBuf
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
        var shadowTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(shadowTmpBuf_runtimeType))) {
            shadowTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let shadowTmpResult: Option<Any> = shadowTmpBuf
        let enableHoverModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHoverModeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHoverModeTmpBuf_runtimeType))) {
            enableHoverModeTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHoverModeTmpResult: Option<Bool> = enableHoverModeTmpBuf
        let hoverModeAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hoverModeAreaTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hoverModeAreaTmpBuf_runtimeType))) {
            hoverModeAreaTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let hoverModeAreaTmpResult: Option<Any> = hoverModeAreaTmpBuf
        var value: TextPickerDialogOptions = TextPickerDialogOptions(defaultPickerItemHeightTmpResult, canLoopTmpResult, disappearTextStyleTmpResult, textStyleTmpResult, acceptButtonStyleTmpResult, cancelButtonStyleTmpResult, selectedTextStyleTmpResult, onAcceptTmpResult, onCancelTmpResult, onChangeTmpResult, onScrollStopTmpResult, maskRectTmpResult, alignmentTmpResult, offsetTmpResult, backgroundColorTmpResult, backgroundBlurStyleTmpResult, onDidAppearTmpResult, onDidDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult, shadowTmpResult, enableHoverModeTmpResult, hoverModeAreaTmpResult, rangeTmpResult, valueTmpResult, selectedTmpResult)
        return value
    }
}
