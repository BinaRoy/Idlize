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
public open class ControllerHandlerInternal {
    public static func fromPtr(ptr: UInt64): ControllerHandler {
        return ControllerHandler(ptr)
    }
}
public open class ControllerHandler <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    ControllerHandler(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ControllerHandler.getFinalizer())
    }
    ControllerHandler() {
        super(ControllerHandler.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ControllerHandler_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ControllerHandler_getFinalizer()
    }
    public open func setWebController(controller: WebviewController): Unit {
        let controller_casted: WebviewController = controller
        let thisPeer = this
        thisPeer.setWebController_serialize(controller_casted)
        return
    }
    private func setWebController_serialize(controller: WebviewController): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", controller);
        ArkUIGeneratedNativeModule._ControllerHandler_setWebController(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class ControllerHandler_serializer {
    public static func write(buffer: SerializerBase, value: ControllerHandler): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ControllerHandler {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ControllerHandlerInternal.fromPtr(ptr)
    }
}
