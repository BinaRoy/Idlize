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
public interface sharedTransitionOptionsInterfaces <:  {
    public mut open prop duration: Option<Float64>
    public mut open prop curve: Option<Union_Curve_String_ICurve>
    public mut open prop delay: Option<Float64>
    public mut open prop motionPath: Option<MotionPathOptions>
    public mut open prop zIndex: Option<Float64>
    public mut open prop type_: Option<SharedTransitionEffectType>
}
public open class sharedTransitionOptions <: sharedTransitionOptionsInterfaces {
    private var duration_container: Option<Float64>
    public mut open prop duration: Option<Float64>
    {
        get() {
            return duration_container
        }
        set(duration) {
            duration_container = duration
        }
    }
    private var curve_container: Option<Union_Curve_String_ICurve>
    public mut open prop curve: Option<Union_Curve_String_ICurve>
    {
        get() {
            return curve_container
        }
        set(curve) {
            curve_container = curve
        }
    }
    private var delay_container: Option<Float64>
    public mut open prop delay: Option<Float64>
    {
        get() {
            return delay_container
        }
        set(delay) {
            delay_container = delay
        }
    }
    private var motionPath_container: Option<MotionPathOptions>
    public mut open prop motionPath: Option<MotionPathOptions>
    {
        get() {
            return motionPath_container
        }
        set(motionPath) {
            motionPath_container = motionPath
        }
    }
    private var zIndex_container: Option<Float64>
    public mut open prop zIndex: Option<Float64>
    {
        get() {
            return zIndex_container
        }
        set(zIndex) {
            zIndex_container = zIndex
        }
    }
    private var type_container: Option<SharedTransitionEffectType>
    public mut open prop type_: Option<SharedTransitionEffectType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    sharedTransitionOptions(duration: Option<Float64>, curve: Option<Union_Curve_String_ICurve>, delay: Option<Float64>, motionPath: Option<MotionPathOptions>, zIndex: Option<Float64>, type_: Option<SharedTransitionEffectType>) {
        this.duration_container = duration
        this.curve_container = curve
        this.delay_container = delay
        this.motionPath_container = motionPath
        this.zIndex_container = zIndex
        this.type_container = type_
    }
}
public open class sharedTransitionOptions_serializer {
    public static func write(buffer: SerializerBase, value: sharedTransitionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDuration = value.duration
        if (valueHolderForDuration.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDurationTmpValue = valueHolderForDuration
            valueSerializer.writeNumber(valueHolderForDurationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCurve = value.curve
        if (valueHolderForCurve.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCurveTmpValue = valueHolderForCurve
            if (valueHolderForCurveTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForCurveTmpValueForIdx0 = valueHolderForCurveTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForCurveTmpValueForIdx0.value);
            } else if (valueHolderForCurveTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForCurveTmpValueForIdx1 = valueHolderForCurveTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForCurveTmpValueForIdx1);
            } else if (valueHolderForCurveTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForCurveTmpValueForIdx2 = valueHolderForCurveTmpValue.getValue2()
                ICurve_serializer.write(valueSerializer, valueHolderForCurveTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDelay = value.delay
        if (valueHolderForDelay.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDelayTmpValue = valueHolderForDelay
            valueSerializer.writeNumber(valueHolderForDelayTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMotionPath = value.motionPath
        if (valueHolderForMotionPath.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMotionPathTmpValue = valueHolderForMotionPath
            MotionPathOptions_serializer.write(valueSerializer, valueHolderForMotionPathTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForZIndex = value.zIndex
        if (valueHolderForZIndex.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForZIndexTmpValue = valueHolderForZIndex
            valueSerializer.writeNumber(valueHolderForZIndexTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): sharedTransitionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let durationTmpResult: Option<Float64> = durationTmpBuf
        let curveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var curveTmpBuf: Option<Union_Curve_String_ICurve> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(curveTmpBuf_runtimeType))) {
            let curveTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var curveTmpBuf_: Union_Curve_String_ICurve 
            if (curveTmpBuf_UnionSelector == Int8(0)) {
                curveTmpBuf_ = Union_Curve_String_ICurve(Curve(valueDeserializer.readInt32()))
            } else if (curveTmpBuf_UnionSelector == Int8(1)) {
                curveTmpBuf_ = Union_Curve_String_ICurve(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (curveTmpBuf_UnionSelector == Int8(2)) {
                curveTmpBuf_ = Union_Curve_String_ICurve(match (ICurve_serializer.read(valueDeserializer) as ICurve) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for curveTmpBuf_ has to be chosen through deserialisation.")
            }
            curveTmpBuf = match (curveTmpBuf_ as Union_Curve_String_ICurve) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let curveTmpResult: Option<Union_Curve_String_ICurve> = curveTmpBuf
        let delayTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var delayTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(delayTmpBuf_runtimeType))) {
            delayTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let delayTmpResult: Option<Float64> = delayTmpBuf
        let motionPathTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var motionPathTmpBuf: Option<MotionPathOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(motionPathTmpBuf_runtimeType))) {
            motionPathTmpBuf = MotionPathOptions_serializer.read(valueDeserializer)
        }
        let motionPathTmpResult: Option<MotionPathOptions> = motionPathTmpBuf
        let zIndexTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var zIndexTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(zIndexTmpBuf_runtimeType))) {
            zIndexTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let zIndexTmpResult: Option<Float64> = zIndexTmpBuf
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<SharedTransitionEffectType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = SharedTransitionEffectType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<SharedTransitionEffectType> = typeTmpBuf
        var value: sharedTransitionOptions = sharedTransitionOptions(durationTmpResult, curveTmpResult, delayTmpResult, motionPathTmpResult, zIndexTmpResult, typeTmpResult)
        return value
    }
}
