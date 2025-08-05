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
public interface RichEditorDeleteValueInterfaces <:  {
    public mut open prop offset: Float64
    public mut open prop direction: RichEditorDeleteDirection
    public mut open prop length: Float64
    public mut open prop richEditorDeleteSpans: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>
}
public open class RichEditorDeleteValue <: RichEditorDeleteValueInterfaces {
    private var offset_container: Float64
    public mut open prop offset: Float64
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    private var direction_container: RichEditorDeleteDirection
    public mut open prop direction: RichEditorDeleteDirection
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var length_container: Float64
    public mut open prop length: Float64
    {
        get() {
            return length_container
        }
        set(length) {
            length_container = length
        }
    }
    private var richEditorDeleteSpans_container: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>
    public mut open prop richEditorDeleteSpans: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>
    {
        get() {
            return richEditorDeleteSpans_container
        }
        set(richEditorDeleteSpans) {
            richEditorDeleteSpans_container = richEditorDeleteSpans
        }
    }
    RichEditorDeleteValue(offset: Float64, direction: RichEditorDeleteDirection, length: Float64, richEditorDeleteSpans: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>) {
        this.offset_container = offset
        this.direction_container = direction
        this.length_container = length
        this.richEditorDeleteSpans_container = richEditorDeleteSpans
    }
}
public open class RichEditorDeleteValue_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorDeleteValue): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffset = value.offset
        valueSerializer.writeNumber(valueHolderForOffset);
        let valueHolderForDirection = value.direction
        valueSerializer.writeInt32(valueHolderForDirection.value);
        let valueHolderForLength = value.length
        valueSerializer.writeNumber(valueHolderForLength);
        let valueHolderForRichEditorDeleteSpans = value.richEditorDeleteSpans
        valueSerializer.writeInt32(Int32(valueHolderForRichEditorDeleteSpans.size));
        for (valueHolderForRichEditorDeleteSpansCounterI in 0..valueHolderForRichEditorDeleteSpans.size) {
            let valueHolderForRichEditorDeleteSpansTmpElement: Union_RichEditorTextSpanResult_RichEditorImageSpanResult = valueHolderForRichEditorDeleteSpans[Int64(valueHolderForRichEditorDeleteSpansCounterI)]
            if (valueHolderForRichEditorDeleteSpansTmpElement.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRichEditorDeleteSpansTmpElementForIdx0 = valueHolderForRichEditorDeleteSpansTmpElement.getValue0()
                RichEditorTextSpanResult_serializer.write(valueSerializer, valueHolderForRichEditorDeleteSpansTmpElementForIdx0);
            } else if (valueHolderForRichEditorDeleteSpansTmpElement.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRichEditorDeleteSpansTmpElementForIdx1 = valueHolderForRichEditorDeleteSpansTmpElement.getValue1()
                RichEditorImageSpanResult_serializer.write(valueSerializer, valueHolderForRichEditorDeleteSpansTmpElementForIdx1);
            }
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorDeleteValue {
        var valueDeserializer: DeserializerBase = buffer
        let offsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let directionTmpResult: RichEditorDeleteDirection = RichEditorDeleteDirection(valueDeserializer.readInt32())
        let lengthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let richEditorDeleteSpansTmpBufLength: Int32 = valueDeserializer.readInt32()
        var richEditorDeleteSpansTmpBuf: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult> = ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>(Int64(richEditorDeleteSpansTmpBufLength))
        richEditorDeleteSpansTmpBuf = ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult>(Int64(richEditorDeleteSpansTmpBufLength))
        for (richEditorDeleteSpansTmpBufBufCounterI in 0..richEditorDeleteSpansTmpBufLength) {
            let richEditorDeleteSpansTmpBufTempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var richEditorDeleteSpansTmpBufTempBuf: Union_RichEditorTextSpanResult_RichEditorImageSpanResult 
            if (richEditorDeleteSpansTmpBufTempBufUnionSelector == Int8(0)) {
                richEditorDeleteSpansTmpBufTempBuf = Union_RichEditorTextSpanResult_RichEditorImageSpanResult(RichEditorTextSpanResult_serializer.read(valueDeserializer))
            } else if (richEditorDeleteSpansTmpBufTempBufUnionSelector == Int8(1)) {
                richEditorDeleteSpansTmpBufTempBuf = Union_RichEditorTextSpanResult_RichEditorImageSpanResult(RichEditorImageSpanResult_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for richEditorDeleteSpansTmpBufTempBuf has to be chosen through deserialisation.")
            }
            richEditorDeleteSpansTmpBuf[Int64(richEditorDeleteSpansTmpBufBufCounterI)] = match (richEditorDeleteSpansTmpBufTempBuf as Union_RichEditorTextSpanResult_RichEditorImageSpanResult) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let richEditorDeleteSpansTmpResult: ArrayList<Union_RichEditorTextSpanResult_RichEditorImageSpanResult> = richEditorDeleteSpansTmpBuf
        var value: RichEditorDeleteValue = RichEditorDeleteValue(offsetTmpResult, directionTmpResult, lengthTmpResult, richEditorDeleteSpansTmpResult)
        return value
    }
}
