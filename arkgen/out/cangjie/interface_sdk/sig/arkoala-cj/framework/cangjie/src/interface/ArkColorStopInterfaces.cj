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
public interface ColorStopInterfaces <:  {
    public mut open prop color: ResourceColor
    public mut open prop offset: Length
}
public open class ColorStop <: ColorStopInterfaces {
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
    private var offset_container: Length
    public mut open prop offset: Length
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    ColorStop(color: ResourceColor, offset: Length) {
        this.color_container = color
        this.offset_container = offset
    }
}
public open class ColorStop_serializer {
    public static func write(buffer: SerializerBase, value: ColorStop): Unit {
        var valueSerializer: SerializerBase = buffer
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
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForOffsetForIdx0 = valueHolderForOffset.getValue0()
            valueSerializer.writeString(valueHolderForOffsetForIdx0);
        } else if (valueHolderForOffset.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForOffsetForIdx1 = valueHolderForOffset.getValue1()
            valueSerializer.writeNumber(valueHolderForOffsetForIdx1);
        } else if (valueHolderForOffset.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForOffsetForIdx2 = valueHolderForOffset.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForOffsetForIdx2);
        }
    }
    public static func read(buffer: DeserializerBase): ColorStop {
        var valueDeserializer: DeserializerBase = buffer
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
        let offsetTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var offsetTmpBuf: Length 
        if (offsetTmpBufUnionSelector == Int8(0)) {
            offsetTmpBuf = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (offsetTmpBufUnionSelector == Int8(1)) {
            offsetTmpBuf = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (offsetTmpBufUnionSelector == Int8(2)) {
            offsetTmpBuf = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for offsetTmpBuf has to be chosen through deserialisation.")
        }
        let offsetTmpResult: Length = match (offsetTmpBuf as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: ColorStop = ColorStop(colorTmpResult, offsetTmpResult)
        return value
    }
}
