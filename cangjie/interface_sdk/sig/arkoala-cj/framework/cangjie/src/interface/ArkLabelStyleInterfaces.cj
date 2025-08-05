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
public interface LabelStyleInterfaces <:  {
    public mut open prop overflow: Option<TextOverflow>
    public mut open prop maxLines: Option<Float64>
    public mut open prop minFontSize: Option<Union_Number_ResourceStr>
    public mut open prop maxFontSize: Option<Union_Number_ResourceStr>
    public mut open prop heightAdaptivePolicy: Option<TextHeightAdaptivePolicy>
    public mut open prop font: Option<Font>
}
public open class LabelStyle <: LabelStyleInterfaces {
    private var overflow_container: Option<TextOverflow>
    public mut open prop overflow: Option<TextOverflow>
    {
        get() {
            return overflow_container
        }
        set(overflow) {
            overflow_container = overflow
        }
    }
    private var maxLines_container: Option<Float64>
    public mut open prop maxLines: Option<Float64>
    {
        get() {
            return maxLines_container
        }
        set(maxLines) {
            maxLines_container = maxLines
        }
    }
    private var minFontSize_container: Option<Union_Number_ResourceStr>
    public mut open prop minFontSize: Option<Union_Number_ResourceStr>
    {
        get() {
            return minFontSize_container
        }
        set(minFontSize) {
            minFontSize_container = minFontSize
        }
    }
    private var maxFontSize_container: Option<Union_Number_ResourceStr>
    public mut open prop maxFontSize: Option<Union_Number_ResourceStr>
    {
        get() {
            return maxFontSize_container
        }
        set(maxFontSize) {
            maxFontSize_container = maxFontSize
        }
    }
    private var heightAdaptivePolicy_container: Option<TextHeightAdaptivePolicy>
    public mut open prop heightAdaptivePolicy: Option<TextHeightAdaptivePolicy>
    {
        get() {
            return heightAdaptivePolicy_container
        }
        set(heightAdaptivePolicy) {
            heightAdaptivePolicy_container = heightAdaptivePolicy
        }
    }
    private var font_container: Option<Font>
    public mut open prop font: Option<Font>
    {
        get() {
            return font_container
        }
        set(font) {
            font_container = font
        }
    }
    LabelStyle(overflow: Option<TextOverflow>, maxLines: Option<Float64>, minFontSize: Option<Union_Number_ResourceStr>, maxFontSize: Option<Union_Number_ResourceStr>, heightAdaptivePolicy: Option<TextHeightAdaptivePolicy>, font: Option<Font>) {
        this.overflow_container = overflow
        this.maxLines_container = maxLines
        this.minFontSize_container = minFontSize
        this.maxFontSize_container = maxFontSize
        this.heightAdaptivePolicy_container = heightAdaptivePolicy
        this.font_container = font
    }
}
public open class LabelStyle_serializer {
    public static func write(buffer: SerializerBase, value: LabelStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOverflow = value.overflow
        if (valueHolderForOverflow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOverflowTmpValue = valueHolderForOverflow
            valueSerializer.writeInt32(valueHolderForOverflowTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMaxLines = value.maxLines
        if (valueHolderForMaxLines.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxLinesTmpValue = valueHolderForMaxLines
            valueSerializer.writeNumber(valueHolderForMaxLinesTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMinFontSize = value.minFontSize
        if (valueHolderForMinFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMinFontSizeTmpValue = valueHolderForMinFontSize
            if (valueHolderForMinFontSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMinFontSizeTmpValueForIdx0 = valueHolderForMinFontSizeTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForMinFontSizeTmpValueForIdx0);
            } else if (valueHolderForMinFontSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMinFontSizeTmpValueForIdx1 = valueHolderForMinFontSizeTmpValue.getValue1()
                if (valueHolderForMinFontSizeTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForMinFontSizeTmpValueForIdx1ForIdx0 = valueHolderForMinFontSizeTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForMinFontSizeTmpValueForIdx1ForIdx0);
                } else if (valueHolderForMinFontSizeTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForMinFontSizeTmpValueForIdx1ForIdx1 = valueHolderForMinFontSizeTmpValueForIdx1.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForMinFontSizeTmpValueForIdx1ForIdx1);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMaxFontSize = value.maxFontSize
        if (valueHolderForMaxFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxFontSizeTmpValue = valueHolderForMaxFontSize
            if (valueHolderForMaxFontSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMaxFontSizeTmpValueForIdx0 = valueHolderForMaxFontSizeTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForMaxFontSizeTmpValueForIdx0);
            } else if (valueHolderForMaxFontSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMaxFontSizeTmpValueForIdx1 = valueHolderForMaxFontSizeTmpValue.getValue1()
                if (valueHolderForMaxFontSizeTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForMaxFontSizeTmpValueForIdx1ForIdx0 = valueHolderForMaxFontSizeTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForMaxFontSizeTmpValueForIdx1ForIdx0);
                } else if (valueHolderForMaxFontSizeTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForMaxFontSizeTmpValueForIdx1ForIdx1 = valueHolderForMaxFontSizeTmpValueForIdx1.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForMaxFontSizeTmpValueForIdx1ForIdx1);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeightAdaptivePolicy = value.heightAdaptivePolicy
        if (valueHolderForHeightAdaptivePolicy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightAdaptivePolicyTmpValue = valueHolderForHeightAdaptivePolicy
            valueSerializer.writeInt32(valueHolderForHeightAdaptivePolicyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFont = value.font
        if (valueHolderForFont.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontTmpValue = valueHolderForFont
            Font_serializer.write(valueSerializer, valueHolderForFontTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LabelStyle {
        var valueDeserializer: DeserializerBase = buffer
        let overflowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var overflowTmpBuf: Option<TextOverflow> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(overflowTmpBuf_runtimeType))) {
            overflowTmpBuf = TextOverflow(valueDeserializer.readInt32())
        }
        let overflowTmpResult: Option<TextOverflow> = overflowTmpBuf
        let maxLinesTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxLinesTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxLinesTmpBuf_runtimeType))) {
            maxLinesTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxLinesTmpResult: Option<Float64> = maxLinesTmpBuf
        let minFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var minFontSizeTmpBuf: Option<Union_Number_ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(minFontSizeTmpBuf_runtimeType))) {
            let minFontSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var minFontSizeTmpBuf_: Union_Number_ResourceStr 
            if (minFontSizeTmpBuf_UnionSelector == Int8(0)) {
                minFontSizeTmpBuf_ = Union_Number_ResourceStr(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (minFontSizeTmpBuf_UnionSelector == Int8(1)) {
                let minFontSizeTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var minFontSizeTmpBuf_BufU: ResourceStr 
                if (minFontSizeTmpBuf_BufUUnionSelector == Int8(0)) {
                    minFontSizeTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (minFontSizeTmpBuf_BufUUnionSelector == Int8(1)) {
                    minFontSizeTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for minFontSizeTmpBuf_BufU has to be chosen through deserialisation.")
                }
                minFontSizeTmpBuf_ = Union_Number_ResourceStr(match (minFontSizeTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for minFontSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            minFontSizeTmpBuf = match (minFontSizeTmpBuf_ as Union_Number_ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let minFontSizeTmpResult: Option<Union_Number_ResourceStr> = minFontSizeTmpBuf
        let maxFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxFontSizeTmpBuf: Option<Union_Number_ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxFontSizeTmpBuf_runtimeType))) {
            let maxFontSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var maxFontSizeTmpBuf_: Union_Number_ResourceStr 
            if (maxFontSizeTmpBuf_UnionSelector == Int8(0)) {
                maxFontSizeTmpBuf_ = Union_Number_ResourceStr(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maxFontSizeTmpBuf_UnionSelector == Int8(1)) {
                let maxFontSizeTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var maxFontSizeTmpBuf_BufU: ResourceStr 
                if (maxFontSizeTmpBuf_BufUUnionSelector == Int8(0)) {
                    maxFontSizeTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (maxFontSizeTmpBuf_BufUUnionSelector == Int8(1)) {
                    maxFontSizeTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for maxFontSizeTmpBuf_BufU has to be chosen through deserialisation.")
                }
                maxFontSizeTmpBuf_ = Union_Number_ResourceStr(match (maxFontSizeTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for maxFontSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            maxFontSizeTmpBuf = match (maxFontSizeTmpBuf_ as Union_Number_ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxFontSizeTmpResult: Option<Union_Number_ResourceStr> = maxFontSizeTmpBuf
        let heightAdaptivePolicyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightAdaptivePolicyTmpBuf: Option<TextHeightAdaptivePolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightAdaptivePolicyTmpBuf_runtimeType))) {
            heightAdaptivePolicyTmpBuf = TextHeightAdaptivePolicy(valueDeserializer.readInt32())
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
