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
public interface TabBarSymbolInterfaces <:  {
    public mut open prop normal: SymbolGlyphModifier
    public mut open prop selected: Option<SymbolGlyphModifier>
}
public open class TabBarSymbol <: TabBarSymbolInterfaces {
    private var normal_container: SymbolGlyphModifier
    public mut open prop normal: SymbolGlyphModifier
    {
        get() {
            return normal_container
        }
        set(normal) {
            normal_container = normal
        }
    }
    private var selected_container: Option<SymbolGlyphModifier>
    public mut open prop selected: Option<SymbolGlyphModifier>
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    TabBarSymbol(normal: SymbolGlyphModifier, selected: Option<SymbolGlyphModifier>) {
        this.normal_container = normal
        this.selected_container = selected
    }
}
public open class TabBarSymbol_serializer {
    public static func write(buffer: SerializerBase, value: TabBarSymbol): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForNormal = value.normal
        valueSerializer.writeCustomObject("Any", valueHolderForNormal);
        let valueHolderForSelected = value.selected
        if (valueHolderForSelected.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedTmpValue = valueHolderForSelected
            valueSerializer.writeCustomObject("Any", valueHolderForSelectedTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TabBarSymbol {
        var valueDeserializer: DeserializerBase = buffer
        let normalTmpResult: SymbolGlyphModifier = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let selectedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedTmpBuf: Option<SymbolGlyphModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedTmpBuf_runtimeType))) {
            selectedTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedTmpResult: Option<SymbolGlyphModifier> = selectedTmpBuf
        var value: TabBarSymbol = TabBarSymbol(normalTmpResult, selectedTmpResult)
        return value
    }
}
