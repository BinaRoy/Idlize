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

public class LocalizedBorderRadiuses {
    public var topStart: Option<LengthMetrics>
    public var topEnd: Option<LengthMetrics>
    public var bottomStart: Option<LengthMetrics>
    public var bottomEnd: Option<LengthMetrics>
    init(topStart: Option<LengthMetrics>, topEnd: Option<LengthMetrics>, bottomStart: Option<LengthMetrics>, bottomEnd: Option<LengthMetrics>) {
        this.topStart = topStart
        this.topEnd = topEnd
        this.bottomStart = bottomStart
        this.bottomEnd = bottomEnd
    }
}
public class LocalizedBorderRadiuses_serializer {
    public  static func write(buffer: SerializerBase, value: LocalizedBorderRadiuses): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTopStart = value.topStart
        if (let Some(valueHolderForTopStart) <- valueHolderForTopStart) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTopStartTmpValue = valueHolderForTopStart
            valueSerializer.writeCustomObject("Any", valueHolderForTopStartTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForTopEnd = value.topEnd
        if (let Some(valueHolderForTopEnd) <- valueHolderForTopEnd) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTopEndTmpValue = valueHolderForTopEnd
            valueSerializer.writeCustomObject("Any", valueHolderForTopEndTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBottomStart = value.bottomStart
        if (let Some(valueHolderForBottomStart) <- valueHolderForBottomStart) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBottomStartTmpValue = valueHolderForBottomStart
            valueSerializer.writeCustomObject("Any", valueHolderForBottomStartTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBottomEnd = value.bottomEnd
        if (let Some(valueHolderForBottomEnd) <- valueHolderForBottomEnd) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBottomEndTmpValue = valueHolderForBottomEnd
            valueSerializer.writeCustomObject("Any", valueHolderForBottomEndTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): LocalizedBorderRadiuses {
        var valueDeserializer: DeserializerBase = buffer
        let topStartTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topStartTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topStartTmpBuf_runtimeType))) {
            topStartTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topStartTmpResult: Option<LengthMetrics> = topStartTmpBuf
        let topEndTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topEndTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topEndTmpBuf_runtimeType))) {
            topEndTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topEndTmpResult: Option<LengthMetrics> = topEndTmpBuf
        let bottomStartTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomStartTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomStartTmpBuf_runtimeType))) {
            bottomStartTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomStartTmpResult: Option<LengthMetrics> = bottomStartTmpBuf
        let bottomEndTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomEndTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomEndTmpBuf_runtimeType))) {
            bottomEndTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomEndTmpResult: Option<LengthMetrics> = bottomEndTmpBuf
        var value: LocalizedBorderRadiuses = LocalizedBorderRadiuses(topStartTmpResult, topEndTmpResult, bottomStartTmpResult, bottomEndTmpResult)
        return value
    }
}
