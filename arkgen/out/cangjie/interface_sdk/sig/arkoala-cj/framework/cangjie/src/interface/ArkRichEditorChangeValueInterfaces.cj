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
public interface RichEditorChangeValueInterfaces <:  {
    public mut open prop rangeBefore: TextRange
    public mut open prop replacedSpans: ArrayList<RichEditorTextSpanResult>
    public mut open prop replacedImageSpans: ArrayList<RichEditorImageSpanResult>
    public mut open prop replacedSymbolSpans: ArrayList<RichEditorTextSpanResult>
    public mut open prop changeReason: Option<TextChangeReason>
}
public open class RichEditorChangeValue <: RichEditorChangeValueInterfaces {
    private var rangeBefore_container: TextRange
    public mut open prop rangeBefore: TextRange
    {
        get() {
            return rangeBefore_container
        }
        set(rangeBefore) {
            rangeBefore_container = rangeBefore
        }
    }
    private var replacedSpans_container: ArrayList<RichEditorTextSpanResult>
    public mut open prop replacedSpans: ArrayList<RichEditorTextSpanResult>
    {
        get() {
            return replacedSpans_container
        }
        set(replacedSpans) {
            replacedSpans_container = replacedSpans
        }
    }
    private var replacedImageSpans_container: ArrayList<RichEditorImageSpanResult>
    public mut open prop replacedImageSpans: ArrayList<RichEditorImageSpanResult>
    {
        get() {
            return replacedImageSpans_container
        }
        set(replacedImageSpans) {
            replacedImageSpans_container = replacedImageSpans
        }
    }
    private var replacedSymbolSpans_container: ArrayList<RichEditorTextSpanResult>
    public mut open prop replacedSymbolSpans: ArrayList<RichEditorTextSpanResult>
    {
        get() {
            return replacedSymbolSpans_container
        }
        set(replacedSymbolSpans) {
            replacedSymbolSpans_container = replacedSymbolSpans
        }
    }
    private var changeReason_container: Option<TextChangeReason>
    public mut open prop changeReason: Option<TextChangeReason>
    {
        get() {
            return changeReason_container
        }
        set(changeReason) {
            changeReason_container = changeReason
        }
    }
    RichEditorChangeValue(rangeBefore: TextRange, replacedSpans: ArrayList<RichEditorTextSpanResult>, replacedImageSpans: ArrayList<RichEditorImageSpanResult>, replacedSymbolSpans: ArrayList<RichEditorTextSpanResult>, changeReason: Option<TextChangeReason>) {
        this.rangeBefore_container = rangeBefore
        this.replacedSpans_container = replacedSpans
        this.replacedImageSpans_container = replacedImageSpans
        this.replacedSymbolSpans_container = replacedSymbolSpans
        this.changeReason_container = changeReason
    }
}
public open class RichEditorChangeValue_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorChangeValue): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRangeBefore = value.rangeBefore
        TextRange_serializer.write(valueSerializer, valueHolderForRangeBefore);
        let valueHolderForReplacedSpans = value.replacedSpans
        valueSerializer.writeInt32(Int32(valueHolderForReplacedSpans.size));
        for (valueHolderForReplacedSpansCounterI in 0..valueHolderForReplacedSpans.size) {
            let valueHolderForReplacedSpansTmpElement: RichEditorTextSpanResult = valueHolderForReplacedSpans[Int64(valueHolderForReplacedSpansCounterI)]
            RichEditorTextSpanResult_serializer.write(valueSerializer, valueHolderForReplacedSpansTmpElement);
        }
        let valueHolderForReplacedImageSpans = value.replacedImageSpans
        valueSerializer.writeInt32(Int32(valueHolderForReplacedImageSpans.size));
        for (valueHolderForReplacedImageSpansCounterI in 0..valueHolderForReplacedImageSpans.size) {
            let valueHolderForReplacedImageSpansTmpElement: RichEditorImageSpanResult = valueHolderForReplacedImageSpans[Int64(valueHolderForReplacedImageSpansCounterI)]
            RichEditorImageSpanResult_serializer.write(valueSerializer, valueHolderForReplacedImageSpansTmpElement);
        }
        let valueHolderForReplacedSymbolSpans = value.replacedSymbolSpans
        valueSerializer.writeInt32(Int32(valueHolderForReplacedSymbolSpans.size));
        for (valueHolderForReplacedSymbolSpansCounterI in 0..valueHolderForReplacedSymbolSpans.size) {
            let valueHolderForReplacedSymbolSpansTmpElement: RichEditorTextSpanResult = valueHolderForReplacedSymbolSpans[Int64(valueHolderForReplacedSymbolSpansCounterI)]
            RichEditorTextSpanResult_serializer.write(valueSerializer, valueHolderForReplacedSymbolSpansTmpElement);
        }
        let valueHolderForChangeReason = value.changeReason
        if (valueHolderForChangeReason.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForChangeReasonTmpValue = valueHolderForChangeReason
            valueSerializer.writeInt32(valueHolderForChangeReasonTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorChangeValue {
        var valueDeserializer: DeserializerBase = buffer
        let rangeBeforeTmpResult: TextRange = TextRange_serializer.read(valueDeserializer)
        let replacedSpansTmpBufLength: Int32 = valueDeserializer.readInt32()
        var replacedSpansTmpBuf: ArrayList<RichEditorTextSpanResult> = ArrayList<RichEditorTextSpanResult>(Int64(replacedSpansTmpBufLength))
        replacedSpansTmpBuf = ArrayList<RichEditorTextSpanResult>(Int64(replacedSpansTmpBufLength))
        for (replacedSpansTmpBufBufCounterI in 0..replacedSpansTmpBufLength) {
            replacedSpansTmpBuf[Int64(replacedSpansTmpBufBufCounterI)] = RichEditorTextSpanResult_serializer.read(valueDeserializer)
        }
        let replacedSpansTmpResult: ArrayList<RichEditorTextSpanResult> = replacedSpansTmpBuf
        let replacedImageSpansTmpBufLength: Int32 = valueDeserializer.readInt32()
        var replacedImageSpansTmpBuf: ArrayList<RichEditorImageSpanResult> = ArrayList<RichEditorImageSpanResult>(Int64(replacedImageSpansTmpBufLength))
        replacedImageSpansTmpBuf = ArrayList<RichEditorImageSpanResult>(Int64(replacedImageSpansTmpBufLength))
        for (replacedImageSpansTmpBufBufCounterI in 0..replacedImageSpansTmpBufLength) {
            replacedImageSpansTmpBuf[Int64(replacedImageSpansTmpBufBufCounterI)] = RichEditorImageSpanResult_serializer.read(valueDeserializer)
        }
        let replacedImageSpansTmpResult: ArrayList<RichEditorImageSpanResult> = replacedImageSpansTmpBuf
        let replacedSymbolSpansTmpBufLength: Int32 = valueDeserializer.readInt32()
        var replacedSymbolSpansTmpBuf: ArrayList<RichEditorTextSpanResult> = ArrayList<RichEditorTextSpanResult>(Int64(replacedSymbolSpansTmpBufLength))
        replacedSymbolSpansTmpBuf = ArrayList<RichEditorTextSpanResult>(Int64(replacedSymbolSpansTmpBufLength))
        for (replacedSymbolSpansTmpBufBufCounterI in 0..replacedSymbolSpansTmpBufLength) {
            replacedSymbolSpansTmpBuf[Int64(replacedSymbolSpansTmpBufBufCounterI)] = RichEditorTextSpanResult_serializer.read(valueDeserializer)
        }
        let replacedSymbolSpansTmpResult: ArrayList<RichEditorTextSpanResult> = replacedSymbolSpansTmpBuf
        let changeReasonTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var changeReasonTmpBuf: Option<TextChangeReason> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(changeReasonTmpBuf_runtimeType))) {
            changeReasonTmpBuf = TextChangeReason(valueDeserializer.readInt32())
        }
        let changeReasonTmpResult: Option<TextChangeReason> = changeReasonTmpBuf
        var value: RichEditorChangeValue = RichEditorChangeValue(rangeBeforeTmpResult, replacedSpansTmpResult, replacedImageSpansTmpResult, replacedSymbolSpansTmpResult, changeReasonTmpResult)
        return value
    }
}
