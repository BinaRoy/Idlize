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
public interface LinearGradientBlurOptionsInterfaces <:  {
    public mut open prop fractionStops: ArrayList<FractionStop>
    public mut open prop direction: GradientDirection
}
public open class LinearGradientBlurOptions <: LinearGradientBlurOptionsInterfaces {
    private var fractionStops_container: ArrayList<FractionStop>
    public mut open prop fractionStops: ArrayList<FractionStop>
    {
        get() {
            return fractionStops_container
        }
        set(fractionStops) {
            fractionStops_container = fractionStops
        }
    }
    private var direction_container: GradientDirection
    public mut open prop direction: GradientDirection
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    LinearGradientBlurOptions(fractionStops: ArrayList<FractionStop>, direction: GradientDirection) {
        this.fractionStops_container = fractionStops
        this.direction_container = direction
    }
}
public open class LinearGradientBlurOptions_serializer {
    public static func write(buffer: SerializerBase, value: LinearGradientBlurOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFractionStops = value.fractionStops
        valueSerializer.writeInt32(Int32(valueHolderForFractionStops.size));
        for (valueHolderForFractionStopsCounterI in 0..valueHolderForFractionStops.size) {
            let valueHolderForFractionStopsTmpElement: FractionStop = valueHolderForFractionStops[Int64(valueHolderForFractionStopsCounterI)]
            let valueHolderForFractionStopsTmpElement_0 = valueHolderForFractionStopsTmpElement.value0
            valueSerializer.writeNumber(valueHolderForFractionStopsTmpElement_0);
            let valueHolderForFractionStopsTmpElement_1 = valueHolderForFractionStopsTmpElement.value1
            valueSerializer.writeNumber(valueHolderForFractionStopsTmpElement_1);
        }
        let valueHolderForDirection = value.direction
        valueSerializer.writeInt32(valueHolderForDirection.value);
    }
    public static func read(buffer: DeserializerBase): LinearGradientBlurOptions {
        var valueDeserializer: DeserializerBase = buffer
        let fractionStopsTmpBufLength: Int32 = valueDeserializer.readInt32()
        var fractionStopsTmpBuf: ArrayList<FractionStop> = ArrayList<FractionStop>(Int64(fractionStopsTmpBufLength))
        fractionStopsTmpBuf = ArrayList<FractionStop>(Int64(fractionStopsTmpBufLength))
        for (fractionStopsTmpBufBufCounterI in 0..fractionStopsTmpBufLength) {
            let fractionStopsTmpBufTempBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let fractionStopsTmpBufTempBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            fractionStopsTmpBuf[Int64(fractionStopsTmpBufBufCounterI)] = FractionStop(fractionStopsTmpBufTempBuf_value0, fractionStopsTmpBufTempBuf_value1)
        }
        let fractionStopsTmpResult: ArrayList<FractionStop> = fractionStopsTmpBuf
        let directionTmpResult: GradientDirection = GradientDirection(valueDeserializer.readInt32())
        var value: LinearGradientBlurOptions = LinearGradientBlurOptions(fractionStopsTmpResult, directionTmpResult)
        return value
    }
}
