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
public interface AlignRuleOptionInterfaces <:  {
    public mut open prop left: Option<Literal_String_anchor_HorizontalAlign_align>
    public mut open prop right: Option<Literal_String_anchor_HorizontalAlign_align>
    public mut open prop middle: Option<Literal_String_anchor_HorizontalAlign_align>
    public mut open prop top: Option<Literal_String_anchor_VerticalAlign_align>
    public mut open prop bottom: Option<Literal_String_anchor_VerticalAlign_align>
    public mut open prop center: Option<Literal_String_anchor_VerticalAlign_align>
    public mut open prop bias: Option<Bias>
}
public open class AlignRuleOption <: AlignRuleOptionInterfaces {
    private var left_container: Option<Literal_String_anchor_HorizontalAlign_align>
    public mut open prop left: Option<Literal_String_anchor_HorizontalAlign_align>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    private var right_container: Option<Literal_String_anchor_HorizontalAlign_align>
    public mut open prop right: Option<Literal_String_anchor_HorizontalAlign_align>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    private var middle_container: Option<Literal_String_anchor_HorizontalAlign_align>
    public mut open prop middle: Option<Literal_String_anchor_HorizontalAlign_align>
    {
        get() {
            return middle_container
        }
        set(middle) {
            middle_container = middle
        }
    }
    private var top_container: Option<Literal_String_anchor_VerticalAlign_align>
    public mut open prop top: Option<Literal_String_anchor_VerticalAlign_align>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var bottom_container: Option<Literal_String_anchor_VerticalAlign_align>
    public mut open prop bottom: Option<Literal_String_anchor_VerticalAlign_align>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var center_container: Option<Literal_String_anchor_VerticalAlign_align>
    public mut open prop center: Option<Literal_String_anchor_VerticalAlign_align>
    {
        get() {
            return center_container
        }
        set(center) {
            center_container = center
        }
    }
    private var bias_container: Option<Bias>
    public mut open prop bias: Option<Bias>
    {
        get() {
            return bias_container
        }
        set(bias) {
            bias_container = bias
        }
    }
    AlignRuleOption(left: Option<Literal_String_anchor_HorizontalAlign_align>, right: Option<Literal_String_anchor_HorizontalAlign_align>, middle: Option<Literal_String_anchor_HorizontalAlign_align>, top: Option<Literal_String_anchor_VerticalAlign_align>, bottom: Option<Literal_String_anchor_VerticalAlign_align>, center: Option<Literal_String_anchor_VerticalAlign_align>, bias: Option<Bias>) {
        this.left_container = left
        this.right_container = right
        this.middle_container = middle
        this.top_container = top
        this.bottom_container = bottom
        this.center_container = center
        this.bias_container = bias
    }
}
public open class AlignRuleOption_serializer {
    public static func write(buffer: SerializerBase, value: AlignRuleOption): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForLeft = value.left
        if (valueHolderForLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeftTmpValue = valueHolderForLeft
            let valueHolderForLeftTmpValueAnchor = valueHolderForLeftTmpValue.anchor
            valueSerializer.writeString(valueHolderForLeftTmpValueAnchor);
            let valueHolderForLeftTmpValueAlign = valueHolderForLeftTmpValue.align
            valueSerializer.writeInt32(valueHolderForLeftTmpValueAlign.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRight = value.right
        if (valueHolderForRight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRightTmpValue = valueHolderForRight
            let valueHolderForRightTmpValueAnchor = valueHolderForRightTmpValue.anchor
            valueSerializer.writeString(valueHolderForRightTmpValueAnchor);
            let valueHolderForRightTmpValueAlign = valueHolderForRightTmpValue.align
            valueSerializer.writeInt32(valueHolderForRightTmpValueAlign.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMiddle = value.middle
        if (valueHolderForMiddle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMiddleTmpValue = valueHolderForMiddle
            let valueHolderForMiddleTmpValueAnchor = valueHolderForMiddleTmpValue.anchor
            valueSerializer.writeString(valueHolderForMiddleTmpValueAnchor);
            let valueHolderForMiddleTmpValueAlign = valueHolderForMiddleTmpValue.align
            valueSerializer.writeInt32(valueHolderForMiddleTmpValueAlign.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            let valueHolderForTopTmpValueAnchor = valueHolderForTopTmpValue.anchor
            valueSerializer.writeString(valueHolderForTopTmpValueAnchor);
            let valueHolderForTopTmpValueAlign = valueHolderForTopTmpValue.align
            valueSerializer.writeInt32(valueHolderForTopTmpValueAlign.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (valueHolderForBottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            let valueHolderForBottomTmpValueAnchor = valueHolderForBottomTmpValue.anchor
            valueSerializer.writeString(valueHolderForBottomTmpValueAnchor);
            let valueHolderForBottomTmpValueAlign = valueHolderForBottomTmpValue.align
            valueSerializer.writeInt32(valueHolderForBottomTmpValueAlign.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCenter = value.center
        if (valueHolderForCenter.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCenterTmpValue = valueHolderForCenter
            let valueHolderForCenterTmpValueAnchor = valueHolderForCenterTmpValue.anchor
            valueSerializer.writeString(valueHolderForCenterTmpValueAnchor);
            let valueHolderForCenterTmpValueAlign = valueHolderForCenterTmpValue.align
            valueSerializer.writeInt32(valueHolderForCenterTmpValueAlign.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBias = value.bias
        if (valueHolderForBias.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBiasTmpValue = valueHolderForBias
            Bias_serializer.write(valueSerializer, valueHolderForBiasTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): AlignRuleOption {
        var valueDeserializer: DeserializerBase = buffer
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<Literal_String_anchor_HorizontalAlign_align> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            let leftTmpBuf_Anchor: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let leftTmpBuf_Align: HorizontalAlign = HorizontalAlign(valueDeserializer.readInt32())
            leftTmpBuf = Literal_String_anchor_HorizontalAlign_align(leftTmpBuf__anchor, leftTmpBuf__align)
        }
        let leftTmpResult: Option<Literal_String_anchor_HorizontalAlign_align> = leftTmpBuf
        let rightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rightTmpBuf: Option<Literal_String_anchor_HorizontalAlign_align> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rightTmpBuf_runtimeType))) {
            let rightTmpBuf_Anchor: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let rightTmpBuf_Align: HorizontalAlign = HorizontalAlign(valueDeserializer.readInt32())
            rightTmpBuf = Literal_String_anchor_HorizontalAlign_align(rightTmpBuf__anchor, rightTmpBuf__align)
        }
        let rightTmpResult: Option<Literal_String_anchor_HorizontalAlign_align> = rightTmpBuf
        let middleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var middleTmpBuf: Option<Literal_String_anchor_HorizontalAlign_align> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(middleTmpBuf_runtimeType))) {
            let middleTmpBuf_Anchor: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let middleTmpBuf_Align: HorizontalAlign = HorizontalAlign(valueDeserializer.readInt32())
            middleTmpBuf = Literal_String_anchor_HorizontalAlign_align(middleTmpBuf__anchor, middleTmpBuf__align)
        }
        let middleTmpResult: Option<Literal_String_anchor_HorizontalAlign_align> = middleTmpBuf
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<Literal_String_anchor_VerticalAlign_align> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            let topTmpBuf_Anchor: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let topTmpBuf_Align: VerticalAlign = VerticalAlign(valueDeserializer.readInt32())
            topTmpBuf = Literal_String_anchor_VerticalAlign_align(topTmpBuf__anchor, topTmpBuf__align)
        }
        let topTmpResult: Option<Literal_String_anchor_VerticalAlign_align> = topTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<Literal_String_anchor_VerticalAlign_align> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            let bottomTmpBuf_Anchor: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let bottomTmpBuf_Align: VerticalAlign = VerticalAlign(valueDeserializer.readInt32())
            bottomTmpBuf = Literal_String_anchor_VerticalAlign_align(bottomTmpBuf__anchor, bottomTmpBuf__align)
        }
        let bottomTmpResult: Option<Literal_String_anchor_VerticalAlign_align> = bottomTmpBuf
        let centerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var centerTmpBuf: Option<Literal_String_anchor_VerticalAlign_align> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(centerTmpBuf_runtimeType))) {
            let centerTmpBuf_Anchor: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let centerTmpBuf_Align: VerticalAlign = VerticalAlign(valueDeserializer.readInt32())
            centerTmpBuf = Literal_String_anchor_VerticalAlign_align(centerTmpBuf__anchor, centerTmpBuf__align)
        }
        let centerTmpResult: Option<Literal_String_anchor_VerticalAlign_align> = centerTmpBuf
        let biasTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var biasTmpBuf: Option<Bias> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(biasTmpBuf_runtimeType))) {
            biasTmpBuf = Bias_serializer.read(valueDeserializer)
        }
        let biasTmpResult: Option<Bias> = biasTmpBuf
        var value: AlignRuleOption = AlignRuleOption(leftTmpResult, rightTmpResult, middleTmpResult, topTmpResult, bottomTmpResult, centerTmpResult, biasTmpResult)
        return value
    }
}
