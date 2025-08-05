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
public interface SlideRangeInterfaces <:  {
    public mut open prop from_: Option<Float64>
    public mut open prop to: Option<Float64>
}
public open class SlideRange <: SlideRangeInterfaces {
    private var from_container: Option<Float64>
    public mut open prop from_: Option<Float64>
    {
        get() {
            return from_container
        }
        set(from_) {
            from_container = from_
        }
    }
    private var to_container: Option<Float64>
    public mut open prop to: Option<Float64>
    {
        get() {
            return to_container
        }
        set(to) {
            to_container = to
        }
    }
    SlideRange(from_: Option<Float64>, to: Option<Float64>) {
        this.from_container = from_
        this.to_container = to
    }
}
public open class SlideRange_serializer {
    public static func write(buffer: SerializerBase, value: SlideRange): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFrom = value.from_
        if (valueHolderForFrom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFromTmpValue = valueHolderForFrom
            valueSerializer.writeNumber(valueHolderForFromTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTo = value.to
        if (valueHolderForTo.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForToTmpValue = valueHolderForTo
            valueSerializer.writeNumber(valueHolderForToTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SlideRange {
        var valueDeserializer: DeserializerBase = buffer
        let fromTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fromTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fromTmpBuf_runtimeType))) {
            fromTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fromTmpResult: Option<Float64> = fromTmpBuf
        let toTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var toTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(toTmpBuf_runtimeType))) {
            toTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let toTmpResult: Option<Float64> = toTmpBuf
        var value: SlideRange = SlideRange(fromTmpResult, toTmpResult)
        return value
    }
}
