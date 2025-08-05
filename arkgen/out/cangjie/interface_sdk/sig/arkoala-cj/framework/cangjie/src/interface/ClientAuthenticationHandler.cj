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
public open class ClientAuthenticationHandlerInternal {
    public static func fromPtr(ptr: UInt64): ClientAuthenticationHandler {
        return ClientAuthenticationHandler(ptr)
    }
}
public open class ClientAuthenticationHandler <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    ClientAuthenticationHandler(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ClientAuthenticationHandler.getFinalizer())
    }
    ClientAuthenticationHandler() {
        super(ClientAuthenticationHandler.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ClientAuthenticationHandler_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ClientAuthenticationHandler_getFinalizer()
    }
    public open func confirm(priKeyFile: String, certChainFile: String): Unit {
        let priKeyFile_casted: String = priKeyFile
        let certChainFile_casted: String = certChainFile
        let thisPeer = this
        thisPeer.confirm0_serialize(priKeyFile_casted, certChainFile_casted)
        return
    }
    public open func confirm(authUri: String): Unit {
        let authUri_casted: String = authUri
        let thisPeer = this
        thisPeer.confirm1_serialize(authUri_casted)
        return
    }
    public open func cancel(): Unit {
        let thisPeer = this
        thisPeer.cancel_serialize()
        return
    }
    public open func ignore(): Unit {
        let thisPeer = this
        thisPeer.ignore_serialize()
        return
    }
    private func confirm0_serialize(priKeyFile: String, certChainFile: String): Unit {
        ArkUIGeneratedNativeModule._ClientAuthenticationHandler_confirm0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, priKeyFile, certChainFile);
    }
    private func confirm1_serialize(authUri: String): Unit {
        ArkUIGeneratedNativeModule._ClientAuthenticationHandler_confirm1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, authUri);
    }
    private func cancel_serialize(): Unit {
        ArkUIGeneratedNativeModule._ClientAuthenticationHandler_cancel(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func ignore_serialize(): Unit {
        ArkUIGeneratedNativeModule._ClientAuthenticationHandler_ignore(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class ClientAuthenticationHandler_serializer {
    public static func write(buffer: SerializerBase, value: ClientAuthenticationHandler): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ClientAuthenticationHandler {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ClientAuthenticationHandlerInternal.fromPtr(ptr)
    }
}
