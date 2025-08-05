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
public interface GuideLinePositionInterfaces <:  {
    public mut open prop start: Option<Dimension>
    public mut open prop end: Option<Dimension>
}
public open class GuideLinePosition <: GuideLinePositionInterfaces {
    private var start_container: Option<Dimension>
    public mut open prop start: Option<Dimension>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Option<Dimension>
    public mut open prop end: Option<Dimension>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    GuideLinePosition(start: Option<Dimension>, end: Option<Dimension>) {
        this.start_container = start
        this.end_container = end
    }
}
public open class GuideLinePosition_serializer {
    public static func write(buffer: SerializerBase, value: GuideLinePosition): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            if (valueHolderForStartTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartTmpValueForIdx0 = valueHolderForStartTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForStartTmpValueForIdx0);
            } else if (valueHolderForStartTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartTmpValueForIdx1 = valueHolderForStartTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStartTmpValueForIdx1);
            } else if (valueHolderForStartTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStartTmpValueForIdx2 = valueHolderForStartTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForStartTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            if (valueHolderForEndTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForEndTmpValueForIdx0 = valueHolderForEndTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForEndTmpValueForIdx0);
            } else if (valueHolderForEndTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForEndTmpValueForIdx1 = valueHolderForEndTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForEndTmpValueForIdx1);
            } else if (valueHolderForEndTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForEndTmpValueForIdx2 = valueHolderForEndTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForEndTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GuideLinePosition {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            let startTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startTmpBuf_: Dimension 
            if (startTmpBuf_UnionSelector == Int8(0)) {
                startTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startTmpBuf_UnionSelector == Int8(1)) {
                startTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startTmpBuf_UnionSelector == Int8(2)) {
                startTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for startTmpBuf_ has to be chosen through deserialisation.")
            }
            startTmpBuf = match (startTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startTmpResult: Option<Dimension> = startTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            let endTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var endTmpBuf_: Dimension 
            if (endTmpBuf_UnionSelector == Int8(0)) {
                endTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endTmpBuf_UnionSelector == Int8(1)) {
                endTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endTmpBuf_UnionSelector == Int8(2)) {
                endTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for endTmpBuf_ has to be chosen through deserialisation.")
            }
            endTmpBuf = match (endTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endTmpResult: Option<Dimension> = endTmpBuf
        var value: GuideLinePosition = GuideLinePosition(startTmpResult, endTmpResult)
        return value
    }
}
