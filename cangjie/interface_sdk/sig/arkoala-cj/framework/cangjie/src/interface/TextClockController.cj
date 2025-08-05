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
public open class TextClockControllerInternal {
    public static func fromPtr(ptr: UInt64): TextClockController {
        return TextClockController(ptr)
    }
}
public open class TextClockController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    TextClockController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TextClockController.getFinalizer())
    }
    TextClockController() {
        super(TextClockController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TextClockController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextClockController_getFinalizer()
    }
    public open func start(): Unit {
        let thisPeer = this
        thisPeer.start_serialize()
        return
    }
    public open func stop(): Unit {
        let thisPeer = this
        thisPeer.stop_serialize()
        return
    }
    private func start_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextClockController_start(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func stop_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextClockController_stop(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class TextClockController_serializer {
    public static func write(buffer: SerializerBase, value: TextClockController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextClockController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextClockControllerInternal.fromPtr(ptr)
    }
}
