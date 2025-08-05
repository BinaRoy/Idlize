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
public interface MarkStyleInterfaces <:  {
    public mut open prop strokeColor: Option<ResourceColor>
    public mut open prop size: Option<Length>
    public mut open prop strokeWidth: Option<Length>
}
public open class MarkStyle <: MarkStyleInterfaces {
    private var strokeColor_container: Option<ResourceColor>
    public mut open prop strokeColor: Option<ResourceColor>
    {
        get() {
            return strokeColor_container
        }
        set(strokeColor) {
            strokeColor_container = strokeColor
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
    private var strokeWidth_container: Option<Length>
    public mut open prop strokeWidth: Option<Length>
    {
        get() {
            return strokeWidth_container
        }
        set(strokeWidth) {
            strokeWidth_container = strokeWidth
        }
    }
    MarkStyle(strokeColor: Option<ResourceColor>, size: Option<Length>, strokeWidth: Option<Length>) {
        this.strokeColor_container = strokeColor
        this.size_container = size
        this.strokeWidth_container = strokeWidth
    }
}
public open class MarkStyle_serializer {
    public static func write(buffer: SerializerBase, value: MarkStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStrokeColor = value.strokeColor
        if (valueHolderForStrokeColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeColorTmpValue = valueHolderForStrokeColor
            if (valueHolderForStrokeColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStrokeColorTmpValueForIdx0 = valueHolderForStrokeColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForStrokeColorTmpValueForIdx0.value);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStrokeColorTmpValueForIdx1 = valueHolderForStrokeColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStrokeColorTmpValueForIdx1);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStrokeColorTmpValueForIdx2 = valueHolderForStrokeColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForStrokeColorTmpValueForIdx2);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForStrokeColorTmpValueForIdx3 = valueHolderForStrokeColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForStrokeColorTmpValueForIdx3);
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
    }
    public static func read(buffer: DeserializerBase): MarkStyle {
        var valueDeserializer: DeserializerBase = buffer
        let strokeColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeColorTmpBuf_runtimeType))) {
            let strokeColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var strokeColorTmpBuf_: ResourceColor 
            if (strokeColorTmpBuf_UnionSelector == Int8(0)) {
                strokeColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (strokeColorTmpBuf_UnionSelector == Int8(1)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeColorTmpBuf_UnionSelector == Int8(2)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeColorTmpBuf_UnionSelector == Int8(3)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for strokeColorTmpBuf_ has to be chosen through deserialisation.")
            }
            strokeColorTmpBuf = match (strokeColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeColorTmpResult: Option<ResourceColor> = strokeColorTmpBuf
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
        let strokeWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeWidthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeWidthTmpBuf_runtimeType))) {
            let strokeWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var strokeWidthTmpBuf_: Length 
            if (strokeWidthTmpBuf_UnionSelector == Int8(0)) {
                strokeWidthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeWidthTmpBuf_UnionSelector == Int8(1)) {
                strokeWidthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeWidthTmpBuf_UnionSelector == Int8(2)) {
                strokeWidthTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for strokeWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            strokeWidthTmpBuf = match (strokeWidthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeWidthTmpResult: Option<Length> = strokeWidthTmpBuf
        var value: MarkStyle = MarkStyle(strokeColorTmpResult, sizeTmpResult, strokeWidthTmpResult)
        return value
    }
}
