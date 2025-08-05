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
public interface PanGestureEvent {
    public mut open prop offsetX: Float64
    public mut open prop offsetY: Float64
    public mut open prop velocityX: Float64
    public mut open prop velocityY: Float64
    public mut open prop velocity: Float64
}
public open class PanGestureEventInternal <: BaseGestureEventInternal & MaterializedBase & PanGestureEvent {
    public mut open prop offsetX: Float64
    {
        get() {
            return this.getOffsetX()
        }
        set(offsetX) {
            this.setOffsetX(offsetX)
        }
    }
    public mut open prop offsetY: Float64
    {
        get() {
            return this.getOffsetY()
        }
        set(offsetY) {
            this.setOffsetY(offsetY)
        }
    }
    public mut open prop velocityX: Float64
    {
        get() {
            return this.getVelocityX()
        }
        set(velocityX) {
            this.setVelocityX(velocityX)
        }
    }
    public mut open prop velocityY: Float64
    {
        get() {
            return this.getVelocityY()
        }
        set(velocityY) {
            this.setVelocityY(velocityY)
        }
    }
    public mut open prop velocity: Float64
    {
        get() {
            return this.getVelocity()
        }
        set(velocity) {
            this.setVelocity(velocity)
        }
    }
    PanGestureEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    PanGestureEventInternal() {
        super(PanGestureEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._PanGestureEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PanGestureEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): PanGestureEventInternal {
        return PanGestureEventInternal(ptr)
    }
    private func getOffsetX(): Float64 {
        return this.getOffsetX_serialize()
    }
    private func setOffsetX(offsetX: Float64): Unit {
        let offsetX_casted: Float64 = offsetX
        let thisPeer = this
        thisPeer.setOffsetX_serialize(offsetX_casted)
        return
    }
    private func getOffsetY(): Float64 {
        return this.getOffsetY_serialize()
    }
    private func setOffsetY(offsetY: Float64): Unit {
        let offsetY_casted: Float64 = offsetY
        let thisPeer = this
        thisPeer.setOffsetY_serialize(offsetY_casted)
        return
    }
    private func getVelocityX(): Float64 {
        return this.getVelocityX_serialize()
    }
    private func setVelocityX(velocityX: Float64): Unit {
        let velocityX_casted: Float64 = velocityX
        let thisPeer = this
        thisPeer.setVelocityX_serialize(velocityX_casted)
        return
    }
    private func getVelocityY(): Float64 {
        return this.getVelocityY_serialize()
    }
    private func setVelocityY(velocityY: Float64): Unit {
        let velocityY_casted: Float64 = velocityY
        let thisPeer = this
        thisPeer.setVelocityY_serialize(velocityY_casted)
        return
    }
    private func getVelocity(): Float64 {
        return this.getVelocity_serialize()
    }
    private func setVelocity(velocity: Float64): Unit {
        let velocity_casted: Float64 = velocity
        let thisPeer = this
        thisPeer.setVelocity_serialize(velocity_casted)
        return
    }
    private func getOffsetX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PanGestureEvent_getOffsetX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setOffsetX_serialize(offsetX: Float64): Unit {
        ArkUIGeneratedNativeModule._PanGestureEvent_setOffsetX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, offsetX);
    }
    private func getOffsetY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PanGestureEvent_getOffsetY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setOffsetY_serialize(offsetY: Float64): Unit {
        ArkUIGeneratedNativeModule._PanGestureEvent_setOffsetY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, offsetY);
    }
    private func getVelocityX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PanGestureEvent_getVelocityX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setVelocityX_serialize(velocityX: Float64): Unit {
        ArkUIGeneratedNativeModule._PanGestureEvent_setVelocityX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, velocityX);
    }
    private func getVelocityY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PanGestureEvent_getVelocityY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setVelocityY_serialize(velocityY: Float64): Unit {
        ArkUIGeneratedNativeModule._PanGestureEvent_setVelocityY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, velocityY);
    }
    private func getVelocity_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PanGestureEvent_getVelocity(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setVelocity_serialize(velocity: Float64): Unit {
        ArkUIGeneratedNativeModule._PanGestureEvent_setVelocity(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, velocity);
    }
}
public open class PanGestureEvent_serializer {
    public static func write(buffer: SerializerBase, value: PanGestureEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PanGestureEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PanGestureEventInternal.fromPtr(ptr)
    }
}
