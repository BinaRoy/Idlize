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
public interface CircleStyleOptionsInterfaces <:  {
    public mut open prop color: Option<ResourceColor>
    public mut open prop radius: Option<LengthMetrics>
    public mut open prop enableWaveEffect: Option<Bool>
    public mut open prop enableForeground: Option<Bool>
}
public open class CircleStyleOptions <: CircleStyleOptionsInterfaces {
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
    private var radius_container: Option<LengthMetrics>
    public mut open prop radius: Option<LengthMetrics>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var enableWaveEffect_container: Option<Bool>
    public mut open prop enableWaveEffect: Option<Bool>
    {
        get() {
            return enableWaveEffect_container
        }
        set(enableWaveEffect) {
            enableWaveEffect_container = enableWaveEffect
        }
    }
    private var enableForeground_container: Option<Bool>
    public mut open prop enableForeground: Option<Bool>
    {
        get() {
            return enableForeground_container
        }
        set(enableForeground) {
            enableForeground_container = enableForeground
        }
    }
    CircleStyleOptions(color: Option<ResourceColor>, radius: Option<LengthMetrics>, enableWaveEffect: Option<Bool>, enableForeground: Option<Bool>) {
        this.color_container = color
        this.radius_container = radius
        this.enableWaveEffect_container = enableWaveEffect
        this.enableForeground_container = enableForeground
    }
}
public open class CircleStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: CircleStyleOptions): Unit {
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
            valueSerializer.writeCustomObject("Any", valueHolderForRadiusTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableWaveEffect = value.enableWaveEffect
        if (valueHolderForEnableWaveEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableWaveEffectTmpValue = valueHolderForEnableWaveEffect
            valueSerializer.writeBoolean(valueHolderForEnableWaveEffectTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableForeground = value.enableForeground
        if (valueHolderForEnableForeground.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableForegroundTmpValue = valueHolderForEnableForeground
            valueSerializer.writeBoolean(valueHolderForEnableForegroundTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CircleStyleOptions {
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
        var radiusTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(radiusTmpBuf_runtimeType))) {
            radiusTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let radiusTmpResult: Option<LengthMetrics> = radiusTmpBuf
        let enableWaveEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableWaveEffectTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableWaveEffectTmpBuf_runtimeType))) {
            enableWaveEffectTmpBuf = valueDeserializer.readBoolean()
        }
        let enableWaveEffectTmpResult: Option<Bool> = enableWaveEffectTmpBuf
        let enableForegroundTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableForegroundTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableForegroundTmpBuf_runtimeType))) {
            enableForegroundTmpBuf = valueDeserializer.readBoolean()
        }
        let enableForegroundTmpResult: Option<Bool> = enableForegroundTmpBuf
        var value: CircleStyleOptions = CircleStyleOptions(colorTmpResult, radiusTmpResult, enableWaveEffectTmpResult, enableForegroundTmpResult)
        return value
    }
}
