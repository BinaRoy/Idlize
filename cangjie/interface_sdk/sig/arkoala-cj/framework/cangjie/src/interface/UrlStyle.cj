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
public open class UrlStyleInternal {
    public static func fromPtr(ptr: UInt64): UrlStyle {
        return UrlStyle(false, ptr)
    }
}
public open class UrlStyle <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop url: String
    UrlStyle(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, UrlStyle.getFinalizer())
        url = this.getUrl()
    }
    UrlStyle(url: String) {
        super(false, UrlStyle.construct(url))
    }
    static func construct(url: String): UInt64 {
        let retval = ArkUIGeneratedNativeModule._UrlStyle_construct(url)
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._UrlStyle_getFinalizer()
    }
    private func getUrl(): String {
        return this.getUrl_serialize()
    }
    private func getUrl_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._UrlStyle_getUrl(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class UrlStyle_serializer {
    public static func write(buffer: SerializerBase, value: UrlStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): UrlStyle {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return UrlStyleInternal.fromPtr(ptr)
    }
}
