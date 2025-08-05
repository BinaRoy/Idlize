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
public interface RichEditorSelectionInterfaces <:  {
    public mut open prop selection: Tuple_Number_Number
    public mut open prop spans: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>
}
public open class RichEditorSelection <: RichEditorSelectionInterfaces {
    private var selection_container: Tuple_Number_Number
    public mut open prop selection: Tuple_Number_Number
    {
        get() {
            return selection_container
        }
        set(selection) {
            selection_container = selection
        }
    }
    private var spans_container: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>
    public mut open prop spans: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>
    {
        get() {
            return spans_container
        }
        set(spans) {
            spans_container = spans
        }
    }
    RichEditorSelection(selection: Tuple_Number_Number, spans: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>) {
        this.selection_container = selection
        this.spans_container = spans
    }
}
public open class RichEditorSelection_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorSelection): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSelection = value.selection
        let valueHolderForSelection_0 = valueHolderForSelection.value0
        valueSerializer.writeNumber(valueHolderForSelection_0);
        let valueHolderForSelection_1 = valueHolderForSelection.value1
        valueSerializer.writeNumber(valueHolderForSelection_1);
        let valueHolderForSpans = value.spans
        valueSerializer.writeInt32(Int32(valueHolderForSpans.size));
        for (valueHolderForSpansCounterI in 0..valueHolderForSpans.size) {
            let valueHolderForSpansTmpElement: Union_RichEditorTextSpanResult_RichEditorImageSpanResult = valueHolderForSpans[Int64(valueHolderForSpansCounterI)]
            if (valueHolderForSpansTmpElement.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSpansTmpElementForIdx0 = valueHolderForSpansTmpElement.getValue0()
                RichEditorTextSpanResult_serializer.write(valueSerializer, valueHolderForSpansTmpElementForIdx0);
            } else if (valueHolderForSpansTmpElement.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSpansTmpElementForIdx1 = valueHolderForSpansTmpElement.getValue1()
                RichEditorImageSpanResult_serializer.write(valueSerializer, valueHolderForSpansTmpElementForIdx1);
            }
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorSelection {
        var valueDeserializer: DeserializerBase = buffer
        let selectionTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let selectionTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let selectionTmpResult: Tuple_Number_Number = Tuple_Number_Number(selectionTmpBuf_value0, selectionTmpBuf_value1)
        let spansTmpBufLength: Int32 = valueDeserializer.readInt32()
        var spansTmpBuf: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult> = ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>(Int64(spansTmpBufLength))
        spansTmpBuf = ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>(Int64(spansTmpBufLength))
        for (spansTmpBufBufCounterI in 0..spansTmpBufLength) {
            let spansTmpBufTempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var spansTmpBufTempBuf: Union_RichEditorTextSpanResult_RichEditorImageSpanResult 
            if (spansTmpBufTempBufUnionSelector == Int8(0)) {
                spansTmpBufTempBuf = Union_RichEditorTextSpanResult_RichEditorImageSpanResult(RichEditorTextSpanResult_serializer.read(valueDeserializer))
            } else if (spansTmpBufTempBufUnionSelector == Int8(1)) {
                spansTmpBufTempBuf = Union_RichEditorTextSpanResult_RichEditorImageSpanResult(RichEditorImageSpanResult_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for spansTmpBufTempBuf has to be chosen through deserialisation.")
            }
            spansTmpBuf[Int64(spansTmpBufBufCounterI)] = match (spansTmpBufTempBuf as Union_RichEditorTextSpanResult_RichEditorImageSpanResult) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let spansTmpResult: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult> = spansTmpBuf
        var value: RichEditorSelection = RichEditorSelection(selectionTmpResult, spansTmpResult)
        return value
    }
}
