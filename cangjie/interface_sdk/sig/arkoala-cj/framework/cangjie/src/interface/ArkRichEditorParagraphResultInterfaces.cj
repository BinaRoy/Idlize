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
public interface RichEditorParagraphResultInterfaces <:  {
    public mut open prop style: RichEditorParagraphStyle
    public mut open prop range: Tuple_Number_Number
}
public open class RichEditorParagraphResult <: RichEditorParagraphResultInterfaces {
    private var style_container: RichEditorParagraphStyle
    public mut open prop style: RichEditorParagraphStyle
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var range_container: Tuple_Number_Number
    public mut open prop range: Tuple_Number_Number
    {
        get() {
            return range_container
        }
        set(range) {
            range_container = range
        }
    }
    RichEditorParagraphResult(style: RichEditorParagraphStyle, range: Tuple_Number_Number) {
        this.style_container = style
        this.range_container = range
    }
}
public open class RichEditorParagraphResult_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorParagraphResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStyle = value.style
        RichEditorParagraphStyle_serializer.write(valueSerializer, valueHolderForStyle);
        let valueHolderForRange = value.range
        let valueHolderForRange_0 = valueHolderForRange.value0
        valueSerializer.writeNumber(valueHolderForRange_0);
        let valueHolderForRange_1 = valueHolderForRange.value1
        valueSerializer.writeNumber(valueHolderForRange_1);
    }
    public static func read(buffer: DeserializerBase): RichEditorParagraphResult {
        var valueDeserializer: DeserializerBase = buffer
        let styleTmpResult: RichEditorParagraphStyle = RichEditorParagraphStyle_serializer.read(valueDeserializer)
        let rangeTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let rangeTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let rangeTmpResult: Tuple_Number_Number = Tuple_Number_Number(rangeTmpBuf_value0, rangeTmpBuf_value1)
        var value: RichEditorParagraphResult = RichEditorParagraphResult(styleTmpResult, rangeTmpResult)
        return value
    }
}
