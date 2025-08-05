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
public interface RichEditorTextSpanResultInterfaces <:  {
    public mut open prop spanPosition: RichEditorSpanPosition
    public mut open prop value: String
    public mut open prop textStyle: RichEditorTextStyleResult
    public mut open prop offsetInSpan: Tuple_Number_Number
    public mut open prop symbolSpanStyle: Option<RichEditorSymbolSpanStyle>
    public mut open prop valueResource: Option<Resource>
    public mut open prop paragraphStyle: Option<RichEditorParagraphStyle>
    public mut open prop previewText: Option<String>
    public mut open prop urlStyle: Option<RichEditorUrlStyle>
}
public open class RichEditorTextSpanResult <: RichEditorTextSpanResultInterfaces {
    private var spanPosition_container: RichEditorSpanPosition
    public mut open prop spanPosition: RichEditorSpanPosition
    {
        get() {
            return spanPosition_container
        }
        set(spanPosition) {
            spanPosition_container = spanPosition
        }
    }
    private var value_container: String
    public mut open prop value: String
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var textStyle_container: RichEditorTextStyleResult
    public mut open prop textStyle: RichEditorTextStyleResult
    {
        get() {
            return textStyle_container
        }
        set(textStyle) {
            textStyle_container = textStyle
        }
    }
    private var offsetInSpan_container: Tuple_Number_Number
    public mut open prop offsetInSpan: Tuple_Number_Number
    {
        get() {
            return offsetInSpan_container
        }
        set(offsetInSpan) {
            offsetInSpan_container = offsetInSpan
        }
    }
    private var symbolSpanStyle_container: Option<RichEditorSymbolSpanStyle>
    public mut open prop symbolSpanStyle: Option<RichEditorSymbolSpanStyle>
    {
        get() {
            return symbolSpanStyle_container
        }
        set(symbolSpanStyle) {
            symbolSpanStyle_container = symbolSpanStyle
        }
    }
    private var valueResource_container: Option<Resource>
    public mut open prop valueResource: Option<Resource>
    {
        get() {
            return valueResource_container
        }
        set(valueResource) {
            valueResource_container = valueResource
        }
    }
    private var paragraphStyle_container: Option<RichEditorParagraphStyle>
    public mut open prop paragraphStyle: Option<RichEditorParagraphStyle>
    {
        get() {
            return paragraphStyle_container
        }
        set(paragraphStyle) {
            paragraphStyle_container = paragraphStyle
        }
    }
    private var previewText_container: Option<String>
    public mut open prop previewText: Option<String>
    {
        get() {
            return previewText_container
        }
        set(previewText) {
            previewText_container = previewText
        }
    }
    private var urlStyle_container: Option<RichEditorUrlStyle>
    public mut open prop urlStyle: Option<RichEditorUrlStyle>
    {
        get() {
            return urlStyle_container
        }
        set(urlStyle) {
            urlStyle_container = urlStyle
        }
    }
    RichEditorTextSpanResult(spanPosition: RichEditorSpanPosition, value: String, textStyle: RichEditorTextStyleResult, offsetInSpan: Tuple_Number_Number, symbolSpanStyle: Option<RichEditorSymbolSpanStyle>, valueResource: Option<Resource>, paragraphStyle: Option<RichEditorParagraphStyle>, previewText: Option<String>, urlStyle: Option<RichEditorUrlStyle>) {
        this.spanPosition_container = spanPosition
        this.value_container = value
        this.textStyle_container = textStyle
        this.offsetInSpan_container = offsetInSpan
        this.symbolSpanStyle_container = symbolSpanStyle
        this.valueResource_container = valueResource
        this.paragraphStyle_container = paragraphStyle
        this.previewText_container = previewText
        this.urlStyle_container = urlStyle
    }
}
public open class RichEditorTextSpanResult_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorTextSpanResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSpanPosition = value.spanPosition
        RichEditorSpanPosition_serializer.write(valueSerializer, valueHolderForSpanPosition);
        let valueHolderForValue = value.value
        valueSerializer.writeString(valueHolderForValue);
        let valueHolderForTextStyle = value.textStyle
        RichEditorTextStyleResult_serializer.write(valueSerializer, valueHolderForTextStyle);
        let valueHolderForOffsetInSpan = value.offsetInSpan
        let valueHolderForOffsetInSpan_0 = valueHolderForOffsetInSpan.value0
        valueSerializer.writeNumber(valueHolderForOffsetInSpan_0);
        let valueHolderForOffsetInSpan_1 = valueHolderForOffsetInSpan.value1
        valueSerializer.writeNumber(valueHolderForOffsetInSpan_1);
        let valueHolderForSymbolSpanStyle = value.symbolSpanStyle
        if (valueHolderForSymbolSpanStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSymbolSpanStyleTmpValue = valueHolderForSymbolSpanStyle
            RichEditorSymbolSpanStyle_serializer.write(valueSerializer, valueHolderForSymbolSpanStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForValueResource = value.valueResource
        if (valueHolderForValueResource.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValueResourceTmpValue = valueHolderForValueResource
            valueSerializer.writeCustomObject("Any", valueHolderForValueResourceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForParagraphStyle = value.paragraphStyle
        if (valueHolderForParagraphStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParagraphStyleTmpValue = valueHolderForParagraphStyle
            RichEditorParagraphStyle_serializer.write(valueSerializer, valueHolderForParagraphStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreviewText = value.previewText
        if (valueHolderForPreviewText.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewTextTmpValue = valueHolderForPreviewText
            valueSerializer.writeString(valueHolderForPreviewTextTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUrlStyle = value.urlStyle
        if (valueHolderForUrlStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUrlStyleTmpValue = valueHolderForUrlStyle
            RichEditorUrlStyle_serializer.write(valueSerializer, valueHolderForUrlStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorTextSpanResult {
        var valueDeserializer: DeserializerBase = buffer
        let spanPositionTmpResult: RichEditorSpanPosition = RichEditorSpanPosition_serializer.read(valueDeserializer)
        let valueTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let textStyleTmpResult: RichEditorTextStyleResult = RichEditorTextStyleResult_serializer.read(valueDeserializer)
        let offsetInSpanTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let offsetInSpanTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let offsetInSpanTmpResult: Tuple_Number_Number = Tuple_Number_Number(offsetInSpanTmpBuf_value0, offsetInSpanTmpBuf_value1)
        let symbolSpanStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var symbolSpanStyleTmpBuf: Option<RichEditorSymbolSpanStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(symbolSpanStyleTmpBuf_runtimeType))) {
            symbolSpanStyleTmpBuf = RichEditorSymbolSpanStyle_serializer.read(valueDeserializer)
        }
        let symbolSpanStyleTmpResult: Option<RichEditorSymbolSpanStyle> = symbolSpanStyleTmpBuf
        let valueResourceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueResourceTmpBuf: Option<Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueResourceTmpBuf_runtimeType))) {
            valueResourceTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueResourceTmpResult: Option<Resource> = valueResourceTmpBuf
        let paragraphStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paragraphStyleTmpBuf: Option<RichEditorParagraphStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paragraphStyleTmpBuf_runtimeType))) {
            paragraphStyleTmpBuf = RichEditorParagraphStyle_serializer.read(valueDeserializer)
        }
        let paragraphStyleTmpResult: Option<RichEditorParagraphStyle> = paragraphStyleTmpBuf
        let previewTextTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewTextTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewTextTmpBuf_runtimeType))) {
            previewTextTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let previewTextTmpResult: Option<String> = previewTextTmpBuf
        let urlStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var urlStyleTmpBuf: Option<RichEditorUrlStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(urlStyleTmpBuf_runtimeType))) {
            urlStyleTmpBuf = RichEditorUrlStyle_serializer.read(valueDeserializer)
        }
        let urlStyleTmpResult: Option<RichEditorUrlStyle> = urlStyleTmpBuf
        var value: RichEditorTextSpanResult = RichEditorTextSpanResult(spanPositionTmpResult, valueTmpResult, textStyleTmpResult, offsetInSpanTmpResult, symbolSpanStyleTmpResult, valueResourceTmpResult, paragraphStyleTmpResult, previewTextTmpResult, urlStyleTmpResult)
        return value
    }
}
