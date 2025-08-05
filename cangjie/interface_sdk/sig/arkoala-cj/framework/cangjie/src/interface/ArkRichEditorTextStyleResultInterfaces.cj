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
public interface RichEditorTextStyleResultInterfaces <:  {
    public mut open prop fontColor: ResourceColor
    public mut open prop fontSize: Float64
    public mut open prop fontStyle: FontStyle
    public mut open prop fontWeight: Float64
    public mut open prop fontFamily: String
    public mut open prop decoration: DecorationStyleResult
    public mut open prop textShadow: Option<ArrayList<ShadowOptions>>
    public mut open prop letterSpacing: Option<Float64>
    public mut open prop lineHeight: Option<Float64>
    public mut open prop halfLeading: Option<Bool>
    public mut open prop fontFeature: Option<String>
    public mut open prop textBackgroundStyle: Option<TextBackgroundStyle>
}
public open class RichEditorTextStyleResult <: RichEditorTextStyleResultInterfaces {
    private var fontColor_container: ResourceColor
    public mut open prop fontColor: ResourceColor
    {
        get() {
            return fontColor_container
        }
        set(fontColor) {
            fontColor_container = fontColor
        }
    }
    private var fontSize_container: Float64
    public mut open prop fontSize: Float64
    {
        get() {
            return fontSize_container
        }
        set(fontSize) {
            fontSize_container = fontSize
        }
    }
    private var fontStyle_container: FontStyle
    public mut open prop fontStyle: FontStyle
    {
        get() {
            return fontStyle_container
        }
        set(fontStyle) {
            fontStyle_container = fontStyle
        }
    }
    private var fontWeight_container: Float64
    public mut open prop fontWeight: Float64
    {
        get() {
            return fontWeight_container
        }
        set(fontWeight) {
            fontWeight_container = fontWeight
        }
    }
    private var fontFamily_container: String
    public mut open prop fontFamily: String
    {
        get() {
            return fontFamily_container
        }
        set(fontFamily) {
            fontFamily_container = fontFamily
        }
    }
    private var decoration_container: DecorationStyleResult
    public mut open prop decoration: DecorationStyleResult
    {
        get() {
            return decoration_container
        }
        set(decoration) {
            decoration_container = decoration
        }
    }
    private var textShadow_container: Option<ArrayList<ShadowOptions>>
    public mut open prop textShadow: Option<ArrayList<ShadowOptions>>
    {
        get() {
            return textShadow_container
        }
        set(textShadow) {
            textShadow_container = textShadow
        }
    }
    private var letterSpacing_container: Option<Float64>
    public mut open prop letterSpacing: Option<Float64>
    {
        get() {
            return letterSpacing_container
        }
        set(letterSpacing) {
            letterSpacing_container = letterSpacing
        }
    }
    private var lineHeight_container: Option<Float64>
    public mut open prop lineHeight: Option<Float64>
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
    RichEditorTextStyleResult(fontColor: ResourceColor, fontSize: Float64, fontStyle: FontStyle, fontWeight: Float64, fontFamily: String, decoration: DecorationStyleResult, textShadow: Option<ArrayList<ShadowOptions>>, letterSpacing: Option<Float64>, lineHeight: Option<Float64>, halfLeading: Option<Bool>, fontFeature: Option<String>, textBackgroundStyle: Option<TextBackgroundStyle>) {
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
public open class RichEditorTextStyleResult_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorTextStyleResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFontColor = value.fontColor
        if (valueHolderForFontColor.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForFontColorForIdx0 = valueHolderForFontColor.getValue0()
            valueSerializer.writeInt32(valueHolderForFontColorForIdx0.value);
        } else if (valueHolderForFontColor.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForFontColorForIdx1 = valueHolderForFontColor.getValue1()
            valueSerializer.writeNumber(valueHolderForFontColorForIdx1);
        } else if (valueHolderForFontColor.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForFontColorForIdx2 = valueHolderForFontColor.getValue2()
            valueSerializer.writeString(valueHolderForFontColorForIdx2);
        } else if (valueHolderForFontColor.getSelector() == 3) {
            valueSerializer.writeInt8(Int8(3));
            let valueHolderForFontColorForIdx3 = valueHolderForFontColor.getValue3()
            valueSerializer.writeCustomObject("Any", valueHolderForFontColorForIdx3);
        }
        let valueHolderForFontSize = value.fontSize
        valueSerializer.writeNumber(valueHolderForFontSize);
        let valueHolderForFontStyle = value.fontStyle
        valueSerializer.writeInt32(valueHolderForFontStyle.value);
        let valueHolderForFontWeight = value.fontWeight
        valueSerializer.writeNumber(valueHolderForFontWeight);
        let valueHolderForFontFamily = value.fontFamily
        valueSerializer.writeString(valueHolderForFontFamily);
        let valueHolderForDecoration = value.decoration
        DecorationStyleResult_serializer.write(valueSerializer, valueHolderForDecoration);
        let valueHolderForTextShadow = value.textShadow
        if (valueHolderForTextShadow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextShadowTmpValue = valueHolderForTextShadow
            valueSerializer.writeInt32(Int32(valueHolderForTextShadowTmpValue.size));
            for (valueHolderForTextShadowTmpValueCounterI in 0..valueHolderForTextShadowTmpValue.size) {
                let valueHolderForTextShadowTmpValueTmpElement: ShadowOptions = valueHolderForTextShadowTmpValue[Int64(valueHolderForTextShadowTmpValueCounterI)]
                ShadowOptions_serializer.write(valueSerializer, valueHolderForTextShadowTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLetterSpacing = value.letterSpacing
        if (valueHolderForLetterSpacing.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLetterSpacingTmpValue = valueHolderForLetterSpacing
            valueSerializer.writeNumber(valueHolderForLetterSpacingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLineHeight = value.lineHeight
        if (valueHolderForLineHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLineHeightTmpValue = valueHolderForLineHeight
            valueSerializer.writeNumber(valueHolderForLineHeightTmpValue);
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
    public static func read(buffer: DeserializerBase): RichEditorTextStyleResult {
        var valueDeserializer: DeserializerBase = buffer
        let fontColorTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var fontColorTmpBuf: ResourceColor 
        if (fontColorTmpBufUnionSelector == Int8(0)) {
            fontColorTmpBuf = ResourceColor(Color(valueDeserializer.readInt32()))
        } else if (fontColorTmpBufUnionSelector == Int8(1)) {
            fontColorTmpBuf = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (fontColorTmpBufUnionSelector == Int8(2)) {
            fontColorTmpBuf = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (fontColorTmpBufUnionSelector == Int8(3)) {
            fontColorTmpBuf = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for fontColorTmpBuf has to be chosen through deserialisation.")
        }
        let fontColorTmpResult: ResourceColor = match (fontColorTmpBuf as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let fontSizeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let fontStyleTmpResult: FontStyle = FontStyle(valueDeserializer.readInt32())
        let fontWeightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let fontFamilyTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let decorationTmpResult: DecorationStyleResult = DecorationStyleResult_serializer.read(valueDeserializer)
        let textShadowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textShadowTmpBuf: Option<ArrayList<ShadowOptions>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textShadowTmpBuf_runtimeType))) {
            let textShadowTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var textShadowTmpBuf_: ArrayList<ShadowOptions> = ArrayList<ShadowOptions>(Int64(textShadowTmpBuf_Length))
            textShadowTmpBuf_ = ArrayList<ShadowOptions>(Int64(textShadowTmpBuf_Length))
            for (textShadowTmpBuf_BufCounterI in 0..textShadowTmpBuf_Length) {
                textShadowTmpBuf_[Int64(textShadowTmpBuf_BufCounterI)] = ShadowOptions_serializer.read(valueDeserializer)
            }
            textShadowTmpBuf = textShadowTmpBuf_
        }
        let textShadowTmpResult: Option<ArrayList<ShadowOptions>> = textShadowTmpBuf
        let letterSpacingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var letterSpacingTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(letterSpacingTmpBuf_runtimeType))) {
            letterSpacingTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let letterSpacingTmpResult: Option<Float64> = letterSpacingTmpBuf
        let lineHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lineHeightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lineHeightTmpBuf_runtimeType))) {
            lineHeightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lineHeightTmpResult: Option<Float64> = lineHeightTmpBuf
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
        var value: RichEditorTextStyleResult = RichEditorTextStyleResult(fontColorTmpResult, fontSizeTmpResult, fontStyleTmpResult, fontWeightTmpResult, fontFamilyTmpResult, decorationTmpResult, textShadowTmpResult, letterSpacingTmpResult, lineHeightTmpResult, halfLeadingTmpResult, fontFeatureTmpResult, textBackgroundStyleTmpResult)
        return value
    }
}
