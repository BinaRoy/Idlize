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
public interface MenuItemGroupOptionsInterfaces <:  {
    public mut open prop header: Option<Union_ResourceStr_CustomBuilder>
    public mut open prop footer: Option<Union_ResourceStr_CustomBuilder>
}
public open class MenuItemGroupOptions <: MenuItemGroupOptionsInterfaces {
    private var header_container: Option<Union_ResourceStr_CustomBuilder>
    public mut open prop header: Option<Union_ResourceStr_CustomBuilder>
    {
        get() {
            return header_container
        }
        set(header) {
            header_container = header
        }
    }
    private var footer_container: Option<Union_ResourceStr_CustomBuilder>
    public mut open prop footer: Option<Union_ResourceStr_CustomBuilder>
    {
        get() {
            return footer_container
        }
        set(footer) {
            footer_container = footer
        }
    }
    MenuItemGroupOptions(header: Option<Union_ResourceStr_CustomBuilder>, footer: Option<Union_ResourceStr_CustomBuilder>) {
        this.header_container = header
        this.footer_container = footer
    }
}
public open class MenuItemGroupOptions_serializer {
    public static func write(buffer: SerializerBase, value: MenuItemGroupOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHeader = value.header
        if (valueHolderForHeader.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeaderTmpValue = valueHolderForHeader
            if (valueHolderForHeaderTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHeaderTmpValueForIdx0 = valueHolderForHeaderTmpValue.getValue0()
                if (valueHolderForHeaderTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForHeaderTmpValueForIdx0ForIdx0 = valueHolderForHeaderTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForHeaderTmpValueForIdx0ForIdx0);
                } else if (valueHolderForHeaderTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForHeaderTmpValueForIdx0ForIdx1 = valueHolderForHeaderTmpValueForIdx0.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForHeaderTmpValueForIdx0ForIdx1);
                }
            } else if (valueHolderForHeaderTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHeaderTmpValueForIdx1 = valueHolderForHeaderTmpValue.getValue1()
                valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForHeaderTmpValueForIdx1));
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFooter = value.footer
        if (valueHolderForFooter.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFooterTmpValue = valueHolderForFooter
            if (valueHolderForFooterTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFooterTmpValueForIdx0 = valueHolderForFooterTmpValue.getValue0()
                if (valueHolderForFooterTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForFooterTmpValueForIdx0ForIdx0 = valueHolderForFooterTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForFooterTmpValueForIdx0ForIdx0);
                } else if (valueHolderForFooterTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForFooterTmpValueForIdx0ForIdx1 = valueHolderForFooterTmpValueForIdx0.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForFooterTmpValueForIdx0ForIdx1);
                }
            } else if (valueHolderForFooterTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFooterTmpValueForIdx1 = valueHolderForFooterTmpValue.getValue1()
                valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForFooterTmpValueForIdx1));
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): MenuItemGroupOptions {
        var valueDeserializer: DeserializerBase = buffer
        let headerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var headerTmpBuf: Option<Union_ResourceStr_CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(headerTmpBuf_runtimeType))) {
            let headerTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var headerTmpBuf_: Union_ResourceStr_CustomBuilder 
            if (headerTmpBuf_UnionSelector == Int8(0)) {
                let headerTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var headerTmpBuf_BufU: ResourceStr 
                if (headerTmpBuf_BufUUnionSelector == Int8(0)) {
                    headerTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (headerTmpBuf_BufUUnionSelector == Int8(1)) {
                    headerTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for headerTmpBuf_BufU has to be chosen through deserialisation.")
                }
                headerTmpBuf_ = Union_ResourceStr_CustomBuilder(match (headerTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (headerTmpBuf_UnionSelector == Int8(1)) {
                let headerTmpBuf_BufUBufResource: CallbackResource = valueDeserializer.readCallbackResource()
                let headerTmpBuf_BufUBufCall: UInt64 = valueDeserializer.readPointer()
                let headerTmpBuf_BufUBufCallSync: UInt64 = valueDeserializer.readPointer()
                headerTmpBuf_ = Union_ResourceStr_CustomBuilder({ => let headerTmpBuf_BufUBufArgsSerializer: SerializerBase = SerializerBase.hold();
headerTmpBuf_BufUBufArgsSerializer.writeInt32(headerTmpBuf_BufUBufResource.resourceId);
headerTmpBuf_BufUBufArgsSerializer.writePointer(headerTmpBuf_BufUBufCall);
headerTmpBuf_BufUBufArgsSerializer.writePointer(headerTmpBuf_BufUBufCallSync);
InteropNativeModule._CallCallback(737226752, headerTmpBuf_BufUBufArgsSerializer.asBuffer(), headerTmpBuf_BufUBufArgsSerializer.length());
headerTmpBuf_BufUBufArgsSerializer.release();
return; })
            } else {
                throw Exception("One of the branches for headerTmpBuf_ has to be chosen through deserialisation.")
            }
            headerTmpBuf = match (headerTmpBuf_ as Union_ResourceStr_CustomBuilder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let headerTmpResult: Option<Union_ResourceStr_CustomBuilder> = headerTmpBuf
        let footerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var footerTmpBuf: Option<Union_ResourceStr_CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(footerTmpBuf_runtimeType))) {
            let footerTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var footerTmpBuf_: Union_ResourceStr_CustomBuilder 
            if (footerTmpBuf_UnionSelector == Int8(0)) {
                let footerTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var footerTmpBuf_BufU: ResourceStr 
                if (footerTmpBuf_BufUUnionSelector == Int8(0)) {
                    footerTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (footerTmpBuf_BufUUnionSelector == Int8(1)) {
                    footerTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for footerTmpBuf_BufU has to be chosen through deserialisation.")
                }
                footerTmpBuf_ = Union_ResourceStr_CustomBuilder(match (footerTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (footerTmpBuf_UnionSelector == Int8(1)) {
                let footerTmpBuf_BufUBufResource: CallbackResource = valueDeserializer.readCallbackResource()
                let footerTmpBuf_BufUBufCall: UInt64 = valueDeserializer.readPointer()
                let footerTmpBuf_BufUBufCallSync: UInt64 = valueDeserializer.readPointer()
                footerTmpBuf_ = Union_ResourceStr_CustomBuilder({ => let footerTmpBuf_BufUBufArgsSerializer: SerializerBase = SerializerBase.hold();
footerTmpBuf_BufUBufArgsSerializer.writeInt32(footerTmpBuf_BufUBufResource.resourceId);
footerTmpBuf_BufUBufArgsSerializer.writePointer(footerTmpBuf_BufUBufCall);
footerTmpBuf_BufUBufArgsSerializer.writePointer(footerTmpBuf_BufUBufCallSync);
InteropNativeModule._CallCallback(737226752, footerTmpBuf_BufUBufArgsSerializer.asBuffer(), footerTmpBuf_BufUBufArgsSerializer.length());
footerTmpBuf_BufUBufArgsSerializer.release();
return; })
            } else {
                throw Exception("One of the branches for footerTmpBuf_ has to be chosen through deserialisation.")
            }
            footerTmpBuf = match (footerTmpBuf_ as Union_ResourceStr_CustomBuilder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let footerTmpResult: Option<Union_ResourceStr_CustomBuilder> = footerTmpBuf
        var value: MenuItemGroupOptions = MenuItemGroupOptions(headerTmpResult, footerTmpResult)
        return value
    }
}
