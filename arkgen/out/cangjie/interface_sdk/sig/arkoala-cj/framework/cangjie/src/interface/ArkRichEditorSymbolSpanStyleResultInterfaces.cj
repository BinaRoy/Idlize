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
public interface RichEditorSymbolSpanStyleResultInterfaces <:  {
    public mut open prop fontSize: Union_Number_String_Resource
    public mut open prop fontColor: ArrayList<ResourceColor>
    public mut open prop fontWeight: Union_Number_FontWeight_String
    public mut open prop effectStrategy: SymbolEffectStrategy
    public mut open prop renderingStrategy: SymbolRenderingStrategy
}
public open class RichEditorSymbolSpanStyleResult <: RichEditorSymbolSpanStyleResultInterfaces {
    private var fontSize_container: Union_Number_String_Resource
    public mut open prop fontSize: Union_Number_String_Resource
    {
        get() {
            return fontSize_container
        }
        set(fontSize) {
            fontSize_container = fontSize
        }
    }
    private var fontColor_container: ArrayList<ResourceColor>
    public mut open prop fontColor: ArrayList<ResourceColor>
    {
        get() {
            return fontColor_container
        }
        set(fontColor) {
            fontColor_container = fontColor
        }
    }
    private var fontWeight_container: Union_Number_FontWeight_String
    public mut open prop fontWeight: Union_Number_FontWeight_String
    {
        get() {
            return fontWeight_container
        }
        set(fontWeight) {
            fontWeight_container = fontWeight
        }
    }
    private var effectStrategy_container: SymbolEffectStrategy
    public mut open prop effectStrategy: SymbolEffectStrategy
    {
        get() {
            return effectStrategy_container
        }
        set(effectStrategy) {
            effectStrategy_container = effectStrategy
        }
    }
    private var renderingStrategy_container: SymbolRenderingStrategy
    public mut open prop renderingStrategy: SymbolRenderingStrategy
    {
        get() {
            return renderingStrategy_container
        }
        set(renderingStrategy) {
            renderingStrategy_container = renderingStrategy
        }
    }
    RichEditorSymbolSpanStyleResult(fontSize: Union_Number_String_Resource, fontColor: ArrayList<ResourceColor>, fontWeight: Union_Number_FontWeight_String, effectStrategy: SymbolEffectStrategy, renderingStrategy: SymbolRenderingStrategy) {
        this.fontSize_container = fontSize
        this.fontColor_container = fontColor
        this.fontWeight_container = fontWeight
        this.effectStrategy_container = effectStrategy
        this.renderingStrategy_container = renderingStrategy
    }
}
