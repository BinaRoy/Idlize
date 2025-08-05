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
public interface CancelButtonSymbolOptionsInterfaces <:  {
    public mut open prop style: Option<CancelButtonStyle>
    public mut open prop icon: Option<SymbolGlyphModifier>
}
public open class CancelButtonSymbolOptions <: CancelButtonSymbolOptionsInterfaces {
    private var style_container: Option<CancelButtonStyle>
    public mut open prop style: Option<CancelButtonStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var icon_container: Option<SymbolGlyphModifier>
    public mut open prop icon: Option<SymbolGlyphModifier>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    CancelButtonSymbolOptions(style: Option<CancelButtonStyle>, icon: Option<SymbolGlyphModifier>) {
        this.style_container = style
        this.icon_container = icon
    }
}
public open class CancelButtonSymbolOptions_serializer {
    public static func write(buffer: SerializerBase, value: CancelButtonSymbolOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIcon = value.icon
        if (valueHolderForIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIconTmpValue = valueHolderForIcon
            valueSerializer.writeCustomObject("Any", valueHolderForIconTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CancelButtonSymbolOptions {
        var valueDeserializer: DeserializerBase = buffer
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<CancelButtonStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = CancelButtonStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<CancelButtonStyle> = styleTmpBuf
        let iconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconTmpBuf: Option<SymbolGlyphModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconTmpBuf_runtimeType))) {
            iconTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let iconTmpResult: Option<SymbolGlyphModifier> = iconTmpBuf
        var value: CancelButtonSymbolOptions = CancelButtonSymbolOptions(styleTmpResult, iconTmpResult)
        return value
    }
}
