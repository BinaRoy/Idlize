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
public interface LocalizedAlignRuleOptionsInterfaces <:  {
    public mut open prop start: Option<LocalizedHorizontalAlignParam>
    public mut open prop end: Option<LocalizedHorizontalAlignParam>
    public mut open prop middle: Option<LocalizedHorizontalAlignParam>
    public mut open prop top: Option<LocalizedVerticalAlignParam>
    public mut open prop bottom: Option<LocalizedVerticalAlignParam>
    public mut open prop center: Option<LocalizedVerticalAlignParam>
    public mut open prop bias: Option<Bias>
}
public open class LocalizedAlignRuleOptions <: LocalizedAlignRuleOptionsInterfaces {
    private var start_container: Option<LocalizedHorizontalAlignParam>
    public mut open prop start: Option<LocalizedHorizontalAlignParam>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Option<LocalizedHorizontalAlignParam>
    public mut open prop end: Option<LocalizedHorizontalAlignParam>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var middle_container: Option<LocalizedHorizontalAlignParam>
    public mut open prop middle: Option<LocalizedHorizontalAlignParam>
    {
        get() {
            return middle_container
        }
        set(middle) {
            middle_container = middle
        }
    }
    private var top_container: Option<LocalizedVerticalAlignParam>
    public mut open prop top: Option<LocalizedVerticalAlignParam>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var bottom_container: Option<LocalizedVerticalAlignParam>
    public mut open prop bottom: Option<LocalizedVerticalAlignParam>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var center_container: Option<LocalizedVerticalAlignParam>
    public mut open prop center: Option<LocalizedVerticalAlignParam>
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
    LocalizedAlignRuleOptions(start: Option<LocalizedHorizontalAlignParam>, end: Option<LocalizedHorizontalAlignParam>, middle: Option<LocalizedHorizontalAlignParam>, top: Option<LocalizedVerticalAlignParam>, bottom: Option<LocalizedVerticalAlignParam>, center: Option<LocalizedVerticalAlignParam>, bias: Option<Bias>) {
        this.start_container = start
        this.end_container = end
        this.middle_container = middle
        this.top_container = top
        this.bottom_container = bottom
        this.center_container = center
        this.bias_container = bias
    }
}
public open class LocalizedAlignRuleOptions_serializer {
    public static func write(buffer: SerializerBase, value: LocalizedAlignRuleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            LocalizedHorizontalAlignParam_serializer.write(valueSerializer, valueHolderForStartTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            LocalizedHorizontalAlignParam_serializer.write(valueSerializer, valueHolderForEndTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMiddle = value.middle
        if (valueHolderForMiddle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMiddleTmpValue = valueHolderForMiddle
            LocalizedHorizontalAlignParam_serializer.write(valueSerializer, valueHolderForMiddleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            LocalizedVerticalAlignParam_serializer.write(valueSerializer, valueHolderForTopTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (valueHolderForBottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            LocalizedVerticalAlignParam_serializer.write(valueSerializer, valueHolderForBottomTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCenter = value.center
        if (valueHolderForCenter.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCenterTmpValue = valueHolderForCenter
            LocalizedVerticalAlignParam_serializer.write(valueSerializer, valueHolderForCenterTmpValue);
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
    public static func read(buffer: DeserializerBase): LocalizedAlignRuleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<LocalizedHorizontalAlignParam> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = LocalizedHorizontalAlignParam_serializer.read(valueDeserializer)
        }
        let startTmpResult: Option<LocalizedHorizontalAlignParam> = startTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<LocalizedHorizontalAlignParam> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            endTmpBuf = LocalizedHorizontalAlignParam_serializer.read(valueDeserializer)
        }
        let endTmpResult: Option<LocalizedHorizontalAlignParam> = endTmpBuf
        let middleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var middleTmpBuf: Option<LocalizedHorizontalAlignParam> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(middleTmpBuf_runtimeType))) {
            middleTmpBuf = LocalizedHorizontalAlignParam_serializer.read(valueDeserializer)
        }
        let middleTmpResult: Option<LocalizedHorizontalAlignParam> = middleTmpBuf
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<LocalizedVerticalAlignParam> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            topTmpBuf = LocalizedVerticalAlignParam_serializer.read(valueDeserializer)
        }
        let topTmpResult: Option<LocalizedVerticalAlignParam> = topTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<LocalizedVerticalAlignParam> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            bottomTmpBuf = LocalizedVerticalAlignParam_serializer.read(valueDeserializer)
        }
        let bottomTmpResult: Option<LocalizedVerticalAlignParam> = bottomTmpBuf
        let centerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var centerTmpBuf: Option<LocalizedVerticalAlignParam> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(centerTmpBuf_runtimeType))) {
            centerTmpBuf = LocalizedVerticalAlignParam_serializer.read(valueDeserializer)
        }
        let centerTmpResult: Option<LocalizedVerticalAlignParam> = centerTmpBuf
        let biasTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var biasTmpBuf: Option<Bias> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(biasTmpBuf_runtimeType))) {
            biasTmpBuf = Bias_serializer.read(valueDeserializer)
        }
        let biasTmpResult: Option<Bias> = biasTmpBuf
        var value: LocalizedAlignRuleOptions = LocalizedAlignRuleOptions(startTmpResult, endTmpResult, middleTmpResult, topTmpResult, bottomTmpResult, centerTmpResult, biasTmpResult)
        return value
    }
}
