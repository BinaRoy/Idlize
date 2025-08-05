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
public interface BackgroundEffectOptionsInterfaces <:  {
    public mut open prop radius: Float64
    public mut open prop saturation: Option<Float64>
    public mut open prop brightness: Option<Float64>
    public mut open prop color: Option<ResourceColor>
    public mut open prop adaptiveColor: Option<AdaptiveColor>
    public mut open prop blurOptions: Option<BlurOptions>
    public mut open prop policy: Option<BlurStyleActivePolicy>
    public mut open prop inactiveColor: Option<ResourceColor>
}
public open class BackgroundEffectOptions <: BackgroundEffectOptionsInterfaces {
    private var radius_container: Float64
    public mut open prop radius: Float64
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var saturation_container: Option<Float64>
    public mut open prop saturation: Option<Float64>
    {
        get() {
            return saturation_container
        }
        set(saturation) {
            saturation_container = saturation
        }
    }
    private var brightness_container: Option<Float64>
    public mut open prop brightness: Option<Float64>
    {
        get() {
            return brightness_container
        }
        set(brightness) {
            brightness_container = brightness
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
    private var policy_container: Option<BlurStyleActivePolicy>
    public mut open prop policy: Option<BlurStyleActivePolicy>
    {
        get() {
            return policy_container
        }
        set(policy) {
            policy_container = policy
        }
    }
    private var inactiveColor_container: Option<ResourceColor>
    public mut open prop inactiveColor: Option<ResourceColor>
    {
        get() {
            return inactiveColor_container
        }
        set(inactiveColor) {
            inactiveColor_container = inactiveColor
        }
    }
    BackgroundEffectOptions(radius: Float64, saturation: Option<Float64>, brightness: Option<Float64>, color: Option<ResourceColor>, adaptiveColor: Option<AdaptiveColor>, blurOptions: Option<BlurOptions>, policy: Option<BlurStyleActivePolicy>, inactiveColor: Option<ResourceColor>) {
        this.radius_container = radius
        this.saturation_container = saturation
        this.brightness_container = brightness
        this.color_container = color
        this.adaptiveColor_container = adaptiveColor
        this.blurOptions_container = blurOptions
        this.policy_container = policy
        this.inactiveColor_container = inactiveColor
    }
}
public open class BackgroundEffectOptions_serializer {
    public static func write(buffer: SerializerBase, value: BackgroundEffectOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRadius = value.radius
        valueSerializer.writeNumber(valueHolderForRadius);
        let valueHolderForSaturation = value.saturation
        if (valueHolderForSaturation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSaturationTmpValue = valueHolderForSaturation
            valueSerializer.writeNumber(valueHolderForSaturationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBrightness = value.brightness
        if (valueHolderForBrightness.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBrightnessTmpValue = valueHolderForBrightness
            valueSerializer.writeNumber(valueHolderForBrightnessTmpValue);
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
        let valueHolderForAdaptiveColor = value.adaptiveColor
        if (valueHolderForAdaptiveColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAdaptiveColorTmpValue = valueHolderForAdaptiveColor
            valueSerializer.writeInt32(valueHolderForAdaptiveColorTmpValue.value);
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
        let valueHolderForPolicy = value.policy
        if (valueHolderForPolicy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPolicyTmpValue = valueHolderForPolicy
            valueSerializer.writeInt32(valueHolderForPolicyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForInactiveColor = value.inactiveColor
        if (valueHolderForInactiveColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForInactiveColorTmpValue = valueHolderForInactiveColor
            if (valueHolderForInactiveColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForInactiveColorTmpValueForIdx0 = valueHolderForInactiveColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForInactiveColorTmpValueForIdx0.value);
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForInactiveColorTmpValueForIdx1 = valueHolderForInactiveColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForInactiveColorTmpValueForIdx1);
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForInactiveColorTmpValueForIdx2 = valueHolderForInactiveColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForInactiveColorTmpValueForIdx2);
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForInactiveColorTmpValueForIdx3 = valueHolderForInactiveColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForInactiveColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BackgroundEffectOptions {
        var valueDeserializer: DeserializerBase = buffer
        let radiusTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let saturationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var saturationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(saturationTmpBuf_runtimeType))) {
            saturationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let saturationTmpResult: Option<Float64> = saturationTmpBuf
        let brightnessTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var brightnessTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(brightnessTmpBuf_runtimeType))) {
            brightnessTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let brightnessTmpResult: Option<Float64> = brightnessTmpBuf
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
        let adaptiveColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var adaptiveColorTmpBuf: Option<AdaptiveColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(adaptiveColorTmpBuf_runtimeType))) {
            adaptiveColorTmpBuf = AdaptiveColor(valueDeserializer.readInt32())
        }
        let adaptiveColorTmpResult: Option<AdaptiveColor> = adaptiveColorTmpBuf
        let blurOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var blurOptionsTmpBuf: Option<BlurOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(blurOptionsTmpBuf_runtimeType))) {
            blurOptionsTmpBuf = BlurOptions_serializer.read(valueDeserializer)
        }
        let blurOptionsTmpResult: Option<BlurOptions> = blurOptionsTmpBuf
        let policyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var policyTmpBuf: Option<BlurStyleActivePolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(policyTmpBuf_runtimeType))) {
            policyTmpBuf = BlurStyleActivePolicy(valueDeserializer.readInt32())
        }
        let policyTmpResult: Option<BlurStyleActivePolicy> = policyTmpBuf
        let inactiveColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var inactiveColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(inactiveColorTmpBuf_runtimeType))) {
            let inactiveColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var inactiveColorTmpBuf_: ResourceColor 
            if (inactiveColorTmpBuf_UnionSelector == Int8(0)) {
                inactiveColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (inactiveColorTmpBuf_UnionSelector == Int8(1)) {
                inactiveColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (inactiveColorTmpBuf_UnionSelector == Int8(2)) {
                inactiveColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (inactiveColorTmpBuf_UnionSelector == Int8(3)) {
                inactiveColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for inactiveColorTmpBuf_ has to be chosen through deserialisation.")
            }
            inactiveColorTmpBuf = match (inactiveColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let inactiveColorTmpResult: Option<ResourceColor> = inactiveColorTmpBuf
        var value: BackgroundEffectOptions = BackgroundEffectOptions(radiusTmpResult, saturationTmpResult, brightnessTmpResult, colorTmpResult, adaptiveColorTmpResult, blurOptionsTmpResult, policyTmpResult, inactiveColorTmpResult)
        return value
    }
}
