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
public interface LinearIndicatorStyleInterfaces <:  {
    public mut open prop space: Option<LengthMetrics>
    public mut open prop strokeWidth: Option<LengthMetrics>
    public mut open prop strokeRadius: Option<LengthMetrics>
    public mut open prop trackBackgroundColor: Option<ColorMetrics>
    public mut open prop trackColor: Option<ColorMetrics>
}
public open class LinearIndicatorStyle <: LinearIndicatorStyleInterfaces {
    private var space_container: Option<LengthMetrics>
    public mut open prop space: Option<LengthMetrics>
    {
        get() {
            return space_container
        }
        set(space) {
            space_container = space
        }
    }
    private var strokeWidth_container: Option<LengthMetrics>
    public mut open prop strokeWidth: Option<LengthMetrics>
    {
        get() {
            return strokeWidth_container
        }
        set(strokeWidth) {
            strokeWidth_container = strokeWidth
        }
    }
    private var strokeRadius_container: Option<LengthMetrics>
    public mut open prop strokeRadius: Option<LengthMetrics>
    {
        get() {
            return strokeRadius_container
        }
        set(strokeRadius) {
            strokeRadius_container = strokeRadius
        }
    }
    private var trackBackgroundColor_container: Option<ColorMetrics>
    public mut open prop trackBackgroundColor: Option<ColorMetrics>
    {
        get() {
            return trackBackgroundColor_container
        }
        set(trackBackgroundColor) {
            trackBackgroundColor_container = trackBackgroundColor
        }
    }
    private var trackColor_container: Option<ColorMetrics>
    public mut open prop trackColor: Option<ColorMetrics>
    {
        get() {
            return trackColor_container
        }
        set(trackColor) {
            trackColor_container = trackColor
        }
    }
    LinearIndicatorStyle(space: Option<LengthMetrics>, strokeWidth: Option<LengthMetrics>, strokeRadius: Option<LengthMetrics>, trackBackgroundColor: Option<ColorMetrics>, trackColor: Option<ColorMetrics>) {
        this.space_container = space
        this.strokeWidth_container = strokeWidth
        this.strokeRadius_container = strokeRadius
        this.trackBackgroundColor_container = trackBackgroundColor
        this.trackColor_container = trackColor
    }
}
public open class LinearIndicatorStyle_serializer {
    public static func write(buffer: SerializerBase, value: LinearIndicatorStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSpace = value.space
        if (valueHolderForSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSpaceTmpValue = valueHolderForSpace
            valueSerializer.writeCustomObject("Any", valueHolderForSpaceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStrokeWidth = value.strokeWidth
        if (valueHolderForStrokeWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeWidthTmpValue = valueHolderForStrokeWidth
            valueSerializer.writeCustomObject("Any", valueHolderForStrokeWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStrokeRadius = value.strokeRadius
        if (valueHolderForStrokeRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeRadiusTmpValue = valueHolderForStrokeRadius
            valueSerializer.writeCustomObject("Any", valueHolderForStrokeRadiusTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTrackBackgroundColor = value.trackBackgroundColor
        if (valueHolderForTrackBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTrackBackgroundColorTmpValue = valueHolderForTrackBackgroundColor
            valueSerializer.writeCustomObject("Any", valueHolderForTrackBackgroundColorTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTrackColor = value.trackColor
        if (valueHolderForTrackColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTrackColorTmpValue = valueHolderForTrackColor
            valueSerializer.writeCustomObject("Any", valueHolderForTrackColorTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LinearIndicatorStyle {
        var valueDeserializer: DeserializerBase = buffer
        let spaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var spaceTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(spaceTmpBuf_runtimeType))) {
            spaceTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let spaceTmpResult: Option<LengthMetrics> = spaceTmpBuf
        let strokeWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeWidthTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeWidthTmpBuf_runtimeType))) {
            strokeWidthTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeWidthTmpResult: Option<LengthMetrics> = strokeWidthTmpBuf
        let strokeRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeRadiusTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeRadiusTmpBuf_runtimeType))) {
            strokeRadiusTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeRadiusTmpResult: Option<LengthMetrics> = strokeRadiusTmpBuf
        let trackBackgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var trackBackgroundColorTmpBuf: Option<ColorMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(trackBackgroundColorTmpBuf_runtimeType))) {
            trackBackgroundColorTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let trackBackgroundColorTmpResult: Option<ColorMetrics> = trackBackgroundColorTmpBuf
        let trackColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var trackColorTmpBuf: Option<ColorMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(trackColorTmpBuf_runtimeType))) {
            trackColorTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let trackColorTmpResult: Option<ColorMetrics> = trackColorTmpBuf
        var value: LinearIndicatorStyle = LinearIndicatorStyle(spaceTmpResult, strokeWidthTmpResult, strokeRadiusTmpResult, trackBackgroundColorTmpResult, trackColorTmpResult)
        return value
    }
}
