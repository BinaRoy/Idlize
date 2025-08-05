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
public interface SubmitEvent {
    public mut open prop text: String
    public open func keepEditableState(): Unit
}
public open class SubmitEventInternal <: MaterializedBase & SubmitEvent {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop text: String
    {
        get() {
            return this.getText()
        }
        set(text) {
            this.setText(text)
        }
    }
    SubmitEventInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, SubmitEventInternal.getFinalizer())
    }
    SubmitEventInternal() {
        super(SubmitEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._SubmitEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._SubmitEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): SubmitEventInternal {
        return SubmitEventInternal(ptr)
    }
    public open func keepEditableState(): Unit {
        let thisPeer = this
        thisPeer.keepEditableState_serialize()
        return
    }
    private func getText(): String {
        return this.getText_serialize()
    }
    private func setText(text: String): Unit {
        let text_casted: String = text
        let thisPeer = this
        thisPeer.setText_serialize(text_casted)
        return
    }
    private func keepEditableState_serialize(): Unit {
        ArkUIGeneratedNativeModule._SubmitEvent_keepEditableState(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getText_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._SubmitEvent_getText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setText_serialize(text: String): Unit {
        ArkUIGeneratedNativeModule._SubmitEvent_setText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, text);
    }
}
public open class SubmitEvent_serializer {
    public static func write(buffer: SerializerBase, value: SubmitEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): SubmitEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SubmitEventInternal.fromPtr(ptr)
    }
}
