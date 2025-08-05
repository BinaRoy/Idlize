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
public interface ListDividerOptionsInterfaces <:  {
    public mut open prop strokeWidth: Length
    public mut open prop color: Option<ResourceColor>
    public mut open prop startMargin: Option<Length>
    public mut open prop endMargin: Option<Length>
}
public open class ListDividerOptions <: ListDividerOptionsInterfaces {
    private var strokeWidth_container: Length
    public mut open prop strokeWidth: Length
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
    private var startMargin_container: Option<Length>
    public mut open prop startMargin: Option<Length>
    {
        get() {
            return startMargin_container
        }
        set(startMargin) {
            startMargin_container = startMargin
        }
    }
    private var endMargin_container: Option<Length>
    public mut open prop endMargin: Option<Length>
    {
        get() {
            return endMargin_container
        }
        set(endMargin) {
            endMargin_container = endMargin
        }
    }
    ListDividerOptions(strokeWidth: Length, color: Option<ResourceColor>, startMargin: Option<Length>, endMargin: Option<Length>) {
        this.strokeWidth_container = strokeWidth
        this.color_container = color
        this.startMargin_container = startMargin
        this.endMargin_container = endMargin
    }
}
public open class ListDividerOptions_serializer {
    public static func write(buffer: SerializerBase, value: ListDividerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStrokeWidth = value.strokeWidth
        if (valueHolderForStrokeWidth.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForStrokeWidthForIdx0 = valueHolderForStrokeWidth.getValue0()
            valueSerializer.writeString(valueHolderForStrokeWidthForIdx0);
        } else if (valueHolderForStrokeWidth.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForStrokeWidthForIdx1 = valueHolderForStrokeWidth.getValue1()
            valueSerializer.writeNumber(valueHolderForStrokeWidthForIdx1);
        } else if (valueHolderForStrokeWidth.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForStrokeWidthForIdx2 = valueHolderForStrokeWidth.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForStrokeWidthForIdx2);
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
    public static func read(buffer: DeserializerBase): ListDividerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let strokeWidthTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var strokeWidthTmpBuf: Length 
        if (strokeWidthTmpBufUnionSelector == Int8(0)) {
            strokeWidthTmpBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (strokeWidthTmpBufUnionSelector == Int8(1)) {
            strokeWidthTmpBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (strokeWidthTmpBufUnionSelector == Int8(2)) {
            strokeWidthTmpBuf = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for strokeWidthTmpBuf has to be chosen through deserialisation.")
        }
        let strokeWidthTmpResult: Length = match (strokeWidthTmpBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
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
        var startMarginTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startMarginTmpBuf_runtimeType))) {
            let startMarginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startMarginTmpBuf_: Length 
            if (startMarginTmpBuf_UnionSelector == Int8(0)) {
                startMarginTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startMarginTmpBuf_UnionSelector == Int8(1)) {
                startMarginTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startMarginTmpBuf_UnionSelector == Int8(2)) {
                startMarginTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for startMarginTmpBuf_ has to be chosen through deserialisation.")
            }
            startMarginTmpBuf = match (startMarginTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startMarginTmpResult: Option<Length> = startMarginTmpBuf
        let endMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endMarginTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endMarginTmpBuf_runtimeType))) {
            let endMarginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var endMarginTmpBuf_: Length 
            if (endMarginTmpBuf_UnionSelector == Int8(0)) {
                endMarginTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endMarginTmpBuf_UnionSelector == Int8(1)) {
                endMarginTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endMarginTmpBuf_UnionSelector == Int8(2)) {
                endMarginTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for endMarginTmpBuf_ has to be chosen through deserialisation.")
            }
            endMarginTmpBuf = match (endMarginTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endMarginTmpResult: Option<Length> = endMarginTmpBuf
        var value: ListDividerOptions = ListDividerOptions(strokeWidthTmpResult, colorTmpResult, startMarginTmpResult, endMarginTmpResult)
        return value
    }
}
