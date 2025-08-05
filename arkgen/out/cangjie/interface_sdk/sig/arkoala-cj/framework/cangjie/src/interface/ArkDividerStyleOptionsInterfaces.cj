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
public interface DividerStyleOptionsInterfaces <:  {
    public mut open prop strokeWidth: Option<LengthMetrics>
    public mut open prop color: Option<ResourceColor>
    public mut open prop startMargin: Option<LengthMetrics>
    public mut open prop endMargin: Option<LengthMetrics>
    public mut open prop mode: Option<DividerMode>
}
public open class DividerStyleOptions <: DividerStyleOptionsInterfaces {
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
    private var color_container: Option<ResourceColor>
    public mut open prop color: Option<ResourceColor>
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    private var startMargin_container: Option<LengthMetrics>
    public mut open prop startMargin: Option<LengthMetrics>
    {
        get() {
            return startMargin_container
        }
        set(startMargin) {
            startMargin_container = startMargin
        }
    }
    private var endMargin_container: Option<LengthMetrics>
    public mut open prop endMargin: Option<LengthMetrics>
    {
        get() {
            return endMargin_container
        }
        set(endMargin) {
            endMargin_container = endMargin
        }
    }
    private var mode_container: Option<DividerMode>
    public mut open prop mode: Option<DividerMode>
    {
        get() {
            return mode_container
        }
        set(mode) {
            mode_container = mode
        }
    }
    DividerStyleOptions(strokeWidth: Option<LengthMetrics>, color: Option<ResourceColor>, startMargin: Option<LengthMetrics>, endMargin: Option<LengthMetrics>, mode: Option<DividerMode>) {
        this.strokeWidth_container = strokeWidth
        this.color_container = color
        this.startMargin_container = startMargin
        this.endMargin_container = endMargin
        this.mode_container = mode
    }
}
public open class DividerStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: DividerStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStrokeWidth = value.strokeWidth
        if (valueHolderForStrokeWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeWidthTmpValue = valueHolderForStrokeWidth
            valueSerializer.writeCustomObject("Any", valueHolderForStrokeWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColor = value.color
        if (valueHolderForColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorTmpValue = valueHolderForColor
            if (valueHolderForColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColorTmpValueForIdx0 = valueHolderForColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx0.value);
            } else if (valueHolderForColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorTmpValueForIdx1 = valueHolderForColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForColorTmpValueForIdx1);
            } else if (valueHolderForColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorTmpValueForIdx2 = valueHolderForColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForColorTmpValueForIdx2);
            } else if (valueHolderForColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForColorTmpValueForIdx3 = valueHolderForColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStartMargin = value.startMargin
        if (valueHolderForStartMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartMarginTmpValue = valueHolderForStartMargin
            valueSerializer.writeCustomObject("Any", valueHolderForStartMarginTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEndMargin = value.endMargin
        if (valueHolderForEndMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndMarginTmpValue = valueHolderForEndMargin
            valueSerializer.writeCustomObject("Any", valueHolderForEndMarginTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMode = value.mode
        if (valueHolderForMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModeTmpValue = valueHolderForMode
            valueSerializer.writeInt32(valueHolderForModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DividerStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let strokeWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeWidthTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeWidthTmpBuf_runtimeType))) {
            strokeWidthTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeWidthTmpResult: Option<LengthMetrics> = strokeWidthTmpBuf
        let colorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorTmpBuf_runtimeType))) {
            let colorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var colorTmpBuf_: ResourceColor 
            if (colorTmpBuf_UnionSelector == Int8(0)) {
                colorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (colorTmpBuf_UnionSelector == Int8(1)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(2)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(3)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for colorTmpBuf_ has to be chosen through deserialisation.")
            }
            colorTmpBuf = match (colorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorTmpResult: Option<ResourceColor> = colorTmpBuf
        let startMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startMarginTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startMarginTmpBuf_runtimeType))) {
            startMarginTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startMarginTmpResult: Option<LengthMetrics> = startMarginTmpBuf
        let endMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endMarginTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endMarginTmpBuf_runtimeType))) {
            endMarginTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endMarginTmpResult: Option<LengthMetrics> = endMarginTmpBuf
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<DividerMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            modeTmpBuf = DividerMode(valueDeserializer.readInt32())
        }
        let modeTmpResult: Option<DividerMode> = modeTmpBuf
        var value: DividerStyleOptions = DividerStyleOptions(strokeWidthTmpResult, colorTmpResult, startMarginTmpResult, endMarginTmpResult, modeTmpResult)
        return value
    }
}
