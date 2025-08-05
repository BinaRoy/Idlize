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
public interface TextMarqueeOptionsInterfaces <:  {
    public mut open prop start: Bool
    public mut open prop step: Option<Float64>
    public mut open prop loop: Option<Float64>
    public mut open prop fromStart: Option<Bool>
    public mut open prop delay: Option<Float64>
    public mut open prop fadeout: Option<Bool>
    public mut open prop marqueeStartPolicy: Option<MarqueeStartPolicy>
}
public open class TextMarqueeOptions <: TextMarqueeOptionsInterfaces {
    private var start_container: Bool
    public mut open prop start: Bool
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var step_container: Option<Float64>
    public mut open prop step: Option<Float64>
    {
        get() {
            return step_container
        }
        set(step) {
            step_container = step
        }
    }
    private var loop_container: Option<Float64>
    public mut open prop loop: Option<Float64>
    {
        get() {
            return loop_container
        }
        set(loop) {
            loop_container = loop
        }
    }
    private var fromStart_container: Option<Bool>
    public mut open prop fromStart: Option<Bool>
    {
        get() {
            return fromStart_container
        }
        set(fromStart) {
            fromStart_container = fromStart
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
    private var fadeout_container: Option<Bool>
    public mut open prop fadeout: Option<Bool>
    {
        get() {
            return fadeout_container
        }
        set(fadeout) {
            fadeout_container = fadeout
        }
    }
    private var marqueeStartPolicy_container: Option<MarqueeStartPolicy>
    public mut open prop marqueeStartPolicy: Option<MarqueeStartPolicy>
    {
        get() {
            return marqueeStartPolicy_container
        }
        set(marqueeStartPolicy) {
            marqueeStartPolicy_container = marqueeStartPolicy
        }
    }
    TextMarqueeOptions(start: Bool, step: Option<Float64>, loop: Option<Float64>, fromStart: Option<Bool>, delay: Option<Float64>, fadeout: Option<Bool>, marqueeStartPolicy: Option<MarqueeStartPolicy>) {
        this.start_container = start
        this.step_container = step
        this.loop_container = loop
        this.fromStart_container = fromStart
        this.delay_container = delay
        this.fadeout_container = fadeout
        this.marqueeStartPolicy_container = marqueeStartPolicy
    }
}
public open class TextMarqueeOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextMarqueeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        valueSerializer.writeBoolean(valueHolderForStart);
        let valueHolderForStep = value.step
        if (valueHolderForStep.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStepTmpValue = valueHolderForStep
            valueSerializer.writeNumber(valueHolderForStepTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLoop = value.loop
        if (valueHolderForLoop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLoopTmpValue = valueHolderForLoop
            valueSerializer.writeNumber(valueHolderForLoopTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFromStart = value.fromStart
        if (valueHolderForFromStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFromStartTmpValue = valueHolderForFromStart
            valueSerializer.writeBoolean(valueHolderForFromStartTmpValue);
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
        let valueHolderForFadeout = value.fadeout
        if (valueHolderForFadeout.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFadeoutTmpValue = valueHolderForFadeout
            valueSerializer.writeBoolean(valueHolderForFadeoutTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMarqueeStartPolicy = value.marqueeStartPolicy
        if (valueHolderForMarqueeStartPolicy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarqueeStartPolicyTmpValue = valueHolderForMarqueeStartPolicy
            valueSerializer.writeInt32(valueHolderForMarqueeStartPolicyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextMarqueeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpResult: Bool = valueDeserializer.readBoolean()
        let stepTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var stepTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(stepTmpBuf_runtimeType))) {
            stepTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let stepTmpResult: Option<Float64> = stepTmpBuf
        let loopTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var loopTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(loopTmpBuf_runtimeType))) {
            loopTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let loopTmpResult: Option<Float64> = loopTmpBuf
        let fromStartTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fromStartTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fromStartTmpBuf_runtimeType))) {
            fromStartTmpBuf = valueDeserializer.readBoolean()
        }
        let fromStartTmpResult: Option<Bool> = fromStartTmpBuf
        let delayTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var delayTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(delayTmpBuf_runtimeType))) {
            delayTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let delayTmpResult: Option<Float64> = delayTmpBuf
        let fadeoutTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fadeoutTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fadeoutTmpBuf_runtimeType))) {
            fadeoutTmpBuf = valueDeserializer.readBoolean()
        }
        let fadeoutTmpResult: Option<Bool> = fadeoutTmpBuf
        let marqueeStartPolicyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marqueeStartPolicyTmpBuf: Option<MarqueeStartPolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marqueeStartPolicyTmpBuf_runtimeType))) {
            marqueeStartPolicyTmpBuf = MarqueeStartPolicy(valueDeserializer.readInt32())
        }
        let marqueeStartPolicyTmpResult: Option<MarqueeStartPolicy> = marqueeStartPolicyTmpBuf
        var value: TextMarqueeOptions = TextMarqueeOptions(startTmpResult, stepTmpResult, loopTmpResult, fromStartTmpResult, delayTmpResult, fadeoutTmpResult, marqueeStartPolicyTmpResult)
        return value
    }
}
