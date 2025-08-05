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
public open class HttpAuthHandlerInternal {
    public static func fromPtr(ptr: UInt64): HttpAuthHandler {
        return HttpAuthHandler(ptr)
    }
}
public open class HttpAuthHandler <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    HttpAuthHandler(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, HttpAuthHandler.getFinalizer())
    }
    HttpAuthHandler() {
        super(HttpAuthHandler.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._HttpAuthHandler_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._HttpAuthHandler_getFinalizer()
    }
    public open func confirm(userName: String, password: String): Bool {
        let userName_casted: String = userName
        let password_casted: String = password
        return this.confirm_serialize(userName_casted, password_casted)
    }
    public open func cancel(): Unit {
        let thisPeer = this
        thisPeer.cancel_serialize()
        return
    }
    public open func isHttpAuthInfoSaved(): Bool {
        return this.isHttpAuthInfoSaved_serialize()
    }
    private func confirm_serialize(userName: String, password: String): Bool {
        let retval = ArkUIGeneratedNativeModule._HttpAuthHandler_confirm(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, userName, password)
        return retval
    }
    private func cancel_serialize(): Unit {
        ArkUIGeneratedNativeModule._HttpAuthHandler_cancel(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func isHttpAuthInfoSaved_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._HttpAuthHandler_isHttpAuthInfoSaved(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class HttpAuthHandler_serializer {
    public static func write(buffer: SerializerBase, value: HttpAuthHandler): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): HttpAuthHandler {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return HttpAuthHandlerInternal.fromPtr(ptr)
    }
}
