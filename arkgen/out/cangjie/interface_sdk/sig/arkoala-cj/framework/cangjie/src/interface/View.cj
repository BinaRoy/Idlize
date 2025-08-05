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
public open class ViewInternal {
    public static func fromPtr(ptr: UInt64): View {
        return View(ptr)
    }
}
public open class View <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    View(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, View.getFinalizer())
    }
    View() {
        super(View.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._View_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._View_getFinalizer()
    }
    public open func create(value: UInt64): UInt64 {
        let value_casted: UInt64 = value
        return this.create_serialize(value_casted)
    }
    private func create_serialize(value: UInt64): UInt64 {
        let retval = ArkUIGeneratedNativeModule._View_create(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value)
        return retval
    }
}
public open class View_serializer {
    public static func write(buffer: SerializerBase, value: View): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): View {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ViewInternal.fromPtr(ptr)
    }
}
