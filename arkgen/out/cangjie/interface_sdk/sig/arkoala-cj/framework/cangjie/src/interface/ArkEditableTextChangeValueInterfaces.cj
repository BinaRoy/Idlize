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
public interface EditableTextChangeValueInterfaces <:  {
    public mut open prop content: String
    public mut open prop previewText: Option<PreviewText>
    public mut open prop options: Option<TextChangeOptions>
}
public open class EditableTextChangeValue <: EditableTextChangeValueInterfaces {
    private var content_container: String
    public mut open prop content: String
    {
        get() {
            return content_container
        }
        set(content) {
            content_container = content
        }
    }
    private var previewText_container: Option<PreviewText>
    public mut open prop previewText: Option<PreviewText>
    {
        get() {
            return previewText_container
        }
        set(previewText) {
            previewText_container = previewText
        }
    }
    private var options_container: Option<TextChangeOptions>
    public mut open prop options: Option<TextChangeOptions>
    {
        get() {
            return options_container
        }
        set(options) {
            options_container = options
        }
    }
    EditableTextChangeValue(content: String, previewText: Option<PreviewText>, options: Option<TextChangeOptions>) {
        this.content_container = content
        this.previewText_container = previewText
        this.options_container = options
    }
}
public open class EditableTextChangeValue_serializer {
    public static func write(buffer: SerializerBase, value: EditableTextChangeValue): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForContent = value.content
        valueSerializer.writeString(valueHolderForContent);
        let valueHolderForPreviewText = value.previewText
        if (valueHolderForPreviewText.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewTextTmpValue = valueHolderForPreviewText
            PreviewText_serializer.write(valueSerializer, valueHolderForPreviewTextTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOptions = value.options
        if (valueHolderForOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOptionsTmpValue = valueHolderForOptions
            TextChangeOptions_serializer.write(valueSerializer, valueHolderForOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): EditableTextChangeValue {
        var valueDeserializer: DeserializerBase = buffer
        let contentTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let previewTextTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewTextTmpBuf: Option<PreviewText> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewTextTmpBuf_runtimeType))) {
            previewTextTmpBuf = PreviewText_serializer.read(valueDeserializer)
        }
        let previewTextTmpResult: Option<PreviewText> = previewTextTmpBuf
        let optionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var optionsTmpBuf: Option<TextChangeOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(optionsTmpBuf_runtimeType))) {
            optionsTmpBuf = TextChangeOptions_serializer.read(valueDeserializer)
        }
        let optionsTmpResult: Option<TextChangeOptions> = optionsTmpBuf
        var value: EditableTextChangeValue = EditableTextChangeValue(contentTmpResult, previewTextTmpResult, optionsTmpResult)
        return value
    }
}
