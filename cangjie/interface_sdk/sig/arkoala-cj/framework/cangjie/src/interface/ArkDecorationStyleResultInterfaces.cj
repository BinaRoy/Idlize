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
public interface DecorationStyleResultInterfaces <:  {
    public mut open prop type_: TextDecorationType
    public mut open prop color: ResourceColor
    public mut open prop style: Option<TextDecorationStyle>
    public mut open prop thicknessScale: Option<Float64>
}
public open class DecorationStyleResult <: DecorationStyleResultInterfaces {
    private var type_container: TextDecorationType
    public mut open prop type_: TextDecorationType
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var color_container: ResourceColor
    public mut open prop color: ResourceColor
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    private var style_container: Option<TextDecorationStyle>
    public mut open prop style: Option<TextDecorationStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var thicknessScale_container: Option<Float64>
    public mut open prop thicknessScale: Option<Float64>
    {
        get() {
            return thicknessScale_container
        }
        set(thicknessScale) {
            thicknessScale_container = thicknessScale
        }
    }
    DecorationStyleResult(type_: TextDecorationType, color: ResourceColor, style: Option<TextDecorationStyle>, thicknessScale: Option<Float64>) {
        this.type_container = type_
        this.color_container = color
        this.style_container = style
        this.thicknessScale_container = thicknessScale
    }
}
public open class DecorationStyleResult_serializer {
    public static func write(buffer: SerializerBase, value: DecorationStyleResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        valueSerializer.writeInt32(valueHolderForType.value);
        let valueHolderForColor = value.color
        if (valueHolderForColor.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForColorForIdx0 = valueHolderForColor.getValue0()
            valueSerializer.writeInt32(valueHolderForColorForIdx0.value);
        } else if (valueHolderForColor.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForColorForIdx1 = valueHolderForColor.getValue1()
            valueSerializer.writeNumber(valueHolderForColorForIdx1);
        } else if (valueHolderForColor.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForColorForIdx2 = valueHolderForColor.getValue2()
            valueSerializer.writeString(valueHolderForColorForIdx2);
        } else if (valueHolderForColor.getSelector() == 3) {
            valueSerializer.writeInt8(Int8(3));
            let valueHolderForColorForIdx3 = valueHolderForColor.getValue3()
            valueSerializer.writeCustomObject("Any", valueHolderForColorForIdx3);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForThicknessScale = value.thicknessScale
        if (valueHolderForThicknessScale.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForThicknessScaleTmpValue = valueHolderForThicknessScale
            valueSerializer.writeNumber(valueHolderForThicknessScaleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DecorationStyleResult {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpResult: TextDecorationType = TextDecorationType(valueDeserializer.readInt32())
        let colorTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var colorTmpBuf: ResourceColor 
        if (colorTmpBufUnionSelector == Int8(0)) {
            colorTmpBuf = ResourceColor(Color(valueDeserializer.readInt32()))
        } else if (colorTmpBufUnionSelector == Int8(1)) {
            colorTmpBuf = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (colorTmpBufUnionSelector == Int8(2)) {
            colorTmpBuf = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (colorTmpBufUnionSelector == Int8(3)) {
            colorTmpBuf = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for colorTmpBuf has to be chosen through deserialisation.")
        }
        let colorTmpResult: ResourceColor = match (colorTmpBuf as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<TextDecorationStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = TextDecorationStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<TextDecorationStyle> = styleTmpBuf
        let thicknessScaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var thicknessScaleTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(thicknessScaleTmpBuf_runtimeType))) {
            thicknessScaleTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let thicknessScaleTmpResult: Option<Float64> = thicknessScaleTmpBuf
        var value: DecorationStyleResult = DecorationStyleResult(typeTmpResult, colorTmpResult, styleTmpResult, thicknessScaleTmpResult)
        return value
    }
}
