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
public interface RichEditorSpanPositionInterfaces <:  {
    public mut open prop spanIndex: Float64
    public mut open prop spanRange: Tuple_Number_Number
}
public open class RichEditorSpanPosition <: RichEditorSpanPositionInterfaces {
    private var spanIndex_container: Float64
    public mut open prop spanIndex: Float64
    {
        get() {
            return spanIndex_container
        }
        set(spanIndex) {
            spanIndex_container = spanIndex
        }
    }
    private var spanRange_container: Tuple_Number_Number
    public mut open prop spanRange: Tuple_Number_Number
    {
        get() {
            return spanRange_container
        }
        set(spanRange) {
            spanRange_container = spanRange
        }
    }
    RichEditorSpanPosition(spanIndex: Float64, spanRange: Tuple_Number_Number) {
        this.spanIndex_container = spanIndex
        this.spanRange_container = spanRange
    }
}
public open class RichEditorSpanPosition_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorSpanPosition): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSpanIndex = value.spanIndex
        valueSerializer.writeNumber(valueHolderForSpanIndex);
        let valueHolderForSpanRange = value.spanRange
        let valueHolderForSpanRange_0 = valueHolderForSpanRange.value0
        valueSerializer.writeNumber(valueHolderForSpanRange_0);
        let valueHolderForSpanRange_1 = valueHolderForSpanRange.value1
        valueSerializer.writeNumber(valueHolderForSpanRange_1);
    }
    public static func read(buffer: DeserializerBase): RichEditorSpanPosition {
        var valueDeserializer: DeserializerBase = buffer
        let spanIndexTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let spanRangeTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let spanRangeTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let spanRangeTmpResult: Tuple_Number_Number = Tuple_Number_Number(spanRangeTmpBuf_value0, spanRangeTmpBuf_value1)
        var value: RichEditorSpanPosition = RichEditorSpanPosition(spanIndexTmpResult, spanRangeTmpResult)
        return value
    }
}
