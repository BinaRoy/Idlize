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
public interface TextPickerTextStyleInterfaces <: PickerTextStyleInterfaces {
    public mut open prop minFontSize: Option<Union_Number_String_Resource>
    public mut open prop maxFontSize: Option<Union_Number_String_Resource>
    public mut open prop overflow: Option<TextOverflow>
}
public open class TextPickerTextStyle <: TextPickerTextStyleInterfaces {
    private var minFontSize_container: Option<Union_Number_String_Resource>
    public mut open prop minFontSize: Option<Union_Number_String_Resource>
    {
        get() {
            return minFontSize_container
        }
        set(minFontSize) {
            minFontSize_container = minFontSize
        }
    }
    private var maxFontSize_container: Option<Union_Number_String_Resource>
    public mut open prop maxFontSize: Option<Union_Number_String_Resource>
    {
        get() {
            return maxFontSize_container
        }
        set(maxFontSize) {
            maxFontSize_container = maxFontSize
        }
    }
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
    private var color_container: Option<ResourceColor>
    public mut open prop color: Option<ResourceColor>
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
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
    TextPickerTextStyle(minFontSize: Option<Union_Number_String_Resource>, maxFontSize: Option<Union_Number_String_Resource>, overflow: Option<TextOverflow>, color: Option<ResourceColor>, font: Option<Font>) {
        this.minFontSize_container = minFontSize
        this.maxFontSize_container = maxFontSize
        this.overflow_container = overflow
        this.color_container = color
        this.font_container = font
    }
}
public open class TextPickerTextStyle_serializer {
    public static func write(buffer: SerializerBase, value: TextPickerTextStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForColor = value.color
        if (valueHolderForColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorTmpValue = valueHolderForColor
            if (valueHolderForColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColorTmpValueForIdx0 = valueHolderForColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx0.value);
            } else if (valueHolderForColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorTmpValueForIdx1 = valueHolderForColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForColorTmpValueForIdx1);
            } else if (valueHolderForColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorTmpValueForIdx2 = valueHolderForColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForColorTmpValueForIdx2);
            } else if (valueHolderForColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForColorTmpValueForIdx3 = valueHolderForColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForColorTmpValueForIdx3);
            }
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
                valueSerializer.writeString(valueHolderForMinFontSizeTmpValueForIdx1);
            } else if (valueHolderForMinFontSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMinFontSizeTmpValueForIdx2 = valueHolderForMinFontSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMinFontSizeTmpValueForIdx2);
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
                valueSerializer.writeString(valueHolderForMaxFontSizeTmpValueForIdx1);
            } else if (valueHolderForMaxFontSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMaxFontSizeTmpValueForIdx2 = valueHolderForMaxFontSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMaxFontSizeTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOverflow = value.overflow
        if (valueHolderForOverflow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOverflowTmpValue = valueHolderForOverflow
            valueSerializer.writeInt32(valueHolderForOverflowTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextPickerTextStyle {
        var valueDeserializer: DeserializerBase = buffer
        let colorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorTmpBuf_runtimeType))) {
            let colorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var colorTmpBuf_: ResourceColor 
            if (colorTmpBuf_UnionSelector == Int8(0)) {
                colorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (colorTmpBuf_UnionSelector == Int8(1)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(2)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(3)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for colorTmpBuf_ has to be chosen through deserialisation.")
            }
            colorTmpBuf = match (colorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorTmpResult: Option<ResourceColor> = colorTmpBuf
        let fontTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontTmpBuf: Option<Font> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontTmpBuf_runtimeType))) {
            fontTmpBuf = Font_serializer.read(valueDeserializer)
        }
        let fontTmpResult: Option<Font> = fontTmpBuf
        let minFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var minFontSizeTmpBuf: Option<Union_Number_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(minFontSizeTmpBuf_runtimeType))) {
            let minFontSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var minFontSizeTmpBuf_: Union_Number_String_Resource 
            if (minFontSizeTmpBuf_UnionSelector == Int8(0)) {
                minFontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (minFontSizeTmpBuf_UnionSelector == Int8(1)) {
                minFontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (minFontSizeTmpBuf_UnionSelector == Int8(2)) {
                minFontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for minFontSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            minFontSizeTmpBuf = match (minFontSizeTmpBuf_ as Union_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let minFontSizeTmpResult: Option<Union_Number_String_Resource> = minFontSizeTmpBuf
        let maxFontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxFontSizeTmpBuf: Option<Union_Number_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxFontSizeTmpBuf_runtimeType))) {
            let maxFontSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var maxFontSizeTmpBuf_: Union_Number_String_Resource 
            if (maxFontSizeTmpBuf_UnionSelector == Int8(0)) {
                maxFontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maxFontSizeTmpBuf_UnionSelector == Int8(1)) {
                maxFontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maxFontSizeTmpBuf_UnionSelector == Int8(2)) {
                maxFontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for maxFontSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            maxFontSizeTmpBuf = match (maxFontSizeTmpBuf_ as Union_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxFontSizeTmpResult: Option<Union_Number_String_Resource> = maxFontSizeTmpBuf
        let overflowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var overflowTmpBuf: Option<TextOverflow> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(overflowTmpBuf_runtimeType))) {
            overflowTmpBuf = TextOverflow(valueDeserializer.readInt32())
        }
        let overflowTmpResult: Option<TextOverflow> = overflowTmpBuf
        var value: TextPickerTextStyle = TextPickerTextStyle(minFontSizeTmpResult, maxFontSizeTmpResult, overflowTmpResult, colorTmpResult, fontTmpResult)
        return value
    }
}
