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
public interface FocusBoxStyleInterfaces <:  {
    public mut open prop margin: Option<LengthMetrics>
    public mut open prop strokeColor: Option<ColorMetrics>
    public mut open prop strokeWidth: Option<LengthMetrics>
}
public open class FocusBoxStyle <: FocusBoxStyleInterfaces {
    private var margin_container: Option<LengthMetrics>
    public mut open prop margin: Option<LengthMetrics>
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    private var strokeColor_container: Option<ColorMetrics>
    public mut open prop strokeColor: Option<ColorMetrics>
    {
        get() {
            return strokeColor_container
        }
        set(strokeColor) {
            strokeColor_container = strokeColor
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
    FocusBoxStyle(margin: Option<LengthMetrics>, strokeColor: Option<ColorMetrics>, strokeWidth: Option<LengthMetrics>) {
        this.margin_container = margin
        this.strokeColor_container = strokeColor
        this.strokeWidth_container = strokeWidth
    }
}
public open class FocusBoxStyle_serializer {
    public static func write(buffer: SerializerBase, value: FocusBoxStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMargin = value.margin
        if (valueHolderForMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginTmpValue = valueHolderForMargin
            valueSerializer.writeCustomObject("Any", valueHolderForMarginTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStrokeColor = value.strokeColor
        if (valueHolderForStrokeColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeColorTmpValue = valueHolderForStrokeColor
            valueSerializer.writeCustomObject("Any", valueHolderForStrokeColorTmpValue);
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
    }
    public static func read(buffer: DeserializerBase): FocusBoxStyle {
        var valueDeserializer: DeserializerBase = buffer
        let marginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBuf_runtimeType))) {
            marginTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpResult: Option<LengthMetrics> = marginTmpBuf
        let strokeColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeColorTmpBuf: Option<ColorMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeColorTmpBuf_runtimeType))) {
            strokeColorTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeColorTmpResult: Option<ColorMetrics> = strokeColorTmpBuf
        let strokeWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeWidthTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeWidthTmpBuf_runtimeType))) {
            strokeWidthTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeWidthTmpResult: Option<LengthMetrics> = strokeWidthTmpBuf
        var value: FocusBoxStyle = FocusBoxStyle(marginTmpResult, strokeColorTmpResult, strokeWidthTmpResult)
        return value
    }
}
