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
public interface TipsOptionsInterfaces <:  {
    public mut open prop appearingTime: Option<Float64>
    public mut open prop disappearingTime: Option<Float64>
    public mut open prop appearingTimeWithContinuousOperation: Option<Float64>
    public mut open prop disappearingTimeWithContinuousOperation: Option<Float64>
    public mut open prop enableArrow: Option<Bool>
    public mut open prop arrowPointPosition: Option<ArrowPointPosition>
    public mut open prop arrowWidth: Option<Dimension>
    public mut open prop arrowHeight: Option<Dimension>
    public mut open prop showAtAnchor: Option<TipsAnchorType>
}
public open class TipsOptions <: TipsOptionsInterfaces {
    private var appearingTime_container: Option<Float64>
    public mut open prop appearingTime: Option<Float64>
    {
        get() {
            return appearingTime_container
        }
        set(appearingTime) {
            appearingTime_container = appearingTime
        }
    }
    private var disappearingTime_container: Option<Float64>
    public mut open prop disappearingTime: Option<Float64>
    {
        get() {
            return disappearingTime_container
        }
        set(disappearingTime) {
            disappearingTime_container = disappearingTime
        }
    }
    private var appearingTimeWithContinuousOperation_container: Option<Float64>
    public mut open prop appearingTimeWithContinuousOperation: Option<Float64>
    {
        get() {
            return appearingTimeWithContinuousOperation_container
        }
        set(appearingTimeWithContinuousOperation) {
            appearingTimeWithContinuousOperation_container = appearingTimeWithContinuousOperation
        }
    }
    private var disappearingTimeWithContinuousOperation_container: Option<Float64>
    public mut open prop disappearingTimeWithContinuousOperation: Option<Float64>
    {
        get() {
            return disappearingTimeWithContinuousOperation_container
        }
        set(disappearingTimeWithContinuousOperation) {
            disappearingTimeWithContinuousOperation_container = disappearingTimeWithContinuousOperation
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
    private var showAtAnchor_container: Option<TipsAnchorType>
    public mut open prop showAtAnchor: Option<TipsAnchorType>
    {
        get() {
            return showAtAnchor_container
        }
        set(showAtAnchor) {
            showAtAnchor_container = showAtAnchor
        }
    }
    TipsOptions(appearingTime: Option<Float64>, disappearingTime: Option<Float64>, appearingTimeWithContinuousOperation: Option<Float64>, disappearingTimeWithContinuousOperation: Option<Float64>, enableArrow: Option<Bool>, arrowPointPosition: Option<ArrowPointPosition>, arrowWidth: Option<Dimension>, arrowHeight: Option<Dimension>, showAtAnchor: Option<TipsAnchorType>) {
        this.appearingTime_container = appearingTime
        this.disappearingTime_container = disappearingTime
        this.appearingTimeWithContinuousOperation_container = appearingTimeWithContinuousOperation
        this.disappearingTimeWithContinuousOperation_container = disappearingTimeWithContinuousOperation
        this.enableArrow_container = enableArrow
        this.arrowPointPosition_container = arrowPointPosition
        this.arrowWidth_container = arrowWidth
        this.arrowHeight_container = arrowHeight
        this.showAtAnchor_container = showAtAnchor
    }
}
public open class TipsOptions_serializer {
    public static func write(buffer: SerializerBase, value: TipsOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAppearingTime = value.appearingTime
        if (valueHolderForAppearingTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAppearingTimeTmpValue = valueHolderForAppearingTime
            valueSerializer.writeNumber(valueHolderForAppearingTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDisappearingTime = value.disappearingTime
        if (valueHolderForDisappearingTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisappearingTimeTmpValue = valueHolderForDisappearingTime
            valueSerializer.writeNumber(valueHolderForDisappearingTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAppearingTimeWithContinuousOperation = value.appearingTimeWithContinuousOperation
        if (valueHolderForAppearingTimeWithContinuousOperation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAppearingTimeWithContinuousOperationTmpValue = valueHolderForAppearingTimeWithContinuousOperation
            valueSerializer.writeNumber(valueHolderForAppearingTimeWithContinuousOperationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDisappearingTimeWithContinuousOperation = value.disappearingTimeWithContinuousOperation
        if (valueHolderForDisappearingTimeWithContinuousOperation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisappearingTimeWithContinuousOperationTmpValue = valueHolderForDisappearingTimeWithContinuousOperation
            valueSerializer.writeNumber(valueHolderForDisappearingTimeWithContinuousOperationTmpValue);
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
        let valueHolderForShowAtAnchor = value.showAtAnchor
        if (valueHolderForShowAtAnchor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowAtAnchorTmpValue = valueHolderForShowAtAnchor
            valueSerializer.writeInt32(valueHolderForShowAtAnchorTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TipsOptions {
        var valueDeserializer: DeserializerBase = buffer
        let appearingTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var appearingTimeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(appearingTimeTmpBuf_runtimeType))) {
            appearingTimeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let appearingTimeTmpResult: Option<Float64> = appearingTimeTmpBuf
        let disappearingTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disappearingTimeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disappearingTimeTmpBuf_runtimeType))) {
            disappearingTimeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let disappearingTimeTmpResult: Option<Float64> = disappearingTimeTmpBuf
        let appearingTimeWithContinuousOperationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var appearingTimeWithContinuousOperationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(appearingTimeWithContinuousOperationTmpBuf_runtimeType))) {
            appearingTimeWithContinuousOperationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let appearingTimeWithContinuousOperationTmpResult: Option<Float64> = appearingTimeWithContinuousOperationTmpBuf
        let disappearingTimeWithContinuousOperationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disappearingTimeWithContinuousOperationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disappearingTimeWithContinuousOperationTmpBuf_runtimeType))) {
            disappearingTimeWithContinuousOperationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let disappearingTimeWithContinuousOperationTmpResult: Option<Float64> = disappearingTimeWithContinuousOperationTmpBuf
        let enableArrowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableArrowTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableArrowTmpBuf_runtimeType))) {
            enableArrowTmpBuf = valueDeserializer.readBoolean()
        }
        let enableArrowTmpResult: Option<Bool> = enableArrowTmpBuf
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
        let showAtAnchorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showAtAnchorTmpBuf: Option<TipsAnchorType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showAtAnchorTmpBuf_runtimeType))) {
            showAtAnchorTmpBuf = TipsAnchorType(valueDeserializer.readInt32())
        }
        let showAtAnchorTmpResult: Option<TipsAnchorType> = showAtAnchorTmpBuf
        var value: TipsOptions = TipsOptions(appearingTimeTmpResult, disappearingTimeTmpResult, appearingTimeWithContinuousOperationTmpResult, disappearingTimeWithContinuousOperationTmpResult, enableArrowTmpResult, arrowPointPositionTmpResult, arrowWidthTmpResult, arrowHeightTmpResult, showAtAnchorTmpResult)
        return value
    }
}
