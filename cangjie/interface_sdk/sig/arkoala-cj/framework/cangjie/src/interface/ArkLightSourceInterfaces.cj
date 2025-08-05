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
public interface LightSourceInterfaces <:  {
    public mut open prop positionX: Dimension
    public mut open prop positionY: Dimension
    public mut open prop positionZ: Dimension
    public mut open prop intensity: Float64
    public mut open prop color: Option<ResourceColor>
}
public open class LightSource <: LightSourceInterfaces {
    private var positionX_container: Dimension
    public mut open prop positionX: Dimension
    {
        get() {
            return positionX_container
        }
        set(positionX) {
            positionX_container = positionX
        }
    }
    private var positionY_container: Dimension
    public mut open prop positionY: Dimension
    {
        get() {
            return positionY_container
        }
        set(positionY) {
            positionY_container = positionY
        }
    }
    private var positionZ_container: Dimension
    public mut open prop positionZ: Dimension
    {
        get() {
            return positionZ_container
        }
        set(positionZ) {
            positionZ_container = positionZ
        }
    }
    private var intensity_container: Float64
    public mut open prop intensity: Float64
    {
        get() {
            return intensity_container
        }
        set(intensity) {
            intensity_container = intensity
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
    LightSource(positionX: Dimension, positionY: Dimension, positionZ: Dimension, intensity: Float64, color: Option<ResourceColor>) {
        this.positionX_container = positionX
        this.positionY_container = positionY
        this.positionZ_container = positionZ
        this.intensity_container = intensity
        this.color_container = color
    }
}
public open class LightSource_serializer {
    public static func write(buffer: SerializerBase, value: LightSource): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPositionX = value.positionX
        if (valueHolderForPositionX.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForPositionXForIdx0 = valueHolderForPositionX.getValue0()
            valueSerializer.writeString(valueHolderForPositionXForIdx0);
        } else if (valueHolderForPositionX.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForPositionXForIdx1 = valueHolderForPositionX.getValue1()
            valueSerializer.writeNumber(valueHolderForPositionXForIdx1);
        } else if (valueHolderForPositionX.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForPositionXForIdx2 = valueHolderForPositionX.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForPositionXForIdx2);
        }
        let valueHolderForPositionY = value.positionY
        if (valueHolderForPositionY.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForPositionYForIdx0 = valueHolderForPositionY.getValue0()
            valueSerializer.writeString(valueHolderForPositionYForIdx0);
        } else if (valueHolderForPositionY.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForPositionYForIdx1 = valueHolderForPositionY.getValue1()
            valueSerializer.writeNumber(valueHolderForPositionYForIdx1);
        } else if (valueHolderForPositionY.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForPositionYForIdx2 = valueHolderForPositionY.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForPositionYForIdx2);
        }
        let valueHolderForPositionZ = value.positionZ
        if (valueHolderForPositionZ.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForPositionZForIdx0 = valueHolderForPositionZ.getValue0()
            valueSerializer.writeString(valueHolderForPositionZForIdx0);
        } else if (valueHolderForPositionZ.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForPositionZForIdx1 = valueHolderForPositionZ.getValue1()
            valueSerializer.writeNumber(valueHolderForPositionZForIdx1);
        } else if (valueHolderForPositionZ.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForPositionZForIdx2 = valueHolderForPositionZ.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForPositionZForIdx2);
        }
        let valueHolderForIntensity = value.intensity
        valueSerializer.writeNumber(valueHolderForIntensity);
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
    }
    public static func read(buffer: DeserializerBase): LightSource {
        var valueDeserializer: DeserializerBase = buffer
        let positionXTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var positionXTmpBuf: Dimension 
        if (positionXTmpBufUnionSelector == Int8(0)) {
            positionXTmpBuf = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (positionXTmpBufUnionSelector == Int8(1)) {
            positionXTmpBuf = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (positionXTmpBufUnionSelector == Int8(2)) {
            positionXTmpBuf = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for positionXTmpBuf has to be chosen through deserialisation.")
        }
        let positionXTmpResult: Dimension = match (positionXTmpBuf as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let positionYTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var positionYTmpBuf: Dimension 
        if (positionYTmpBufUnionSelector == Int8(0)) {
            positionYTmpBuf = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (positionYTmpBufUnionSelector == Int8(1)) {
            positionYTmpBuf = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (positionYTmpBufUnionSelector == Int8(2)) {
            positionYTmpBuf = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for positionYTmpBuf has to be chosen through deserialisation.")
        }
        let positionYTmpResult: Dimension = match (positionYTmpBuf as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let positionZTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var positionZTmpBuf: Dimension 
        if (positionZTmpBufUnionSelector == Int8(0)) {
            positionZTmpBuf = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (positionZTmpBufUnionSelector == Int8(1)) {
            positionZTmpBuf = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (positionZTmpBufUnionSelector == Int8(2)) {
            positionZTmpBuf = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for positionZTmpBuf has to be chosen through deserialisation.")
        }
        let positionZTmpResult: Dimension = match (positionZTmpBuf as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let intensityTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
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
        var value: LightSource = LightSource(positionXTmpResult, positionYTmpResult, positionZTmpResult, intensityTmpResult, colorTmpResult)
        return value
    }
}
