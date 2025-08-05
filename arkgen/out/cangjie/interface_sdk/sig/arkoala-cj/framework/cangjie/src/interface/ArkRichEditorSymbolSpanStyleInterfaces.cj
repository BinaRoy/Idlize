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
public interface RichEditorSymbolSpanStyleInterfaces <:  {
    public mut open prop fontSize: Option<Union_Number_String_Resource>
    public mut open prop fontColor: Option<ArrayList<ResourceColor>>
    public mut open prop fontWeight: Option<Union_Number_FontWeight_String>
    public mut open prop effectStrategy: Option<SymbolEffectStrategy>
    public mut open prop renderingStrategy: Option<SymbolRenderingStrategy>
}
public open class RichEditorSymbolSpanStyle <: RichEditorSymbolSpanStyleInterfaces {
    private var fontSize_container: Option<Union_Number_String_Resource>
    public mut open prop fontSize: Option<Union_Number_String_Resource>
    {
        get() {
            return fontSize_container
        }
        set(fontSize) {
            fontSize_container = fontSize
        }
    }
    private var fontColor_container: Option<ArrayList<ResourceColor>>
    public mut open prop fontColor: Option<ArrayList<ResourceColor>>
    {
        get() {
            return fontColor_container
        }
        set(fontColor) {
            fontColor_container = fontColor
        }
    }
    private var fontWeight_container: Option<Union_Number_FontWeight_String>
    public mut open prop fontWeight: Option<Union_Number_FontWeight_String>
    {
        get() {
            return fontWeight_container
        }
        set(fontWeight) {
            fontWeight_container = fontWeight
        }
    }
    private var effectStrategy_container: Option<SymbolEffectStrategy>
    public mut open prop effectStrategy: Option<SymbolEffectStrategy>
    {
        get() {
            return effectStrategy_container
        }
        set(effectStrategy) {
            effectStrategy_container = effectStrategy
        }
    }
    private var renderingStrategy_container: Option<SymbolRenderingStrategy>
    public mut open prop renderingStrategy: Option<SymbolRenderingStrategy>
    {
        get() {
            return renderingStrategy_container
        }
        set(renderingStrategy) {
            renderingStrategy_container = renderingStrategy
        }
    }
    RichEditorSymbolSpanStyle(fontSize: Option<Union_Number_String_Resource>, fontColor: Option<ArrayList<ResourceColor>>, fontWeight: Option<Union_Number_FontWeight_String>, effectStrategy: Option<SymbolEffectStrategy>, renderingStrategy: Option<SymbolRenderingStrategy>) {
        this.fontSize_container = fontSize
        this.fontColor_container = fontColor
        this.fontWeight_container = fontWeight
        this.effectStrategy_container = effectStrategy
        this.renderingStrategy_container = renderingStrategy
    }
}
public open class RichEditorSymbolSpanStyle_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorSymbolSpanStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFontSize = value.fontSize
        if (valueHolderForFontSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontSizeTmpValue = valueHolderForFontSize
            if (valueHolderForFontSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontSizeTmpValueForIdx0 = valueHolderForFontSizeTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForFontSizeTmpValueForIdx0);
            } else if (valueHolderForFontSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontSizeTmpValueForIdx1 = valueHolderForFontSizeTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForFontSizeTmpValueForIdx1);
            } else if (valueHolderForFontSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFontSizeTmpValueForIdx2 = valueHolderForFontSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForFontSizeTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFontColor = value.fontColor
        if (valueHolderForFontColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontColorTmpValue = valueHolderForFontColor
            valueSerializer.writeInt32(Int32(valueHolderForFontColorTmpValue.size));
            for (valueHolderForFontColorTmpValueCounterI in 0..valueHolderForFontColorTmpValue.size) {
                let valueHolderForFontColorTmpValueTmpElement: ResourceColor = valueHolderForFontColorTmpValue[Int64(valueHolderForFontColorTmpValueCounterI)]
                if (valueHolderForFontColorTmpValueTmpElement.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForFontColorTmpValueTmpElementForIdx0 = valueHolderForFontColorTmpValueTmpElement.getValue0()
                    valueSerializer.writeInt32(valueHolderForFontColorTmpValueTmpElementForIdx0.value);
                } else if (valueHolderForFontColorTmpValueTmpElement.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForFontColorTmpValueTmpElementForIdx1 = valueHolderForFontColorTmpValueTmpElement.getValue1()
                    valueSerializer.writeNumber(valueHolderForFontColorTmpValueTmpElementForIdx1);
                } else if (valueHolderForFontColorTmpValueTmpElement.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForFontColorTmpValueTmpElementForIdx2 = valueHolderForFontColorTmpValueTmpElement.getValue2()
                    valueSerializer.writeString(valueHolderForFontColorTmpValueTmpElementForIdx2);
                } else if (valueHolderForFontColorTmpValueTmpElement.getSelector() == 3) {
                    valueSerializer.writeInt8(Int8(3));
                    let valueHolderForFontColorTmpValueTmpElementForIdx3 = valueHolderForFontColorTmpValueTmpElement.getValue3()
                    valueSerializer.writeCustomObject("Any", valueHolderForFontColorTmpValueTmpElementForIdx3);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFontWeight = value.fontWeight
        if (valueHolderForFontWeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontWeightTmpValue = valueHolderForFontWeight
            if (valueHolderForFontWeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontWeightTmpValueForIdx0 = valueHolderForFontWeightTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForFontWeightTmpValueForIdx0);
            } else if (valueHolderForFontWeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontWeightTmpValueForIdx1 = valueHolderForFontWeightTmpValue.getValue1()
                valueSerializer.writeInt32(valueHolderForFontWeightTmpValueForIdx1.value);
            } else if (valueHolderForFontWeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFontWeightTmpValueForIdx2 = valueHolderForFontWeightTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForFontWeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEffectStrategy = value.effectStrategy
        if (valueHolderForEffectStrategy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEffectStrategyTmpValue = valueHolderForEffectStrategy
            valueSerializer.writeInt32(valueHolderForEffectStrategyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRenderingStrategy = value.renderingStrategy
        if (valueHolderForRenderingStrategy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRenderingStrategyTmpValue = valueHolderForRenderingStrategy
            valueSerializer.writeInt32(valueHolderForRenderingStrategyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorSymbolSpanStyle {
        var valueDeserializer: DeserializerBase = buffer
        let fontSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontSizeTmpBuf: Option<Union_Number_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontSizeTmpBuf_runtimeType))) {
            let fontSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontSizeTmpBuf_: Union_Number_String_Resource 
            if (fontSizeTmpBuf_UnionSelector == Int8(0)) {
                fontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontSizeTmpBuf_UnionSelector == Int8(1)) {
                fontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontSizeTmpBuf_UnionSelector == Int8(2)) {
                fontSizeTmpBuf_ = Union_Number_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            fontSizeTmpBuf = match (fontSizeTmpBuf_ as Union_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontSizeTmpResult: Option<Union_Number_String_Resource> = fontSizeTmpBuf
        let fontColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontColorTmpBuf: Option<ArrayList<ResourceColor>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontColorTmpBuf_runtimeType))) {
            let fontColorTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var fontColorTmpBuf_: ArrayList<ResourceColor> = ArrayList<ResourceColor>(Int64(fontColorTmpBuf_Length))
            fontColorTmpBuf_ = ArrayList<ResourceColor>(Int64(fontColorTmpBuf_Length))
            for (fontColorTmpBuf_BufCounterI in 0..fontColorTmpBuf_Length) {
                let fontColorTmpBuf_TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
                var fontColorTmpBuf_TempBuf: ResourceColor 
                if (fontColorTmpBuf_TempBufUnionSelector == Int8(0)) {
                    fontColorTmpBuf_TempBuf = ResourceColor(Color(valueDeserializer.readInt32()))
                } else if (fontColorTmpBuf_TempBufUnionSelector == Int8(1)) {
                    fontColorTmpBuf_TempBuf = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (fontColorTmpBuf_TempBufUnionSelector == Int8(2)) {
                    fontColorTmpBuf_TempBuf = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (fontColorTmpBuf_TempBufUnionSelector == Int8(3)) {
                    fontColorTmpBuf_TempBuf = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for fontColorTmpBuf_TempBuf has to be chosen through deserialisation.")
                }
                fontColorTmpBuf_[Int64(fontColorTmpBuf_BufCounterI)] = match (fontColorTmpBuf_TempBuf as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            fontColorTmpBuf = fontColorTmpBuf_
        }
        let fontColorTmpResult: Option<ArrayList<ResourceColor>> = fontColorTmpBuf
        let fontWeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontWeightTmpBuf: Option<Union_Number_FontWeight_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontWeightTmpBuf_runtimeType))) {
            let fontWeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontWeightTmpBuf_: Union_Number_FontWeight_String 
            if (fontWeightTmpBuf_UnionSelector == Int8(0)) {
                fontWeightTmpBuf_ = Union_Number_FontWeight_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontWeightTmpBuf_UnionSelector == Int8(1)) {
                fontWeightTmpBuf_ = Union_Number_FontWeight_String(FontWeight(valueDeserializer.readInt32()))
            } else if (fontWeightTmpBuf_UnionSelector == Int8(2)) {
                fontWeightTmpBuf_ = Union_Number_FontWeight_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontWeightTmpBuf_ has to be chosen through deserialisation.")
            }
            fontWeightTmpBuf = match (fontWeightTmpBuf_ as Union_Number_FontWeight_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontWeightTmpResult: Option<Union_Number_FontWeight_String> = fontWeightTmpBuf
        let effectStrategyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var effectStrategyTmpBuf: Option<SymbolEffectStrategy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(effectStrategyTmpBuf_runtimeType))) {
            effectStrategyTmpBuf = SymbolEffectStrategy(valueDeserializer.readInt32())
        }
        let effectStrategyTmpResult: Option<SymbolEffectStrategy> = effectStrategyTmpBuf
        let renderingStrategyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var renderingStrategyTmpBuf: Option<SymbolRenderingStrategy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(renderingStrategyTmpBuf_runtimeType))) {
            renderingStrategyTmpBuf = SymbolRenderingStrategy(valueDeserializer.readInt32())
        }
        let renderingStrategyTmpResult: Option<SymbolRenderingStrategy> = renderingStrategyTmpBuf
        var value: RichEditorSymbolSpanStyle = RichEditorSymbolSpanStyle(fontSizeTmpResult, fontColorTmpResult, fontWeightTmpResult, effectStrategyTmpResult, renderingStrategyTmpResult)
        return value
    }
}
