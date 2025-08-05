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
public open class WebKeyboardControllerInternal {
    public static func fromPtr(ptr: UInt64): WebKeyboardController {
        return WebKeyboardController(ptr)
    }
}
public open class WebKeyboardController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    WebKeyboardController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, WebKeyboardController.getFinalizer())
    }
    WebKeyboardController() {
        super(WebKeyboardController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._WebKeyboardController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._WebKeyboardController_getFinalizer()
    }
    public open func insertText(text: String): Unit {
        let text_casted: String = text
        let thisPeer = this
        thisPeer.insertText_serialize(text_casted)
        return
    }
    public open func deleteForward(length: Int32): Unit {
        let length_casted: Int32 = length
        let thisPeer = this
        thisPeer.deleteForward_serialize(length_casted)
        return
    }
    public open func deleteBackward(length: Int32): Unit {
        let length_casted: Int32 = length
        let thisPeer = this
        thisPeer.deleteBackward_serialize(length_casted)
        return
    }
    public open func sendFunctionKey(key: Int32): Unit {
        let key_casted: Int32 = key
        let thisPeer = this
        thisPeer.sendFunctionKey_serialize(key_casted)
        return
    }
    public open func close(): Unit {
        let thisPeer = this
        thisPeer.close_serialize()
        return
    }
    private func insertText_serialize(text: String): Unit {
        ArkUIGeneratedNativeModule._WebKeyboardController_insertText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, text);
    }
    private func deleteForward_serialize(length: Int32): Unit {
        ArkUIGeneratedNativeModule._WebKeyboardController_deleteForward(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, length);
    }
    private func deleteBackward_serialize(length: Int32): Unit {
        ArkUIGeneratedNativeModule._WebKeyboardController_deleteBackward(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, length);
    }
    private func sendFunctionKey_serialize(key: Int32): Unit {
        ArkUIGeneratedNativeModule._WebKeyboardController_sendFunctionKey(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, key);
    }
    private func close_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebKeyboardController_close(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class WebKeyboardController_serializer {
    public static func write(buffer: SerializerBase, value: WebKeyboardController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): WebKeyboardController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return WebKeyboardControllerInternal.fromPtr(ptr)
    }
}
