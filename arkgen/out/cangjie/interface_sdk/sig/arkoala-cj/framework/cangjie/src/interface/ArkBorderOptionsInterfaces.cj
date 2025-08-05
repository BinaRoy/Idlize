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
public interface BorderOptionsInterfaces <:  {
    public mut open prop width: Option<Union_EdgeWidths_Length_LocalizedEdgeWidths>
    public mut open prop color: Option<Union_EdgeColors_ResourceColor_LocalizedEdgeColors>
    public mut open prop radius: Option<Union_BorderRadiuses_Length_LocalizedBorderRadiuses>
    public mut open prop style: Option<Union_EdgeStyles_BorderStyle>
    public mut open prop dashGap: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths>
    public mut open prop dashWidth: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths>
}
public open class BorderOptions <: BorderOptionsInterfaces {
    private var width_container: Option<Union_EdgeWidths_Length_LocalizedEdgeWidths>
    public mut open prop width: Option<Union_EdgeWidths_Length_LocalizedEdgeWidths>
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
    private var radius_container: Option<Union_BorderRadiuses_Length_LocalizedBorderRadiuses>
    public mut open prop radius: Option<Union_BorderRadiuses_Length_LocalizedBorderRadiuses>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var style_container: Option<Union_EdgeStyles_BorderStyle>
    public mut open prop style: Option<Union_EdgeStyles_BorderStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var dashGap_container: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths>
    public mut open prop dashGap: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths>
    {
        get() {
            return dashGap_container
        }
        set(dashGap) {
            dashGap_container = dashGap
        }
    }
    private var dashWidth_container: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths>
    public mut open prop dashWidth: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths>
    {
        get() {
            return dashWidth_container
        }
        set(dashWidth) {
            dashWidth_container = dashWidth
        }
    }
    BorderOptions(width: Option<Union_EdgeWidths_Length_LocalizedEdgeWidths>, color: Option<Union_EdgeColors_ResourceColor_LocalizedEdgeColors>, radius: Option<Union_BorderRadiuses_Length_LocalizedBorderRadiuses>, style: Option<Union_EdgeStyles_BorderStyle>, dashGap: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths>, dashWidth: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths>) {
        this.width_container = width
        this.color_container = color
        this.radius_container = radius
        this.style_container = style
        this.dashGap_container = dashGap
        this.dashWidth_container = dashWidth
    }
}
public open class BorderOptions_serializer {
    public static func write(buffer: SerializerBase, value: BorderOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                EdgeWidths_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx0);
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
            } else if (valueHolderForWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx2);
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
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForRadiusTmpValueForIdx0);
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
            } else if (valueHolderForRadiusTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForRadiusTmpValueForIdx2 = valueHolderForRadiusTmpValue.getValue2()
                LocalizedBorderRadiuses_serializer.write(valueSerializer, valueHolderForRadiusTmpValueForIdx2);
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
                EdgeStyles_serializer.write(valueSerializer, valueHolderForStyleTmpValueForIdx0);
            } else if (valueHolderForStyleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStyleTmpValueForIdx1 = valueHolderForStyleTmpValue.getValue1()
                valueSerializer.writeInt32(valueHolderForStyleTmpValueForIdx1.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDashGap = value.dashGap
        if (valueHolderForDashGap.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDashGapTmpValue = valueHolderForDashGap
            if (valueHolderForDashGapTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForDashGapTmpValueForIdx0 = valueHolderForDashGapTmpValue.getValue0()
                EdgeWidths_serializer.write(valueSerializer, valueHolderForDashGapTmpValueForIdx0);
            } else if (valueHolderForDashGapTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForDashGapTmpValueForIdx1 = valueHolderForDashGapTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForDashGapTmpValueForIdx1);
            } else if (valueHolderForDashGapTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForDashGapTmpValueForIdx2 = valueHolderForDashGapTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(valueSerializer, valueHolderForDashGapTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDashWidth = value.dashWidth
        if (valueHolderForDashWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDashWidthTmpValue = valueHolderForDashWidth
            if (valueHolderForDashWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForDashWidthTmpValueForIdx0 = valueHolderForDashWidthTmpValue.getValue0()
                EdgeWidths_serializer.write(valueSerializer, valueHolderForDashWidthTmpValueForIdx0);
            } else if (valueHolderForDashWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForDashWidthTmpValueForIdx1 = valueHolderForDashWidthTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForDashWidthTmpValueForIdx1);
            } else if (valueHolderForDashWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForDashWidthTmpValueForIdx2 = valueHolderForDashWidthTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(valueSerializer, valueHolderForDashWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BorderOptions {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Union_EdgeWidths_Length_LocalizedEdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBuf_: Union_EdgeWidths_Length_LocalizedEdgeWidths 
            if (widthTmpBuf_UnionSelector == Int8(0)) {
                widthTmpBuf_ = Union_EdgeWidths_Length_LocalizedEdgeWidths(EdgeWidths_serializer.read(valueDeserializer))
            } else if (widthTmpBuf_UnionSelector == Int8(1)) {
                let widthTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var widthTmpBuf_BufU: Length 
                if (widthTmpBuf_BufUUnionSelector == Int8(0)) {
                    widthTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (widthTmpBuf_BufUUnionSelector == Int8(1)) {
                    widthTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (widthTmpBuf_BufUUnionSelector == Int8(2)) {
                    widthTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for widthTmpBuf_BufU has to be chosen through deserialisation.")
                }
                widthTmpBuf_ = Union_EdgeWidths_Length_LocalizedEdgeWidths(match (widthTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(2)) {
                widthTmpBuf_ = Union_EdgeWidths_Length_LocalizedEdgeWidths(LocalizedEdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBuf_ as Union_EdgeWidths_Length_LocalizedEdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Union_EdgeWidths_Length_LocalizedEdgeWidths> = widthTmpBuf
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
        var radiusTmpBuf: Option<Union_BorderRadiuses_Length_LocalizedBorderRadiuses> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(radiusTmpBuf_runtimeType))) {
            let radiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var radiusTmpBuf_: Union_BorderRadiuses_Length_LocalizedBorderRadiuses 
            if (radiusTmpBuf_UnionSelector == Int8(0)) {
                radiusTmpBuf_ = Union_BorderRadiuses_Length_LocalizedBorderRadiuses(BorderRadiuses_serializer.read(valueDeserializer))
            } else if (radiusTmpBuf_UnionSelector == Int8(1)) {
                let radiusTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var radiusTmpBuf_BufU: Length 
                if (radiusTmpBuf_BufUUnionSelector == Int8(0)) {
                    radiusTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (radiusTmpBuf_BufUUnionSelector == Int8(1)) {
                    radiusTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (radiusTmpBuf_BufUUnionSelector == Int8(2)) {
                    radiusTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for radiusTmpBuf_BufU has to be chosen through deserialisation.")
                }
                radiusTmpBuf_ = Union_BorderRadiuses_Length_LocalizedBorderRadiuses(match (radiusTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (radiusTmpBuf_UnionSelector == Int8(2)) {
                radiusTmpBuf_ = Union_BorderRadiuses_Length_LocalizedBorderRadiuses(LocalizedBorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for radiusTmpBuf_ has to be chosen through deserialisation.")
            }
            radiusTmpBuf = match (radiusTmpBuf_ as Union_BorderRadiuses_Length_LocalizedBorderRadiuses) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let radiusTmpResult: Option<Union_BorderRadiuses_Length_LocalizedBorderRadiuses> = radiusTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<Union_EdgeStyles_BorderStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            let styleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var styleTmpBuf_: Union_EdgeStyles_BorderStyle 
            if (styleTmpBuf_UnionSelector == Int8(0)) {
                styleTmpBuf_ = Union_EdgeStyles_BorderStyle(EdgeStyles_serializer.read(valueDeserializer))
            } else if (styleTmpBuf_UnionSelector == Int8(1)) {
                styleTmpBuf_ = Union_EdgeStyles_BorderStyle(BorderStyle(valueDeserializer.readInt32()))
            } else {
                throw Exception("One of the branches for styleTmpBuf_ has to be chosen through deserialisation.")
            }
            styleTmpBuf = match (styleTmpBuf_ as Union_EdgeStyles_BorderStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let styleTmpResult: Option<Union_EdgeStyles_BorderStyle> = styleTmpBuf
        let dashGapTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dashGapTmpBuf: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dashGapTmpBuf_runtimeType))) {
            let dashGapTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var dashGapTmpBuf_: Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths 
            if (dashGapTmpBuf_UnionSelector == Int8(0)) {
                dashGapTmpBuf_ = Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths(EdgeWidths_serializer.read(valueDeserializer))
            } else if (dashGapTmpBuf_UnionSelector == Int8(1)) {
                dashGapTmpBuf_ = Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (dashGapTmpBuf_UnionSelector == Int8(2)) {
                dashGapTmpBuf_ = Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths(LocalizedEdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for dashGapTmpBuf_ has to be chosen through deserialisation.")
            }
            dashGapTmpBuf = match (dashGapTmpBuf_ as Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dashGapTmpResult: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths> = dashGapTmpBuf
        let dashWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dashWidthTmpBuf: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dashWidthTmpBuf_runtimeType))) {
            let dashWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var dashWidthTmpBuf_: Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths 
            if (dashWidthTmpBuf_UnionSelector == Int8(0)) {
                dashWidthTmpBuf_ = Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths(EdgeWidths_serializer.read(valueDeserializer))
            } else if (dashWidthTmpBuf_UnionSelector == Int8(1)) {
                dashWidthTmpBuf_ = Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (dashWidthTmpBuf_UnionSelector == Int8(2)) {
                dashWidthTmpBuf_ = Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths(LocalizedEdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for dashWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            dashWidthTmpBuf = match (dashWidthTmpBuf_ as Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dashWidthTmpResult: Option<Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths> = dashWidthTmpBuf
        var value: BorderOptions = BorderOptions(widthTmpResult, colorTmpResult, radiusTmpResult, styleTmpResult, dashGapTmpResult, dashWidthTmpResult)
        return value
    }
}
