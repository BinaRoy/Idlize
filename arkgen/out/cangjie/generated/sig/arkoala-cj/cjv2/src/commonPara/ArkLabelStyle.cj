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

public class LabelStyle {
    public var overflow: Option<TextOverflow>
    public var maxLines: Option<Int32>
    public var minFontSize: Option<Float64>
    public var maxFontSize: Option<Float64>
    public var heightAdaptivePolicy: Option<TextHeightAdaptivePolicy>
    public var font: Option<Font>
    init(overflow: Option<TextOverflow>, maxLines: Option<Int32>, minFontSize: Option<Float64>, maxFontSize: Option<Float64>, heightAdaptivePolicy: Option<TextHeightAdaptivePolicy>, font: Option<Font>) {
        this.overflow = overflow
        this.maxLines = maxLines
        this.minFontSize = minFontSize
        this.maxFontSize = maxFontSize
        this.heightAdaptivePolicy = heightAdaptivePolicy
        this.font = font
    }
}
public class LabelStyle_serializer {
    public  static func write(buffer: SerializerBase, value: LabelStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOverflow = value.overflow
        if (let Some(valueHolderForOverflow) <- valueHolderForOverflow) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOverflowTmpValue = valueHolderForOverflow
            valueSerializer.writeInt32(valueHolderForOverflowTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForMaxLines = value.maxLines
        if (let Some(valueHolderForMaxLines) <- valueHolderForMaxLines) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForMaxLinesTmpValue = valueHolderForMaxLines
            valueSerializer.writeInt32(valueHolderForMaxLinesTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForMinFontSize = value.minFontSize
        if (let Some(valueHolderForMinFontSize) <- valueHolderForMinFontSize) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForMinFontSizeTmpValue = valueHolderForMinFontSize
            valueSerializer.writeNumber(valueHolderForMinFontSizeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForMaxFontSize = value.maxFontSize
        if (let Some(valueHolderForMaxFontSize) <- valueHolderForMaxFontSize) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForMaxFontSizeTmpValue = valueHolderForMaxFontSize
            valueSerializer.writeNumber(valueHolderForMaxFontSizeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForHeightAdaptivePolicy = value.heightAdaptivePolicy
        if (let Some(valueHolderForHeightAdaptivePolicy) <- valueHolderForHeightAdaptivePolicy) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForHeightAdaptivePolicyTmpValue = valueHolderForHeightAdaptivePolicy
            valueSerializer.writeInt32(valueHolderForHeightAdaptivePolicyTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForFont = value.font
        if (let Some(valueHolderForFont) <- valueHolderForFont) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForFontTmpValue = valueHolderForFont
            Font_serializer.write(valueSerializer, valueHolderForFontTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): LabelStyle {
        var valueDeserializer: DeserializerBase = buffer
        let overflowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var overflowTmpBuf: Option<TextOverflow> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(overflowTmpBuf_runtimeType))) {
            overflowTmpBuf = TextOverflow.parse(valueDeserializer.readInt32())
        }
        let overflowTmpResult: Option<TextOverflow> = overflowTmpBuf
        let maxLinesTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxLinesTmpBuf: Option<Int32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxLinesTmpBuf_runtimeType))) {
            maxLinesTmpBuf = valueDeserializer.readInt32()
        }
        let maxLinesTmpResult: Option<Int32> = maxLinesTmpBuf
        let minFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var minFontSizeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(minFontSizeTmpBuf_runtimeType))) {
            minFontSizeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let minFontSizeTmpResult: Option<Float64> = minFontSizeTmpBuf
        let maxFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxFontSizeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxFontSizeTmpBuf_runtimeType))) {
            maxFontSizeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxFontSizeTmpResult: Option<Float64> = maxFontSizeTmpBuf
        let heightAdaptivePolicyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightAdaptivePolicyTmpBuf: Option<TextHeightAdaptivePolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightAdaptivePolicyTmpBuf_runtimeType))) {
            heightAdaptivePolicyTmpBuf = TextHeightAdaptivePolicy.parse(valueDeserializer.readInt32())
        }
        let heightAdaptivePolicyTmpResult: Option<TextHeightAdaptivePolicy> = heightAdaptivePolicyTmpBuf
        let fontTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontTmpBuf: Option<Font> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontTmpBuf_runtimeType))) {
            fontTmpBuf = Font_serializer.read(valueDeserializer)
        }
        let fontTmpResult: Option<Font> = fontTmpBuf
        var value: LabelStyle = LabelStyle(overflowTmpResult, maxLinesTmpResult, minFontSizeTmpResult, maxFontSizeTmpResult, heightAdaptivePolicyTmpResult, fontTmpResult)
        return value
    }
}
