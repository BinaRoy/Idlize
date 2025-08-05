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
public interface StyleOptionsInterfaces <:  {
    public mut open prop start: Option<Float64>
    public mut open prop length: Option<Float64>
    public mut open prop styledKey: StyledStringKey
    public mut open prop styledValue: StyledStringValue
}
public open class StyleOptions <: StyleOptionsInterfaces {
    private var start_container: Option<Float64>
    public mut open prop start: Option<Float64>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var length_container: Option<Float64>
    public mut open prop length: Option<Float64>
    {
        get() {
            return length_container
        }
        set(length) {
            length_container = length
        }
    }
    private var styledKey_container: StyledStringKey
    public mut open prop styledKey: StyledStringKey
    {
        get() {
            return styledKey_container
        }
        set(styledKey) {
            styledKey_container = styledKey
        }
    }
    private var styledValue_container: StyledStringValue
    public mut open prop styledValue: StyledStringValue
    {
        get() {
            return styledValue_container
        }
        set(styledValue) {
            styledValue_container = styledValue
        }
    }
    StyleOptions(start: Option<Float64>, length: Option<Float64>, styledKey: StyledStringKey, styledValue: StyledStringValue) {
        this.start_container = start
        this.length_container = length
        this.styledKey_container = styledKey
        this.styledValue_container = styledValue
    }
}
public open class StyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: StyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            valueSerializer.writeNumber(valueHolderForStartTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLength = value.length
        if (valueHolderForLength.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLengthTmpValue = valueHolderForLength
            valueSerializer.writeNumber(valueHolderForLengthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyledKey = value.styledKey
        valueSerializer.writeInt32(valueHolderForStyledKey.value);
        let valueHolderForStyledValue = value.styledValue
        if (valueHolderForStyledValue.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForStyledValueForIdx0 = valueHolderForStyledValue.getValue0()
            TextStyle_styled_string_serializer.write(valueSerializer, valueHolderForStyledValueForIdx0);
        } else if (valueHolderForStyledValue.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForStyledValueForIdx1 = valueHolderForStyledValue.getValue1()
            DecorationStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx1);
        } else if (valueHolderForStyledValue.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForStyledValueForIdx2 = valueHolderForStyledValue.getValue2()
            BaselineOffsetStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx2);
        } else if (valueHolderForStyledValue.getSelector() == 3) {
            valueSerializer.writeInt8(Int8(3));
            let valueHolderForStyledValueForIdx3 = valueHolderForStyledValue.getValue3()
            LetterSpacingStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx3);
        } else if (valueHolderForStyledValue.getSelector() == 4) {
            valueSerializer.writeInt8(Int8(4));
            let valueHolderForStyledValueForIdx4 = valueHolderForStyledValue.getValue4()
            TextShadowStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx4);
        } else if (valueHolderForStyledValue.getSelector() == 5) {
            valueSerializer.writeInt8(Int8(5));
            let valueHolderForStyledValueForIdx5 = valueHolderForStyledValue.getValue5()
            GestureStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx5);
        } else if (valueHolderForStyledValue.getSelector() == 6) {
            valueSerializer.writeInt8(Int8(6));
            let valueHolderForStyledValueForIdx6 = valueHolderForStyledValue.getValue6()
            ImageAttachment_serializer.write(valueSerializer, valueHolderForStyledValueForIdx6);
        } else if (valueHolderForStyledValue.getSelector() == 7) {
            valueSerializer.writeInt8(Int8(7));
            let valueHolderForStyledValueForIdx7 = valueHolderForStyledValue.getValue7()
            ParagraphStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx7);
        } else if (valueHolderForStyledValue.getSelector() == 8) {
            valueSerializer.writeInt8(Int8(8));
            let valueHolderForStyledValueForIdx8 = valueHolderForStyledValue.getValue8()
            LineHeightStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx8);
        } else if (valueHolderForStyledValue.getSelector() == 9) {
            valueSerializer.writeInt8(Int8(9));
            let valueHolderForStyledValueForIdx9 = valueHolderForStyledValue.getValue9()
            UrlStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx9);
        } else if (valueHolderForStyledValue.getSelector() == 10) {
            valueSerializer.writeInt8(Int8(10));
            let valueHolderForStyledValueForIdx10 = valueHolderForStyledValue.getValue10()
            CustomSpan_serializer.write(valueSerializer, valueHolderForStyledValueForIdx10);
        } else if (valueHolderForStyledValue.getSelector() == 11) {
            valueSerializer.writeInt8(Int8(11));
            let valueHolderForStyledValueForIdx11 = valueHolderForStyledValue.getValue11()
            UserDataSpan_serializer.write(valueSerializer, valueHolderForStyledValueForIdx11);
        } else if (valueHolderForStyledValue.getSelector() == 12) {
            valueSerializer.writeInt8(Int8(12));
            let valueHolderForStyledValueForIdx12 = valueHolderForStyledValue.getValue12()
            BackgroundColorStyle_serializer.write(valueSerializer, valueHolderForStyledValueForIdx12);
        }
    }
    public static func read(buffer: DeserializerBase): StyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startTmpResult: Option<Float64> = startTmpBuf
        let lengthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lengthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lengthTmpBuf_runtimeType))) {
            lengthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lengthTmpResult: Option<Float64> = lengthTmpBuf
        let styledKeyTmpResult: StyledStringKey = StyledStringKey(valueDeserializer.readInt32())
        let styledValueTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var styledValueTmpBuf: StyledStringValue 
        if (styledValueTmpBufUnionSelector == Int8(0)) {
            styledValueTmpBuf = StyledStringValue(match (TextStyle_styled_string_serializer.read(valueDeserializer) as TextStyle_styled_string) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(1)) {
            styledValueTmpBuf = StyledStringValue(match (DecorationStyle_serializer.read(valueDeserializer) as DecorationStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(2)) {
            styledValueTmpBuf = StyledStringValue(match (BaselineOffsetStyle_serializer.read(valueDeserializer) as BaselineOffsetStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(3)) {
            styledValueTmpBuf = StyledStringValue(match (LetterSpacingStyle_serializer.read(valueDeserializer) as LetterSpacingStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(4)) {
            styledValueTmpBuf = StyledStringValue(match (TextShadowStyle_serializer.read(valueDeserializer) as TextShadowStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(5)) {
            styledValueTmpBuf = StyledStringValue(match (GestureStyle_serializer.read(valueDeserializer) as GestureStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(6)) {
            styledValueTmpBuf = StyledStringValue(match (ImageAttachment_serializer.read(valueDeserializer) as ImageAttachment) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(7)) {
            styledValueTmpBuf = StyledStringValue(match (ParagraphStyle_serializer.read(valueDeserializer) as ParagraphStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(8)) {
            styledValueTmpBuf = StyledStringValue(match (LineHeightStyle_serializer.read(valueDeserializer) as LineHeightStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(9)) {
            styledValueTmpBuf = StyledStringValue(match (UrlStyle_serializer.read(valueDeserializer) as UrlStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(10)) {
            styledValueTmpBuf = StyledStringValue(match (CustomSpan_serializer.read(valueDeserializer) as CustomSpan) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (styledValueTmpBufUnionSelector == Int8(11)) {
            styledValueTmpBuf = StyledStringValue(UserDataSpan_serializer.read(valueDeserializer))
        } else if (styledValueTmpBufUnionSelector == Int8(12)) {
            styledValueTmpBuf = StyledStringValue(match (BackgroundColorStyle_serializer.read(valueDeserializer) as BackgroundColorStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for styledValueTmpBuf has to be chosen through deserialisation.")
        }
        let styledValueTmpResult: StyledStringValue = match (styledValueTmpBuf as StyledStringValue) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: StyleOptions = StyleOptions(startTmpResult, lengthTmpResult, styledKeyTmpResult, styledValueTmpResult)
        return value
    }
}
