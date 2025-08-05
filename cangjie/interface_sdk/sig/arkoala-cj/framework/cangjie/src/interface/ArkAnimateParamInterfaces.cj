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
public interface AnimateParamInterfaces <:  {
    public mut open prop duration: Option<Float64>
    public mut open prop tempo: Option<Float64>
    public mut open prop curve: Option<Union_Curve_String_ICurve>
    public mut open prop delay: Option<Float64>
    public mut open prop iterations: Option<Float64>
    public mut open prop playMode: Option<PlayMode>
    public mut open prop onFinish: Option<(() -> Unit)>
    public mut open prop finishCallbackType: Option<FinishCallbackType>
    public mut open prop expectedFrameRateRange: Option<ExpectedFrameRateRange>
}
public open class AnimateParam <: AnimateParamInterfaces {
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
    private var tempo_container: Option<Float64>
    public mut open prop tempo: Option<Float64>
    {
        get() {
            return tempo_container
        }
        set(tempo) {
            tempo_container = tempo
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
    private var iterations_container: Option<Float64>
    public mut open prop iterations: Option<Float64>
    {
        get() {
            return iterations_container
        }
        set(iterations) {
            iterations_container = iterations
        }
    }
    private var playMode_container: Option<PlayMode>
    public mut open prop playMode: Option<PlayMode>
    {
        get() {
            return playMode_container
        }
        set(playMode) {
            playMode_container = playMode
        }
    }
    private var onFinish_container: Option<(() -> Unit)>
    public mut open prop onFinish: Option<(() -> Unit)>
    {
        get() {
            return onFinish_container
        }
        set(onFinish) {
            onFinish_container = onFinish
        }
    }
    private var finishCallbackType_container: Option<FinishCallbackType>
    public mut open prop finishCallbackType: Option<FinishCallbackType>
    {
        get() {
            return finishCallbackType_container
        }
        set(finishCallbackType) {
            finishCallbackType_container = finishCallbackType
        }
    }
    private var expectedFrameRateRange_container: Option<ExpectedFrameRateRange>
    public mut open prop expectedFrameRateRange: Option<ExpectedFrameRateRange>
    {
        get() {
            return expectedFrameRateRange_container
        }
        set(expectedFrameRateRange) {
            expectedFrameRateRange_container = expectedFrameRateRange
        }
    }
    AnimateParam(duration: Option<Float64>, tempo: Option<Float64>, curve: Option<Union_Curve_String_ICurve>, delay: Option<Float64>, iterations: Option<Float64>, playMode: Option<PlayMode>, onFinish: Option<(() -> Unit)>, finishCallbackType: Option<FinishCallbackType>, expectedFrameRateRange: Option<ExpectedFrameRateRange>) {
        this.duration_container = duration
        this.tempo_container = tempo
        this.curve_container = curve
        this.delay_container = delay
        this.iterations_container = iterations
        this.playMode_container = playMode
        this.onFinish_container = onFinish
        this.finishCallbackType_container = finishCallbackType
        this.expectedFrameRateRange_container = expectedFrameRateRange
    }
}
public open class AnimateParam_serializer {
    public static func write(buffer: SerializerBase, value: AnimateParam): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDuration = value.duration
        if (valueHolderForDuration.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDurationTmpValue = valueHolderForDuration
            valueSerializer.writeNumber(valueHolderForDurationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTempo = value.tempo
        if (valueHolderForTempo.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTempoTmpValue = valueHolderForTempo
            valueSerializer.writeNumber(valueHolderForTempoTmpValue);
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
        let valueHolderForIterations = value.iterations
        if (valueHolderForIterations.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIterationsTmpValue = valueHolderForIterations
            valueSerializer.writeNumber(valueHolderForIterationsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPlayMode = value.playMode
        if (valueHolderForPlayMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPlayModeTmpValue = valueHolderForPlayMode
            valueSerializer.writeInt32(valueHolderForPlayModeTmpValue.value);
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
        let valueHolderForFinishCallbackType = value.finishCallbackType
        if (valueHolderForFinishCallbackType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFinishCallbackTypeTmpValue = valueHolderForFinishCallbackType
            valueSerializer.writeInt32(valueHolderForFinishCallbackTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForExpectedFrameRateRange = value.expectedFrameRateRange
        if (valueHolderForExpectedFrameRateRange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForExpectedFrameRateRangeTmpValue = valueHolderForExpectedFrameRateRange
            ExpectedFrameRateRange_serializer.write(valueSerializer, valueHolderForExpectedFrameRateRangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): AnimateParam {
        var valueDeserializer: DeserializerBase = buffer
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let durationTmpResult: Option<Float64> = durationTmpBuf
        let tempoTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var tempoTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(tempoTmpBuf_runtimeType))) {
            tempoTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let tempoTmpResult: Option<Float64> = tempoTmpBuf
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
        let iterationsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iterationsTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iterationsTmpBuf_runtimeType))) {
            iterationsTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let iterationsTmpResult: Option<Float64> = iterationsTmpBuf
        let playModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var playModeTmpBuf: Option<PlayMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(playModeTmpBuf_runtimeType))) {
            playModeTmpBuf = PlayMode(valueDeserializer.readInt32())
        }
        let playModeTmpResult: Option<PlayMode> = playModeTmpBuf
        let onFinishTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onFinishTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onFinishTmpBuf_runtimeType))) {
            let onFinishTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onFinishTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onFinishTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onFinishTmpBuf = { => let onFinishTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onFinishTmpBuf_BufArgsSerializer.writeInt32(onFinishTmpBuf_BufResource.resourceId);
onFinishTmpBuf_BufArgsSerializer.writePointer(onFinishTmpBuf_BufCall);
onFinishTmpBuf_BufArgsSerializer.writePointer(onFinishTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onFinishTmpBuf_BufArgsSerializer.asBuffer(), onFinishTmpBuf_BufArgsSerializer.length());
onFinishTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onFinishTmpResult: Option<(() -> Unit)> = onFinishTmpBuf
        let finishCallbackTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var finishCallbackTypeTmpBuf: Option<FinishCallbackType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(finishCallbackTypeTmpBuf_runtimeType))) {
            finishCallbackTypeTmpBuf = FinishCallbackType(valueDeserializer.readInt32())
        }
        let finishCallbackTypeTmpResult: Option<FinishCallbackType> = finishCallbackTypeTmpBuf
        let expectedFrameRateRangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var expectedFrameRateRangeTmpBuf: Option<ExpectedFrameRateRange> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(expectedFrameRateRangeTmpBuf_runtimeType))) {
            expectedFrameRateRangeTmpBuf = ExpectedFrameRateRange_serializer.read(valueDeserializer)
        }
        let expectedFrameRateRangeTmpResult: Option<ExpectedFrameRateRange> = expectedFrameRateRangeTmpBuf
        var value: AnimateParam = AnimateParam(durationTmpResult, tempoTmpResult, curveTmpResult, delayTmpResult, iterationsTmpResult, playModeTmpResult, onFinishTmpResult, finishCallbackTypeTmpResult, expectedFrameRateRangeTmpResult)
        return value
    }
}
