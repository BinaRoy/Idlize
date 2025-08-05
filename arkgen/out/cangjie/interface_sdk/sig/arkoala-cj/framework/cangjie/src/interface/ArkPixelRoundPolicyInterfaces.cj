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
public interface PixelRoundPolicyInterfaces <:  {
    public mut open prop start: Option<PixelRoundCalcPolicy>
    public mut open prop top: Option<PixelRoundCalcPolicy>
    public mut open prop end: Option<PixelRoundCalcPolicy>
    public mut open prop bottom: Option<PixelRoundCalcPolicy>
}
public open class PixelRoundPolicy <: PixelRoundPolicyInterfaces {
    private var start_container: Option<PixelRoundCalcPolicy>
    public mut open prop start: Option<PixelRoundCalcPolicy>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var top_container: Option<PixelRoundCalcPolicy>
    public mut open prop top: Option<PixelRoundCalcPolicy>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var end_container: Option<PixelRoundCalcPolicy>
    public mut open prop end: Option<PixelRoundCalcPolicy>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var bottom_container: Option<PixelRoundCalcPolicy>
    public mut open prop bottom: Option<PixelRoundCalcPolicy>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    PixelRoundPolicy(start: Option<PixelRoundCalcPolicy>, top: Option<PixelRoundCalcPolicy>, end: Option<PixelRoundCalcPolicy>, bottom: Option<PixelRoundCalcPolicy>) {
        this.start_container = start
        this.top_container = top
        this.end_container = end
        this.bottom_container = bottom
    }
}
public open class PixelRoundPolicy_serializer {
    public static func write(buffer: SerializerBase, value: PixelRoundPolicy): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            valueSerializer.writeInt32(valueHolderForStartTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            valueSerializer.writeInt32(valueHolderForTopTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            valueSerializer.writeInt32(valueHolderForEndTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (valueHolderForBottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            valueSerializer.writeInt32(valueHolderForBottomTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PixelRoundPolicy {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<PixelRoundCalcPolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = PixelRoundCalcPolicy(valueDeserializer.readInt32())
        }
        let startTmpResult: Option<PixelRoundCalcPolicy> = startTmpBuf
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<PixelRoundCalcPolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            topTmpBuf = PixelRoundCalcPolicy(valueDeserializer.readInt32())
        }
        let topTmpResult: Option<PixelRoundCalcPolicy> = topTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<PixelRoundCalcPolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            endTmpBuf = PixelRoundCalcPolicy(valueDeserializer.readInt32())
        }
        let endTmpResult: Option<PixelRoundCalcPolicy> = endTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<PixelRoundCalcPolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            bottomTmpBuf = PixelRoundCalcPolicy(valueDeserializer.readInt32())
        }
        let bottomTmpResult: Option<PixelRoundCalcPolicy> = bottomTmpBuf
        var value: PixelRoundPolicy = PixelRoundPolicy(startTmpResult, topTmpResult, endTmpResult, bottomTmpResult)
        return value
    }
}
