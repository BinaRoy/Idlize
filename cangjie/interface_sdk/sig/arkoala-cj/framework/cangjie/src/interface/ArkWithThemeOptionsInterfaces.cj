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
public interface WithThemeOptionsInterfaces <:  {
    public mut open prop theme: Option<CustomTheme>
    public mut open prop colorMode: Option<ThemeColorMode>
}
public open class WithThemeOptions <: WithThemeOptionsInterfaces {
    private var theme_container: Option<CustomTheme>
    public mut open prop theme: Option<CustomTheme>
    {
        get() {
            return theme_container
        }
        set(theme) {
            theme_container = theme
        }
    }
    private var colorMode_container: Option<ThemeColorMode>
    public mut open prop colorMode: Option<ThemeColorMode>
    {
        get() {
            return colorMode_container
        }
        set(colorMode) {
            colorMode_container = colorMode
        }
    }
    WithThemeOptions(theme: Option<CustomTheme>, colorMode: Option<ThemeColorMode>) {
        this.theme_container = theme
        this.colorMode_container = colorMode
    }
}
public open class WithThemeOptions_serializer {
    public static func write(buffer: SerializerBase, value: WithThemeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTheme = value.theme
        if (valueHolderForTheme.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForThemeTmpValue = valueHolderForTheme
            valueSerializer.writeCustomObject("Any", valueHolderForThemeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColorMode = value.colorMode
        if (valueHolderForColorMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorModeTmpValue = valueHolderForColorMode
            valueSerializer.writeInt32(valueHolderForColorModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): WithThemeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let themeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var themeTmpBuf: Option<CustomTheme> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(themeTmpBuf_runtimeType))) {
            themeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let themeTmpResult: Option<CustomTheme> = themeTmpBuf
        let colorModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorModeTmpBuf: Option<ThemeColorMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorModeTmpBuf_runtimeType))) {
            colorModeTmpBuf = ThemeColorMode(valueDeserializer.readInt32())
        }
        let colorModeTmpResult: Option<ThemeColorMode> = colorModeTmpBuf
        var value: WithThemeOptions = WithThemeOptions(themeTmpResult, colorModeTmpResult)
        return value
    }
}
