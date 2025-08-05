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
public open class TextTimerControllerInternal {
    public static func fromPtr(ptr: UInt64): TextTimerController {
        return TextTimerController(ptr)
    }
}
public open class TextTimerController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    TextTimerController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TextTimerController.getFinalizer())
    }
    TextTimerController() {
        super(TextTimerController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TextTimerController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextTimerController_getFinalizer()
    }
    public open func start(): Unit {
        let thisPeer = this
        thisPeer.start_serialize()
        return
    }
    public open func pause(): Unit {
        let thisPeer = this
        thisPeer.pause_serialize()
        return
    }
    public open func reset(): Unit {
        let thisPeer = this
        thisPeer.reset_serialize()
        return
    }
    private func start_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextTimerController_start(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func pause_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextTimerController_pause(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func reset_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextTimerController_reset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class TextTimerController_serializer {
    public static func write(buffer: SerializerBase, value: TextTimerController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextTimerController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextTimerControllerInternal.fromPtr(ptr)
    }
}
