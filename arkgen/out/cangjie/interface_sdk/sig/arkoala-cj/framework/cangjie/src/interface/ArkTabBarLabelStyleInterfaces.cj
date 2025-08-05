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
public interface TabBarLabelStyleInterfaces <:  {
    public mut open prop overflow: Option<TextOverflow>
    public mut open prop maxLines: Option<Float64>
    public mut open prop minFontSize: Option<Union_Number_ResourceStr>
    public mut open prop maxFontSize: Option<Union_Number_ResourceStr>
    public mut open prop heightAdaptivePolicy: Option<TextHeightAdaptivePolicy>
    public mut open prop font: Option<Font>
    public mut open prop selectedColor: Option<ResourceColor>
    public mut open prop unselectedColor: Option<ResourceColor>
}
public open class TabBarLabelStyle <: TabBarLabelStyleInterfaces {
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
    private var selectedColor_container: Option<ResourceColor>
    public mut open prop selectedColor: Option<ResourceColor>
    {
        get() {
            return selectedColor_container
        }
        set(selectedColor) {
            selectedColor_container = selectedColor
        }
    }
    private var unselectedColor_container: Option<ResourceColor>
    public mut open prop unselectedColor: Option<ResourceColor>
    {
        get() {
            return unselectedColor_container
        }
        set(unselectedColor) {
            unselectedColor_container = unselectedColor
        }
    }
    TabBarLabelStyle(overflow: Option<TextOverflow>, maxLines: Option<Float64>, minFontSize: Option<Union_Number_ResourceStr>, maxFontSize: Option<Union_Number_ResourceStr>, heightAdaptivePolicy: Option<TextHeightAdaptivePolicy>, font: Option<Font>, selectedColor: Option<ResourceColor>, unselectedColor: Option<ResourceColor>) {
        this.overflow_container = overflow
        this.maxLines_container = maxLines
        this.minFontSize_container = minFontSize
        this.maxFontSize_container = maxFontSize
        this.heightAdaptivePolicy_container = heightAdaptivePolicy
        this.font_container = font
        this.selectedColor_container = selectedColor
        this.unselectedColor_container = unselectedColor
    }
}
public open class TabBarLabelStyle_serializer {
    public static func write(buffer: SerializerBase, value: TabBarLabelStyle): Unit {
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
        let valueHolderForSelectedColor = value.selectedColor
        if (valueHolderForSelectedColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedColorTmpValue = valueHolderForSelectedColor
            if (valueHolderForSelectedColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSelectedColorTmpValueForIdx0 = valueHolderForSelectedColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForSelectedColorTmpValueForIdx0.value);
            } else if (valueHolderForSelectedColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSelectedColorTmpValueForIdx1 = valueHolderForSelectedColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSelectedColorTmpValueForIdx1);
            } else if (valueHolderForSelectedColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSelectedColorTmpValueForIdx2 = valueHolderForSelectedColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForSelectedColorTmpValueForIdx2);
            } else if (valueHolderForSelectedColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForSelectedColorTmpValueForIdx3 = valueHolderForSelectedColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForSelectedColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUnselectedColor = value.unselectedColor
        if (valueHolderForUnselectedColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUnselectedColorTmpValue = valueHolderForUnselectedColor
            if (valueHolderForUnselectedColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForUnselectedColorTmpValueForIdx0 = valueHolderForUnselectedColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForUnselectedColorTmpValueForIdx0.value);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForUnselectedColorTmpValueForIdx1 = valueHolderForUnselectedColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForUnselectedColorTmpValueForIdx1);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForUnselectedColorTmpValueForIdx2 = valueHolderForUnselectedColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForUnselectedColorTmpValueForIdx2);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForUnselectedColorTmpValueForIdx3 = valueHolderForUnselectedColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForUnselectedColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TabBarLabelStyle {
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
        let selectedColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedColorTmpBuf_runtimeType))) {
            let selectedColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var selectedColorTmpBuf_: ResourceColor 
            if (selectedColorTmpBuf_UnionSelector == Int8(0)) {
                selectedColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (selectedColorTmpBuf_UnionSelector == Int8(1)) {
                selectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (selectedColorTmpBuf_UnionSelector == Int8(2)) {
                selectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (selectedColorTmpBuf_UnionSelector == Int8(3)) {
                selectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for selectedColorTmpBuf_ has to be chosen through deserialisation.")
            }
            selectedColorTmpBuf = match (selectedColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedColorTmpResult: Option<ResourceColor> = selectedColorTmpBuf
        let unselectedColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var unselectedColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(unselectedColorTmpBuf_runtimeType))) {
            let unselectedColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var unselectedColorTmpBuf_: ResourceColor 
            if (unselectedColorTmpBuf_UnionSelector == Int8(0)) {
                unselectedColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(1)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(2)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(3)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for unselectedColorTmpBuf_ has to be chosen through deserialisation.")
            }
            unselectedColorTmpBuf = match (unselectedColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let unselectedColorTmpResult: Option<ResourceColor> = unselectedColorTmpBuf
        var value: TabBarLabelStyle = TabBarLabelStyle(overflowTmpResult, maxLinesTmpResult, minFontSizeTmpResult, maxFontSizeTmpResult, heightAdaptivePolicyTmpResult, fontTmpResult, selectedColorTmpResult, unselectedColorTmpResult)
        return value
    }
}
