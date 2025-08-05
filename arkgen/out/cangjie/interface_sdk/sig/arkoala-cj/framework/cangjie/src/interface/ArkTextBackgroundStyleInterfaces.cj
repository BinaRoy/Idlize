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
public interface TextBackgroundStyleInterfaces <:  {
    public mut open prop color: Option<ResourceColor>
    public mut open prop radius: Option<Union_Dimension_BorderRadiuses>
}
public open class TextBackgroundStyle <: TextBackgroundStyleInterfaces {
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
    private var radius_container: Option<Union_Dimension_BorderRadiuses>
    public mut open prop radius: Option<Union_Dimension_BorderRadiuses>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    TextBackgroundStyle(color: Option<ResourceColor>, radius: Option<Union_Dimension_BorderRadiuses>) {
        this.color_container = color
        this.radius_container = radius
    }
}
public open class TextBackgroundStyle_serializer {
    public static func write(buffer: SerializerBase, value: TextBackgroundStyle): Unit {
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
        let valueHolderForRadius = value.radius
        if (valueHolderForRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRadiusTmpValue = valueHolderForRadius
            if (valueHolderForRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRadiusTmpValueForIdx0 = valueHolderForRadiusTmpValue.getValue0()
                if (valueHolderForRadiusTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForRadiusTmpValueForIdx0ForIdx0 = valueHolderForRadiusTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForRadiusTmpValueForIdx0ForIdx0);
                } else if (valueHolderForRadiusTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForRadiusTmpValueForIdx0ForIdx1 = valueHolderForRadiusTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForRadiusTmpValueForIdx0ForIdx1);
                } else if (valueHolderForRadiusTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForRadiusTmpValueForIdx0ForIdx2 = valueHolderForRadiusTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForRadiusTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRadiusTmpValueForIdx1 = valueHolderForRadiusTmpValue.getValue1()
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextBackgroundStyle {
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
        let radiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var radiusTmpBuf: Option<Union_Dimension_BorderRadiuses> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(radiusTmpBuf_runtimeType))) {
            let radiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var radiusTmpBuf_: Union_Dimension_BorderRadiuses 
            if (radiusTmpBuf_UnionSelector == Int8(0)) {
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
                radiusTmpBuf_ = Union_Dimension_BorderRadiuses(match (radiusTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (radiusTmpBuf_UnionSelector == Int8(1)) {
                radiusTmpBuf_ = Union_Dimension_BorderRadiuses(BorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for radiusTmpBuf_ has to be chosen through deserialisation.")
            }
            radiusTmpBuf = match (radiusTmpBuf_ as Union_Dimension_BorderRadiuses) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let radiusTmpResult: Option<Union_Dimension_BorderRadiuses> = radiusTmpBuf
        var value: TextBackgroundStyle = TextBackgroundStyle(colorTmpResult, radiusTmpResult)
        return value
    }
}
