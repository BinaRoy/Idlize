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
public interface LocationButtonOptionsInterfaces <:  {
    public mut open prop icon: Option<LocationIconStyle>
    public mut open prop text: Option<LocationDescription>
    public mut open prop buttonType: Option<ButtonType>
}
public open class LocationButtonOptions <: LocationButtonOptionsInterfaces {
    private var icon_container: Option<LocationIconStyle>
    public mut open prop icon: Option<LocationIconStyle>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var text_container: Option<LocationDescription>
    public mut open prop text: Option<LocationDescription>
    {
        get() {
            return text_container
        }
        set(text) {
            text_container = text
        }
    }
    private var buttonType_container: Option<ButtonType>
    public mut open prop buttonType: Option<ButtonType>
    {
        get() {
            return buttonType_container
        }
        set(buttonType) {
            buttonType_container = buttonType
        }
    }
    LocationButtonOptions(icon: Option<LocationIconStyle>, text: Option<LocationDescription>, buttonType: Option<ButtonType>) {
        this.icon_container = icon
        this.text_container = text
        this.buttonType_container = buttonType
    }
}
public open class LocationButtonOptions_serializer {
    public static func write(buffer: SerializerBase, value: LocationButtonOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIcon = value.icon
        if (valueHolderForIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIconTmpValue = valueHolderForIcon
            valueSerializer.writeInt32(valueHolderForIconTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForText = value.text
        if (valueHolderForText.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextTmpValue = valueHolderForText
            valueSerializer.writeInt32(valueHolderForTextTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForButtonType = value.buttonType
        if (valueHolderForButtonType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForButtonTypeTmpValue = valueHolderForButtonType
            valueSerializer.writeInt32(valueHolderForButtonTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LocationButtonOptions {
        var valueDeserializer: DeserializerBase = buffer
        let iconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconTmpBuf: Option<LocationIconStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconTmpBuf_runtimeType))) {
            iconTmpBuf = LocationIconStyle(valueDeserializer.readInt32())
        }
        let iconTmpResult: Option<LocationIconStyle> = iconTmpBuf
        let textTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textTmpBuf: Option<LocationDescription> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textTmpBuf_runtimeType))) {
            textTmpBuf = LocationDescription(valueDeserializer.readInt32())
        }
        let textTmpResult: Option<LocationDescription> = textTmpBuf
        let buttonTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buttonTypeTmpBuf: Option<ButtonType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buttonTypeTmpBuf_runtimeType))) {
            buttonTypeTmpBuf = ButtonType(valueDeserializer.readInt32())
        }
        let buttonTypeTmpResult: Option<ButtonType> = buttonTypeTmpBuf
        var value: LocationButtonOptions = LocationButtonOptions(iconTmpResult, textTmpResult, buttonTypeTmpResult)
        return value
    }
}
