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
public interface BadgeStyleInterfaces <:  {
    public mut open prop color: Option<ResourceColor>
    public mut open prop fontSize: Option<Union_Number_ResourceStr>
    public mut open prop badgeSize: Option<Union_Number_ResourceStr>
    public mut open prop badgeColor: Option<ResourceColor>
    public mut open prop borderColor: Option<ResourceColor>
    public mut open prop borderWidth: Option<Length>
    public mut open prop fontWeight: Option<Union_Number_FontWeight_ResourceStr>
}
public open class BadgeStyle <: BadgeStyleInterfaces {
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
    private var fontSize_container: Option<Union_Number_ResourceStr>
    public mut open prop fontSize: Option<Union_Number_ResourceStr>
    {
        get() {
            return fontSize_container
        }
        set(fontSize) {
            fontSize_container = fontSize
        }
    }
    private var badgeSize_container: Option<Union_Number_ResourceStr>
    public mut open prop badgeSize: Option<Union_Number_ResourceStr>
    {
        get() {
            return badgeSize_container
        }
        set(badgeSize) {
            badgeSize_container = badgeSize
        }
    }
    private var badgeColor_container: Option<ResourceColor>
    public mut open prop badgeColor: Option<ResourceColor>
    {
        get() {
            return badgeColor_container
        }
        set(badgeColor) {
            badgeColor_container = badgeColor
        }
    }
    private var borderColor_container: Option<ResourceColor>
    public mut open prop borderColor: Option<ResourceColor>
    {
        get() {
            return borderColor_container
        }
        set(borderColor) {
            borderColor_container = borderColor
        }
    }
    private var borderWidth_container: Option<Length>
    public mut open prop borderWidth: Option<Length>
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var fontWeight_container: Option<Union_Number_FontWeight_ResourceStr>
    public mut open prop fontWeight: Option<Union_Number_FontWeight_ResourceStr>
    {
        get() {
            return fontWeight_container
        }
        set(fontWeight) {
            fontWeight_container = fontWeight
        }
    }
    BadgeStyle(color: Option<ResourceColor>, fontSize: Option<Union_Number_ResourceStr>, badgeSize: Option<Union_Number_ResourceStr>, badgeColor: Option<ResourceColor>, borderColor: Option<ResourceColor>, borderWidth: Option<Length>, fontWeight: Option<Union_Number_FontWeight_ResourceStr>) {
        this.color_container = color
        this.fontSize_container = fontSize
        this.badgeSize_container = badgeSize
        this.badgeColor_container = badgeColor
        this.borderColor_container = borderColor
        this.borderWidth_container = borderWidth
        this.fontWeight_container = fontWeight
    }
}
public open class BadgeStyle_serializer {
    public static func write(buffer: SerializerBase, value: BadgeStyle): Unit {
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
        let valueHolderForFontSize = value.fontSize
        if (valueHolderForFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontSizeTmpValue = valueHolderForFontSize
            if (valueHolderForFontSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontSizeTmpValueForIdx0 = valueHolderForFontSizeTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForFontSizeTmpValueForIdx0);
            } else if (valueHolderForFontSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontSizeTmpValueForIdx1 = valueHolderForFontSizeTmpValue.getValue1()
                if (valueHolderForFontSizeTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForFontSizeTmpValueForIdx1ForIdx0 = valueHolderForFontSizeTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForFontSizeTmpValueForIdx1ForIdx0);
                } else if (valueHolderForFontSizeTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForFontSizeTmpValueForIdx1ForIdx1 = valueHolderForFontSizeTmpValueForIdx1.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForFontSizeTmpValueForIdx1ForIdx1);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBadgeSize = value.badgeSize
        if (valueHolderForBadgeSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBadgeSizeTmpValue = valueHolderForBadgeSize
            if (valueHolderForBadgeSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBadgeSizeTmpValueForIdx0 = valueHolderForBadgeSizeTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForBadgeSizeTmpValueForIdx0);
            } else if (valueHolderForBadgeSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBadgeSizeTmpValueForIdx1 = valueHolderForBadgeSizeTmpValue.getValue1()
                if (valueHolderForBadgeSizeTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForBadgeSizeTmpValueForIdx1ForIdx0 = valueHolderForBadgeSizeTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForBadgeSizeTmpValueForIdx1ForIdx0);
                } else if (valueHolderForBadgeSizeTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForBadgeSizeTmpValueForIdx1ForIdx1 = valueHolderForBadgeSizeTmpValueForIdx1.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForBadgeSizeTmpValueForIdx1ForIdx1);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBadgeColor = value.badgeColor
        if (valueHolderForBadgeColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBadgeColorTmpValue = valueHolderForBadgeColor
            if (valueHolderForBadgeColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBadgeColorTmpValueForIdx0 = valueHolderForBadgeColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBadgeColorTmpValueForIdx0.value);
            } else if (valueHolderForBadgeColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBadgeColorTmpValueForIdx1 = valueHolderForBadgeColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBadgeColorTmpValueForIdx1);
            } else if (valueHolderForBadgeColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBadgeColorTmpValueForIdx2 = valueHolderForBadgeColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBadgeColorTmpValueForIdx2);
            } else if (valueHolderForBadgeColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBadgeColorTmpValueForIdx3 = valueHolderForBadgeColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBadgeColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderColor = value.borderColor
        if (valueHolderForBorderColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderColorTmpValue = valueHolderForBorderColor
            if (valueHolderForBorderColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderColorTmpValueForIdx0 = valueHolderForBorderColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBorderColorTmpValueForIdx0.value);
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderColorTmpValueForIdx1 = valueHolderForBorderColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderColorTmpValueForIdx1);
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderColorTmpValueForIdx2 = valueHolderForBorderColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBorderColorTmpValueForIdx2);
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBorderColorTmpValueForIdx3 = valueHolderForBorderColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBorderColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderWidth = value.borderWidth
        if (valueHolderForBorderWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderWidthTmpValue = valueHolderForBorderWidth
            if (valueHolderForBorderWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderWidthTmpValueForIdx0 = valueHolderForBorderWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx0);
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthTmpValueForIdx1 = valueHolderForBorderWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx1);
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthTmpValueForIdx2 = valueHolderForBorderWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBorderWidthTmpValueForIdx2);
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
                valueSerializer.writeNumber(valueHolderForFontWeightTmpValueForIdx0);
            } else if (valueHolderForFontWeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontWeightTmpValueForIdx1 = valueHolderForFontWeightTmpValue.getValue1()
                valueSerializer.writeInt32(valueHolderForFontWeightTmpValueForIdx1.value);
            } else if (valueHolderForFontWeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFontWeightTmpValueForIdx2 = valueHolderForFontWeightTmpValue.getValue2()
                if (valueHolderForFontWeightTmpValueForIdx2.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForFontWeightTmpValueForIdx2ForIdx0 = valueHolderForFontWeightTmpValueForIdx2.getValue0()
                    valueSerializer.writeString(valueHolderForFontWeightTmpValueForIdx2ForIdx0);
                } else if (valueHolderForFontWeightTmpValueForIdx2.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForFontWeightTmpValueForIdx2ForIdx1 = valueHolderForFontWeightTmpValueForIdx2.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForFontWeightTmpValueForIdx2ForIdx1);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BadgeStyle {
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
        let fontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontSizeTmpBuf: Option<Union_Number_ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontSizeTmpBuf_runtimeType))) {
            let fontSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontSizeTmpBuf_: Union_Number_ResourceStr 
            if (fontSizeTmpBuf_UnionSelector == Int8(0)) {
                fontSizeTmpBuf_ = Union_Number_ResourceStr(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontSizeTmpBuf_UnionSelector == Int8(1)) {
                let fontSizeTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var fontSizeTmpBuf_BufU: ResourceStr 
                if (fontSizeTmpBuf_BufUUnionSelector == Int8(0)) {
                    fontSizeTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (fontSizeTmpBuf_BufUUnionSelector == Int8(1)) {
                    fontSizeTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for fontSizeTmpBuf_BufU has to be chosen through deserialisation.")
                }
                fontSizeTmpBuf_ = Union_Number_ResourceStr(match (fontSizeTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            fontSizeTmpBuf = match (fontSizeTmpBuf_ as Union_Number_ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontSizeTmpResult: Option<Union_Number_ResourceStr> = fontSizeTmpBuf
        let badgeSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var badgeSizeTmpBuf: Option<Union_Number_ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(badgeSizeTmpBuf_runtimeType))) {
            let badgeSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var badgeSizeTmpBuf_: Union_Number_ResourceStr 
            if (badgeSizeTmpBuf_UnionSelector == Int8(0)) {
                badgeSizeTmpBuf_ = Union_Number_ResourceStr(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (badgeSizeTmpBuf_UnionSelector == Int8(1)) {
                let badgeSizeTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var badgeSizeTmpBuf_BufU: ResourceStr 
                if (badgeSizeTmpBuf_BufUUnionSelector == Int8(0)) {
                    badgeSizeTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (badgeSizeTmpBuf_BufUUnionSelector == Int8(1)) {
                    badgeSizeTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for badgeSizeTmpBuf_BufU has to be chosen through deserialisation.")
                }
                badgeSizeTmpBuf_ = Union_Number_ResourceStr(match (badgeSizeTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for badgeSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            badgeSizeTmpBuf = match (badgeSizeTmpBuf_ as Union_Number_ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let badgeSizeTmpResult: Option<Union_Number_ResourceStr> = badgeSizeTmpBuf
        let badgeColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var badgeColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(badgeColorTmpBuf_runtimeType))) {
            let badgeColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var badgeColorTmpBuf_: ResourceColor 
            if (badgeColorTmpBuf_UnionSelector == Int8(0)) {
                badgeColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (badgeColorTmpBuf_UnionSelector == Int8(1)) {
                badgeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (badgeColorTmpBuf_UnionSelector == Int8(2)) {
                badgeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (badgeColorTmpBuf_UnionSelector == Int8(3)) {
                badgeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for badgeColorTmpBuf_ has to be chosen through deserialisation.")
            }
            badgeColorTmpBuf = match (badgeColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let badgeColorTmpResult: Option<ResourceColor> = badgeColorTmpBuf
        let borderColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBuf_runtimeType))) {
            let borderColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderColorTmpBuf_: ResourceColor 
            if (borderColorTmpBuf_UnionSelector == Int8(0)) {
                borderColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (borderColorTmpBuf_UnionSelector == Int8(1)) {
                borderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderColorTmpBuf_UnionSelector == Int8(2)) {
                borderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderColorTmpBuf_UnionSelector == Int8(3)) {
                borderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for borderColorTmpBuf_ has to be chosen through deserialisation.")
            }
            borderColorTmpBuf = match (borderColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderColorTmpResult: Option<ResourceColor> = borderColorTmpBuf
        let borderWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBuf_runtimeType))) {
            let borderWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBuf_: Length 
            if (borderWidthTmpBuf_UnionSelector == Int8(0)) {
                borderWidthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBuf_UnionSelector == Int8(1)) {
                borderWidthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBuf_UnionSelector == Int8(2)) {
                borderWidthTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for borderWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            borderWidthTmpBuf = match (borderWidthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpResult: Option<Length> = borderWidthTmpBuf
        let fontWeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontWeightTmpBuf: Option<Union_Number_FontWeight_ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontWeightTmpBuf_runtimeType))) {
            let fontWeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontWeightTmpBuf_: Union_Number_FontWeight_ResourceStr 
            if (fontWeightTmpBuf_UnionSelector == Int8(0)) {
                fontWeightTmpBuf_ = Union_Number_FontWeight_ResourceStr(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontWeightTmpBuf_UnionSelector == Int8(1)) {
                fontWeightTmpBuf_ = Union_Number_FontWeight_ResourceStr(FontWeight(valueDeserializer.readInt32()))
            } else if (fontWeightTmpBuf_UnionSelector == Int8(2)) {
                let fontWeightTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var fontWeightTmpBuf_BufU: ResourceStr 
                if (fontWeightTmpBuf_BufUUnionSelector == Int8(0)) {
                    fontWeightTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (fontWeightTmpBuf_BufUUnionSelector == Int8(1)) {
                    fontWeightTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for fontWeightTmpBuf_BufU has to be chosen through deserialisation.")
                }
                fontWeightTmpBuf_ = Union_Number_FontWeight_ResourceStr(match (fontWeightTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontWeightTmpBuf_ has to be chosen through deserialisation.")
            }
            fontWeightTmpBuf = match (fontWeightTmpBuf_ as Union_Number_FontWeight_ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontWeightTmpResult: Option<Union_Number_FontWeight_ResourceStr> = fontWeightTmpBuf
        var value: BadgeStyle = BadgeStyle(colorTmpResult, fontSizeTmpResult, badgeSizeTmpResult, badgeColorTmpResult, borderColorTmpResult, borderWidthTmpResult, fontWeightTmpResult)
        return value
    }
}
