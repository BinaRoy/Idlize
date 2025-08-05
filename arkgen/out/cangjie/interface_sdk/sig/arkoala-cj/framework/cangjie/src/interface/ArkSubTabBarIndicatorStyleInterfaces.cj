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
public interface SubTabBarIndicatorStyleInterfaces <:  {
    public mut open prop color: Option<ResourceColor>
    public mut open prop height: Option<Length>
    public mut open prop width: Option<Length>
    public mut open prop borderRadius: Option<Length>
    public mut open prop marginTop: Option<Length>
}
public open class SubTabBarIndicatorStyle <: SubTabBarIndicatorStyleInterfaces {
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
    private var height_container: Option<Length>
    public mut open prop height: Option<Length>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var width_container: Option<Length>
    public mut open prop width: Option<Length>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var borderRadius_container: Option<Length>
    public mut open prop borderRadius: Option<Length>
    {
        get() {
            return borderRadius_container
        }
        set(borderRadius) {
            borderRadius_container = borderRadius
        }
    }
    private var marginTop_container: Option<Length>
    public mut open prop marginTop: Option<Length>
    {
        get() {
            return marginTop_container
        }
        set(marginTop) {
            marginTop_container = marginTop
        }
    }
    SubTabBarIndicatorStyle(color: Option<ResourceColor>, height: Option<Length>, width: Option<Length>, borderRadius: Option<Length>, marginTop: Option<Length>) {
        this.color_container = color
        this.height_container = height
        this.width_container = width
        this.borderRadius_container = borderRadius
        this.marginTop_container = marginTop
    }
}
public open class SubTabBarIndicatorStyle_serializer {
    public static func write(buffer: SerializerBase, value: SubTabBarIndicatorStyle): Unit {
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
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            if (valueHolderForHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForHeightTmpValueForIdx0);
            } else if (valueHolderForHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx1);
            } else if (valueHolderForHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForHeightTmpValueForIdx2 = valueHolderForHeightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForHeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0);
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx1);
            } else if (valueHolderForWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForWidthTmpValueForIdx2);
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
                valueSerializer.writeString(valueHolderForBorderRadiusTmpValueForIdx0);
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderRadiusTmpValueForIdx1 = valueHolderForBorderRadiusTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderRadiusTmpValueForIdx1);
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderRadiusTmpValueForIdx2 = valueHolderForBorderRadiusTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBorderRadiusTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMarginTop = value.marginTop
        if (valueHolderForMarginTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginTopTmpValue = valueHolderForMarginTop
            if (valueHolderForMarginTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarginTopTmpValueForIdx0 = valueHolderForMarginTopTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMarginTopTmpValueForIdx0);
            } else if (valueHolderForMarginTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginTopTmpValueForIdx1 = valueHolderForMarginTopTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMarginTopTmpValueForIdx1);
            } else if (valueHolderForMarginTopTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMarginTopTmpValueForIdx2 = valueHolderForMarginTopTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMarginTopTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SubTabBarIndicatorStyle {
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
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            let heightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var heightTmpBuf_: Length 
            if (heightTmpBuf_UnionSelector == Int8(0)) {
                heightTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBuf_UnionSelector == Int8(1)) {
                heightTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBuf_UnionSelector == Int8(2)) {
                heightTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for heightTmpBuf_ has to be chosen through deserialisation.")
            }
            heightTmpBuf = match (heightTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Length> = heightTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBuf_: Length 
            if (widthTmpBuf_UnionSelector == Int8(0)) {
                widthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(1)) {
                widthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(2)) {
                widthTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Length> = widthTmpBuf
        let borderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderRadiusTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderRadiusTmpBuf_runtimeType))) {
            let borderRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderRadiusTmpBuf_: Length 
            if (borderRadiusTmpBuf_UnionSelector == Int8(0)) {
                borderRadiusTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(1)) {
                borderRadiusTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(2)) {
                borderRadiusTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for borderRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            borderRadiusTmpBuf = match (borderRadiusTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderRadiusTmpResult: Option<Length> = borderRadiusTmpBuf
        let marginTopTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTopTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTopTmpBuf_runtimeType))) {
            let marginTopTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTopTmpBuf_: Length 
            if (marginTopTmpBuf_UnionSelector == Int8(0)) {
                marginTopTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTopTmpBuf_UnionSelector == Int8(1)) {
                marginTopTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTopTmpBuf_UnionSelector == Int8(2)) {
                marginTopTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for marginTopTmpBuf_ has to be chosen through deserialisation.")
            }
            marginTopTmpBuf = match (marginTopTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTopTmpResult: Option<Length> = marginTopTmpBuf
        var value: SubTabBarIndicatorStyle = SubTabBarIndicatorStyle(colorTmpResult, heightTmpResult, widthTmpResult, borderRadiusTmpResult, marginTopTmpResult)
        return value
    }
}
