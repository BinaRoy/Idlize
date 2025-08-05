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
public interface DismissDialogAction {
    public mut open prop dismiss: (() -> Unit)
    public mut open prop reason: DismissReason
    public open func dismiss(): Unit
}
public open class DismissDialogActionInternal <: MaterializedBase & DismissDialogAction {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop dismiss: (() -> Unit)
    {
        get() {
            return this.getDismiss()
        }
        set(dismiss) {
            this.setDismiss(dismiss)
        }
    }
    public mut open prop reason: DismissReason
    {
        get() {
            return this.getReason()
        }
        set(reason) {
            this.setReason(reason)
        }
    }
    DismissDialogActionInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, DismissDialogActionInternal.getFinalizer())
    }
    DismissDialogActionInternal() {
        super(DismissDialogActionInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._DismissDialogAction_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._DismissDialogAction_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): DismissDialogActionInternal {
        return DismissDialogActionInternal(ptr)
    }
    public open func dismiss(): Unit {
        let thisPeer = this
        thisPeer.dismiss1_serialize()
        return
    }
    private func getDismiss(): (() -> Unit) {
        return this.getDismiss_serialize()
    }
    private func setDismiss(dismiss: (() -> Unit)): Unit {
        let dismiss_casted: (() -> Unit) = dismiss
        let thisPeer = this
        thisPeer.setDismiss_serialize(dismiss_casted)
        return
    }
    private func getReason(): DismissReason {
        return this.getReason_serialize()
    }
    private func setReason(reason: DismissReason): Unit {
        let reason_casted: DismissReason = reason
        let thisPeer = this
        thisPeer.setReason_serialize(reason_casted)
        return
    }
    private func dismiss1_serialize(): Unit {
        ArkUIGeneratedNativeModule._DismissDialogAction_dismiss1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getDismiss_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._DismissDialogAction_getDismiss(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setDismiss_serialize(dismiss: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(dismiss);
        ArkUIGeneratedNativeModule._DismissDialogAction_setDismiss(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getReason_serialize(): DismissReason {
        let retval = ArkUIGeneratedNativeModule._DismissDialogAction_getReason(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return DismissReason(retval)
    }
    private func setReason_serialize(reason: DismissReason): Unit {
        ArkUIGeneratedNativeModule._DismissDialogAction_setReason(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, reason.value);
    }
}
public open class DismissDialogAction_serializer {
    public static func write(buffer: SerializerBase, value: DismissDialogAction): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): DismissDialogAction {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return DismissDialogActionInternal.fromPtr(ptr)
    }
}
