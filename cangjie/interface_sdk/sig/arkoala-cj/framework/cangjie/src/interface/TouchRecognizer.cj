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
public open class TouchRecognizerInternal {
    public static func fromPtr(ptr: UInt64): TouchRecognizer {
        return TouchRecognizer(ptr)
    }
}
public open class TouchRecognizer <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    TouchRecognizer(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TouchRecognizer.getFinalizer())
    }
    TouchRecognizer() {
        super(TouchRecognizer.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TouchRecognizer_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TouchRecognizer_getFinalizer()
    }
    public open func getEventTargetInfo(): EventTargetInfo {
        return this.getEventTargetInfo_serialize()
    }
    public open func cancelTouch(): Unit {
        let thisPeer = this
        thisPeer.cancelTouch_serialize()
        return
    }
    private func getEventTargetInfo_serialize(): EventTargetInfo {
        let retval = ArkUIGeneratedNativeModule._TouchRecognizer_getEventTargetInfo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: EventTargetInfo = EventTargetInfoInternal.fromPtr(retval)
        return obj
    }
    private func cancelTouch_serialize(): Unit {
        ArkUIGeneratedNativeModule._TouchRecognizer_cancelTouch(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class TouchRecognizer_serializer {
    public static func write(buffer: SerializerBase, value: TouchRecognizer): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TouchRecognizer {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TouchRecognizerInternal.fromPtr(ptr)
    }
}
