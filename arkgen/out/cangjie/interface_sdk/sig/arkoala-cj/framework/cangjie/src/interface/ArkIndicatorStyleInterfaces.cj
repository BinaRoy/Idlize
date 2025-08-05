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
public interface IndicatorStyleInterfaces <:  {
    public mut open prop height: Option<Length>
    public mut open prop width: Option<Length>
    public mut open prop borderRadius: Option<Length>
    public mut open prop marginTop: Option<Length>
    public mut open prop color: Option<ResourceColor>
    public mut open prop selectedColor: Option<ResourceColor>
    public mut open prop left: Option<Length>
    public mut open prop top: Option<Length>
    public mut open prop right: Option<Length>
    public mut open prop bottom: Option<Length>
    public mut open prop size: Option<Length>
    public mut open prop mask: Option<Bool>
}
public open class IndicatorStyle <: IndicatorStyleInterfaces {
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
    private var left_container: Option<Length>
    public mut open prop left: Option<Length>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    private var top_container: Option<Length>
    public mut open prop top: Option<Length>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var right_container: Option<Length>
    public mut open prop right: Option<Length>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    private var bottom_container: Option<Length>
    public mut open prop bottom: Option<Length>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var size_container: Option<Length>
    public mut open prop size: Option<Length>
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    private var mask_container: Option<Bool>
    public mut open prop mask: Option<Bool>
    {
        get() {
            return mask_container
        }
        set(mask) {
            mask_container = mask
        }
    }
    IndicatorStyle(height: Option<Length>, width: Option<Length>, borderRadius: Option<Length>, marginTop: Option<Length>, color: Option<ResourceColor>, selectedColor: Option<ResourceColor>, left: Option<Length>, top: Option<Length>, right: Option<Length>, bottom: Option<Length>, size: Option<Length>, mask: Option<Bool>) {
        this.height_container = height
        this.width_container = width
        this.borderRadius_container = borderRadius
        this.marginTop_container = marginTop
        this.color_container = color
        this.selectedColor_container = selectedColor
        this.left_container = left
        this.top_container = top
        this.right_container = right
        this.bottom_container = bottom
        this.size_container = size
        this.mask_container = mask
    }
}
public open class IndicatorStyle_serializer {
    public static func write(buffer: SerializerBase, value: IndicatorStyle): Unit {
        var valueSerializer: SerializerBase = buffer
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
        let valueHolderForLeft = value.left
        if (valueHolderForLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeftTmpValue = valueHolderForLeft
            if (valueHolderForLeftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLeftTmpValueForIdx0 = valueHolderForLeftTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForLeftTmpValueForIdx0);
            } else if (valueHolderForLeftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLeftTmpValueForIdx1 = valueHolderForLeftTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForLeftTmpValueForIdx1);
            } else if (valueHolderForLeftTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForLeftTmpValueForIdx2 = valueHolderForLeftTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForLeftTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            if (valueHolderForTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTopTmpValueForIdx0 = valueHolderForTopTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForTopTmpValueForIdx0);
            } else if (valueHolderForTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTopTmpValueForIdx1 = valueHolderForTopTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTopTmpValueForIdx1);
            } else if (valueHolderForTopTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTopTmpValueForIdx2 = valueHolderForTopTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForTopTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRight = value.right
        if (valueHolderForRight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRightTmpValue = valueHolderForRight
            if (valueHolderForRightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRightTmpValueForIdx0 = valueHolderForRightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForRightTmpValueForIdx0);
            } else if (valueHolderForRightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRightTmpValueForIdx1 = valueHolderForRightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForRightTmpValueForIdx1);
            } else if (valueHolderForRightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForRightTmpValueForIdx2 = valueHolderForRightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForRightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (valueHolderForBottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            if (valueHolderForBottomTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBottomTmpValueForIdx0 = valueHolderForBottomTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBottomTmpValueForIdx0);
            } else if (valueHolderForBottomTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBottomTmpValueForIdx1 = valueHolderForBottomTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBottomTmpValueForIdx1);
            } else if (valueHolderForBottomTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBottomTmpValueForIdx2 = valueHolderForBottomTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBottomTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSize = value.size
        if (valueHolderForSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSizeTmpValue = valueHolderForSize
            if (valueHolderForSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSizeTmpValueForIdx0 = valueHolderForSizeTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSizeTmpValueForIdx0);
            } else if (valueHolderForSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSizeTmpValueForIdx1 = valueHolderForSizeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSizeTmpValueForIdx1);
            } else if (valueHolderForSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSizeTmpValueForIdx2 = valueHolderForSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSizeTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMask = value.mask
        if (valueHolderForMask.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaskTmpValue = valueHolderForMask
            valueSerializer.writeBoolean(valueHolderForMaskTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): IndicatorStyle {
        var valueDeserializer: DeserializerBase = buffer
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
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            let leftTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var leftTmpBuf_: Length 
            if (leftTmpBuf_UnionSelector == Int8(0)) {
                leftTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leftTmpBuf_UnionSelector == Int8(1)) {
                leftTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leftTmpBuf_UnionSelector == Int8(2)) {
                leftTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for leftTmpBuf_ has to be chosen through deserialisation.")
            }
            leftTmpBuf = match (leftTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let leftTmpResult: Option<Length> = leftTmpBuf
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            let topTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var topTmpBuf_: Length 
            if (topTmpBuf_UnionSelector == Int8(0)) {
                topTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(1)) {
                topTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(2)) {
                topTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for topTmpBuf_ has to be chosen through deserialisation.")
            }
            topTmpBuf = match (topTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topTmpResult: Option<Length> = topTmpBuf
        let rightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rightTmpBuf_runtimeType))) {
            let rightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var rightTmpBuf_: Length 
            if (rightTmpBuf_UnionSelector == Int8(0)) {
                rightTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rightTmpBuf_UnionSelector == Int8(1)) {
                rightTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rightTmpBuf_UnionSelector == Int8(2)) {
                rightTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for rightTmpBuf_ has to be chosen through deserialisation.")
            }
            rightTmpBuf = match (rightTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let rightTmpResult: Option<Length> = rightTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            let bottomTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var bottomTmpBuf_: Length 
            if (bottomTmpBuf_UnionSelector == Int8(0)) {
                bottomTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBuf_UnionSelector == Int8(1)) {
                bottomTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBuf_UnionSelector == Int8(2)) {
                bottomTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for bottomTmpBuf_ has to be chosen through deserialisation.")
            }
            bottomTmpBuf = match (bottomTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomTmpResult: Option<Length> = bottomTmpBuf
        let sizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sizeTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sizeTmpBuf_runtimeType))) {
            let sizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var sizeTmpBuf_: Length 
            if (sizeTmpBuf_UnionSelector == Int8(0)) {
                sizeTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_UnionSelector == Int8(1)) {
                sizeTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_UnionSelector == Int8(2)) {
                sizeTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for sizeTmpBuf_ has to be chosen through deserialisation.")
            }
            sizeTmpBuf = match (sizeTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sizeTmpResult: Option<Length> = sizeTmpBuf
        let maskTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskTmpBuf_runtimeType))) {
            maskTmpBuf = valueDeserializer.readBoolean()
        }
        let maskTmpResult: Option<Bool> = maskTmpBuf
        var value: IndicatorStyle = IndicatorStyle(heightTmpResult, widthTmpResult, borderRadiusTmpResult, marginTopTmpResult, colorTmpResult, selectedColorTmpResult, leftTmpResult, topTmpResult, rightTmpResult, bottomTmpResult, sizeTmpResult, maskTmpResult)
        return value
    }
}
