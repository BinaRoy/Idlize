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
public interface StyledStringChangeValueInterfaces <:  {
    public mut open prop range: TextRange
    public mut open prop replacementString: StyledString
    public mut open prop previewText: Option<StyledString>
}
public open class StyledStringChangeValue <: StyledStringChangeValueInterfaces {
    private var range_container: TextRange
    public mut open prop range: TextRange
    {
        get() {
            return range_container
        }
        set(range) {
            range_container = range
        }
    }
    private var replacementString_container: StyledString
    public mut open prop replacementString: StyledString
    {
        get() {
            return replacementString_container
        }
        set(replacementString) {
            replacementString_container = replacementString
        }
    }
    private var previewText_container: Option<StyledString>
    public mut open prop previewText: Option<StyledString>
    {
        get() {
            return previewText_container
        }
        set(previewText) {
            previewText_container = previewText
        }
    }
    StyledStringChangeValue(range: TextRange, replacementString: StyledString, previewText: Option<StyledString>) {
        this.range_container = range
        this.replacementString_container = replacementString
        this.previewText_container = previewText
    }
}
public open class StyledStringChangeValue_serializer {
    public static func write(buffer: SerializerBase, value: StyledStringChangeValue): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRange = value.range
        TextRange_serializer.write(valueSerializer, valueHolderForRange);
        let valueHolderForReplacementString = value.replacementString
        StyledString_serializer.write(valueSerializer, valueHolderForReplacementString);
        let valueHolderForPreviewText = value.previewText
        if (valueHolderForPreviewText.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewTextTmpValue = valueHolderForPreviewText
            StyledString_serializer.write(valueSerializer, valueHolderForPreviewTextTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): StyledStringChangeValue {
        var valueDeserializer: DeserializerBase = buffer
        let rangeTmpResult: TextRange = TextRange_serializer.read(valueDeserializer)
        let replacementStringTmpResult: StyledString = match (StyledString_serializer.read(valueDeserializer) as StyledString) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let previewTextTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewTextTmpBuf: Option<StyledString> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewTextTmpBuf_runtimeType))) {
            previewTextTmpBuf = match (StyledString_serializer.read(valueDeserializer) as StyledString) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let previewTextTmpResult: Option<StyledString> = previewTextTmpBuf
        var value: StyledStringChangeValue = StyledStringChangeValue(rangeTmpResult, replacementStringTmpResult, previewTextTmpResult)
        return value
    }
}
