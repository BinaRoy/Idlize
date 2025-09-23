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

public class LocalizedPadding {
    public var top: Option<LengthMetrics>
    public var end: Option<LengthMetrics>
    public var bottom: Option<LengthMetrics>
    public var start: Option<LengthMetrics>
    init(top: Option<LengthMetrics>, end: Option<LengthMetrics>, bottom: Option<LengthMetrics>, start: Option<LengthMetrics>) {
        this.top = top
        this.end = end
        this.bottom = bottom
        this.start = start
    }
}
public class LocalizedPadding_serializer {
    public  static func write(buffer: SerializerBase, value: LocalizedPadding): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTop = value.top
        if (let Some(valueHolderForTop) <- valueHolderForTop) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTopTmpValue = valueHolderForTop
            valueSerializer.writeCustomObject("Any", valueHolderForTopTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForEnd = value.end
        if (let Some(valueHolderForEnd) <- valueHolderForEnd) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForEndTmpValue = valueHolderForEnd
            valueSerializer.writeCustomObject("Any", valueHolderForEndTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBottom = value.bottom
        if (let Some(valueHolderForBottom) <- valueHolderForBottom) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBottomTmpValue = valueHolderForBottom
            valueSerializer.writeCustomObject("Any", valueHolderForBottomTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForStart = value.start
        if (let Some(valueHolderForStart) <- valueHolderForStart) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForStartTmpValue = valueHolderForStart
            valueSerializer.writeCustomObject("Any", valueHolderForStartTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): LocalizedPadding {
        var valueDeserializer: DeserializerBase = buffer
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            topTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topTmpResult: Option<LengthMetrics> = topTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            endTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endTmpResult: Option<LengthMetrics> = endTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            bottomTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomTmpResult: Option<LengthMetrics> = bottomTmpBuf
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startTmpResult: Option<LengthMetrics> = startTmpBuf
        var value: LocalizedPadding = LocalizedPadding(topTmpResult, endTmpResult, bottomTmpResult, startTmpResult)
        return value
    }
}
