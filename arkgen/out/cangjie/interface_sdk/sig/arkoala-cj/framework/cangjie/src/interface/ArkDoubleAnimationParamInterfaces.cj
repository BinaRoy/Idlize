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
public interface DoubleAnimationParamInterfaces <:  {
    public mut open prop propertyName: String
    public mut open prop startValue: Float32
    public mut open prop endValue: Float32
    public mut open prop duration: Int32
    public mut open prop delay: Int32
    public mut open prop curve: Union_Curve_String_ICurve
    public mut open prop onProgress: Option<Callback_Extender_OnProgress>
    public mut open prop onFinish: Option<Callback_Extender_OnFinish>
}
public open class DoubleAnimationParam <: DoubleAnimationParamInterfaces {
    private var propertyName_container: String
    public mut open prop propertyName: String
    {
        get() {
            return propertyName_container
        }
        set(propertyName) {
            propertyName_container = propertyName
        }
    }
    private var startValue_container: Float32
    public mut open prop startValue: Float32
    {
        get() {
            return startValue_container
        }
        set(startValue) {
            startValue_container = startValue
        }
    }
    private var endValue_container: Float32
    public mut open prop endValue: Float32
    {
        get() {
            return endValue_container
        }
        set(endValue) {
            endValue_container = endValue
        }
    }
    private var duration_container: Int32
    public mut open prop duration: Int32
    {
        get() {
            return duration_container
        }
        set(duration) {
            duration_container = duration
        }
    }
    private var delay_container: Int32
    public mut open prop delay: Int32
    {
        get() {
            return delay_container
        }
        set(delay) {
            delay_container = delay
        }
    }
    private var curve_container: Union_Curve_String_ICurve
    public mut open prop curve: Union_Curve_String_ICurve
    {
        get() {
            return curve_container
        }
        set(curve) {
            curve_container = curve
        }
    }
    private var onProgress_container: Option<Callback_Extender_OnProgress>
    public mut open prop onProgress: Option<Callback_Extender_OnProgress>
    {
        get() {
            return onProgress_container
        }
        set(onProgress) {
            onProgress_container = onProgress
        }
    }
    private var onFinish_container: Option<Callback_Extender_OnFinish>
    public mut open prop onFinish: Option<Callback_Extender_OnFinish>
    {
        get() {
            return onFinish_container
        }
        set(onFinish) {
            onFinish_container = onFinish
        }
    }
    DoubleAnimationParam(propertyName: String, startValue: Float32, endValue: Float32, duration: Int32, delay: Int32, curve: Union_Curve_String_ICurve, onProgress: Option<Callback_Extender_OnProgress>, onFinish: Option<Callback_Extender_OnFinish>) {
        this.propertyName_container = propertyName
        this.startValue_container = startValue
        this.endValue_container = endValue
        this.duration_container = duration
        this.delay_container = delay
        this.curve_container = curve
        this.onProgress_container = onProgress
        this.onFinish_container = onFinish
    }
}
public open class DoubleAnimationParam_serializer {
    public static func write(buffer: SerializerBase, value: DoubleAnimationParam): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPropertyName = value.propertyName
        valueSerializer.writeString(valueHolderForPropertyName);
        let valueHolderForStartValue = value.startValue
        valueSerializer.writeFloat32(valueHolderForStartValue);
        let valueHolderForEndValue = value.endValue
        valueSerializer.writeFloat32(valueHolderForEndValue);
        let valueHolderForDuration = value.duration
        valueSerializer.writeInt32(valueHolderForDuration);
        let valueHolderForDelay = value.delay
        valueSerializer.writeInt32(valueHolderForDelay);
        let valueHolderForCurve = value.curve
        if (valueHolderForCurve.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForCurveForIdx0 = valueHolderForCurve.getValue0()
            valueSerializer.writeInt32(valueHolderForCurveForIdx0.value);
        } else if (valueHolderForCurve.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForCurveForIdx1 = valueHolderForCurve.getValue1()
            valueSerializer.writeString(valueHolderForCurveForIdx1);
        } else if (valueHolderForCurve.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForCurveForIdx2 = valueHolderForCurve.getValue2()
            ICurve_serializer.write(valueSerializer, valueHolderForCurveForIdx2);
        }
        let valueHolderForOnProgress = value.onProgress
        if (valueHolderForOnProgress.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnProgressTmpValue = valueHolderForOnProgress
            valueSerializer.holdAndWriteCallback(valueHolderForOnProgressTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnFinish = value.onFinish
        if (valueHolderForOnFinish.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnFinishTmpValue = valueHolderForOnFinish
            valueSerializer.holdAndWriteCallback(valueHolderForOnFinishTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DoubleAnimationParam {
        var valueDeserializer: DeserializerBase = buffer
        let propertyNameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let startValueTmpResult: Float32 = valueDeserializer.readFloat32()
        let endValueTmpResult: Float32 = valueDeserializer.readFloat32()
        let durationTmpResult: Int32 = valueDeserializer.readInt32()
        let delayTmpResult: Int32 = valueDeserializer.readInt32()
        let curveTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var curveTmpBuf: Union_Curve_String_ICurve 
        if (curveTmpBufUnionSelector == Int8(0)) {
            curveTmpBuf = Union_Curve_String_ICurve(Curve(valueDeserializer.readInt32()))
        } else if (curveTmpBufUnionSelector == Int8(1)) {
            curveTmpBuf = Union_Curve_String_ICurve(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (curveTmpBufUnionSelector == Int8(2)) {
            curveTmpBuf = Union_Curve_String_ICurve(match (ICurve_serializer.read(valueDeserializer) as ICurve) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for curveTmpBuf has to be chosen through deserialisation.")
        }
        let curveTmpResult: Union_Curve_String_ICurve = match (curveTmpBuf as Union_Curve_String_ICurve) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let onProgressTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onProgressTmpBuf: Option<Callback_Extender_OnProgress> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onProgressTmpBuf_runtimeType))) {
            let onProgressTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onProgressTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onProgressTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onProgressTmpBuf = {value: Float32 => let onProgressTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onProgressTmpBuf_BufArgsSerializer.writeInt32(onProgressTmpBuf_BufResource.resourceId);
onProgressTmpBuf_BufArgsSerializer.writePointer(onProgressTmpBuf_BufCall);
onProgressTmpBuf_BufArgsSerializer.writePointer(onProgressTmpBuf_BufCallSync);
onProgressTmpBuf_BufArgsSerializer.writeFloat32(value);
InteropNativeModule._CallCallback(1264236374, onProgressTmpBuf_BufArgsSerializer.asBuffer(), onProgressTmpBuf_BufArgsSerializer.length());
onProgressTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onProgressTmpResult: Option<Callback_Extender_OnProgress> = onProgressTmpBuf
        let onFinishTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onFinishTmpBuf: Option<Callback_Extender_OnFinish> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onFinishTmpBuf_runtimeType))) {
            let onFinishTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onFinishTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onFinishTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onFinishTmpBuf = { => let onFinishTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onFinishTmpBuf_BufArgsSerializer.writeInt32(onFinishTmpBuf_BufResource.resourceId);
onFinishTmpBuf_BufArgsSerializer.writePointer(onFinishTmpBuf_BufCall);
onFinishTmpBuf_BufArgsSerializer.writePointer(onFinishTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-733525640, onFinishTmpBuf_BufArgsSerializer.asBuffer(), onFinishTmpBuf_BufArgsSerializer.length());
onFinishTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onFinishTmpResult: Option<Callback_Extender_OnFinish> = onFinishTmpBuf
        var value: DoubleAnimationParam = DoubleAnimationParam(propertyNameTmpResult, startValueTmpResult, endValueTmpResult, durationTmpResult, delayTmpResult, curveTmpResult, onProgressTmpResult, onFinishTmpResult)
        return value
    }
}
