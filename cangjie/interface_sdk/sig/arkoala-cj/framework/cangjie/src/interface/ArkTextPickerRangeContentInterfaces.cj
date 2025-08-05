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
public interface TextPickerRangeContentInterfaces <:  {
    public mut open prop icon: Union_String_Resource
    public mut open prop text: Option<Union_String_Resource>
}
public open class TextPickerRangeContent <: TextPickerRangeContentInterfaces {
    private var icon_container: Union_String_Resource
    public mut open prop icon: Union_String_Resource
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var text_container: Option<Union_String_Resource>
    public mut open prop text: Option<Union_String_Resource>
    {
        get() {
            return text_container
        }
        set(text) {
            text_container = text
        }
    }
    TextPickerRangeContent(icon: Union_String_Resource, text: Option<Union_String_Resource>) {
        this.icon_container = icon
        this.text_container = text
    }
}
public open class TextPickerRangeContent_serializer {
    public static func write(buffer: SerializerBase, value: TextPickerRangeContent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIcon = value.icon
        if (valueHolderForIcon.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForIconForIdx0 = valueHolderForIcon.getValue0()
            valueSerializer.writeString(valueHolderForIconForIdx0);
        } else if (valueHolderForIcon.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForIconForIdx1 = valueHolderForIcon.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForIconForIdx1);
        }
        let valueHolderForText = value.text
        if (valueHolderForText.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextTmpValue = valueHolderForText
            if (valueHolderForTextTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTextTmpValueForIdx0 = valueHolderForTextTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForTextTmpValueForIdx0);
            } else if (valueHolderForTextTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTextTmpValueForIdx1 = valueHolderForTextTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForTextTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextPickerRangeContent {
        var valueDeserializer: DeserializerBase = buffer
        let iconTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var iconTmpBuf: Union_String_Resource 
        if (iconTmpBufUnionSelector == Int8(0)) {
            iconTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (iconTmpBufUnionSelector == Int8(1)) {
            iconTmpBuf = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for iconTmpBuf has to be chosen through deserialisation.")
        }
        let iconTmpResult: Union_String_Resource = match (iconTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let textTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textTmpBuf: Option<Union_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textTmpBuf_runtimeType))) {
            let textTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var textTmpBuf_: Union_String_Resource 
            if (textTmpBuf_UnionSelector == Int8(0)) {
                textTmpBuf_ = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (textTmpBuf_UnionSelector == Int8(1)) {
                textTmpBuf_ = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for textTmpBuf_ has to be chosen through deserialisation.")
            }
            textTmpBuf = match (textTmpBuf_ as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let textTmpResult: Option<Union_String_Resource> = textTmpBuf
        var value: TextPickerRangeContent = TextPickerRangeContent(iconTmpResult, textTmpResult)
        return value
    }
}
