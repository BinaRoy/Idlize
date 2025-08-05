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
public interface ShadowOptionsInterfaces <:  {
    public mut open prop radius: Union_Number_Resource
    public mut open prop type_: Option<ShadowType>
    public mut open prop color: Option<Union_Color_String_Resource_ColoringStrategy>
    public mut open prop offsetX: Option<Union_Number_Resource>
    public mut open prop offsetY: Option<Union_Number_Resource>
    public mut open prop fill: Option<Bool>
}
public open class ShadowOptions <: ShadowOptionsInterfaces {
    private var radius_container: Union_Number_Resource
    public mut open prop radius: Union_Number_Resource
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var type_container: Option<ShadowType>
    public mut open prop type_: Option<ShadowType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var color_container: Option<Union_Color_String_Resource_ColoringStrategy>
    public mut open prop color: Option<Union_Color_String_Resource_ColoringStrategy>
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    private var offsetX_container: Option<Union_Number_Resource>
    public mut open prop offsetX: Option<Union_Number_Resource>
    {
        get() {
            return offsetX_container
        }
        set(offsetX) {
            offsetX_container = offsetX
        }
    }
    private var offsetY_container: Option<Union_Number_Resource>
    public mut open prop offsetY: Option<Union_Number_Resource>
    {
        get() {
            return offsetY_container
        }
        set(offsetY) {
            offsetY_container = offsetY
        }
    }
    private var fill_container: Option<Bool>
    public mut open prop fill: Option<Bool>
    {
        get() {
            return fill_container
        }
        set(fill) {
            fill_container = fill
        }
    }
    ShadowOptions(radius: Union_Number_Resource, type_: Option<ShadowType>, color: Option<Union_Color_String_Resource_ColoringStrategy>, offsetX: Option<Union_Number_Resource>, offsetY: Option<Union_Number_Resource>, fill: Option<Bool>) {
        this.radius_container = radius
        this.type_container = type_
        this.color_container = color
        this.offsetX_container = offsetX
        this.offsetY_container = offsetY
        this.fill_container = fill
    }
}
public open class ShadowOptions_serializer {
    public static func write(buffer: SerializerBase, value: ShadowOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRadius = value.radius
        if (valueHolderForRadius.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForRadiusForIdx0 = valueHolderForRadius.getValue0()
            valueSerializer.writeNumber(valueHolderForRadiusForIdx0);
        } else if (valueHolderForRadius.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForRadiusForIdx1 = valueHolderForRadius.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForRadiusForIdx1);
        }
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
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
                valueSerializer.writeString(valueHolderForColorTmpValueForIdx1);
            } else if (valueHolderForColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorTmpValueForIdx2 = valueHolderForColorTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForColorTmpValueForIdx2);
            } else if (valueHolderForColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForColorTmpValueForIdx3 = valueHolderForColorTmpValue.getValue3()
                valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx3.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffsetX = value.offsetX
        if (valueHolderForOffsetX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetXTmpValue = valueHolderForOffsetX
            if (valueHolderForOffsetXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffsetXTmpValueForIdx0 = valueHolderForOffsetXTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOffsetXTmpValueForIdx0);
            } else if (valueHolderForOffsetXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffsetXTmpValueForIdx1 = valueHolderForOffsetXTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForOffsetXTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffsetY = value.offsetY
        if (valueHolderForOffsetY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetYTmpValue = valueHolderForOffsetY
            if (valueHolderForOffsetYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffsetYTmpValueForIdx0 = valueHolderForOffsetYTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOffsetYTmpValueForIdx0);
            } else if (valueHolderForOffsetYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffsetYTmpValueForIdx1 = valueHolderForOffsetYTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForOffsetYTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFill = value.fill
        if (valueHolderForFill.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFillTmpValue = valueHolderForFill
            valueSerializer.writeBoolean(valueHolderForFillTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ShadowOptions {
        var valueDeserializer: DeserializerBase = buffer
        let radiusTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var radiusTmpBuf: Union_Number_Resource 
        if (radiusTmpBufUnionSelector == Int8(0)) {
            radiusTmpBuf = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (radiusTmpBufUnionSelector == Int8(1)) {
            radiusTmpBuf = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for radiusTmpBuf has to be chosen through deserialisation.")
        }
        let radiusTmpResult: Union_Number_Resource = match (radiusTmpBuf as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<ShadowType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = ShadowType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<ShadowType> = typeTmpBuf
        let colorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorTmpBuf: Option<Union_Color_String_Resource_ColoringStrategy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorTmpBuf_runtimeType))) {
            let colorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var colorTmpBuf_: Union_Color_String_Resource_ColoringStrategy 
            if (colorTmpBuf_UnionSelector == Int8(0)) {
                colorTmpBuf_ = Union_Color_String_Resource_ColoringStrategy(Color(valueDeserializer.readInt32()))
            } else if (colorTmpBuf_UnionSelector == Int8(1)) {
                colorTmpBuf_ = Union_Color_String_Resource_ColoringStrategy(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(2)) {
                colorTmpBuf_ = Union_Color_String_Resource_ColoringStrategy(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(3)) {
                colorTmpBuf_ = Union_Color_String_Resource_ColoringStrategy(ColoringStrategy(valueDeserializer.readInt32()))
            } else {
                throw Exception("One of the branches for colorTmpBuf_ has to be chosen through deserialisation.")
            }
            colorTmpBuf = match (colorTmpBuf_ as Union_Color_String_Resource_ColoringStrategy) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorTmpResult: Option<Union_Color_String_Resource_ColoringStrategy> = colorTmpBuf
        let offsetXTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetXTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetXTmpBuf_runtimeType))) {
            let offsetXTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetXTmpBuf_: Union_Number_Resource 
            if (offsetXTmpBuf_UnionSelector == Int8(0)) {
                offsetXTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetXTmpBuf_UnionSelector == Int8(1)) {
                offsetXTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for offsetXTmpBuf_ has to be chosen through deserialisation.")
            }
            offsetXTmpBuf = match (offsetXTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetXTmpResult: Option<Union_Number_Resource> = offsetXTmpBuf
        let offsetYTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetYTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetYTmpBuf_runtimeType))) {
            let offsetYTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetYTmpBuf_: Union_Number_Resource 
            if (offsetYTmpBuf_UnionSelector == Int8(0)) {
                offsetYTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetYTmpBuf_UnionSelector == Int8(1)) {
                offsetYTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for offsetYTmpBuf_ has to be chosen through deserialisation.")
            }
            offsetYTmpBuf = match (offsetYTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetYTmpResult: Option<Union_Number_Resource> = offsetYTmpBuf
        let fillTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fillTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fillTmpBuf_runtimeType))) {
            fillTmpBuf = valueDeserializer.readBoolean()
        }
        let fillTmpResult: Option<Bool> = fillTmpBuf
        var value: ShadowOptions = ShadowOptions(radiusTmpResult, typeTmpResult, colorTmpResult, offsetXTmpResult, offsetYTmpResult, fillTmpResult)
        return value
    }
}
