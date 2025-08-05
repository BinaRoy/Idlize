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
public open class WebResourceResponseInternal {
    public static func fromPtr(ptr: UInt64): WebResourceResponse {
        return WebResourceResponse(ptr)
    }
}
public open class WebResourceResponse <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    WebResourceResponse(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, WebResourceResponse.getFinalizer())
    }
    WebResourceResponse() {
        super(WebResourceResponse.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._WebResourceResponse_getFinalizer()
    }
    public open func getResponseData(): String {
        return this.getResponseData_serialize()
    }
    public open func getResponseDataEx(): Option<Union_String_Number_Buffer_Resource> {
        return this.getResponseDataEx_serialize()
    }
    public open func getResponseEncoding(): String {
        return this.getResponseEncoding_serialize()
    }
    public open func getResponseMimeType(): String {
        return this.getResponseMimeType_serialize()
    }
    public open func getReasonMessage(): String {
        return this.getReasonMessage_serialize()
    }
    public open func getResponseHeader(): ArrayList<Header> {
        return this.getResponseHeader_serialize()
    }
    public open func getResponseCode(): Float64 {
        return this.getResponseCode_serialize()
    }
    public open func setResponseData(data: Union_String_Number_Resource_Buffer): Unit {
        let data_casted: Union_String_Number_Resource_Buffer = data
        let thisPeer = this
        thisPeer.setResponseData_serialize(data_casted)
        return
    }
    public open func setResponseEncoding(encoding: String): Unit {
        let encoding_casted: String = encoding
        let thisPeer = this
        thisPeer.setResponseEncoding_serialize(encoding_casted)
        return
    }
    public open func setResponseMimeType(mimeType: String): Unit {
        let mimeType_casted: String = mimeType
        let thisPeer = this
        thisPeer.setResponseMimeType_serialize(mimeType_casted)
        return
    }
    public open func setReasonMessage(reason: String): Unit {
        let reason_casted: String = reason
        let thisPeer = this
        thisPeer.setReasonMessage_serialize(reason_casted)
        return
    }
    public open func setResponseHeader(header: ArrayList<Header>): Unit {
        let header_casted: ArrayList<Header> = header
        let thisPeer = this
        thisPeer.setResponseHeader_serialize(header_casted)
        return
    }
    public open func setResponseCode(code: Float64): Unit {
        let code_casted: Float64 = code
        let thisPeer = this
        thisPeer.setResponseCode_serialize(code_casted)
        return
    }
    public open func setResponseIsReady(IsReady: Bool): Unit {
        let IsReady_casted: Bool = IsReady
        let thisPeer = this
        thisPeer.setResponseIsReady_serialize(IsReady_casted)
        return
    }
    public open func getResponseIsReady(): Bool {
        return this.getResponseIsReady_serialize()
    }
    private func getResponseData_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_getResponseData(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getResponseDataEx_serialize(): Option<Union_String_Number_Buffer_Resource> {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_getResponseDataEx(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Union_String_Number_Buffer_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_UnionSelector: Int8 = retvalDeserializer.readInt8()
            var buffer_: Union_String_Number_Buffer_Resource 
            if (buffer_UnionSelector == Int8(0)) {
                buffer_ = Union_String_Number_Buffer_Resource(match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(1)) {
                buffer_ = Union_String_Number_Buffer_Resource(match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(2)) {
                buffer_ = Union_String_Number_Buffer_Resource(match (retvalDeserializer.readBuffer() as Array<UInt8>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(3)) {
                buffer_ = Union_String_Number_Buffer_Resource(match (retvalDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for buffer_ has to be chosen through deserialisation.")
            }
            buffer = match (buffer_ as Union_String_Number_Buffer_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Union_String_Number_Buffer_Resource> = buffer
        return returnResult
    }
    private func getResponseEncoding_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_getResponseEncoding(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getResponseMimeType_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_getResponseMimeType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getReasonMessage_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_getReasonMessage(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getResponseHeader_serialize(): ArrayList<Header> {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_getResponseHeader(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<Header> = ArrayList<Header>(Int64(bufferLength))
        buffer = ArrayList<Header>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = Header_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<Header> = buffer
        return returnResult
    }
    private func getResponseCode_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_getResponseCode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setResponseData_serialize(data: Union_String_Number_Resource_Buffer): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (data.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dataForIdx0 = data.getValue0()
            thisSerializer.writeString(dataForIdx0);
        } else if (data.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dataForIdx1 = data.getValue1()
            thisSerializer.writeNumber(dataForIdx1);
        } else if (data.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let dataForIdx2 = data.getValue2()
            thisSerializer.writeCustomObject("Any", dataForIdx2);
        } else if (data.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let dataForIdx3 = data.getValue3()
            thisSerializer.writeBuffer(dataForIdx3);
        }
        ArkUIGeneratedNativeModule._WebResourceResponse_setResponseData(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setResponseEncoding_serialize(encoding: String): Unit {
        ArkUIGeneratedNativeModule._WebResourceResponse_setResponseEncoding(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, encoding);
    }
    private func setResponseMimeType_serialize(mimeType: String): Unit {
        ArkUIGeneratedNativeModule._WebResourceResponse_setResponseMimeType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, mimeType);
    }
    private func setReasonMessage_serialize(reason: String): Unit {
        ArkUIGeneratedNativeModule._WebResourceResponse_setReasonMessage(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, reason);
    }
    private func setResponseHeader_serialize(header: ArrayList<Header>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(header.size));
        for (headerCounterI in 0..header.size) {
            let headerTmpElement: Header = header[Int64(headerCounterI)]
            Header_serializer.write(thisSerializer, headerTmpElement);
        }
        ArkUIGeneratedNativeModule._WebResourceResponse_setResponseHeader(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setResponseCode_serialize(code: Float64): Unit {
        ArkUIGeneratedNativeModule._WebResourceResponse_setResponseCode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, code);
    }
    private func setResponseIsReady_serialize(IsReady: Bool): Unit {
        ArkUIGeneratedNativeModule._WebResourceResponse_setResponseIsReady(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (IsReady) { Int32(1) } else { Int32(0) });
    }
    private func getResponseIsReady_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._WebResourceResponse_getResponseIsReady(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class WebResourceResponse_serializer {
    public static func write(buffer: SerializerBase, value: WebResourceResponse): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): WebResourceResponse {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return WebResourceResponseInternal.fromPtr(ptr)
    }
}
