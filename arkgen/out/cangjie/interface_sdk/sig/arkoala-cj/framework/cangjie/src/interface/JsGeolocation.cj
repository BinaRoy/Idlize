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
public open class JsGeolocationInternal {
    public static func fromPtr(ptr: UInt64): JsGeolocation {
        return JsGeolocation(ptr)
    }
}
public open class JsGeolocation <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    JsGeolocation(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, JsGeolocation.getFinalizer())
    }
    JsGeolocation() {
        super(JsGeolocation.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._JsGeolocation_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._JsGeolocation_getFinalizer()
    }
    public open func invoke(origin: String, allow: Bool, retain: Bool): Unit {
        let origin_casted: String = origin
        let allow_casted: Bool = allow
        let retain_casted: Bool = retain
        let thisPeer = this
        thisPeer.invoke_serialize(origin_casted, allow_casted, retain_casted)
        return
    }
    private func invoke_serialize(origin: String, allow: Bool, retain: Bool): Unit {
        ArkUIGeneratedNativeModule._JsGeolocation_invoke(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, origin, if (allow) { Int32(1) } else { Int32(0) }, if (retain) { Int32(1) } else { Int32(0) });
    }
}
public open class JsGeolocation_serializer {
    public static func write(buffer: SerializerBase, value: JsGeolocation): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): JsGeolocation {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return JsGeolocationInternal.fromPtr(ptr)
    }
}
