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
public interface MenuItemOptionsInterfaces <:  {
    public mut open prop startIcon: Option<ResourceStr>
    public mut open prop symbolStartIcon: Option<SymbolGlyphModifier>
    public mut open prop content: Option<ResourceStr>
    public mut open prop endIcon: Option<ResourceStr>
    public mut open prop symbolEndIcon: Option<SymbolGlyphModifier>
    public mut open prop labelInfo: Option<ResourceStr>
    public mut open prop builder: Option<CustomBuilder>
}
public open class MenuItemOptions <: MenuItemOptionsInterfaces {
    private var startIcon_container: Option<ResourceStr>
    public mut open prop startIcon: Option<ResourceStr>
    {
        get() {
            return startIcon_container
        }
        set(startIcon) {
            startIcon_container = startIcon
        }
    }
    private var symbolStartIcon_container: Option<SymbolGlyphModifier>
    public mut open prop symbolStartIcon: Option<SymbolGlyphModifier>
    {
        get() {
            return symbolStartIcon_container
        }
        set(symbolStartIcon) {
            symbolStartIcon_container = symbolStartIcon
        }
    }
    private var content_container: Option<ResourceStr>
    public mut open prop content: Option<ResourceStr>
    {
        get() {
            return content_container
        }
        set(content) {
            content_container = content
        }
    }
    private var endIcon_container: Option<ResourceStr>
    public mut open prop endIcon: Option<ResourceStr>
    {
        get() {
            return endIcon_container
        }
        set(endIcon) {
            endIcon_container = endIcon
        }
    }
    private var symbolEndIcon_container: Option<SymbolGlyphModifier>
    public mut open prop symbolEndIcon: Option<SymbolGlyphModifier>
    {
        get() {
            return symbolEndIcon_container
        }
        set(symbolEndIcon) {
            symbolEndIcon_container = symbolEndIcon
        }
    }
    private var labelInfo_container: Option<ResourceStr>
    public mut open prop labelInfo: Option<ResourceStr>
    {
        get() {
            return labelInfo_container
        }
        set(labelInfo) {
            labelInfo_container = labelInfo
        }
    }
    private var builder_container: Option<CustomBuilder>
    public mut open prop builder: Option<CustomBuilder>
    {
        get() {
            return builder_container
        }
        set(builder) {
            builder_container = builder
        }
    }
    MenuItemOptions(startIcon: Option<ResourceStr>, symbolStartIcon: Option<SymbolGlyphModifier>, content: Option<ResourceStr>, endIcon: Option<ResourceStr>, symbolEndIcon: Option<SymbolGlyphModifier>, labelInfo: Option<ResourceStr>, builder: Option<CustomBuilder>) {
        this.startIcon_container = startIcon
        this.symbolStartIcon_container = symbolStartIcon
        this.content_container = content
        this.endIcon_container = endIcon
        this.symbolEndIcon_container = symbolEndIcon
        this.labelInfo_container = labelInfo
        this.builder_container = builder
    }
}
public open class MenuItemOptions_serializer {
    public static func write(buffer: SerializerBase, value: MenuItemOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStartIcon = value.startIcon
        if (valueHolderForStartIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartIconTmpValue = valueHolderForStartIcon
            if (valueHolderForStartIconTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartIconTmpValueForIdx0 = valueHolderForStartIconTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForStartIconTmpValueForIdx0);
            } else if (valueHolderForStartIconTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartIconTmpValueForIdx1 = valueHolderForStartIconTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForStartIconTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSymbolStartIcon = value.symbolStartIcon
        if (valueHolderForSymbolStartIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSymbolStartIconTmpValue = valueHolderForSymbolStartIcon
            valueSerializer.writeCustomObject("Any", valueHolderForSymbolStartIconTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForContent = value.content
        if (valueHolderForContent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForContentTmpValue = valueHolderForContent
            if (valueHolderForContentTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForContentTmpValueForIdx0 = valueHolderForContentTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForContentTmpValueForIdx0);
            } else if (valueHolderForContentTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForContentTmpValueForIdx1 = valueHolderForContentTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForContentTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEndIcon = value.endIcon
        if (valueHolderForEndIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndIconTmpValue = valueHolderForEndIcon
            if (valueHolderForEndIconTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForEndIconTmpValueForIdx0 = valueHolderForEndIconTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForEndIconTmpValueForIdx0);
            } else if (valueHolderForEndIconTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForEndIconTmpValueForIdx1 = valueHolderForEndIconTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForEndIconTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSymbolEndIcon = value.symbolEndIcon
        if (valueHolderForSymbolEndIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSymbolEndIconTmpValue = valueHolderForSymbolEndIcon
            valueSerializer.writeCustomObject("Any", valueHolderForSymbolEndIconTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLabelInfo = value.labelInfo
        if (valueHolderForLabelInfo.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLabelInfoTmpValue = valueHolderForLabelInfo
            if (valueHolderForLabelInfoTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLabelInfoTmpValueForIdx0 = valueHolderForLabelInfoTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForLabelInfoTmpValueForIdx0);
            } else if (valueHolderForLabelInfoTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLabelInfoTmpValueForIdx1 = valueHolderForLabelInfoTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForLabelInfoTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBuilder = value.builder
        if (valueHolderForBuilder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBuilderTmpValue = valueHolderForBuilder
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForBuilderTmpValue));
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): MenuItemOptions {
        var valueDeserializer: DeserializerBase = buffer
        let startIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startIconTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startIconTmpBuf_runtimeType))) {
            let startIconTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startIconTmpBuf_: ResourceStr 
            if (startIconTmpBuf_UnionSelector == Int8(0)) {
                startIconTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startIconTmpBuf_UnionSelector == Int8(1)) {
                startIconTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for startIconTmpBuf_ has to be chosen through deserialisation.")
            }
            startIconTmpBuf = match (startIconTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startIconTmpResult: Option<ResourceStr> = startIconTmpBuf
        let symbolStartIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var symbolStartIconTmpBuf: Option<SymbolGlyphModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(symbolStartIconTmpBuf_runtimeType))) {
            symbolStartIconTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let symbolStartIconTmpResult: Option<SymbolGlyphModifier> = symbolStartIconTmpBuf
        let contentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var contentTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(contentTmpBuf_runtimeType))) {
            let contentTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var contentTmpBuf_: ResourceStr 
            if (contentTmpBuf_UnionSelector == Int8(0)) {
                contentTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (contentTmpBuf_UnionSelector == Int8(1)) {
                contentTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for contentTmpBuf_ has to be chosen through deserialisation.")
            }
            contentTmpBuf = match (contentTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let contentTmpResult: Option<ResourceStr> = contentTmpBuf
        let endIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endIconTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endIconTmpBuf_runtimeType))) {
            let endIconTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var endIconTmpBuf_: ResourceStr 
            if (endIconTmpBuf_UnionSelector == Int8(0)) {
                endIconTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endIconTmpBuf_UnionSelector == Int8(1)) {
                endIconTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for endIconTmpBuf_ has to be chosen through deserialisation.")
            }
            endIconTmpBuf = match (endIconTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endIconTmpResult: Option<ResourceStr> = endIconTmpBuf
        let symbolEndIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var symbolEndIconTmpBuf: Option<SymbolGlyphModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(symbolEndIconTmpBuf_runtimeType))) {
            symbolEndIconTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let symbolEndIconTmpResult: Option<SymbolGlyphModifier> = symbolEndIconTmpBuf
        let labelInfoTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var labelInfoTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(labelInfoTmpBuf_runtimeType))) {
            let labelInfoTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var labelInfoTmpBuf_: ResourceStr 
            if (labelInfoTmpBuf_UnionSelector == Int8(0)) {
                labelInfoTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (labelInfoTmpBuf_UnionSelector == Int8(1)) {
                labelInfoTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for labelInfoTmpBuf_ has to be chosen through deserialisation.")
            }
            labelInfoTmpBuf = match (labelInfoTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let labelInfoTmpResult: Option<ResourceStr> = labelInfoTmpBuf
        let builderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var builderTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(builderTmpBuf_runtimeType))) {
            let builderTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let builderTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let builderTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            builderTmpBuf = { => let builderTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
builderTmpBuf_BufArgsSerializer.writeInt32(builderTmpBuf_BufResource.resourceId);
builderTmpBuf_BufArgsSerializer.writePointer(builderTmpBuf_BufCall);
builderTmpBuf_BufArgsSerializer.writePointer(builderTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, builderTmpBuf_BufArgsSerializer.asBuffer(), builderTmpBuf_BufArgsSerializer.length());
builderTmpBuf_BufArgsSerializer.release();
return; }
        }
        let builderTmpResult: Option<CustomBuilder> = builderTmpBuf
        var value: MenuItemOptions = MenuItemOptions(startIconTmpResult, symbolStartIconTmpResult, contentTmpResult, endIconTmpResult, symbolEndIconTmpResult, labelInfoTmpResult, builderTmpResult)
        return value
    }
}
