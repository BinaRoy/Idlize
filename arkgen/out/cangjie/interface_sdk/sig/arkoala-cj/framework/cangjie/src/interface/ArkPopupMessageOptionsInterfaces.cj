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
public interface PopupMessageOptionsInterfaces <:  {
    public mut open prop textColor: Option<ResourceColor>
    public mut open prop font: Option<Font>
}
public open class PopupMessageOptions <: PopupMessageOptionsInterfaces {
    private var textColor_container: Option<ResourceColor>
    public mut open prop textColor: Option<ResourceColor>
    {
        get() {
            return textColor_container
        }
        set(textColor) {
            textColor_container = textColor
        }
    }
    private var font_container: Option<Font>
    public mut open prop font: Option<Font>
    {
        get() {
            return font_container
        }
        set(font) {
            font_container = font
        }
    }
    PopupMessageOptions(textColor: Option<ResourceColor>, font: Option<Font>) {
        this.textColor_container = textColor
        this.font_container = font
    }
}
public open class PopupMessageOptions_serializer {
    public static func write(buffer: SerializerBase, value: PopupMessageOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTextColor = value.textColor
        if (valueHolderForTextColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextColorTmpValue = valueHolderForTextColor
            if (valueHolderForTextColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTextColorTmpValueForIdx0 = valueHolderForTextColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForTextColorTmpValueForIdx0.value);
            } else if (valueHolderForTextColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTextColorTmpValueForIdx1 = valueHolderForTextColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTextColorTmpValueForIdx1);
            } else if (valueHolderForTextColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTextColorTmpValueForIdx2 = valueHolderForTextColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForTextColorTmpValueForIdx2);
            } else if (valueHolderForTextColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForTextColorTmpValueForIdx3 = valueHolderForTextColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForTextColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFont = value.font
        if (valueHolderForFont.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontTmpValue = valueHolderForFont
            Font_serializer.write(valueSerializer, valueHolderForFontTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PopupMessageOptions {
        var valueDeserializer: DeserializerBase = buffer
        let textColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textColorTmpBuf_runtimeType))) {
            let textColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var textColorTmpBuf_: ResourceColor 
            if (textColorTmpBuf_UnionSelector == Int8(0)) {
                textColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (textColorTmpBuf_UnionSelector == Int8(1)) {
                textColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (textColorTmpBuf_UnionSelector == Int8(2)) {
                textColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (textColorTmpBuf_UnionSelector == Int8(3)) {
                textColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for textColorTmpBuf_ has to be chosen through deserialisation.")
            }
            textColorTmpBuf = match (textColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let textColorTmpResult: Option<ResourceColor> = textColorTmpBuf
        let fontTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontTmpBuf: Option<Font> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontTmpBuf_runtimeType))) {
            fontTmpBuf = Font_serializer.read(valueDeserializer)
        }
        let fontTmpResult: Option<Font> = fontTmpBuf
        var value: PopupMessageOptions = PopupMessageOptions(textColorTmpResult, fontTmpResult)
        return value
    }
}
