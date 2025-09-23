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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class TextInputOptions {
    public var placeholder: Option<ResourceStr>
    public var text: Option<ResourceStr>
    init(placeholder: Option<ResourceStr>, text: Option<ResourceStr>) {
        this.placeholder = placeholder
        this.text = text
    }
}
public class TextInputOptions_serializer {
    public  static func write(buffer: SerializerBase, value: TextInputOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPlaceholder = value.placeholder
        if (let Some(valueHolderForPlaceholder) <- valueHolderForPlaceholder) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForPlaceholderTmpValue = valueHolderForPlaceholder
            if (valueHolderForPlaceholderTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForPlaceholderTmpValueForIdx0 = valueHolderForPlaceholderTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForPlaceholderTmpValueForIdx0)
            } else if (valueHolderForPlaceholderTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForPlaceholderTmpValueForIdx1 = valueHolderForPlaceholderTmpValue.getValue1()
                Resource_serializer.write(valueSerializer, valueHolderForPlaceholderTmpValueForIdx1)
            } else {
                throw Exception("One of the branches for valueHolderForPlaceholderTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForText = value.text
        if (let Some(valueHolderForText) <- valueHolderForText) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTextTmpValue = valueHolderForText
            if (valueHolderForTextTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForTextTmpValueForIdx0 = valueHolderForTextTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForTextTmpValueForIdx0)
            } else if (valueHolderForTextTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForTextTmpValueForIdx1 = valueHolderForTextTmpValue.getValue1()
                Resource_serializer.write(valueSerializer, valueHolderForTextTmpValueForIdx1)
            } else {
                throw Exception("One of the branches for valueHolderForTextTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): TextInputOptions {
        var valueDeserializer: DeserializerBase = buffer
        let placeholderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var placeholderTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(placeholderTmpBuf_runtimeType))) {
            let placeholderTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var placeholderTmpBuf_: ResourceStr 
            if (placeholderTmpBuf_UnionSelector == Int8(0)) {
                placeholderTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (placeholderTmpBuf_UnionSelector == Int8(1)) {
                placeholderTmpBuf_ = ResourceStr(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for placeholderTmpBuf_ has to be chosen through deserialisation.")
            }
            placeholderTmpBuf = match (placeholderTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let placeholderTmpResult: Option<ResourceStr> = placeholderTmpBuf
        let textTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textTmpBuf_runtimeType))) {
            let textTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var textTmpBuf_: ResourceStr 
            if (textTmpBuf_UnionSelector == Int8(0)) {
                textTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (textTmpBuf_UnionSelector == Int8(1)) {
                textTmpBuf_ = ResourceStr(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for textTmpBuf_ has to be chosen through deserialisation.")
            }
            textTmpBuf = match (textTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let textTmpResult: Option<ResourceStr> = textTmpBuf
        var value: TextInputOptions = TextInputOptions(placeholderTmpResult, textTmpResult)
        return value
    }
}
