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
public interface LongPressGestureEvent {
    public mut open prop repeat: Bool
}
public open class LongPressGestureEventInternal <: BaseGestureEventInternal & MaterializedBase & LongPressGestureEvent {
    public mut open prop repeat: Bool
    {
        get() {
            return this.getRepeat()
        }
        set(repeat) {
            this.setRepeat(repeat)
        }
    }
    LongPressGestureEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    LongPressGestureEventInternal() {
        super(LongPressGestureEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._LongPressGestureEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._LongPressGestureEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): LongPressGestureEventInternal {
        return LongPressGestureEventInternal(ptr)
    }
    private func getRepeat(): Bool {
        return this.getRepeat_serialize()
    }
    private func setRepeat(repeat: Bool): Unit {
        let repeat_casted: Bool = repeat
        let thisPeer = this
        thisPeer.setRepeat_serialize(repeat_casted)
        return
    }
    private func getRepeat_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._LongPressGestureEvent_getRepeat(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setRepeat_serialize(repeat: Bool): Unit {
        ArkUIGeneratedNativeModule._LongPressGestureEvent_setRepeat(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (repeat) { Int32(1) } else { Int32(0) });
    }
}
public open class LongPressGestureEvent_serializer {
    public static func write(buffer: SerializerBase, value: LongPressGestureEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): LongPressGestureEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return LongPressGestureEventInternal.fromPtr(ptr)
    }
}
