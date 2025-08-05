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
public interface PointLightStyleInterfaces <:  {
    public mut open prop lightSource: Option<LightSource>
    public mut open prop illuminated: Option<IlluminatedType>
    public mut open prop bloom: Option<Float64>
}
public open class PointLightStyle <: PointLightStyleInterfaces {
    private var lightSource_container: Option<LightSource>
    public mut open prop lightSource: Option<LightSource>
    {
        get() {
            return lightSource_container
        }
        set(lightSource) {
            lightSource_container = lightSource
        }
    }
    private var illuminated_container: Option<IlluminatedType>
    public mut open prop illuminated: Option<IlluminatedType>
    {
        get() {
            return illuminated_container
        }
        set(illuminated) {
            illuminated_container = illuminated
        }
    }
    private var bloom_container: Option<Float64>
    public mut open prop bloom: Option<Float64>
    {
        get() {
            return bloom_container
        }
        set(bloom) {
            bloom_container = bloom
        }
    }
    PointLightStyle(lightSource: Option<LightSource>, illuminated: Option<IlluminatedType>, bloom: Option<Float64>) {
        this.lightSource_container = lightSource
        this.illuminated_container = illuminated
        this.bloom_container = bloom
    }
}
public open class PointLightStyle_serializer {
    public static func write(buffer: SerializerBase, value: PointLightStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForLightSource = value.lightSource
        if (valueHolderForLightSource.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLightSourceTmpValue = valueHolderForLightSource
            LightSource_serializer.write(valueSerializer, valueHolderForLightSourceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIlluminated = value.illuminated
        if (valueHolderForIlluminated.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIlluminatedTmpValue = valueHolderForIlluminated
            valueSerializer.writeInt32(valueHolderForIlluminatedTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBloom = value.bloom
        if (valueHolderForBloom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBloomTmpValue = valueHolderForBloom
            valueSerializer.writeNumber(valueHolderForBloomTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PointLightStyle {
        var valueDeserializer: DeserializerBase = buffer
        let lightSourceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lightSourceTmpBuf: Option<LightSource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lightSourceTmpBuf_runtimeType))) {
            lightSourceTmpBuf = LightSource_serializer.read(valueDeserializer)
        }
        let lightSourceTmpResult: Option<LightSource> = lightSourceTmpBuf
        let illuminatedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var illuminatedTmpBuf: Option<IlluminatedType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(illuminatedTmpBuf_runtimeType))) {
            illuminatedTmpBuf = IlluminatedType(valueDeserializer.readInt32())
        }
        let illuminatedTmpResult: Option<IlluminatedType> = illuminatedTmpBuf
        let bloomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bloomTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bloomTmpBuf_runtimeType))) {
            bloomTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bloomTmpResult: Option<Float64> = bloomTmpBuf
        var value: PointLightStyle = PointLightStyle(lightSourceTmpResult, illuminatedTmpResult, bloomTmpResult)
        return value
    }
}
