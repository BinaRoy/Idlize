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
public interface RotationGestureEvent {
    public mut open prop angle: Float64
}
public open class RotationGestureEventInternal <: BaseGestureEventInternal & MaterializedBase & RotationGestureEvent {
    public mut open prop angle: Float64
    {
        get() {
            return this.getAngle()
        }
        set(angle) {
            this.setAngle(angle)
        }
    }
    RotationGestureEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    RotationGestureEventInternal() {
        super(RotationGestureEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._RotationGestureEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RotationGestureEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): RotationGestureEventInternal {
        return RotationGestureEventInternal(ptr)
    }
    private func getAngle(): Float64 {
        return this.getAngle_serialize()
    }
    private func setAngle(angle: Float64): Unit {
        let angle_casted: Float64 = angle
        let thisPeer = this
        thisPeer.setAngle_serialize(angle_casted)
        return
    }
    private func getAngle_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._RotationGestureEvent_getAngle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setAngle_serialize(angle: Float64): Unit {
        ArkUIGeneratedNativeModule._RotationGestureEvent_setAngle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, angle);
    }
}
public open class RotationGestureEvent_serializer {
    public static func write(buffer: SerializerBase, value: RotationGestureEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RotationGestureEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RotationGestureEventInternal.fromPtr(ptr)
    }
}
