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
public interface TextChangeOptionsInterfaces <:  {
    public mut open prop rangeBefore: TextRange
    public mut open prop rangeAfter: TextRange
    public mut open prop oldContent: String
    public mut open prop oldPreviewText: PreviewText
}
public open class TextChangeOptions <: TextChangeOptionsInterfaces {
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
    private var rangeAfter_container: TextRange
    public mut open prop rangeAfter: TextRange
    {
        get() {
            return rangeAfter_container
        }
        set(rangeAfter) {
            rangeAfter_container = rangeAfter
        }
    }
    private var oldContent_container: String
    public mut open prop oldContent: String
    {
        get() {
            return oldContent_container
        }
        set(oldContent) {
            oldContent_container = oldContent
        }
    }
    private var oldPreviewText_container: PreviewText
    public mut open prop oldPreviewText: PreviewText
    {
        get() {
            return oldPreviewText_container
        }
        set(oldPreviewText) {
            oldPreviewText_container = oldPreviewText
        }
    }
    TextChangeOptions(rangeBefore: TextRange, rangeAfter: TextRange, oldContent: String, oldPreviewText: PreviewText) {
        this.rangeBefore_container = rangeBefore
        this.rangeAfter_container = rangeAfter
        this.oldContent_container = oldContent
        this.oldPreviewText_container = oldPreviewText
    }
}
public open class TextChangeOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextChangeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRangeBefore = value.rangeBefore
        TextRange_serializer.write(valueSerializer, valueHolderForRangeBefore);
        let valueHolderForRangeAfter = value.rangeAfter
        TextRange_serializer.write(valueSerializer, valueHolderForRangeAfter);
        let valueHolderForOldContent = value.oldContent
        valueSerializer.writeString(valueHolderForOldContent);
        let valueHolderForOldPreviewText = value.oldPreviewText
        PreviewText_serializer.write(valueSerializer, valueHolderForOldPreviewText);
    }
    public static func read(buffer: DeserializerBase): TextChangeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let rangeBeforeTmpResult: TextRange = TextRange_serializer.read(valueDeserializer)
        let rangeAfterTmpResult: TextRange = TextRange_serializer.read(valueDeserializer)
        let oldContentTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let oldPreviewTextTmpResult: PreviewText = PreviewText_serializer.read(valueDeserializer)
        var value: TextChangeOptions = TextChangeOptions(rangeBeforeTmpResult, rangeAfterTmpResult, oldContentTmpResult, oldPreviewTextTmpResult)
        return value
    }
}
