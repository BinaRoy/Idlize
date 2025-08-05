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
public open class WebResourceErrorInternal {
    public static func fromPtr(ptr: UInt64): WebResourceError {
        return WebResourceError(ptr)
    }
}
public open class WebResourceError <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    WebResourceError(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, WebResourceError.getFinalizer())
    }
    WebResourceError() {
        super(WebResourceError.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._WebResourceError_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._WebResourceError_getFinalizer()
    }
    public open func getErrorInfo(): String {
        return this.getErrorInfo_serialize()
    }
    public open func getErrorCode(): Float64 {
        return this.getErrorCode_serialize()
    }
    private func getErrorInfo_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebResourceError_getErrorInfo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getErrorCode_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._WebResourceError_getErrorCode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class WebResourceError_serializer {
    public static func write(buffer: SerializerBase, value: WebResourceError): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): WebResourceError {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return WebResourceErrorInternal.fromPtr(ptr)
    }
}
