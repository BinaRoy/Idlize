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
public interface BackgroundBlurStyleOptionsInterfaces <: BlurStyleOptionsInterfaces {
    public mut open prop policy: Option<BlurStyleActivePolicy>
    public mut open prop inactiveColor: Option<ResourceColor>
}
public open class BackgroundBlurStyleOptions <: BackgroundBlurStyleOptionsInterfaces {
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
    BackgroundBlurStyleOptions(policy: Option<BlurStyleActivePolicy>, inactiveColor: Option<ResourceColor>, colorMode: Option<ThemeColorMode>, adaptiveColor: Option<AdaptiveColor>, scale: Option<Float64>, blurOptions: Option<BlurOptions>) {
        this.policy_container = policy
        this.inactiveColor_container = inactiveColor
        this.colorMode_container = colorMode
        this.adaptiveColor_container = adaptiveColor
        this.scale_container = scale
        this.blurOptions_container = blurOptions
    }
}
public open class BackgroundBlurStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: BackgroundBlurStyleOptions): Unit {
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
    public static func read(buffer: DeserializerBase): BackgroundBlurStyleOptions {
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
        var value: BackgroundBlurStyleOptions = BackgroundBlurStyleOptions(policyTmpResult, inactiveColorTmpResult, colorModeTmpResult, adaptiveColorTmpResult, scaleTmpResult, blurOptionsTmpResult)
        return value
    }
}
