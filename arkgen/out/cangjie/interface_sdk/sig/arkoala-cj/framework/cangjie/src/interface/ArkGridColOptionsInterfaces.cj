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
public interface GridColOptionsInterfaces <:  {
    public mut open prop span: Option<Union_Number_GridColColumnOption>
    public mut open prop offset: Option<Union_Number_GridColColumnOption>
    public mut open prop order: Option<Union_Number_GridColColumnOption>
}
public open class GridColOptions <: GridColOptionsInterfaces {
    private var span_container: Option<Union_Number_GridColColumnOption>
    public mut open prop span: Option<Union_Number_GridColColumnOption>
    {
        get() {
            return span_container
        }
        set(span) {
            span_container = span
        }
    }
    private var offset_container: Option<Union_Number_GridColColumnOption>
    public mut open prop offset: Option<Union_Number_GridColColumnOption>
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    private var order_container: Option<Union_Number_GridColColumnOption>
    public mut open prop order: Option<Union_Number_GridColColumnOption>
    {
        get() {
            return order_container
        }
        set(order) {
            order_container = order
        }
    }
    GridColOptions(span: Option<Union_Number_GridColColumnOption>, offset: Option<Union_Number_GridColColumnOption>, order: Option<Union_Number_GridColColumnOption>) {
        this.span_container = span
        this.offset_container = offset
        this.order_container = order
    }
}
public open class GridColOptions_serializer {
    public static func write(buffer: SerializerBase, value: GridColOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSpan = value.span
        if (valueHolderForSpan.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSpanTmpValue = valueHolderForSpan
            if (valueHolderForSpanTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSpanTmpValueForIdx0 = valueHolderForSpanTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForSpanTmpValueForIdx0);
            } else if (valueHolderForSpanTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSpanTmpValueForIdx1 = valueHolderForSpanTmpValue.getValue1()
                GridColColumnOption_serializer.write(valueSerializer, valueHolderForSpanTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            if (valueHolderForOffsetTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffsetTmpValueForIdx0 = valueHolderForOffsetTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOffsetTmpValueForIdx0);
            } else if (valueHolderForOffsetTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffsetTmpValueForIdx1 = valueHolderForOffsetTmpValue.getValue1()
                GridColColumnOption_serializer.write(valueSerializer, valueHolderForOffsetTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOrder = value.order
        if (valueHolderForOrder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOrderTmpValue = valueHolderForOrder
            if (valueHolderForOrderTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOrderTmpValueForIdx0 = valueHolderForOrderTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOrderTmpValueForIdx0);
            } else if (valueHolderForOrderTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOrderTmpValueForIdx1 = valueHolderForOrderTmpValue.getValue1()
                GridColColumnOption_serializer.write(valueSerializer, valueHolderForOrderTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GridColOptions {
        var valueDeserializer: DeserializerBase = buffer
        let spanTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var spanTmpBuf: Option<Union_Number_GridColColumnOption> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(spanTmpBuf_runtimeType))) {
            let spanTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var spanTmpBuf_: Union_Number_GridColColumnOption 
            if (spanTmpBuf_UnionSelector == Int8(0)) {
                spanTmpBuf_ = Union_Number_GridColColumnOption(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (spanTmpBuf_UnionSelector == Int8(1)) {
                spanTmpBuf_ = Union_Number_GridColColumnOption(GridColColumnOption_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for spanTmpBuf_ has to be chosen through deserialisation.")
            }
            spanTmpBuf = match (spanTmpBuf_ as Union_Number_GridColColumnOption) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let spanTmpResult: Option<Union_Number_GridColColumnOption> = spanTmpBuf
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Union_Number_GridColColumnOption> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            let offsetTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetTmpBuf_: Union_Number_GridColColumnOption 
            if (offsetTmpBuf_UnionSelector == Int8(0)) {
                offsetTmpBuf_ = Union_Number_GridColColumnOption(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetTmpBuf_UnionSelector == Int8(1)) {
                offsetTmpBuf_ = Union_Number_GridColColumnOption(GridColColumnOption_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for offsetTmpBuf_ has to be chosen through deserialisation.")
            }
            offsetTmpBuf = match (offsetTmpBuf_ as Union_Number_GridColColumnOption) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetTmpResult: Option<Union_Number_GridColColumnOption> = offsetTmpBuf
        let orderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var orderTmpBuf: Option<Union_Number_GridColColumnOption> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(orderTmpBuf_runtimeType))) {
            let orderTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var orderTmpBuf_: Union_Number_GridColColumnOption 
            if (orderTmpBuf_UnionSelector == Int8(0)) {
                orderTmpBuf_ = Union_Number_GridColColumnOption(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (orderTmpBuf_UnionSelector == Int8(1)) {
                orderTmpBuf_ = Union_Number_GridColColumnOption(GridColColumnOption_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for orderTmpBuf_ has to be chosen through deserialisation.")
            }
            orderTmpBuf = match (orderTmpBuf_ as Union_Number_GridColColumnOption) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let orderTmpResult: Option<Union_Number_GridColColumnOption> = orderTmpBuf
        var value: GridColOptions = GridColOptions(spanTmpResult, offsetTmpResult, orderTmpResult)
        return value
    }
}
