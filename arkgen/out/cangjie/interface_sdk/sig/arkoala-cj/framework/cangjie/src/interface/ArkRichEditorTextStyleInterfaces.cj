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
public interface RichEditorTextStyleInterfaces <:  {
    public mut open prop fontColor: Option<ResourceColor>
    public mut open prop fontSize: Option<Union_Length_Number>
    public mut open prop fontStyle: Option<FontStyle>
    public mut open prop fontWeight: Option<Union_Number_FontWeight_String>
    public mut open prop fontFamily: Option<ResourceStr>
    public mut open prop decoration: Option<DecorationStyleInterface>
    public mut open prop textShadow: Option<Union_ShadowOptions_Array_ShadowOptions>
    public mut open prop letterSpacing: Option<Union_Number_String>
    public mut open prop lineHeight: Option<Union_Number_String_Resource>
    public mut open prop halfLeading: Option<Bool>
    public mut open prop fontFeature: Option<String>
    public mut open prop textBackgroundStyle: Option<TextBackgroundStyle>
}
public open class RichEditorTextStyle <: RichEditorTextStyleInterfaces {
    private var fontColor_container: Option<ResourceColor>
    public mut open prop fontColor: Option<ResourceColor>
    {
        get() {
            return fontColor_container
        }
        set(fontColor) {
            fontColor_container = fontColor
        }
    }
    private var fontSize_container: Option<Union_Length_Number>
    public mut open prop fontSize: Option<Union_Length_Number>
    {
        get() {
            return fontSize_container
        }
        set(fontSize) {
            fontSize_container = fontSize
        }
    }
    private var fontStyle_container: Option<FontStyle>
    public mut open prop fontStyle: Option<FontStyle>
    {
        get() {
            return fontStyle_container
        }
        set(fontStyle) {
            fontStyle_container = fontStyle
        }
    }
    private var fontWeight_container: Option<Union_Number_FontWeight_String>
    public mut open prop fontWeight: Option<Union_Number_FontWeight_String>
    {
        get() {
            return fontWeight_container
        }
        set(fontWeight) {
            fontWeight_container = fontWeight
        }
    }
    private var fontFamily_container: Option<ResourceStr>
    public mut open prop fontFamily: Option<ResourceStr>
    {
        get() {
            return fontFamily_container
        }
        set(fontFamily) {
            fontFamily_container = fontFamily
        }
    }
    private var decoration_container: Option<DecorationStyleInterface>
    public mut open prop decoration: Option<DecorationStyleInterface>
    {
        get() {
            return decoration_container
        }
        set(decoration) {
            decoration_container = decoration
        }
    }
    private var textShadow_container: Option<Union_ShadowOptions_Array_ShadowOptions>
    public mut open prop textShadow: Option<Union_ShadowOptions_Array_ShadowOptions>
    {
        get() {
            return textShadow_container
        }
        set(textShadow) {
            textShadow_container = textShadow
        }
    }
    private var letterSpacing_container: Option<Union_Number_String>
    public mut open prop letterSpacing: Option<Union_Number_String>
    {
        get() {
            return letterSpacing_container
        }
        set(letterSpacing) {
            letterSpacing_container = letterSpacing
        }
    }
    private var lineHeight_container: Option<Union_Number_String_Resource>
    public mut open prop lineHeight: Option<Union_Number_String_Resource>
    {
        get() {
            return lineHeight_container
        }
        set(lineHeight) {
            lineHeight_container = lineHeight
        }
    }
    private var halfLeading_container: Option<Bool>
    public mut open prop halfLeading: Option<Bool>
    {
        get() {
            return halfLeading_container
        }
        set(halfLeading) {
            halfLeading_container = halfLeading
        }
    }
    private var fontFeature_container: Option<String>
    public mut open prop fontFeature: Option<String>
    {
        get() {
            return fontFeature_container
        }
        set(fontFeature) {
            fontFeature_container = fontFeature
        }
    }
    private var textBackgroundStyle_container: Option<TextBackgroundStyle>
    public mut open prop textBackgroundStyle: Option<TextBackgroundStyle>
    {
        get() {
            return textBackgroundStyle_container
        }
        set(textBackgroundStyle) {
            textBackgroundStyle_container = textBackgroundStyle
        }
    }
    RichEditorTextStyle(fontColor: Option<ResourceColor>, fontSize: Option<Union_Length_Number>, fontStyle: Option<FontStyle>, fontWeight: Option<Union_Number_FontWeight_String>, fontFamily: Option<ResourceStr>, decoration: Option<DecorationStyleInterface>, textShadow: Option<Union_ShadowOptions_Array_ShadowOptions>, letterSpacing: Option<Union_Number_String>, lineHeight: Option<Union_Number_String_Resource>, halfLeading: Option<Bool>, fontFeature: Option<String>, textBackgroundStyle: Option<TextBackgroundStyle>) {
        this.fontColor_container = fontColor
        this.fontSize_container = fontSize
        this.fontStyle_container = fontStyle
        this.fontWeight_container = fontWeight
        this.fontFamily_container = fontFamily
        this.decoration_container = decoration
        this.textShadow_container = textShadow
        this.letterSpacing_container = letterSpacing
        this.lineHeight_container = lineHeight
        this.halfLeading_container = halfLeading
        this.fontFeature_container = fontFeature
        this.textBackgroundStyle_container = textBackgroundStyle
    }
}
public open class RichEditorTextStyle_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorTextStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFontColor = value.fontColor
        if (valueHolderForFontColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontColorTmpValue = valueHolderForFontColor
            if (valueHolderForFontColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontColorTmpValueForIdx0 = valueHolderForFontColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForFontColorTmpValueForIdx0.value);
            } else if (valueHolderForFontColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontColorTmpValueForIdx1 = valueHolderForFontColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForFontColorTmpValueForIdx1);
            } else if (valueHolderForFontColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFontColorTmpValueForIdx2 = valueHolderForFontColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForFontColorTmpValueForIdx2);
            } else if (valueHolderForFontColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForFontColorTmpValueForIdx3 = valueHolderForFontColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForFontColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFontSize = value.fontSize
        if (valueHolderForFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontSizeTmpValue = valueHolderForFontSize
            if (valueHolderForFontSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontSizeTmpValueForIdx0 = valueHolderForFontSizeTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForFontSizeTmpValueForIdx0);
            } else if (valueHolderForFontSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontSizeTmpValueForIdx1 = valueHolderForFontSizeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForFontSizeTmpValueForIdx1);
            } else if (valueHolderForFontSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFontSizeTmpValueForIdx2 = valueHolderForFontSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForFontSizeTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFontStyle = value.fontStyle
        if (valueHolderForFontStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontStyleTmpValue = valueHolderForFontStyle
            valueSerializer.writeInt32(valueHolderForFontStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFontWeight = value.fontWeight
        if (valueHolderForFontWeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontWeightTmpValue = valueHolderForFontWeight
            if (valueHolderForFontWeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontWeightTmpValueForIdx0 = valueHolderForFontWeightTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForFontWeightTmpValueForIdx0);
            } else if (valueHolderForFontWeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontWeightTmpValueForIdx1 = valueHolderForFontWeightTmpValue.getValue1()
                valueSerializer.writeInt32(valueHolderForFontWeightTmpValueForIdx1.value);
            } else if (valueHolderForFontWeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFontWeightTmpValueForIdx2 = valueHolderForFontWeightTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForFontWeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFontFamily = value.fontFamily
        if (valueHolderForFontFamily.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontFamilyTmpValue = valueHolderForFontFamily
            if (valueHolderForFontFamilyTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontFamilyTmpValueForIdx0 = valueHolderForFontFamilyTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForFontFamilyTmpValueForIdx0);
            } else if (valueHolderForFontFamilyTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontFamilyTmpValueForIdx1 = valueHolderForFontFamilyTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForFontFamilyTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDecoration = value.decoration
        if (valueHolderForDecoration.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDecorationTmpValue = valueHolderForDecoration
            DecorationStyleInterface_serializer.write(valueSerializer, valueHolderForDecorationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTextShadow = value.textShadow
        if (valueHolderForTextShadow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextShadowTmpValue = valueHolderForTextShadow
            if (valueHolderForTextShadowTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTextShadowTmpValueForIdx0 = valueHolderForTextShadowTmpValue.getValue0()
                ShadowOptions_serializer.write(valueSerializer, valueHolderForTextShadowTmpValueForIdx0);
            } else if (valueHolderForTextShadowTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTextShadowTmpValueForIdx1 = valueHolderForTextShadowTmpValue.getValue1()
                valueSerializer.writeInt32(Int32(valueHolderForTextShadowTmpValueForIdx1.size));
                for (valueHolderForTextShadowTmpValueForIdx1CounterI in 0..valueHolderForTextShadowTmpValueForIdx1.size) {
                    let valueHolderForTextShadowTmpValueForIdx1TmpElement: ShadowOptions = valueHolderForTextShadowTmpValueForIdx1[Int64(valueHolderForTextShadowTmpValueForIdx1CounterI)]
                    ShadowOptions_serializer.write(valueSerializer, valueHolderForTextShadowTmpValueForIdx1TmpElement);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLetterSpacing = value.letterSpacing
        if (valueHolderForLetterSpacing.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLetterSpacingTmpValue = valueHolderForLetterSpacing
            if (valueHolderForLetterSpacingTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLetterSpacingTmpValueForIdx0 = valueHolderForLetterSpacingTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForLetterSpacingTmpValueForIdx0);
            } else if (valueHolderForLetterSpacingTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLetterSpacingTmpValueForIdx1 = valueHolderForLetterSpacingTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForLetterSpacingTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLineHeight = value.lineHeight
        if (valueHolderForLineHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLineHeightTmpValue = valueHolderForLineHeight
            if (valueHolderForLineHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLineHeightTmpValueForIdx0 = valueHolderForLineHeightTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForLineHeightTmpValueForIdx0);
            } else if (valueHolderForLineHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLineHeightTmpValueForIdx1 = valueHolderForLineHeightTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForLineHeightTmpValueForIdx1);
            } else if (valueHolderForLineHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForLineHeightTmpValueForIdx2 = valueHolderForLineHeightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForLineHeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHalfLeading = value.halfLeading
        if (valueHolderForHalfLeading.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHalfLeadingTmpValue = valueHolderForHalfLeading
            valueSerializer.writeBoolean(valueHolderForHalfLeadingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFontFeature = value.fontFeature
        if (valueHolderForFontFeature.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontFeatureTmpValue = valueHolderForFontFeature
            valueSerializer.writeString(valueHolderForFontFeatureTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTextBackgroundStyle = value.textBackgroundStyle
        if (valueHolderForTextBackgroundStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextBackgroundStyleTmpValue = valueHolderForTextBackgroundStyle
            TextBackgroundStyle_serializer.write(valueSerializer, valueHolderForTextBackgroundStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorTextStyle {
        var valueDeserializer: DeserializerBase = buffer
        let fontColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontColorTmpBuf_runtimeType))) {
            let fontColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontColorTmpBuf_: ResourceColor 
            if (fontColorTmpBuf_UnionSelector == Int8(0)) {
                fontColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (fontColorTmpBuf_UnionSelector == Int8(1)) {
                fontColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontColorTmpBuf_UnionSelector == Int8(2)) {
                fontColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontColorTmpBuf_UnionSelector == Int8(3)) {
                fontColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontColorTmpBuf_ has to be chosen through deserialisation.")
            }
            fontColorTmpBuf = match (fontColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontColorTmpResult: Option<ResourceColor> = fontColorTmpBuf
        let fontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontSizeTmpBuf: Option<Union_String_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontSizeTmpBuf_runtimeType))) {
            let fontSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontSizeTmpBuf_: Union_String_Number_Resource 
            if (fontSizeTmpBuf_UnionSelector == Int8(0)) {
                fontSizeTmpBuf_ = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontSizeTmpBuf_UnionSelector == Int8(1)) {
                fontSizeTmpBuf_ = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontSizeTmpBuf_UnionSelector == Int8(2)) {
                fontSizeTmpBuf_ = Union_String_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            fontSizeTmpBuf = match (fontSizeTmpBuf_ as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontSizeTmpResult: Option<Union_Length_Number> = fontSizeTmpBuf
        let fontStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontStyleTmpBuf: Option<FontStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontStyleTmpBuf_runtimeType))) {
            fontStyleTmpBuf = FontStyle(valueDeserializer.readInt32())
        }
        let fontStyleTmpResult: Option<FontStyle> = fontStyleTmpBuf
        let fontWeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontWeightTmpBuf: Option<Union_Number_FontWeight_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontWeightTmpBuf_runtimeType))) {
            let fontWeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontWeightTmpBuf_: Union_Number_FontWeight_String 
            if (fontWeightTmpBuf_UnionSelector == Int8(0)) {
                fontWeightTmpBuf_ = Union_Number_FontWeight_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontWeightTmpBuf_UnionSelector == Int8(1)) {
                fontWeightTmpBuf_ = Union_Number_FontWeight_String(FontWeight(valueDeserializer.readInt32()))
            } else if (fontWeightTmpBuf_UnionSelector == Int8(2)) {
                fontWeightTmpBuf_ = Union_Number_FontWeight_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontWeightTmpBuf_ has to be chosen through deserialisation.")
            }
            fontWeightTmpBuf = match (fontWeightTmpBuf_ as Union_Number_FontWeight_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontWeightTmpResult: Option<Union_Number_FontWeight_String> = fontWeightTmpBuf
        let fontFamilyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontFamilyTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontFamilyTmpBuf_runtimeType))) {
            let fontFamilyTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontFamilyTmpBuf_: ResourceStr 
            if (fontFamilyTmpBuf_UnionSelector == Int8(0)) {
                fontFamilyTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontFamilyTmpBuf_UnionSelector == Int8(1)) {
                fontFamilyTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontFamilyTmpBuf_ has to be chosen through deserialisation.")
            }
            fontFamilyTmpBuf = match (fontFamilyTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontFamilyTmpResult: Option<ResourceStr> = fontFamilyTmpBuf
        let decorationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var decorationTmpBuf: Option<DecorationStyleInterface> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(decorationTmpBuf_runtimeType))) {
            decorationTmpBuf = DecorationStyleInterface_serializer.read(valueDeserializer)
        }
        let decorationTmpResult: Option<DecorationStyleInterface> = decorationTmpBuf
        let textShadowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textShadowTmpBuf: Option<Union_ShadowOptions_Array_ShadowOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textShadowTmpBuf_runtimeType))) {
            let textShadowTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var textShadowTmpBuf_: Union_ShadowOptions_Array_ShadowOptions 
            if (textShadowTmpBuf_UnionSelector == Int8(0)) {
                textShadowTmpBuf_ = Union_ShadowOptions_Array_ShadowOptions(ShadowOptions_serializer.read(valueDeserializer))
            } else if (textShadowTmpBuf_UnionSelector == Int8(1)) {
                let textShadowTmpBuf_BufULength: Int32 = valueDeserializer.readInt32()
                var textShadowTmpBuf_BufU: ArrayList<ShadowOptions> = ArrayList<ShadowOptions>(Int64(textShadowTmpBuf_BufULength))
                textShadowTmpBuf_BufU = ArrayList<ShadowOptions>(Int64(textShadowTmpBuf_BufULength))
                for (textShadowTmpBuf_BufUBufCounterI in 0..textShadowTmpBuf_BufULength) {
                    textShadowTmpBuf_BufU[Int64(textShadowTmpBuf_BufUBufCounterI)] = ShadowOptions_serializer.read(valueDeserializer)
                }
                textShadowTmpBuf_ = Union_ShadowOptions_Array_ShadowOptions(textShadowTmpBuf_BufU)
            } else {
                throw Exception("One of the branches for textShadowTmpBuf_ has to be chosen through deserialisation.")
            }
            textShadowTmpBuf = match (textShadowTmpBuf_ as Union_ShadowOptions_Array_ShadowOptions) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let textShadowTmpResult: Option<Union_ShadowOptions_Array_ShadowOptions> = textShadowTmpBuf
        let letterSpacingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var letterSpacingTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(letterSpacingTmpBuf_runtimeType))) {
            let letterSpacingTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var letterSpacingTmpBuf_: Union_Number_String 
            if (letterSpacingTmpBuf_UnionSelector == Int8(0)) {
                letterSpacingTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (letterSpacingTmpBuf_UnionSelector == Int8(1)) {
                letterSpacingTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for letterSpacingTmpBuf_ has to be chosen through deserialisation.")
            }
            letterSpacingTmpBuf = match (letterSpacingTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let letterSpacingTmpResult: Option<Union_Number_String> = letterSpacingTmpBuf
        let lineHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lineHeightTmpBuf: Option<Union_Number_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lineHeightTmpBuf_runtimeType))) {
            let lineHeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var lineHeightTmpBuf_: Union_Number_String_Resource 
            if (lineHeightTmpBuf_UnionSelector == Int8(0)) {
                lineHeightTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (lineHeightTmpBuf_UnionSelector == Int8(1)) {
                lineHeightTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (lineHeightTmpBuf_UnionSelector == Int8(2)) {
                lineHeightTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for lineHeightTmpBuf_ has to be chosen through deserialisation.")
            }
            lineHeightTmpBuf = match (lineHeightTmpBuf_ as Union_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lineHeightTmpResult: Option<Union_Number_String_Resource> = lineHeightTmpBuf
        let halfLeadingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var halfLeadingTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(halfLeadingTmpBuf_runtimeType))) {
            halfLeadingTmpBuf = valueDeserializer.readBoolean()
        }
        let halfLeadingTmpResult: Option<Bool> = halfLeadingTmpBuf
        let fontFeatureTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontFeatureTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontFeatureTmpBuf_runtimeType))) {
            fontFeatureTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontFeatureTmpResult: Option<String> = fontFeatureTmpBuf
        let textBackgroundStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textBackgroundStyleTmpBuf: Option<TextBackgroundStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textBackgroundStyleTmpBuf_runtimeType))) {
            textBackgroundStyleTmpBuf = TextBackgroundStyle_serializer.read(valueDeserializer)
        }
        let textBackgroundStyleTmpResult: Option<TextBackgroundStyle> = textBackgroundStyleTmpBuf
        var value: RichEditorTextStyle = RichEditorTextStyle(fontColorTmpResult, fontSizeTmpResult, fontStyleTmpResult, fontWeightTmpResult, fontFamilyTmpResult, decorationTmpResult, textShadowTmpResult, letterSpacingTmpResult, lineHeightTmpResult, halfLeadingTmpResult, fontFeatureTmpResult, textBackgroundStyleTmpResult)
        return value
    }
}
