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
public interface MarqueeOptionsInterfaces <:  {
    public mut open prop start: Bool
    public mut open prop step: Option<Float64>
    public mut open prop loop: Option<Float64>
    public mut open prop fromStart: Option<Bool>
    public mut open prop src: String
}
public open class MarqueeOptions <: MarqueeOptionsInterfaces {
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
    private var src_container: String
    public mut open prop src: String
    {
        get() {
            return src_container
        }
        set(src) {
            src_container = src
        }
    }
    MarqueeOptions(start: Bool, step: Option<Float64>, loop: Option<Float64>, fromStart: Option<Bool>, src: String) {
        this.start_container = start
        this.step_container = step
        this.loop_container = loop
        this.fromStart_container = fromStart
        this.src_container = src
    }
}
public open class MarqueeOptions_serializer {
    public static func write(buffer: SerializerBase, value: MarqueeOptions): Unit {
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
        let valueHolderForSrc = value.src
        valueSerializer.writeString(valueHolderForSrc);
    }
    public static func read(buffer: DeserializerBase): MarqueeOptions {
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
        let srcTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: MarqueeOptions = MarqueeOptions(startTmpResult, stepTmpResult, loopTmpResult, fromStartTmpResult, srcTmpResult)
        return value
    }
}
