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
public interface ForegroundBlurStyleOptionsInterfaces <: BlurStyleOptionsInterfaces {
}
public open class ForegroundBlurStyleOptions <: ForegroundBlurStyleOptionsInterfaces {
    private var colorMode_container: Option<ThemeColorMode>
    public mut open prop colorMode: Option<ThemeColorMode>
    {
        get() {
            return colorMode_container
        }
        set(colorMode) {
            colorMode_container = colorMode
        }
    }
    private var adaptiveColor_container: Option<AdaptiveColor>
    public mut open prop adaptiveColor: Option<AdaptiveColor>
    {
        get() {
            return adaptiveColor_container
        }
        set(adaptiveColor) {
            adaptiveColor_container = adaptiveColor
        }
    }
    private var scale_container: Option<Float64>
    public mut open prop scale: Option<Float64>
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var blurOptions_container: Option<BlurOptions>
    public mut open prop blurOptions: Option<BlurOptions>
    {
        get() {
            return blurOptions_container
        }
        set(blurOptions) {
            blurOptions_container = blurOptions
        }
    }
    ForegroundBlurStyleOptions(colorMode: Option<ThemeColorMode>, adaptiveColor: Option<AdaptiveColor>, scale: Option<Float64>, blurOptions: Option<BlurOptions>) {
        this.colorMode_container = colorMode
        this.adaptiveColor_container = adaptiveColor
        this.scale_container = scale
        this.blurOptions_container = blurOptions
    }
}
public open class ForegroundBlurStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: ForegroundBlurStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForColorMode = value.colorMode
        if (valueHolderForColorMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorModeTmpValue = valueHolderForColorMode
            valueSerializer.writeInt32(valueHolderForColorModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAdaptiveColor = value.adaptiveColor
        if (valueHolderForAdaptiveColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAdaptiveColorTmpValue = valueHolderForAdaptiveColor
            valueSerializer.writeInt32(valueHolderForAdaptiveColorTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScale = value.scale
        if (valueHolderForScale.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScaleTmpValue = valueHolderForScale
            valueSerializer.writeNumber(valueHolderForScaleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBlurOptions = value.blurOptions
        if (valueHolderForBlurOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBlurOptionsTmpValue = valueHolderForBlurOptions
            BlurOptions_serializer.write(valueSerializer, valueHolderForBlurOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ForegroundBlurStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let colorModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorModeTmpBuf: Option<ThemeColorMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorModeTmpBuf_runtimeType))) {
            colorModeTmpBuf = ThemeColorMode(valueDeserializer.readInt32())
        }
        let colorModeTmpResult: Option<ThemeColorMode> = colorModeTmpBuf
        let adaptiveColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var adaptiveColorTmpBuf: Option<AdaptiveColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(adaptiveColorTmpBuf_runtimeType))) {
            adaptiveColorTmpBuf = AdaptiveColor(valueDeserializer.readInt32())
        }
        let adaptiveColorTmpResult: Option<AdaptiveColor> = adaptiveColorTmpBuf
        let scaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleTmpBuf_runtimeType))) {
            scaleTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scaleTmpResult: Option<Float64> = scaleTmpBuf
        let blurOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var blurOptionsTmpBuf: Option<BlurOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(blurOptionsTmpBuf_runtimeType))) {
            blurOptionsTmpBuf = BlurOptions_serializer.read(valueDeserializer)
        }
        let blurOptionsTmpResult: Option<BlurOptions> = blurOptionsTmpBuf
        var value: ForegroundBlurStyleOptions = ForegroundBlurStyleOptions(colorModeTmpResult, adaptiveColorTmpResult, scaleTmpResult, blurOptionsTmpResult)
        return value
    }
}
