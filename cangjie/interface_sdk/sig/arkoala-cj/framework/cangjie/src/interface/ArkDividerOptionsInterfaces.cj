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
public interface DividerOptionsInterfaces <:  {
    public mut open prop strokeWidth: Option<Dimension>
    public mut open prop color: Option<ResourceColor>
    public mut open prop startMargin: Option<Dimension>
    public mut open prop endMargin: Option<Dimension>
}
public open class DividerOptions <: DividerOptionsInterfaces {
    private var strokeWidth_container: Option<Dimension>
    public mut open prop strokeWidth: Option<Dimension>
    {
        get() {
            return strokeWidth_container
        }
        set(strokeWidth) {
            strokeWidth_container = strokeWidth
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
    private var startMargin_container: Option<Dimension>
    public mut open prop startMargin: Option<Dimension>
    {
        get() {
            return startMargin_container
        }
        set(startMargin) {
            startMargin_container = startMargin
        }
    }
    private var endMargin_container: Option<Dimension>
    public mut open prop endMargin: Option<Dimension>
    {
        get() {
            return endMargin_container
        }
        set(endMargin) {
            endMargin_container = endMargin
        }
    }
    DividerOptions(strokeWidth: Option<Dimension>, color: Option<ResourceColor>, startMargin: Option<Dimension>, endMargin: Option<Dimension>) {
        this.strokeWidth_container = strokeWidth
        this.color_container = color
        this.startMargin_container = startMargin
        this.endMargin_container = endMargin
    }
}
public open class DividerOptions_serializer {
    public static func write(buffer: SerializerBase, value: DividerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStrokeWidth = value.strokeWidth
        if (valueHolderForStrokeWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeWidthTmpValue = valueHolderForStrokeWidth
            if (valueHolderForStrokeWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStrokeWidthTmpValueForIdx0 = valueHolderForStrokeWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForStrokeWidthTmpValueForIdx0);
            } else if (valueHolderForStrokeWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStrokeWidthTmpValueForIdx1 = valueHolderForStrokeWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStrokeWidthTmpValueForIdx1);
            } else if (valueHolderForStrokeWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStrokeWidthTmpValueForIdx2 = valueHolderForStrokeWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForStrokeWidthTmpValueForIdx2);
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
        let valueHolderForStartMargin = value.startMargin
        if (valueHolderForStartMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartMarginTmpValue = valueHolderForStartMargin
            if (valueHolderForStartMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartMarginTmpValueForIdx0 = valueHolderForStartMarginTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForStartMarginTmpValueForIdx0);
            } else if (valueHolderForStartMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartMarginTmpValueForIdx1 = valueHolderForStartMarginTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStartMarginTmpValueForIdx1);
            } else if (valueHolderForStartMarginTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStartMarginTmpValueForIdx2 = valueHolderForStartMarginTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForStartMarginTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEndMargin = value.endMargin
        if (valueHolderForEndMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndMarginTmpValue = valueHolderForEndMargin
            if (valueHolderForEndMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForEndMarginTmpValueForIdx0 = valueHolderForEndMarginTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForEndMarginTmpValueForIdx0);
            } else if (valueHolderForEndMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForEndMarginTmpValueForIdx1 = valueHolderForEndMarginTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForEndMarginTmpValueForIdx1);
            } else if (valueHolderForEndMarginTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForEndMarginTmpValueForIdx2 = valueHolderForEndMarginTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForEndMarginTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DividerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let strokeWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeWidthTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeWidthTmpBuf_runtimeType))) {
            let strokeWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var strokeWidthTmpBuf_: Dimension 
            if (strokeWidthTmpBuf_UnionSelector == Int8(0)) {
                strokeWidthTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeWidthTmpBuf_UnionSelector == Int8(1)) {
                strokeWidthTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeWidthTmpBuf_UnionSelector == Int8(2)) {
                strokeWidthTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for strokeWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            strokeWidthTmpBuf = match (strokeWidthTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeWidthTmpResult: Option<Dimension> = strokeWidthTmpBuf
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
        let startMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startMarginTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startMarginTmpBuf_runtimeType))) {
            let startMarginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startMarginTmpBuf_: Dimension 
            if (startMarginTmpBuf_UnionSelector == Int8(0)) {
                startMarginTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startMarginTmpBuf_UnionSelector == Int8(1)) {
                startMarginTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startMarginTmpBuf_UnionSelector == Int8(2)) {
                startMarginTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for startMarginTmpBuf_ has to be chosen through deserialisation.")
            }
            startMarginTmpBuf = match (startMarginTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startMarginTmpResult: Option<Dimension> = startMarginTmpBuf
        let endMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endMarginTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endMarginTmpBuf_runtimeType))) {
            let endMarginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var endMarginTmpBuf_: Dimension 
            if (endMarginTmpBuf_UnionSelector == Int8(0)) {
                endMarginTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endMarginTmpBuf_UnionSelector == Int8(1)) {
                endMarginTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endMarginTmpBuf_UnionSelector == Int8(2)) {
                endMarginTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for endMarginTmpBuf_ has to be chosen through deserialisation.")
            }
            endMarginTmpBuf = match (endMarginTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endMarginTmpResult: Option<Dimension> = endMarginTmpBuf
        var value: DividerOptions = DividerOptions(strokeWidthTmpResult, colorTmpResult, startMarginTmpResult, endMarginTmpResult)
        return value
    }
}
