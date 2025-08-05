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
public interface PixelMapMock {
    public open func release(): Unit
}
public open class PixelMapMockInternal <: MaterializedBase & PixelMapMock {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    PixelMapMockInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, PixelMapMockInternal.getFinalizer())
    }
    PixelMapMockInternal() {
        super(PixelMapMockInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._PixelMapMock_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PixelMapMock_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): PixelMapMockInternal {
        return PixelMapMockInternal(ptr)
    }
    public open func release(): Unit {
        let thisPeer = this
        thisPeer.release_serialize()
        return
    }
    private func release_serialize(): Unit {
        ArkUIGeneratedNativeModule._PixelMapMock_release(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class PixelMapMock_serializer {
    public static func write(buffer: SerializerBase, value: PixelMapMock): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PixelMapMock {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PixelMapMockInternal.fromPtr(ptr)
    }
}
