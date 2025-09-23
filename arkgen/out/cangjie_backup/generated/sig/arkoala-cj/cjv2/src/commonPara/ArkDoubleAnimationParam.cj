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

public class DoubleAnimationParam {
    public var propertyName: String
    public var startValue: Option<Float32>
    public var endValue: Option<Float32>
    public var duration: Option<Int32>
    public var delay: Option<Int32>
    public var curve: Option<Curve>
    public var onProgress: Option<Callback_Extender_OnProgress>
    public var onFinish: Option<Callback_Extender_OnFinish>
    init(propertyName: String, startValue: Option<Float32>, endValue: Option<Float32>, duration: Option<Int32>, delay: Option<Int32>, curve: Option<Curve>, onProgress: Option<Callback_Extender_OnProgress>, onFinish: Option<Callback_Extender_OnFinish>) {
        this.propertyName = propertyName
        this.startValue = startValue
        this.endValue = endValue
        this.duration = duration
        this.delay = delay
        this.curve = curve
        this.onProgress = onProgress
        this.onFinish = onFinish
    }
}
public class DoubleAnimationParam_serializer {
    public  static func write(buffer: SerializerBase, value: DoubleAnimationParam): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPropertyName = value.propertyName
        valueSerializer.writeString(valueHolderForPropertyName)
        let valueHolderForStartValue = value.startValue
        if (let Some(valueHolderForStartValue) <- valueHolderForStartValue) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForStartValueTmpValue = valueHolderForStartValue
            valueSerializer.writeFloat32(valueHolderForStartValueTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForEndValue = value.endValue
        if (let Some(valueHolderForEndValue) <- valueHolderForEndValue) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForEndValueTmpValue = valueHolderForEndValue
            valueSerializer.writeFloat32(valueHolderForEndValueTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForDuration = value.duration
        if (let Some(valueHolderForDuration) <- valueHolderForDuration) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForDurationTmpValue = valueHolderForDuration
            valueSerializer.writeInt32(valueHolderForDurationTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForDelay = value.delay
        if (let Some(valueHolderForDelay) <- valueHolderForDelay) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForDelayTmpValue = valueHolderForDelay
            valueSerializer.writeInt32(valueHolderForDelayTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForCurve = value.curve
        if (let Some(valueHolderForCurve) <- valueHolderForCurve) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForCurveTmpValue = valueHolderForCurve
            valueSerializer.writeInt32(valueHolderForCurveTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnProgress = value.onProgress
        if (let Some(valueHolderForOnProgress) <- valueHolderForOnProgress) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnProgressTmpValue = valueHolderForOnProgress
            valueSerializer.holdAndWriteCallback(valueHolderForOnProgressTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForOnFinish = value.onFinish
        if (let Some(valueHolderForOnFinish) <- valueHolderForOnFinish) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForOnFinishTmpValue = valueHolderForOnFinish
            valueSerializer.holdAndWriteCallback(valueHolderForOnFinishTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): DoubleAnimationParam {
        var valueDeserializer: DeserializerBase = buffer
        let propertyNameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let startValueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startValueTmpBuf: Option<Float32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startValueTmpBuf_runtimeType))) {
            startValueTmpBuf = valueDeserializer.readFloat32()
        }
        let startValueTmpResult: Option<Float32> = startValueTmpBuf
        let endValueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endValueTmpBuf: Option<Float32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endValueTmpBuf_runtimeType))) {
            endValueTmpBuf = valueDeserializer.readFloat32()
        }
        let endValueTmpResult: Option<Float32> = endValueTmpBuf
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Int32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = valueDeserializer.readInt32()
        }
        let durationTmpResult: Option<Int32> = durationTmpBuf
        let delayTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var delayTmpBuf: Option<Int32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(delayTmpBuf_runtimeType))) {
            delayTmpBuf = valueDeserializer.readInt32()
        }
        let delayTmpResult: Option<Int32> = delayTmpBuf
        let curveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var curveTmpBuf: Option<Curve> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(curveTmpBuf_runtimeType))) {
            curveTmpBuf = Curve.parse(valueDeserializer.readInt32())
        }
        let curveTmpResult: Option<Curve> = curveTmpBuf
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
