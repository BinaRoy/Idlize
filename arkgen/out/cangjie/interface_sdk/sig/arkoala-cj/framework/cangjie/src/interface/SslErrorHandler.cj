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
public open class SslErrorHandlerInternal {
    public static func fromPtr(ptr: UInt64): SslErrorHandler {
        return SslErrorHandler(ptr)
    }
}
public open class SslErrorHandler <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    SslErrorHandler(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, SslErrorHandler.getFinalizer())
    }
    SslErrorHandler() {
        super(SslErrorHandler.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._SslErrorHandler_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._SslErrorHandler_getFinalizer()
    }
    public open func handleConfirm(): Unit {
        let thisPeer = this
        thisPeer.handleConfirm_serialize()
        return
    }
    public open func handleCancel(): Unit {
        let thisPeer = this
        thisPeer.handleCancel0_serialize()
        return
    }
    public open func handleCancel(abortLoading: Bool): Unit {
        let abortLoading_casted: Bool = abortLoading
        let thisPeer = this
        thisPeer.handleCancel1_serialize(abortLoading_casted)
        return
    }
    private func handleConfirm_serialize(): Unit {
        ArkUIGeneratedNativeModule._SslErrorHandler_handleConfirm(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func handleCancel0_serialize(): Unit {
        ArkUIGeneratedNativeModule._SslErrorHandler_handleCancel0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func handleCancel1_serialize(abortLoading: Bool): Unit {
        ArkUIGeneratedNativeModule._SslErrorHandler_handleCancel1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (abortLoading) { Int32(1) } else { Int32(0) });
    }
}
public open class SslErrorHandler_serializer {
    public static func write(buffer: SerializerBase, value: SslErrorHandler): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): SslErrorHandler {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SslErrorHandlerInternal.fromPtr(ptr)
    }
}
