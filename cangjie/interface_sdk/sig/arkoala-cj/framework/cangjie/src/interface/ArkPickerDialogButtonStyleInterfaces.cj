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
public interface PickerDialogButtonStyleInterfaces <:  {
    public mut open prop type_: Option<ButtonType>
    public mut open prop style: Option<ButtonStyleMode>
    public mut open prop role: Option<ButtonRole>
    public mut open prop fontSize: Option<Length>
    public mut open prop fontColor: Option<ResourceColor>
    public mut open prop fontWeight: Option<Union_FontWeight_Number_String>
    public mut open prop fontStyle: Option<FontStyle>
    public mut open prop fontFamily: Option<Union_Resource_String>
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop borderRadius: Option<Union_Length_BorderRadiuses>
    public mut open prop primary: Option<Bool>
}
public open class PickerDialogButtonStyle <: PickerDialogButtonStyleInterfaces {
    private var type_container: Option<ButtonType>
    public mut open prop type_: Option<ButtonType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var style_container: Option<ButtonStyleMode>
    public mut open prop style: Option<ButtonStyleMode>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var role_container: Option<ButtonRole>
    public mut open prop role: Option<ButtonRole>
    {
        get() {
            return role_container
        }
        set(role) {
            role_container = role
        }
    }
    private var fontSize_container: Option<Length>
    public mut open prop fontSize: Option<Length>
    {
        get() {
            return fontSize_container
        }
        set(fontSize) {
            fontSize_container = fontSize
        }
    }
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
    private var fontWeight_container: Option<Union_FontWeight_Number_String>
    public mut open prop fontWeight: Option<Union_FontWeight_Number_String>
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
    private var fontFamily_container: Option<Union_Resource_String>
    public mut open prop fontFamily: Option<Union_Resource_String>
    {
        get() {
            return fontFamily_container
        }
        set(fontFamily) {
            fontFamily_container = fontFamily
        }
    }
    private var backgroundColor_container: Option<ResourceColor>
    public mut open prop backgroundColor: Option<ResourceColor>
    {
        get() {
            return backgroundColor_container
        }
        set(backgroundColor) {
            backgroundColor_container = backgroundColor
        }
    }
    private var borderRadius_container: Option<Union_Length_BorderRadiuses>
    public mut open prop borderRadius: Option<Union_Length_BorderRadiuses>
    {
        get() {
            return borderRadius_container
        }
        set(borderRadius) {
            borderRadius_container = borderRadius
        }
    }
    private var primary_container: Option<Bool>
    public mut open prop primary: Option<Bool>
    {
        get() {
            return primary_container
        }
        set(primary) {
            primary_container = primary
        }
    }
    PickerDialogButtonStyle(type_: Option<ButtonType>, style: Option<ButtonStyleMode>, role: Option<ButtonRole>, fontSize: Option<Length>, fontColor: Option<ResourceColor>, fontWeight: Option<Union_FontWeight_Number_String>, fontStyle: Option<FontStyle>, fontFamily: Option<Union_Resource_String>, backgroundColor: Option<ResourceColor>, borderRadius: Option<Union_Length_BorderRadiuses>, primary: Option<Bool>) {
        this.type_container = type_
        this.style_container = style
        this.role_container = role
        this.fontSize_container = fontSize
        this.fontColor_container = fontColor
        this.fontWeight_container = fontWeight
        this.fontStyle_container = fontStyle
        this.fontFamily_container = fontFamily
        this.backgroundColor_container = backgroundColor
        this.borderRadius_container = borderRadius
        this.primary_container = primary
    }
}
public open class PickerDialogButtonStyle_serializer {
    public static func write(buffer: SerializerBase, value: PickerDialogButtonStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRole = value.role
        if (valueHolderForRole.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRoleTmpValue = valueHolderForRole
            valueSerializer.writeInt32(valueHolderForRoleTmpValue.value);
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
        let valueHolderForFontWeight = value.fontWeight
        if (valueHolderForFontWeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontWeightTmpValue = valueHolderForFontWeight
            if (valueHolderForFontWeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontWeightTmpValueForIdx0 = valueHolderForFontWeightTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForFontWeightTmpValueForIdx0.value);
            } else if (valueHolderForFontWeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontWeightTmpValueForIdx1 = valueHolderForFontWeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForFontWeightTmpValueForIdx1);
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
        let valueHolderForFontFamily = value.fontFamily
        if (valueHolderForFontFamily.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontFamilyTmpValue = valueHolderForFontFamily
            if (valueHolderForFontFamilyTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontFamilyTmpValueForIdx0 = valueHolderForFontFamilyTmpValue.getValue0()
                valueSerializer.writeCustomObject("Any", valueHolderForFontFamilyTmpValueForIdx0);
            } else if (valueHolderForFontFamilyTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontFamilyTmpValueForIdx1 = valueHolderForFontFamilyTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForFontFamilyTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackgroundColor = value.backgroundColor
        if (valueHolderForBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor
            if (valueHolderForBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBackgroundColorTmpValueForIdx0.value);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBackgroundColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderRadius = value.borderRadius
        if (valueHolderForBorderRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderRadiusTmpValue = valueHolderForBorderRadius
            if (valueHolderForBorderRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderRadiusTmpValueForIdx0 = valueHolderForBorderRadiusTmpValue.getValue0()
                if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx0 = valueHolderForBorderRadiusTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForBorderRadiusTmpValueForIdx0ForIdx0);
                } else if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx1 = valueHolderForBorderRadiusTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForBorderRadiusTmpValueForIdx0ForIdx1);
                } else if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx2 = valueHolderForBorderRadiusTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForBorderRadiusTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderRadiusTmpValueForIdx1 = valueHolderForBorderRadiusTmpValue.getValue1()
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForBorderRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPrimary = value.primary
        if (valueHolderForPrimary.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPrimaryTmpValue = valueHolderForPrimary
            valueSerializer.writeBoolean(valueHolderForPrimaryTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PickerDialogButtonStyle {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<ButtonType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = ButtonType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<ButtonType> = typeTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<ButtonStyleMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = ButtonStyleMode(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<ButtonStyleMode> = styleTmpBuf
        let roleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var roleTmpBuf: Option<ButtonRole> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(roleTmpBuf_runtimeType))) {
            roleTmpBuf = ButtonRole(valueDeserializer.readInt32())
        }
        let roleTmpResult: Option<ButtonRole> = roleTmpBuf
        let fontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontSizeTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontSizeTmpBuf_runtimeType))) {
            let fontSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontSizeTmpBuf_: Length 
            if (fontSizeTmpBuf_UnionSelector == Int8(0)) {
                fontSizeTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontSizeTmpBuf_UnionSelector == Int8(1)) {
                fontSizeTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontSizeTmpBuf_UnionSelector == Int8(2)) {
                fontSizeTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            fontSizeTmpBuf = match (fontSizeTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontSizeTmpResult: Option<Length> = fontSizeTmpBuf
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
        let fontWeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontWeightTmpBuf: Option<Union_FontWeight_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontWeightTmpBuf_runtimeType))) {
            let fontWeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontWeightTmpBuf_: Union_FontWeight_Number_String 
            if (fontWeightTmpBuf_UnionSelector == Int8(0)) {
                fontWeightTmpBuf_ = Union_FontWeight_Number_String(FontWeight(valueDeserializer.readInt32()))
            } else if (fontWeightTmpBuf_UnionSelector == Int8(1)) {
                fontWeightTmpBuf_ = Union_FontWeight_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontWeightTmpBuf_UnionSelector == Int8(2)) {
                fontWeightTmpBuf_ = Union_FontWeight_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontWeightTmpBuf_ has to be chosen through deserialisation.")
            }
            fontWeightTmpBuf = match (fontWeightTmpBuf_ as Union_FontWeight_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontWeightTmpResult: Option<Union_FontWeight_Number_String> = fontWeightTmpBuf
        let fontStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontStyleTmpBuf: Option<FontStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontStyleTmpBuf_runtimeType))) {
            fontStyleTmpBuf = FontStyle(valueDeserializer.readInt32())
        }
        let fontStyleTmpResult: Option<FontStyle> = fontStyleTmpBuf
        let fontFamilyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontFamilyTmpBuf: Option<Union_Resource_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontFamilyTmpBuf_runtimeType))) {
            let fontFamilyTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontFamilyTmpBuf_: Union_Resource_String 
            if (fontFamilyTmpBuf_UnionSelector == Int8(0)) {
                fontFamilyTmpBuf_ = Union_Resource_String(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontFamilyTmpBuf_UnionSelector == Int8(1)) {
                fontFamilyTmpBuf_ = Union_Resource_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontFamilyTmpBuf_ has to be chosen through deserialisation.")
            }
            fontFamilyTmpBuf = match (fontFamilyTmpBuf_ as Union_Resource_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontFamilyTmpResult: Option<Union_Resource_String> = fontFamilyTmpBuf
        let backgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundColorTmpBuf_runtimeType))) {
            let backgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundColorTmpBuf_: ResourceColor 
            if (backgroundColorTmpBuf_UnionSelector == Int8(0)) {
                backgroundColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(1)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(2)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(3)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            backgroundColorTmpBuf = match (backgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundColorTmpResult: Option<ResourceColor> = backgroundColorTmpBuf
        let borderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderRadiusTmpBuf: Option<Union_Length_BorderRadiuses> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderRadiusTmpBuf_runtimeType))) {
            let borderRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderRadiusTmpBuf_: Union_Length_BorderRadiuses 
            if (borderRadiusTmpBuf_UnionSelector == Int8(0)) {
                let borderRadiusTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var borderRadiusTmpBuf_BufU: Length 
                if (borderRadiusTmpBuf_BufUUnionSelector == Int8(0)) {
                    borderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderRadiusTmpBuf_BufUUnionSelector == Int8(1)) {
                    borderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderRadiusTmpBuf_BufUUnionSelector == Int8(2)) {
                    borderRadiusTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for borderRadiusTmpBuf_BufU has to be chosen through deserialisation.")
                }
                borderRadiusTmpBuf_ = Union_Length_BorderRadiuses(match (borderRadiusTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(1)) {
                borderRadiusTmpBuf_ = Union_Length_BorderRadiuses(BorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            borderRadiusTmpBuf = match (borderRadiusTmpBuf_ as Union_Length_BorderRadiuses) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderRadiusTmpResult: Option<Union_Length_BorderRadiuses> = borderRadiusTmpBuf
        let primaryTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var primaryTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(primaryTmpBuf_runtimeType))) {
            primaryTmpBuf = valueDeserializer.readBoolean()
        }
        let primaryTmpResult: Option<Bool> = primaryTmpBuf
        var value: PickerDialogButtonStyle = PickerDialogButtonStyle(typeTmpResult, styleTmpResult, roleTmpResult, fontSizeTmpResult, fontColorTmpResult, fontWeightTmpResult, fontStyleTmpResult, fontFamilyTmpResult, backgroundColorTmpResult, borderRadiusTmpResult, primaryTmpResult)
        return value
    }
}
