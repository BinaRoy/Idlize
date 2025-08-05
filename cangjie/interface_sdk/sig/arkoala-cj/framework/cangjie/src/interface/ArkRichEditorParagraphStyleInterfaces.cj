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
public interface RichEditorParagraphStyleInterfaces <:  {
    public mut open prop textAlign: Option<TextAlign>
    public mut open prop textVerticalAlign: Option<TextVerticalAlign>
    public mut open prop leadingMargin: Option<Union_Dimension_LeadingMarginPlaceholder>
    public mut open prop wordBreak: Option<WordBreak>
    public mut open prop lineBreakStrategy: Option<LineBreakStrategy>
    public mut open prop paragraphSpacing: Option<Float64>
}
public open class RichEditorParagraphStyle <: RichEditorParagraphStyleInterfaces {
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
    private var leadingMargin_container: Option<Union_Dimension_LeadingMarginPlaceholder>
    public mut open prop leadingMargin: Option<Union_Dimension_LeadingMarginPlaceholder>
    {
        get() {
            return leadingMargin_container
        }
        set(leadingMargin) {
            leadingMargin_container = leadingMargin
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
    private var lineBreakStrategy_container: Option<LineBreakStrategy>
    public mut open prop lineBreakStrategy: Option<LineBreakStrategy>
    {
        get() {
            return lineBreakStrategy_container
        }
        set(lineBreakStrategy) {
            lineBreakStrategy_container = lineBreakStrategy
        }
    }
    private var paragraphSpacing_container: Option<Float64>
    public mut open prop paragraphSpacing: Option<Float64>
    {
        get() {
            return paragraphSpacing_container
        }
        set(paragraphSpacing) {
            paragraphSpacing_container = paragraphSpacing
        }
    }
    RichEditorParagraphStyle(textAlign: Option<TextAlign>, textVerticalAlign: Option<TextVerticalAlign>, leadingMargin: Option<Union_Dimension_LeadingMarginPlaceholder>, wordBreak: Option<WordBreak>, lineBreakStrategy: Option<LineBreakStrategy>, paragraphSpacing: Option<Float64>) {
        this.textAlign_container = textAlign
        this.textVerticalAlign_container = textVerticalAlign
        this.leadingMargin_container = leadingMargin
        this.wordBreak_container = wordBreak
        this.lineBreakStrategy_container = lineBreakStrategy
        this.paragraphSpacing_container = paragraphSpacing
    }
}
public open class RichEditorParagraphStyle_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorParagraphStyle): Unit {
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
        let valueHolderForLeadingMargin = value.leadingMargin
        if (valueHolderForLeadingMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeadingMarginTmpValue = valueHolderForLeadingMargin
            if (valueHolderForLeadingMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLeadingMarginTmpValueForIdx0 = valueHolderForLeadingMarginTmpValue.getValue0()
                if (valueHolderForLeadingMarginTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForLeadingMarginTmpValueForIdx0ForIdx0 = valueHolderForLeadingMarginTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForLeadingMarginTmpValueForIdx0ForIdx0);
                } else if (valueHolderForLeadingMarginTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForLeadingMarginTmpValueForIdx0ForIdx1 = valueHolderForLeadingMarginTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForLeadingMarginTmpValueForIdx0ForIdx1);
                } else if (valueHolderForLeadingMarginTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForLeadingMarginTmpValueForIdx0ForIdx2 = valueHolderForLeadingMarginTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForLeadingMarginTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForLeadingMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLeadingMarginTmpValueForIdx1 = valueHolderForLeadingMarginTmpValue.getValue1()
                LeadingMarginPlaceholder_serializer.write(valueSerializer, valueHolderForLeadingMarginTmpValueForIdx1);
            }
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
        let valueHolderForLineBreakStrategy = value.lineBreakStrategy
        if (valueHolderForLineBreakStrategy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLineBreakStrategyTmpValue = valueHolderForLineBreakStrategy
            valueSerializer.writeInt32(valueHolderForLineBreakStrategyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForParagraphSpacing = value.paragraphSpacing
        if (valueHolderForParagraphSpacing.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParagraphSpacingTmpValue = valueHolderForParagraphSpacing
            valueSerializer.writeNumber(valueHolderForParagraphSpacingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorParagraphStyle {
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
        let leadingMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leadingMarginTmpBuf: Option<Union_Dimension_LeadingMarginPlaceholder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leadingMarginTmpBuf_runtimeType))) {
            let leadingMarginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var leadingMarginTmpBuf_: Union_Dimension_LeadingMarginPlaceholder 
            if (leadingMarginTmpBuf_UnionSelector == Int8(0)) {
                let leadingMarginTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var leadingMarginTmpBuf_BufU: Dimension 
                if (leadingMarginTmpBuf_BufUUnionSelector == Int8(0)) {
                    leadingMarginTmpBuf_BufU = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (leadingMarginTmpBuf_BufUUnionSelector == Int8(1)) {
                    leadingMarginTmpBuf_BufU = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (leadingMarginTmpBuf_BufUUnionSelector == Int8(2)) {
                    leadingMarginTmpBuf_BufU = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for leadingMarginTmpBuf_BufU has to be chosen through deserialisation.")
                }
                leadingMarginTmpBuf_ = Union_Dimension_LeadingMarginPlaceholder(match (leadingMarginTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leadingMarginTmpBuf_UnionSelector == Int8(1)) {
                leadingMarginTmpBuf_ = Union_Dimension_LeadingMarginPlaceholder(LeadingMarginPlaceholder_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for leadingMarginTmpBuf_ has to be chosen through deserialisation.")
            }
            leadingMarginTmpBuf = match (leadingMarginTmpBuf_ as Union_Dimension_LeadingMarginPlaceholder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let leadingMarginTmpResult: Option<Union_Dimension_LeadingMarginPlaceholder> = leadingMarginTmpBuf
        let wordBreakTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var wordBreakTmpBuf: Option<WordBreak> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(wordBreakTmpBuf_runtimeType))) {
            wordBreakTmpBuf = WordBreak(valueDeserializer.readInt32())
        }
        let wordBreakTmpResult: Option<WordBreak> = wordBreakTmpBuf
        let lineBreakStrategyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lineBreakStrategyTmpBuf: Option<LineBreakStrategy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lineBreakStrategyTmpBuf_runtimeType))) {
            lineBreakStrategyTmpBuf = LineBreakStrategy(valueDeserializer.readInt32())
        }
        let lineBreakStrategyTmpResult: Option<LineBreakStrategy> = lineBreakStrategyTmpBuf
        let paragraphSpacingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paragraphSpacingTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paragraphSpacingTmpBuf_runtimeType))) {
            paragraphSpacingTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paragraphSpacingTmpResult: Option<Float64> = paragraphSpacingTmpBuf
        var value: RichEditorParagraphStyle = RichEditorParagraphStyle(textAlignTmpResult, textVerticalAlignTmpResult, leadingMarginTmpResult, wordBreakTmpResult, lineBreakStrategyTmpResult, paragraphSpacingTmpResult)
        return value
    }
}
