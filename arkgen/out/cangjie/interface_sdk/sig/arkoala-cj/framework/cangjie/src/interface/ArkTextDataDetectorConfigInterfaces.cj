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
public interface TextDataDetectorConfigInterfaces <:  {
    public mut open prop types: ArrayList<TextDataDetectorType>
    public mut open prop onDetectResultUpdate: Option<((breakpoints: String) -> Unit)>
    public mut open prop color: Option<ResourceColor>
    public mut open prop decoration: Option<DecorationStyleInterface>
    public mut open prop enablePreviewMenu: Option<Bool>
}
public open class TextDataDetectorConfig <: TextDataDetectorConfigInterfaces {
    private var types_container: ArrayList<TextDataDetectorType>
    public mut open prop types: ArrayList<TextDataDetectorType>
    {
        get() {
            return types_container
        }
        set(types) {
            types_container = types
        }
    }
    private var onDetectResultUpdate_container: Option<((breakpoints: String) -> Unit)>
    public mut open prop onDetectResultUpdate: Option<((breakpoints: String) -> Unit)>
    {
        get() {
            return onDetectResultUpdate_container
        }
        set(onDetectResultUpdate) {
            onDetectResultUpdate_container = onDetectResultUpdate
        }
    }
    private var color_container: Option<ResourceColor>
    public mut open prop color: Option<ResourceColor>
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    private var decoration_container: Option<DecorationStyleInterface>
    public mut open prop decoration: Option<DecorationStyleInterface>
    {
        get() {
            return decoration_container
        }
        set(decoration) {
            decoration_container = decoration
        }
    }
    private var enablePreviewMenu_container: Option<Bool>
    public mut open prop enablePreviewMenu: Option<Bool>
    {
        get() {
            return enablePreviewMenu_container
        }
        set(enablePreviewMenu) {
            enablePreviewMenu_container = enablePreviewMenu
        }
    }
    TextDataDetectorConfig(types: ArrayList<TextDataDetectorType>, onDetectResultUpdate: Option<((breakpoints: String) -> Unit)>, color: Option<ResourceColor>, decoration: Option<DecorationStyleInterface>, enablePreviewMenu: Option<Bool>) {
        this.types_container = types
        this.onDetectResultUpdate_container = onDetectResultUpdate
        this.color_container = color
        this.decoration_container = decoration
        this.enablePreviewMenu_container = enablePreviewMenu
    }
}
public open class TextDataDetectorConfig_serializer {
    public static func write(buffer: SerializerBase, value: TextDataDetectorConfig): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTypes = value.types
        valueSerializer.writeInt32(Int32(valueHolderForTypes.size));
        for (valueHolderForTypesCounterI in 0..valueHolderForTypes.size) {
            let valueHolderForTypesTmpElement: TextDataDetectorType = valueHolderForTypes[Int64(valueHolderForTypesCounterI)]
            valueSerializer.writeInt32(valueHolderForTypesTmpElement.value);
        }
        let valueHolderForOnDetectResultUpdate = value.onDetectResultUpdate
        if (valueHolderForOnDetectResultUpdate.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDetectResultUpdateTmpValue = valueHolderForOnDetectResultUpdate
            valueSerializer.holdAndWriteCallback(valueHolderForOnDetectResultUpdateTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColor = value.color
        if (valueHolderForColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorTmpValue = valueHolderForColor
            if (valueHolderForColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColorTmpValueForIdx0 = valueHolderForColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx0.value);
            } else if (valueHolderForColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorTmpValueForIdx1 = valueHolderForColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForColorTmpValueForIdx1);
            } else if (valueHolderForColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorTmpValueForIdx2 = valueHolderForColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForColorTmpValueForIdx2);
            } else if (valueHolderForColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForColorTmpValueForIdx3 = valueHolderForColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDecoration = value.decoration
        if (valueHolderForDecoration.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDecorationTmpValue = valueHolderForDecoration
            DecorationStyleInterface_serializer.write(valueSerializer, valueHolderForDecorationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnablePreviewMenu = value.enablePreviewMenu
        if (valueHolderForEnablePreviewMenu.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnablePreviewMenuTmpValue = valueHolderForEnablePreviewMenu
            valueSerializer.writeBoolean(valueHolderForEnablePreviewMenuTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextDataDetectorConfig {
        var valueDeserializer: DeserializerBase = buffer
        let typesTmpBufLength: Int32 = valueDeserializer.readInt32()
        var typesTmpBuf: ArrayList<TextDataDetectorType> = ArrayList<TextDataDetectorType>(Int64(typesTmpBufLength))
        typesTmpBuf = ArrayList<TextDataDetectorType>(Int64(typesTmpBufLength))
        for (typesTmpBufBufCounterI in 0..typesTmpBufLength) {
            typesTmpBuf[Int64(typesTmpBufBufCounterI)] = TextDataDetectorType(valueDeserializer.readInt32())
        }
        let typesTmpResult: ArrayList<TextDataDetectorType> = typesTmpBuf
        let onDetectResultUpdateTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDetectResultUpdateTmpBuf: Option<((breakpoints: String) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDetectResultUpdateTmpBuf_runtimeType))) {
            let onDetectResultUpdateTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDetectResultUpdateTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDetectResultUpdateTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDetectResultUpdateTmpBuf = {breakpoints: String => let onDetectResultUpdateTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDetectResultUpdateTmpBuf_BufArgsSerializer.writeInt32(onDetectResultUpdateTmpBuf_BufResource.resourceId);
onDetectResultUpdateTmpBuf_BufArgsSerializer.writePointer(onDetectResultUpdateTmpBuf_BufCall);
onDetectResultUpdateTmpBuf_BufArgsSerializer.writePointer(onDetectResultUpdateTmpBuf_BufCallSync);
onDetectResultUpdateTmpBuf_BufArgsSerializer.writeString(breakpoints);
InteropNativeModule._CallCallback(814634522, onDetectResultUpdateTmpBuf_BufArgsSerializer.asBuffer(), onDetectResultUpdateTmpBuf_BufArgsSerializer.length());
onDetectResultUpdateTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDetectResultUpdateTmpResult: Option<((breakpoints: String) -> Unit)> = onDetectResultUpdateTmpBuf
        let colorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorTmpBuf_runtimeType))) {
            let colorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var colorTmpBuf_: ResourceColor 
            if (colorTmpBuf_UnionSelector == Int8(0)) {
                colorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (colorTmpBuf_UnionSelector == Int8(1)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(2)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(3)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for colorTmpBuf_ has to be chosen through deserialisation.")
            }
            colorTmpBuf = match (colorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorTmpResult: Option<ResourceColor> = colorTmpBuf
        let decorationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var decorationTmpBuf: Option<DecorationStyleInterface> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(decorationTmpBuf_runtimeType))) {
            decorationTmpBuf = DecorationStyleInterface_serializer.read(valueDeserializer)
        }
        let decorationTmpResult: Option<DecorationStyleInterface> = decorationTmpBuf
        let enablePreviewMenuTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enablePreviewMenuTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enablePreviewMenuTmpBuf_runtimeType))) {
            enablePreviewMenuTmpBuf = valueDeserializer.readBoolean()
        }
        let enablePreviewMenuTmpResult: Option<Bool> = enablePreviewMenuTmpBuf
        var value: TextDataDetectorConfig = TextDataDetectorConfig(typesTmpResult, onDetectResultUpdateTmpResult, colorTmpResult, decorationTmpResult, enablePreviewMenuTmpResult)
        return value
    }
}
