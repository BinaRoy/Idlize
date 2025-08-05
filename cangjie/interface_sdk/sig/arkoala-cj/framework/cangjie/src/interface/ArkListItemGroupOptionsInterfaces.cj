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
public interface ListItemGroupOptionsInterfaces <:  {
    public mut open prop header: Option<CustomBuilder>
    public mut open prop headerComponent: Option<ComponentContent>
    public mut open prop footer: Option<CustomBuilder>
    public mut open prop footerComponent: Option<ComponentContent>
    public mut open prop space: Option<Union_Number_String>
    public mut open prop style: Option<ListItemGroupStyle>
}
public open class ListItemGroupOptions <: ListItemGroupOptionsInterfaces {
    private var header_container: Option<CustomBuilder>
    public mut open prop header: Option<CustomBuilder>
    {
        get() {
            return header_container
        }
        set(header) {
            header_container = header
        }
    }
    private var headerComponent_container: Option<ComponentContent>
    public mut open prop headerComponent: Option<ComponentContent>
    {
        get() {
            return headerComponent_container
        }
        set(headerComponent) {
            headerComponent_container = headerComponent
        }
    }
    private var footer_container: Option<CustomBuilder>
    public mut open prop footer: Option<CustomBuilder>
    {
        get() {
            return footer_container
        }
        set(footer) {
            footer_container = footer
        }
    }
    private var footerComponent_container: Option<ComponentContent>
    public mut open prop footerComponent: Option<ComponentContent>
    {
        get() {
            return footerComponent_container
        }
        set(footerComponent) {
            footerComponent_container = footerComponent
        }
    }
    private var space_container: Option<Union_Number_String>
    public mut open prop space: Option<Union_Number_String>
    {
        get() {
            return space_container
        }
        set(space) {
            space_container = space
        }
    }
    private var style_container: Option<ListItemGroupStyle>
    public mut open prop style: Option<ListItemGroupStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    ListItemGroupOptions(header: Option<CustomBuilder>, headerComponent: Option<ComponentContent>, footer: Option<CustomBuilder>, footerComponent: Option<ComponentContent>, space: Option<Union_Number_String>, style: Option<ListItemGroupStyle>) {
        this.header_container = header
        this.headerComponent_container = headerComponent
        this.footer_container = footer
        this.footerComponent_container = footerComponent
        this.space_container = space
        this.style_container = style
    }
}
public open class ListItemGroupOptions_serializer {
    public static func write(buffer: SerializerBase, value: ListItemGroupOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHeader = value.header
        if (valueHolderForHeader.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeaderTmpValue = valueHolderForHeader
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForHeaderTmpValue));
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeaderComponent = value.headerComponent
        if (valueHolderForHeaderComponent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeaderComponentTmpValue = valueHolderForHeaderComponent
            valueSerializer.writeCustomObject("Any", valueHolderForHeaderComponentTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFooter = value.footer
        if (valueHolderForFooter.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFooterTmpValue = valueHolderForFooter
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForFooterTmpValue));
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFooterComponent = value.footerComponent
        if (valueHolderForFooterComponent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFooterComponentTmpValue = valueHolderForFooterComponent
            valueSerializer.writeCustomObject("Any", valueHolderForFooterComponentTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSpace = value.space
        if (valueHolderForSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSpaceTmpValue = valueHolderForSpace
            if (valueHolderForSpaceTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSpaceTmpValueForIdx0 = valueHolderForSpaceTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForSpaceTmpValueForIdx0);
            } else if (valueHolderForSpaceTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSpaceTmpValueForIdx1 = valueHolderForSpaceTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForSpaceTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ListItemGroupOptions {
        var valueDeserializer: DeserializerBase = buffer
        let headerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var headerTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(headerTmpBuf_runtimeType))) {
            let headerTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let headerTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let headerTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            headerTmpBuf = { => let headerTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
headerTmpBuf_BufArgsSerializer.writeInt32(headerTmpBuf_BufResource.resourceId);
headerTmpBuf_BufArgsSerializer.writePointer(headerTmpBuf_BufCall);
headerTmpBuf_BufArgsSerializer.writePointer(headerTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, headerTmpBuf_BufArgsSerializer.asBuffer(), headerTmpBuf_BufArgsSerializer.length());
headerTmpBuf_BufArgsSerializer.release();
return; }
        }
        let headerTmpResult: Option<CustomBuilder> = headerTmpBuf
        let headerComponentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var headerComponentTmpBuf: Option<ComponentContent> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(headerComponentTmpBuf_runtimeType))) {
            headerComponentTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let headerComponentTmpResult: Option<ComponentContent> = headerComponentTmpBuf
        let footerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var footerTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(footerTmpBuf_runtimeType))) {
            let footerTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let footerTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let footerTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            footerTmpBuf = { => let footerTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
footerTmpBuf_BufArgsSerializer.writeInt32(footerTmpBuf_BufResource.resourceId);
footerTmpBuf_BufArgsSerializer.writePointer(footerTmpBuf_BufCall);
footerTmpBuf_BufArgsSerializer.writePointer(footerTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, footerTmpBuf_BufArgsSerializer.asBuffer(), footerTmpBuf_BufArgsSerializer.length());
footerTmpBuf_BufArgsSerializer.release();
return; }
        }
        let footerTmpResult: Option<CustomBuilder> = footerTmpBuf
        let footerComponentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var footerComponentTmpBuf: Option<ComponentContent> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(footerComponentTmpBuf_runtimeType))) {
            footerComponentTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let footerComponentTmpResult: Option<ComponentContent> = footerComponentTmpBuf
        let spaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var spaceTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(spaceTmpBuf_runtimeType))) {
            let spaceTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var spaceTmpBuf_: Union_Number_String 
            if (spaceTmpBuf_UnionSelector == Int8(0)) {
                spaceTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (spaceTmpBuf_UnionSelector == Int8(1)) {
                spaceTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for spaceTmpBuf_ has to be chosen through deserialisation.")
            }
            spaceTmpBuf = match (spaceTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let spaceTmpResult: Option<Union_Number_String> = spaceTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<ListItemGroupStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = ListItemGroupStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<ListItemGroupStyle> = styleTmpBuf
        var value: ListItemGroupOptions = ListItemGroupOptions(headerTmpResult, headerComponentTmpResult, footerTmpResult, footerComponentTmpResult, spaceTmpResult, styleTmpResult)
        return value
    }
}
