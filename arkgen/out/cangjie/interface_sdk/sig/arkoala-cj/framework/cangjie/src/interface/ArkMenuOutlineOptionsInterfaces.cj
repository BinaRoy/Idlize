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
public interface MenuOutlineOptionsInterfaces <:  {
    public mut open prop width: Option<Union_Dimension_EdgeOutlineWidths>
    public mut open prop color: Option<Union_ResourceColor_EdgeColors>
}
public open class MenuOutlineOptions <: MenuOutlineOptionsInterfaces {
    private var width_container: Option<Union_Dimension_EdgeOutlineWidths>
    public mut open prop width: Option<Union_Dimension_EdgeOutlineWidths>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var color_container: Option<Union_ResourceColor_EdgeColors>
    public mut open prop color: Option<Union_ResourceColor_EdgeColors>
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    MenuOutlineOptions(width: Option<Union_Dimension_EdgeOutlineWidths>, color: Option<Union_ResourceColor_EdgeColors>) {
        this.width_container = width
        this.color_container = color
    }
}
public open class MenuOutlineOptions_serializer {
    public static func write(buffer: SerializerBase, value: MenuOutlineOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                if (valueHolderForWidthTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForWidthTmpValueForIdx0ForIdx0 = valueHolderForWidthTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0ForIdx0);
                } else if (valueHolderForWidthTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForWidthTmpValueForIdx0ForIdx1 = valueHolderForWidthTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx0ForIdx1);
                } else if (valueHolderForWidthTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForWidthTmpValueForIdx0ForIdx2 = valueHolderForWidthTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForWidthTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                EdgeOutlineWidths_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx1);
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
                if (valueHolderForColorTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForColorTmpValueForIdx0ForIdx0 = valueHolderForColorTmpValueForIdx0.getValue0()
                    valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx0ForIdx0.value);
                } else if (valueHolderForColorTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForColorTmpValueForIdx0ForIdx1 = valueHolderForColorTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForColorTmpValueForIdx0ForIdx1);
                } else if (valueHolderForColorTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForColorTmpValueForIdx0ForIdx2 = valueHolderForColorTmpValueForIdx0.getValue2()
                    valueSerializer.writeString(valueHolderForColorTmpValueForIdx0ForIdx2);
                } else if (valueHolderForColorTmpValueForIdx0.getSelector() == 3) {
                    valueSerializer.writeInt8(Int8(3));
                    let valueHolderForColorTmpValueForIdx0ForIdx3 = valueHolderForColorTmpValueForIdx0.getValue3()
                    valueSerializer.writeCustomObject("Any", valueHolderForColorTmpValueForIdx0ForIdx3);
                }
            } else if (valueHolderForColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorTmpValueForIdx1 = valueHolderForColorTmpValue.getValue1()
                EdgeColors_serializer.write(valueSerializer, valueHolderForColorTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): MenuOutlineOptions {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Union_Dimension_EdgeOutlineWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBuf_: Union_Dimension_EdgeOutlineWidths 
            if (widthTmpBuf_UnionSelector == Int8(0)) {
                let widthTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var widthTmpBuf_BufU: Dimension 
                if (widthTmpBuf_BufUUnionSelector == Int8(0)) {
                    widthTmpBuf_BufU = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (widthTmpBuf_BufUUnionSelector == Int8(1)) {
                    widthTmpBuf_BufU = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (widthTmpBuf_BufUUnionSelector == Int8(2)) {
                    widthTmpBuf_BufU = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for widthTmpBuf_BufU has to be chosen through deserialisation.")
                }
                widthTmpBuf_ = Union_Dimension_EdgeOutlineWidths(match (widthTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(1)) {
                widthTmpBuf_ = Union_Dimension_EdgeOutlineWidths(EdgeOutlineWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBuf_ as Union_Dimension_EdgeOutlineWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Union_Dimension_EdgeOutlineWidths> = widthTmpBuf
        let colorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorTmpBuf: Option<Union_ResourceColor_EdgeColors> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorTmpBuf_runtimeType))) {
            let colorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var colorTmpBuf_: Union_ResourceColor_EdgeColors 
            if (colorTmpBuf_UnionSelector == Int8(0)) {
                let colorTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var colorTmpBuf_BufU: ResourceColor 
                if (colorTmpBuf_BufUUnionSelector == Int8(0)) {
                    colorTmpBuf_BufU = ResourceColor(Color(valueDeserializer.readInt32()))
                } else if (colorTmpBuf_BufUUnionSelector == Int8(1)) {
                    colorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (colorTmpBuf_BufUUnionSelector == Int8(2)) {
                    colorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (colorTmpBuf_BufUUnionSelector == Int8(3)) {
                    colorTmpBuf_BufU = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for colorTmpBuf_BufU has to be chosen through deserialisation.")
                }
                colorTmpBuf_ = Union_ResourceColor_EdgeColors(match (colorTmpBuf_BufU as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(1)) {
                colorTmpBuf_ = Union_ResourceColor_EdgeColors(EdgeColors_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for colorTmpBuf_ has to be chosen through deserialisation.")
            }
            colorTmpBuf = match (colorTmpBuf_ as Union_ResourceColor_EdgeColors) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorTmpResult: Option<Union_ResourceColor_EdgeColors> = colorTmpBuf
        var value: MenuOutlineOptions = MenuOutlineOptions(widthTmpResult, colorTmpResult)
        return value
    }
}
