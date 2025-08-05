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
public open class WebResourceRequestInternal {
    public static func fromPtr(ptr: UInt64): WebResourceRequest {
        return WebResourceRequest(ptr)
    }
}
public open class WebResourceRequest <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    WebResourceRequest(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, WebResourceRequest.getFinalizer())
    }
    WebResourceRequest() {
        super(WebResourceRequest.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._WebResourceRequest_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._WebResourceRequest_getFinalizer()
    }
    public open func getRequestHeader(): ArrayList<Header> {
        return this.getRequestHeader_serialize()
    }
    public open func getRequestUrl(): String {
        return this.getRequestUrl_serialize()
    }
    public open func isRequestGesture(): Bool {
        return this.isRequestGesture_serialize()
    }
    public open func isMainFrame(): Bool {
        return this.isMainFrame_serialize()
    }
    public open func isRedirect(): Bool {
        return this.isRedirect_serialize()
    }
    public open func getRequestMethod(): String {
        return this.getRequestMethod_serialize()
    }
    private func getRequestHeader_serialize(): ArrayList<Header> {
        let retval = ArkUIGeneratedNativeModule._WebResourceRequest_getRequestHeader(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
    private func getRequestUrl_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebResourceRequest_getRequestUrl(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func isRequestGesture_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._WebResourceRequest_isRequestGesture(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func isMainFrame_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._WebResourceRequest_isMainFrame(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func isRedirect_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._WebResourceRequest_isRedirect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getRequestMethod_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebResourceRequest_getRequestMethod(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class WebResourceRequest_serializer {
    public static func write(buffer: SerializerBase, value: WebResourceRequest): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): WebResourceRequest {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return WebResourceRequestInternal.fromPtr(ptr)
    }
}
