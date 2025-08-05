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
public interface ProgressOptionsInterfaces <:  {
    public mut open prop value: Float64
    public mut open prop total: Option<Float64>
    public mut open prop style: Option<ProgressStyle>
    public mut open prop type_: Option<ProgressType>
}
public open class ProgressOptions <: ProgressOptionsInterfaces {
    private var value_container: Float64
    public mut open prop value: Float64
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var total_container: Option<Float64>
    public mut open prop total: Option<Float64>
    {
        get() {
            return total_container
        }
        set(total) {
            total_container = total
        }
    }
    private var style_container: Option<ProgressStyle>
    public mut open prop style: Option<ProgressStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var type_container: Option<ProgressType>
    public mut open prop type_: Option<ProgressType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    ProgressOptions(value: Float64, total: Option<Float64>, style: Option<ProgressStyle>, type_: Option<ProgressType>) {
        this.value_container = value
        this.total_container = total
        this.style_container = style
        this.type_container = type_
    }
}
public open class ProgressOptions_serializer {
    public static func write(buffer: SerializerBase, value: ProgressOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValue = value.value
        valueSerializer.writeNumber(valueHolderForValue);
        let valueHolderForTotal = value.total
        if (valueHolderForTotal.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTotalTmpValue = valueHolderForTotal
            valueSerializer.writeNumber(valueHolderForTotalTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ProgressOptions {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let totalTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var totalTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(totalTmpBuf_runtimeType))) {
            totalTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let totalTmpResult: Option<Float64> = totalTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<ProgressStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = ProgressStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<ProgressStyle> = styleTmpBuf
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<ProgressType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = ProgressType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<ProgressType> = typeTmpBuf
        var value: ProgressOptions = ProgressOptions(valueTmpResult, totalTmpResult, styleTmpResult, typeTmpResult)
        return value
    }
}
