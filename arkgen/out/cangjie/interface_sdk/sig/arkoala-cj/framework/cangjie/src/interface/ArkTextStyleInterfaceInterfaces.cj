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
public interface TextStyleInterfaceInterfaces <:  {
    public mut open prop fontColor: Option<ResourceColor>
    public mut open prop fontFamily: Option<ResourceStr>
    public mut open prop fontSize: Option<LengthMetrics>
    public mut open prop fontWeight: Option<Union_Number_FontWeight_String>
    public mut open prop fontStyle: Option<FontStyle>
    public mut open prop strokeWidth: Option<LengthMetrics>
    public mut open prop strokeColor: Option<ResourceColor>
    public mut open prop superscript: Option<SuperscriptStyle>
}
public open class TextStyleInterface <: TextStyleInterfaceInterfaces {
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
    private var fontSize_container: Option<LengthMetrics>
    public mut open prop fontSize: Option<LengthMetrics>
    {
        get() {
            return fontSize_container
        }
        set(fontSize) {
            fontSize_container = fontSize
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
    private var strokeWidth_container: Option<LengthMetrics>
    public mut open prop strokeWidth: Option<LengthMetrics>
    {
        get() {
            return strokeWidth_container
        }
        set(strokeWidth) {
            strokeWidth_container = strokeWidth
        }
    }
    private var strokeColor_container: Option<ResourceColor>
    public mut open prop strokeColor: Option<ResourceColor>
    {
        get() {
            return strokeColor_container
        }
        set(strokeColor) {
            strokeColor_container = strokeColor
        }
    }
    private var superscript_container: Option<SuperscriptStyle>
    public mut open prop superscript: Option<SuperscriptStyle>
    {
        get() {
            return superscript_container
        }
        set(superscript) {
            superscript_container = superscript
        }
    }
    TextStyleInterface(fontColor: Option<ResourceColor>, fontFamily: Option<ResourceStr>, fontSize: Option<LengthMetrics>, fontWeight: Option<Union_Number_FontWeight_String>, fontStyle: Option<FontStyle>, strokeWidth: Option<LengthMetrics>, strokeColor: Option<ResourceColor>, superscript: Option<SuperscriptStyle>) {
        this.fontColor_container = fontColor
        this.fontFamily_container = fontFamily
        this.fontSize_container = fontSize
        this.fontWeight_container = fontWeight
        this.fontStyle_container = fontStyle
        this.strokeWidth_container = strokeWidth
        this.strokeColor_container = strokeColor
        this.superscript_container = superscript
    }
}
public open class TextStyleInterface_serializer {
    public static func write(buffer: SerializerBase, value: TextStyleInterface): Unit {
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
        let valueHolderForFontSize = value.fontSize
        if (valueHolderForFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontSizeTmpValue = valueHolderForFontSize
            valueSerializer.writeCustomObject("Any", valueHolderForFontSizeTmpValue);
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
        let valueHolderForFontStyle = value.fontStyle
        if (valueHolderForFontStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontStyleTmpValue = valueHolderForFontStyle
            valueSerializer.writeInt32(valueHolderForFontStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStrokeWidth = value.strokeWidth
        if (valueHolderForStrokeWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeWidthTmpValue = valueHolderForStrokeWidth
            valueSerializer.writeCustomObject("Any", valueHolderForStrokeWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStrokeColor = value.strokeColor
        if (valueHolderForStrokeColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeColorTmpValue = valueHolderForStrokeColor
            if (valueHolderForStrokeColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStrokeColorTmpValueForIdx0 = valueHolderForStrokeColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForStrokeColorTmpValueForIdx0.value);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStrokeColorTmpValueForIdx1 = valueHolderForStrokeColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStrokeColorTmpValueForIdx1);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStrokeColorTmpValueForIdx2 = valueHolderForStrokeColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForStrokeColorTmpValueForIdx2);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForStrokeColorTmpValueForIdx3 = valueHolderForStrokeColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForStrokeColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSuperscript = value.superscript
        if (valueHolderForSuperscript.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSuperscriptTmpValue = valueHolderForSuperscript
            valueSerializer.writeInt32(valueHolderForSuperscriptTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextStyleInterface {
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
        let fontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontSizeTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontSizeTmpBuf_runtimeType))) {
            fontSizeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontSizeTmpResult: Option<LengthMetrics> = fontSizeTmpBuf
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
        let fontStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontStyleTmpBuf: Option<FontStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontStyleTmpBuf_runtimeType))) {
            fontStyleTmpBuf = FontStyle(valueDeserializer.readInt32())
        }
        let fontStyleTmpResult: Option<FontStyle> = fontStyleTmpBuf
        let strokeWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeWidthTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeWidthTmpBuf_runtimeType))) {
            strokeWidthTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeWidthTmpResult: Option<LengthMetrics> = strokeWidthTmpBuf
        let strokeColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeColorTmpBuf_runtimeType))) {
            let strokeColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var strokeColorTmpBuf_: ResourceColor 
            if (strokeColorTmpBuf_UnionSelector == Int8(0)) {
                strokeColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (strokeColorTmpBuf_UnionSelector == Int8(1)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeColorTmpBuf_UnionSelector == Int8(2)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeColorTmpBuf_UnionSelector == Int8(3)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for strokeColorTmpBuf_ has to be chosen through deserialisation.")
            }
            strokeColorTmpBuf = match (strokeColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeColorTmpResult: Option<ResourceColor> = strokeColorTmpBuf
        let superscriptTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var superscriptTmpBuf: Option<SuperscriptStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(superscriptTmpBuf_runtimeType))) {
            superscriptTmpBuf = SuperscriptStyle(valueDeserializer.readInt32())
        }
        let superscriptTmpResult: Option<SuperscriptStyle> = superscriptTmpBuf
        var value: TextStyleInterface = TextStyleInterface(fontColorTmpResult, fontFamilyTmpResult, fontSizeTmpResult, fontWeightTmpResult, fontStyleTmpResult, strokeWidthTmpResult, strokeColorTmpResult, superscriptTmpResult)
        return value
    }
}
