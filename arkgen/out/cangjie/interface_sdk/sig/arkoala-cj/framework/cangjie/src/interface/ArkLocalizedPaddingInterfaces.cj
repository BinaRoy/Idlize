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
public interface LocalizedPaddingInterfaces <:  {
    public mut open prop top: Option<LengthMetrics>
    public mut open prop end: Option<LengthMetrics>
    public mut open prop bottom: Option<LengthMetrics>
    public mut open prop start: Option<LengthMetrics>
}
public open class LocalizedPadding <: LocalizedPaddingInterfaces {
    private var top_container: Option<LengthMetrics>
    public mut open prop top: Option<LengthMetrics>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var end_container: Option<LengthMetrics>
    public mut open prop end: Option<LengthMetrics>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var bottom_container: Option<LengthMetrics>
    public mut open prop bottom: Option<LengthMetrics>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var start_container: Option<LengthMetrics>
    public mut open prop start: Option<LengthMetrics>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    LocalizedPadding(top: Option<LengthMetrics>, end: Option<LengthMetrics>, bottom: Option<LengthMetrics>, start: Option<LengthMetrics>) {
        this.top_container = top
        this.end_container = end
        this.bottom_container = bottom
        this.start_container = start
    }
}
public open class LocalizedPadding_serializer {
    public static func write(buffer: SerializerBase, value: LocalizedPadding): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            valueSerializer.writeCustomObject("Any", valueHolderForTopTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            valueSerializer.writeCustomObject("Any", valueHolderForEndTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (valueHolderForBottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            valueSerializer.writeCustomObject("Any", valueHolderForBottomTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            valueSerializer.writeCustomObject("Any", valueHolderForStartTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LocalizedPadding {
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
