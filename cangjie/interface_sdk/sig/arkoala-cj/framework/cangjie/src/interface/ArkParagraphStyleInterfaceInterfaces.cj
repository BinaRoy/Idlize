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
public interface ParagraphStyleInterfaceInterfaces <:  {
    public mut open prop textAlign: Option<TextAlign>
    public mut open prop textVerticalAlign: Option<TextVerticalAlign>
    public mut open prop textIndent: Option<LengthMetrics>
    public mut open prop maxLines: Option<Float64>
    public mut open prop overflow: Option<TextOverflow>
    public mut open prop wordBreak: Option<WordBreak>
    public mut open prop leadingMargin: Option<Union_LengthMetrics_LeadingMarginPlaceholder>
    public mut open prop paragraphSpacing: Option<LengthMetrics>
}
public open class ParagraphStyleInterface <: ParagraphStyleInterfaceInterfaces {
    private var textAlign_container: Option<TextAlign>
    public mut open prop textAlign: Option<TextAlign>
    {
        get() {
            return textAlign_container
        }
        set(textAlign) {
            textAlign_container = textAlign
        }
    }
    private var textVerticalAlign_container: Option<TextVerticalAlign>
    public mut open prop textVerticalAlign: Option<TextVerticalAlign>
    {
        get() {
            return textVerticalAlign_container
        }
        set(textVerticalAlign) {
            textVerticalAlign_container = textVerticalAlign
        }
    }
    private var textIndent_container: Option<LengthMetrics>
    public mut open prop textIndent: Option<LengthMetrics>
    {
        get() {
            return textIndent_container
        }
        set(textIndent) {
            textIndent_container = textIndent
        }
    }
    private var maxLines_container: Option<Float64>
    public mut open prop maxLines: Option<Float64>
    {
        get() {
            return maxLines_container
        }
        set(maxLines) {
            maxLines_container = maxLines
        }
    }
    private var overflow_container: Option<TextOverflow>
    public mut open prop overflow: Option<TextOverflow>
    {
        get() {
            return overflow_container
        }
        set(overflow) {
            overflow_container = overflow
        }
    }
    private var wordBreak_container: Option<WordBreak>
    public mut open prop wordBreak: Option<WordBreak>
    {
        get() {
            return wordBreak_container
        }
        set(wordBreak) {
            wordBreak_container = wordBreak
        }
    }
    private var leadingMargin_container: Option<Union_LengthMetrics_LeadingMarginPlaceholder>
    public mut open prop leadingMargin: Option<Union_LengthMetrics_LeadingMarginPlaceholder>
    {
        get() {
            return leadingMargin_container
        }
        set(leadingMargin) {
            leadingMargin_container = leadingMargin
        }
    }
    private var paragraphSpacing_container: Option<LengthMetrics>
    public mut open prop paragraphSpacing: Option<LengthMetrics>
    {
        get() {
            return paragraphSpacing_container
        }
        set(paragraphSpacing) {
            paragraphSpacing_container = paragraphSpacing
        }
    }
    ParagraphStyleInterface(textAlign: Option<TextAlign>, textVerticalAlign: Option<TextVerticalAlign>, textIndent: Option<LengthMetrics>, maxLines: Option<Float64>, overflow: Option<TextOverflow>, wordBreak: Option<WordBreak>, leadingMargin: Option<Union_LengthMetrics_LeadingMarginPlaceholder>, paragraphSpacing: Option<LengthMetrics>) {
        this.textAlign_container = textAlign
        this.textVerticalAlign_container = textVerticalAlign
        this.textIndent_container = textIndent
        this.maxLines_container = maxLines
        this.overflow_container = overflow
        this.wordBreak_container = wordBreak
        this.leadingMargin_container = leadingMargin
        this.paragraphSpacing_container = paragraphSpacing
    }
}
public open class ParagraphStyleInterface_serializer {
    public static func write(buffer: SerializerBase, value: ParagraphStyleInterface): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTextAlign = value.textAlign
        if (valueHolderForTextAlign.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextAlignTmpValue = valueHolderForTextAlign
            valueSerializer.writeInt32(valueHolderForTextAlignTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTextVerticalAlign = value.textVerticalAlign
        if (valueHolderForTextVerticalAlign.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextVerticalAlignTmpValue = valueHolderForTextVerticalAlign
            valueSerializer.writeInt32(valueHolderForTextVerticalAlignTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTextIndent = value.textIndent
        if (valueHolderForTextIndent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextIndentTmpValue = valueHolderForTextIndent
            valueSerializer.writeCustomObject("Any", valueHolderForTextIndentTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMaxLines = value.maxLines
        if (valueHolderForMaxLines.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxLinesTmpValue = valueHolderForMaxLines
            valueSerializer.writeNumber(valueHolderForMaxLinesTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOverflow = value.overflow
        if (valueHolderForOverflow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOverflowTmpValue = valueHolderForOverflow
            valueSerializer.writeInt32(valueHolderForOverflowTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWordBreak = value.wordBreak
        if (valueHolderForWordBreak.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWordBreakTmpValue = valueHolderForWordBreak
            valueSerializer.writeInt32(valueHolderForWordBreakTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLeadingMargin = value.leadingMargin
        if (valueHolderForLeadingMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeadingMarginTmpValue = valueHolderForLeadingMargin
            if (valueHolderForLeadingMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLeadingMarginTmpValueForIdx0 = valueHolderForLeadingMarginTmpValue.getValue0()
                valueSerializer.writeCustomObject("Any", valueHolderForLeadingMarginTmpValueForIdx0);
            } else if (valueHolderForLeadingMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLeadingMarginTmpValueForIdx1 = valueHolderForLeadingMarginTmpValue.getValue1()
                LeadingMarginPlaceholder_serializer.write(valueSerializer, valueHolderForLeadingMarginTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForParagraphSpacing = value.paragraphSpacing
        if (valueHolderForParagraphSpacing.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParagraphSpacingTmpValue = valueHolderForParagraphSpacing
            valueSerializer.writeCustomObject("Any", valueHolderForParagraphSpacingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ParagraphStyleInterface {
        var valueDeserializer: DeserializerBase = buffer
        let textAlignTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textAlignTmpBuf: Option<TextAlign> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textAlignTmpBuf_runtimeType))) {
            textAlignTmpBuf = TextAlign(valueDeserializer.readInt32())
        }
        let textAlignTmpResult: Option<TextAlign> = textAlignTmpBuf
        let textVerticalAlignTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textVerticalAlignTmpBuf: Option<TextVerticalAlign> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textVerticalAlignTmpBuf_runtimeType))) {
            textVerticalAlignTmpBuf = TextVerticalAlign(valueDeserializer.readInt32())
        }
        let textVerticalAlignTmpResult: Option<TextVerticalAlign> = textVerticalAlignTmpBuf
        let textIndentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textIndentTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textIndentTmpBuf_runtimeType))) {
            textIndentTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let textIndentTmpResult: Option<LengthMetrics> = textIndentTmpBuf
        let maxLinesTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxLinesTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxLinesTmpBuf_runtimeType))) {
            maxLinesTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxLinesTmpResult: Option<Float64> = maxLinesTmpBuf
        let overflowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var overflowTmpBuf: Option<TextOverflow> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(overflowTmpBuf_runtimeType))) {
            overflowTmpBuf = TextOverflow(valueDeserializer.readInt32())
        }
        let overflowTmpResult: Option<TextOverflow> = overflowTmpBuf
        let wordBreakTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var wordBreakTmpBuf: Option<WordBreak> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(wordBreakTmpBuf_runtimeType))) {
            wordBreakTmpBuf = WordBreak(valueDeserializer.readInt32())
        }
        let wordBreakTmpResult: Option<WordBreak> = wordBreakTmpBuf
        let leadingMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leadingMarginTmpBuf: Option<Union_LengthMetrics_LeadingMarginPlaceholder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leadingMarginTmpBuf_runtimeType))) {
            let leadingMarginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var leadingMarginTmpBuf_: Union_LengthMetrics_LeadingMarginPlaceholder 
            if (leadingMarginTmpBuf_UnionSelector == Int8(0)) {
                leadingMarginTmpBuf_ = Union_LengthMetrics_LeadingMarginPlaceholder(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leadingMarginTmpBuf_UnionSelector == Int8(1)) {
                leadingMarginTmpBuf_ = Union_LengthMetrics_LeadingMarginPlaceholder(LeadingMarginPlaceholder_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for leadingMarginTmpBuf_ has to be chosen through deserialisation.")
            }
            leadingMarginTmpBuf = match (leadingMarginTmpBuf_ as Union_LengthMetrics_LeadingMarginPlaceholder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let leadingMarginTmpResult: Option<Union_LengthMetrics_LeadingMarginPlaceholder> = leadingMarginTmpBuf
        let paragraphSpacingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paragraphSpacingTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paragraphSpacingTmpBuf_runtimeType))) {
            paragraphSpacingTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paragraphSpacingTmpResult: Option<LengthMetrics> = paragraphSpacingTmpBuf
        var value: ParagraphStyleInterface = ParagraphStyleInterface(textAlignTmpResult, textVerticalAlignTmpResult, textIndentTmpResult, maxLinesTmpResult, overflowTmpResult, wordBreakTmpResult, leadingMarginTmpResult, paragraphSpacingTmpResult)
        return value
    }
}
