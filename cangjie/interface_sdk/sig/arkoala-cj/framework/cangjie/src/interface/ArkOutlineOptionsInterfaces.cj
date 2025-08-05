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
public interface OutlineOptionsInterfaces <:  {
    public mut open prop width: Option<Union_EdgeOutlineWidths_Dimension>
    public mut open prop color: Option<Union_EdgeColors_ResourceColor_LocalizedEdgeColors>
    public mut open prop radius: Option<Union_OutlineRadiuses_Dimension>
    public mut open prop style: Option<Union_EdgeOutlineStyles_OutlineStyle>
}
public open class OutlineOptions <: OutlineOptionsInterfaces {
    private var width_container: Option<Union_EdgeOutlineWidths_Dimension>
    public mut open prop width: Option<Union_EdgeOutlineWidths_Dimension>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var color_container: Option<Union_EdgeColors_ResourceColor_LocalizedEdgeColors>
    public mut open prop color: Option<Union_EdgeColors_ResourceColor_LocalizedEdgeColors>
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    private var radius_container: Option<Union_OutlineRadiuses_Dimension>
    public mut open prop radius: Option<Union_OutlineRadiuses_Dimension>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var style_container: Option<Union_EdgeOutlineStyles_OutlineStyle>
    public mut open prop style: Option<Union_EdgeOutlineStyles_OutlineStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    OutlineOptions(width: Option<Union_EdgeOutlineWidths_Dimension>, color: Option<Union_EdgeColors_ResourceColor_LocalizedEdgeColors>, radius: Option<Union_OutlineRadiuses_Dimension>, style: Option<Union_EdgeOutlineStyles_OutlineStyle>) {
        this.width_container = width
        this.color_container = color
        this.radius_container = radius
        this.style_container = style
    }
}
public open class OutlineOptions_serializer {
    public static func write(buffer: SerializerBase, value: OutlineOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                EdgeOutlineWidths_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx0);
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                if (valueHolderForWidthTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForWidthTmpValueForIdx1ForIdx0 = valueHolderForWidthTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForWidthTmpValueForIdx1ForIdx0);
                } else if (valueHolderForWidthTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForWidthTmpValueForIdx1ForIdx1 = valueHolderForWidthTmpValueForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx1ForIdx1);
                } else if (valueHolderForWidthTmpValueForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForWidthTmpValueForIdx1ForIdx2 = valueHolderForWidthTmpValueForIdx1.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForWidthTmpValueForIdx1ForIdx2);
                }
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
                EdgeColors_serializer.write(valueSerializer, valueHolderForColorTmpValueForIdx0);
            } else if (valueHolderForColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorTmpValueForIdx1 = valueHolderForColorTmpValue.getValue1()
                if (valueHolderForColorTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForColorTmpValueForIdx1ForIdx0 = valueHolderForColorTmpValueForIdx1.getValue0()
                    valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx1ForIdx0.value);
                } else if (valueHolderForColorTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForColorTmpValueForIdx1ForIdx1 = valueHolderForColorTmpValueForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForColorTmpValueForIdx1ForIdx1);
                } else if (valueHolderForColorTmpValueForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForColorTmpValueForIdx1ForIdx2 = valueHolderForColorTmpValueForIdx1.getValue2()
                    valueSerializer.writeString(valueHolderForColorTmpValueForIdx1ForIdx2);
                } else if (valueHolderForColorTmpValueForIdx1.getSelector() == 3) {
                    valueSerializer.writeInt8(Int8(3));
                    let valueHolderForColorTmpValueForIdx1ForIdx3 = valueHolderForColorTmpValueForIdx1.getValue3()
                    valueSerializer.writeCustomObject("Any", valueHolderForColorTmpValueForIdx1ForIdx3);
                }
            } else if (valueHolderForColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorTmpValueForIdx2 = valueHolderForColorTmpValue.getValue2()
                LocalizedEdgeColors_serializer.write(valueSerializer, valueHolderForColorTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRadius = value.radius
        if (valueHolderForRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRadiusTmpValue = valueHolderForRadius
            if (valueHolderForRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRadiusTmpValueForIdx0 = valueHolderForRadiusTmpValue.getValue0()
                OutlineRadiuses_serializer.write(valueSerializer, valueHolderForRadiusTmpValueForIdx0);
            } else if (valueHolderForRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRadiusTmpValueForIdx1 = valueHolderForRadiusTmpValue.getValue1()
                if (valueHolderForRadiusTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForRadiusTmpValueForIdx1ForIdx0 = valueHolderForRadiusTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForRadiusTmpValueForIdx1ForIdx0);
                } else if (valueHolderForRadiusTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForRadiusTmpValueForIdx1ForIdx1 = valueHolderForRadiusTmpValueForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForRadiusTmpValueForIdx1ForIdx1);
                } else if (valueHolderForRadiusTmpValueForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForRadiusTmpValueForIdx1ForIdx2 = valueHolderForRadiusTmpValueForIdx1.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForRadiusTmpValueForIdx1ForIdx2);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            if (valueHolderForStyleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStyleTmpValueForIdx0 = valueHolderForStyleTmpValue.getValue0()
                EdgeOutlineStyles_serializer.write(valueSerializer, valueHolderForStyleTmpValueForIdx0);
            } else if (valueHolderForStyleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStyleTmpValueForIdx1 = valueHolderForStyleTmpValue.getValue1()
                valueSerializer.writeInt32(valueHolderForStyleTmpValueForIdx1.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): OutlineOptions {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Union_EdgeOutlineWidths_Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBuf_: Union_EdgeOutlineWidths_Dimension 
            if (widthTmpBuf_UnionSelector == Int8(0)) {
                widthTmpBuf_ = Union_EdgeOutlineWidths_Dimension(EdgeOutlineWidths_serializer.read(valueDeserializer))
            } else if (widthTmpBuf_UnionSelector == Int8(1)) {
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
                widthTmpBuf_ = Union_EdgeOutlineWidths_Dimension(match (widthTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBuf_ as Union_EdgeOutlineWidths_Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Union_EdgeOutlineWidths_Dimension> = widthTmpBuf
        let colorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorTmpBuf: Option<Union_EdgeColors_ResourceColor_LocalizedEdgeColors> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorTmpBuf_runtimeType))) {
            let colorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var colorTmpBuf_: Union_EdgeColors_ResourceColor_LocalizedEdgeColors 
            if (colorTmpBuf_UnionSelector == Int8(0)) {
                colorTmpBuf_ = Union_EdgeColors_ResourceColor_LocalizedEdgeColors(EdgeColors_serializer.read(valueDeserializer))
            } else if (colorTmpBuf_UnionSelector == Int8(1)) {
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
                colorTmpBuf_ = Union_EdgeColors_ResourceColor_LocalizedEdgeColors(match (colorTmpBuf_BufU as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(2)) {
                colorTmpBuf_ = Union_EdgeColors_ResourceColor_LocalizedEdgeColors(LocalizedEdgeColors_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for colorTmpBuf_ has to be chosen through deserialisation.")
            }
            colorTmpBuf = match (colorTmpBuf_ as Union_EdgeColors_ResourceColor_LocalizedEdgeColors) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorTmpResult: Option<Union_EdgeColors_ResourceColor_LocalizedEdgeColors> = colorTmpBuf
        let radiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var radiusTmpBuf: Option<Union_OutlineRadiuses_Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(radiusTmpBuf_runtimeType))) {
            let radiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var radiusTmpBuf_: Union_OutlineRadiuses_Dimension 
            if (radiusTmpBuf_UnionSelector == Int8(0)) {
                radiusTmpBuf_ = Union_OutlineRadiuses_Dimension(OutlineRadiuses_serializer.read(valueDeserializer))
            } else if (radiusTmpBuf_UnionSelector == Int8(1)) {
                let radiusTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var radiusTmpBuf_BufU: Dimension 
                if (radiusTmpBuf_BufUUnionSelector == Int8(0)) {
                    radiusTmpBuf_BufU = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (radiusTmpBuf_BufUUnionSelector == Int8(1)) {
                    radiusTmpBuf_BufU = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (radiusTmpBuf_BufUUnionSelector == Int8(2)) {
                    radiusTmpBuf_BufU = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for radiusTmpBuf_BufU has to be chosen through deserialisation.")
                }
                radiusTmpBuf_ = Union_OutlineRadiuses_Dimension(match (radiusTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for radiusTmpBuf_ has to be chosen through deserialisation.")
            }
            radiusTmpBuf = match (radiusTmpBuf_ as Union_OutlineRadiuses_Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let radiusTmpResult: Option<Union_OutlineRadiuses_Dimension> = radiusTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<Union_EdgeOutlineStyles_OutlineStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            let styleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var styleTmpBuf_: Union_EdgeOutlineStyles_OutlineStyle 
            if (styleTmpBuf_UnionSelector == Int8(0)) {
                styleTmpBuf_ = Union_EdgeOutlineStyles_OutlineStyle(EdgeOutlineStyles_serializer.read(valueDeserializer))
            } else if (styleTmpBuf_UnionSelector == Int8(1)) {
                styleTmpBuf_ = Union_EdgeOutlineStyles_OutlineStyle(OutlineStyle(valueDeserializer.readInt32()))
            } else {
                throw Exception("One of the branches for styleTmpBuf_ has to be chosen through deserialisation.")
            }
            styleTmpBuf = match (styleTmpBuf_ as Union_EdgeOutlineStyles_OutlineStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let styleTmpResult: Option<Union_EdgeOutlineStyles_OutlineStyle> = styleTmpBuf
        var value: OutlineOptions = OutlineOptions(widthTmpResult, colorTmpResult, radiusTmpResult, styleTmpResult)
        return value
    }
}
