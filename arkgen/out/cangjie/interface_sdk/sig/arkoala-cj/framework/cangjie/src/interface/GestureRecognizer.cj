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
public open class GestureRecognizerInternal {
    public static func fromPtr(ptr: UInt64): GestureRecognizer {
        return GestureRecognizer(ptr)
    }
}
public open class GestureRecognizer <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    GestureRecognizer(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, GestureRecognizer.getFinalizer())
    }
    GestureRecognizer() {
        super(GestureRecognizer.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._GestureRecognizer_getFinalizer()
    }
    public open func getTag(): String {
        return this.getTag_serialize()
    }
    public open func getType(): GestureControlGestureType {
        return this.getType_serialize()
    }
    public open func isBuiltIn(): Bool {
        return this.isBuiltIn_serialize()
    }
    public open func setEnabled(isEnabled: Bool): Unit {
        let isEnabled_casted: Bool = isEnabled
        let thisPeer = this
        thisPeer.setEnabled_serialize(isEnabled_casted)
        return
    }
    public open func isEnabled(): Bool {
        return this.isEnabled_serialize()
    }
    public open func getState(): GestureRecognizerState {
        return this.getState_serialize()
    }
    public open func getEventTargetInfo(): EventTargetInfo {
        return this.getEventTargetInfo_serialize()
    }
    public open func isValid(): Bool {
        return this.isValid_serialize()
    }
    public open func getFingerCount(): Float64 {
        return this.getFingerCount_serialize()
    }
    public open func isFingerCountLimit(): Bool {
        return this.isFingerCountLimit_serialize()
    }
    public open func preventBegin(): Unit {
        let thisPeer = this
        thisPeer.preventBegin_serialize()
        return
    }
    private func getTag_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_getTag(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getType_serialize(): GestureControlGestureType {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_getType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return GestureControlGestureType(retval)
    }
    private func isBuiltIn_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_isBuiltIn(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setEnabled_serialize(isEnabled: Bool): Unit {
        ArkUIGeneratedNativeModule._GestureRecognizer_setEnabled(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (isEnabled) { Int32(1) } else { Int32(0) });
    }
    private func isEnabled_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_isEnabled(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getState_serialize(): GestureRecognizerState {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_getState(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return GestureRecognizerState(retval)
    }
    private func getEventTargetInfo_serialize(): EventTargetInfo {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_getEventTargetInfo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: EventTargetInfo = EventTargetInfoInternal.fromPtr(retval)
        return obj
    }
    private func isValid_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_isValid(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getFingerCount_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_getFingerCount(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func isFingerCountLimit_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._GestureRecognizer_isFingerCountLimit(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func preventBegin_serialize(): Unit {
        ArkUIGeneratedNativeModule._GestureRecognizer_preventBegin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class GestureRecognizer_serializer {
    public static func write(buffer: SerializerBase, value: GestureRecognizer): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): GestureRecognizer {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return GestureRecognizerInternal.fromPtr(ptr)
    }
}
