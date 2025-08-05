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
public open class WebContextMenuResultInternal {
    public static func fromPtr(ptr: UInt64): WebContextMenuResult {
        return WebContextMenuResult(ptr)
    }
}
public open class WebContextMenuResult <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    WebContextMenuResult(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, WebContextMenuResult.getFinalizer())
    }
    WebContextMenuResult() {
        super(WebContextMenuResult.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuResult_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._WebContextMenuResult_getFinalizer()
    }
    public open func closeContextMenu(): Unit {
        let thisPeer = this
        thisPeer.closeContextMenu_serialize()
        return
    }
    public open func copyImage(): Unit {
        let thisPeer = this
        thisPeer.copyImage_serialize()
        return
    }
    public open func copy(): Unit {
        let thisPeer = this
        thisPeer.copy_serialize()
        return
    }
    public open func paste(): Unit {
        let thisPeer = this
        thisPeer.paste_serialize()
        return
    }
    public open func cut(): Unit {
        let thisPeer = this
        thisPeer.cut_serialize()
        return
    }
    public open func selectAll(): Unit {
        let thisPeer = this
        thisPeer.selectAll_serialize()
        return
    }
    public open func redo(): Unit {
        let thisPeer = this
        thisPeer.redo_serialize()
        return
    }
    public open func undo(): Unit {
        let thisPeer = this
        thisPeer.undo_serialize()
        return
    }
    public open func pasteAndMatchStyle(): Unit {
        let thisPeer = this
        thisPeer.pasteAndMatchStyle_serialize()
        return
    }
    private func closeContextMenu_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_closeContextMenu(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func copyImage_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_copyImage(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func copy_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_copy(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func paste_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_paste(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func cut_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_cut(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func selectAll_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_selectAll(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func redo_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_redo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func undo_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_undo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func pasteAndMatchStyle_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebContextMenuResult_pasteAndMatchStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class WebContextMenuResult_serializer {
    public static func write(buffer: SerializerBase, value: WebContextMenuResult): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): WebContextMenuResult {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return WebContextMenuResultInternal.fromPtr(ptr)
    }
}
