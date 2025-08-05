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
public open class TextControllerInternal {
    public static func fromPtr(ptr: UInt64): TextController {
        return TextController(ptr)
    }
}
public open class TextController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    TextController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TextController.getFinalizer())
    }
    TextController() {
        super(TextController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TextController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextController_getFinalizer()
    }
    public open func closeSelectionMenu(): Unit {
        let thisPeer = this
        thisPeer.closeSelectionMenu_serialize()
        return
    }
    public open func setStyledString(value: StyledString): Unit {
        let value_casted: StyledString = value
        let thisPeer = this
        thisPeer.setStyledString_serialize(value_casted)
        return
    }
    public open func getLayoutManager(): LayoutManager {
        return this.getLayoutManager_serialize()
    }
    private func closeSelectionMenu_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextController_closeSelectionMenu(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func setStyledString_serialize(value: StyledString): Unit {
        ArkUIGeneratedNativeModule._TextController_setStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(value));
    }
    private func getLayoutManager_serialize(): LayoutManager {
        let retval = ArkUIGeneratedNativeModule._TextController_getLayoutManager(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: LayoutManager = LayoutManagerInternal.fromPtr(retval)
        return obj
    }
}
public open class TextController_serializer {
    public static func write(buffer: SerializerBase, value: TextController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextControllerInternal.fromPtr(ptr)
    }
}
