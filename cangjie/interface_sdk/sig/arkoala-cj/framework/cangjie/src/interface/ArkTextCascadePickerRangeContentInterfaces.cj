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
public interface TextCascadePickerRangeContentInterfaces <:  {
    public mut open prop text: Union_String_Resource
    public mut open prop children: Option<ArrayList<TextCascadePickerRangeContent>>
}
public open class TextCascadePickerRangeContent <: TextCascadePickerRangeContentInterfaces {
    private var text_container: Union_String_Resource
    public mut open prop text: Union_String_Resource
    {
        get() {
            return text_container
        }
        set(text) {
            text_container = text
        }
    }
    private var children_container: Option<ArrayList<TextCascadePickerRangeContent>>
    public mut open prop children: Option<ArrayList<TextCascadePickerRangeContent>>
    {
        get() {
            return children_container
        }
        set(children) {
            children_container = children
        }
    }
    TextCascadePickerRangeContent(text: Union_String_Resource, children: Option<ArrayList<TextCascadePickerRangeContent>>) {
        this.text_container = text
        this.children_container = children
    }
}
public open class TextCascadePickerRangeContent_serializer {
    public static func write(buffer: SerializerBase, value: TextCascadePickerRangeContent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForText = value.text
        if (valueHolderForText.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForTextForIdx0 = valueHolderForText.getValue0()
            valueSerializer.writeString(valueHolderForTextForIdx0);
        } else if (valueHolderForText.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForTextForIdx1 = valueHolderForText.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForTextForIdx1);
        }
        let valueHolderForChildren = value.children
        if (valueHolderForChildren.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForChildrenTmpValue = valueHolderForChildren
            valueSerializer.writeInt32(Int32(valueHolderForChildrenTmpValue.size));
            for (valueHolderForChildrenTmpValueCounterI in 0..valueHolderForChildrenTmpValue.size) {
                let valueHolderForChildrenTmpValueTmpElement: TextCascadePickerRangeContent = valueHolderForChildrenTmpValue[Int64(valueHolderForChildrenTmpValueCounterI)]
                TextCascadePickerRangeContent_serializer.write(valueSerializer, valueHolderForChildrenTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextCascadePickerRangeContent {
        var valueDeserializer: DeserializerBase = buffer
        let textTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var textTmpBuf: Union_String_Resource 
        if (textTmpBufUnionSelector == Int8(0)) {
            textTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (textTmpBufUnionSelector == Int8(1)) {
            textTmpBuf = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for textTmpBuf has to be chosen through deserialisation.")
        }
        let textTmpResult: Union_String_Resource = match (textTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let childrenTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var childrenTmpBuf: Option<ArrayList<TextCascadePickerRangeContent>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(childrenTmpBuf_runtimeType))) {
            let childrenTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var childrenTmpBuf_: ArrayList<TextCascadePickerRangeContent> = ArrayList<TextCascadePickerRangeContent>(Int64(childrenTmpBuf_Length))
            childrenTmpBuf_ = ArrayList<TextCascadePickerRangeContent>(Int64(childrenTmpBuf_Length))
            for (childrenTmpBuf_BufCounterI in 0..childrenTmpBuf_Length) {
                childrenTmpBuf_[Int64(childrenTmpBuf_BufCounterI)] = TextCascadePickerRangeContent_serializer.read(valueDeserializer)
            }
            childrenTmpBuf = childrenTmpBuf_
        }
        let childrenTmpResult: Option<ArrayList<TextCascadePickerRangeContent>> = childrenTmpBuf
        var value: TextCascadePickerRangeContent = TextCascadePickerRangeContent(textTmpResult, childrenTmpResult)
        return value
    }
}
