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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public open class BackgroundBlurStyleOptions <: BlurStyleOptions {
    public var policy: Option<BlurStyleActivePolicy>
    public var inactiveColor: Option<ResourceColor>
    init(policy: Option<BlurStyleActivePolicy>, inactiveColor: Option<ResourceColor>, colorMode: Option<ThemeColorMode>, adaptiveColor: Option<AdaptiveColor>, scale: Option<Float64>, blurOptions: Option<BlurOptions>) {
        super(colorMode, adaptiveColor, scale, blurOptions)
        this.policy = policy
        this.inactiveColor = inactiveColor
        this.colorMode = colorMode
        this.adaptiveColor = adaptiveColor
        this.scale = scale
        this.blurOptions = blurOptions
    }
}
public class BackgroundBlurStyleOptions_serializer {
    public  static func write(buffer: SerializerBase, value: BackgroundBlurStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForColorMode = value.colorMode
        if (let Some(valueHolderForColorMode) <- valueHolderForColorMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForColorModeTmpValue = valueHolderForColorMode
            valueSerializer.writeInt32(valueHolderForColorModeTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForAdaptiveColor = value.adaptiveColor
        if (let Some(valueHolderForAdaptiveColor) <- valueHolderForAdaptiveColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForAdaptiveColorTmpValue = valueHolderForAdaptiveColor
            valueSerializer.writeInt32(valueHolderForAdaptiveColorTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForScale = value.scale
        if (let Some(valueHolderForScale) <- valueHolderForScale) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForScaleTmpValue = valueHolderForScale
            valueSerializer.writeNumber(valueHolderForScaleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBlurOptions = value.blurOptions
        if (let Some(valueHolderForBlurOptions) <- valueHolderForBlurOptions) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBlurOptionsTmpValue = valueHolderForBlurOptions
            BlurOptions_serializer.write(valueSerializer, valueHolderForBlurOptionsTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForPolicy = value.policy
        if (let Some(valueHolderForPolicy) <- valueHolderForPolicy) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForPolicyTmpValue = valueHolderForPolicy
            valueSerializer.writeInt32(valueHolderForPolicyTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForInactiveColor = value.inactiveColor
        if (let Some(valueHolderForInactiveColor) <- valueHolderForInactiveColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForInactiveColorTmpValue = valueHolderForInactiveColor
            if (valueHolderForInactiveColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForInactiveColorTmpValueForIdx0 = valueHolderForInactiveColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForInactiveColorTmpValueForIdx0.get())
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForInactiveColorTmpValueForIdx1 = valueHolderForInactiveColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForInactiveColorTmpValueForIdx1)
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForInactiveColorTmpValueForIdx2 = valueHolderForInactiveColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForInactiveColorTmpValueForIdx2)
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3))
                let valueHolderForInactiveColorTmpValueForIdx3 = valueHolderForInactiveColorTmpValue.getValue3()
                Resource_serializer.write(valueSerializer, valueHolderForInactiveColorTmpValueForIdx3)
            } else {
                throw Exception("One of the branches for valueHolderForInactiveColorTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): BackgroundBlurStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let colorModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorModeTmpBuf: Option<ThemeColorMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorModeTmpBuf_runtimeType))) {
            colorModeTmpBuf = ThemeColorMode.parse(valueDeserializer.readInt32())
        }
        let colorModeTmpResult: Option<ThemeColorMode> = colorModeTmpBuf
        let adaptiveColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var adaptiveColorTmpBuf: Option<AdaptiveColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(adaptiveColorTmpBuf_runtimeType))) {
            adaptiveColorTmpBuf = AdaptiveColor.parse(valueDeserializer.readInt32())
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
            policyTmpBuf = BlurStyleActivePolicy.parse(valueDeserializer.readInt32())
        }
        let policyTmpResult: Option<BlurStyleActivePolicy> = policyTmpBuf
        let inactiveColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var inactiveColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(inactiveColorTmpBuf_runtimeType))) {
            let inactiveColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var inactiveColorTmpBuf_: ResourceColor 
            if (inactiveColorTmpBuf_UnionSelector == Int8(0)) {
                inactiveColorTmpBuf_ = ResourceColor(Color.parse(valueDeserializer.readInt32()))
            } else if (inactiveColorTmpBuf_UnionSelector == Int8(1)) {
                inactiveColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (inactiveColorTmpBuf_UnionSelector == Int8(2)) {
                inactiveColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (inactiveColorTmpBuf_UnionSelector == Int8(3)) {
                inactiveColorTmpBuf_ = ResourceColor(Resource_serializer.read(valueDeserializer))
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
