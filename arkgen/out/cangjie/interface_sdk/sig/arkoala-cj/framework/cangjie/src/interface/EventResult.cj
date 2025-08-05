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
public open class EventResultInternal {
    public static func fromPtr(ptr: UInt64): EventResult {
        return EventResult(ptr)
    }
}
public open class EventResult <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    EventResult(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, EventResult.getFinalizer())
    }
    EventResult() {
        super(EventResult.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._EventResult_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._EventResult_getFinalizer()
    }
    public open func setGestureEventResult(result: Bool): Unit {
        let result_casted: Bool = result
        let thisPeer = this
        thisPeer.setGestureEventResult0_serialize(result_casted)
        return
    }
    public open func setGestureEventResult(result: Bool, stopPropagation: Bool): Unit {
        let result_casted: Bool = result
        let stopPropagation_casted: Bool = stopPropagation
        let thisPeer = this
        thisPeer.setGestureEventResult1_serialize(result_casted, stopPropagation_casted)
        return
    }
    public open func setMouseEventResult(result: Bool, stopPropagation: Option<Bool>): Unit {
        let result_casted: Bool = result
        let stopPropagation_casted: Option<Bool> = if (let Some(stopPropagation) <- stopPropagation) {stopPropagation} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setMouseEventResult_serialize(result_casted, stopPropagation_casted)
        return
    }
    private func setGestureEventResult0_serialize(result: Bool): Unit {
        ArkUIGeneratedNativeModule._EventResult_setGestureEventResult0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (result) { Int32(1) } else { Int32(0) });
    }
    private func setGestureEventResult1_serialize(result: Bool, stopPropagation: Bool): Unit {
        ArkUIGeneratedNativeModule._EventResult_setGestureEventResult1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (result) { Int32(1) } else { Int32(0) }, if (stopPropagation) { Int32(1) } else { Int32(0) });
    }
    private func setMouseEventResult_serialize(result: Bool, stopPropagation: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (stopPropagation.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let stopPropagationTmpValue = stopPropagation
            thisSerializer.writeBoolean(stopPropagationTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._EventResult_setMouseEventResult(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (result) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class EventResult_serializer {
    public static func write(buffer: SerializerBase, value: EventResult): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): EventResult {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return EventResultInternal.fromPtr(ptr)
    }
}
