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
public interface PinchGestureEvent {
    public mut open prop scale: Float64
    public mut open prop pinchCenterX: Float64
    public mut open prop pinchCenterY: Float64
}
public open class PinchGestureEventInternal <: BaseGestureEventInternal & MaterializedBase & PinchGestureEvent {
    public mut open prop scale: Float64
    {
        get() {
            return this.getScale()
        }
        set(scale) {
            this.setScale(scale)
        }
    }
    public mut open prop pinchCenterX: Float64
    {
        get() {
            return this.getPinchCenterX()
        }
        set(pinchCenterX) {
            this.setPinchCenterX(pinchCenterX)
        }
    }
    public mut open prop pinchCenterY: Float64
    {
        get() {
            return this.getPinchCenterY()
        }
        set(pinchCenterY) {
            this.setPinchCenterY(pinchCenterY)
        }
    }
    PinchGestureEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    PinchGestureEventInternal() {
        super(PinchGestureEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._PinchGestureEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PinchGestureEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): PinchGestureEventInternal {
        return PinchGestureEventInternal(ptr)
    }
    private func getScale(): Float64 {
        return this.getScale_serialize()
    }
    private func setScale(scale: Float64): Unit {
        let scale_casted: Float64 = scale
        let thisPeer = this
        thisPeer.setScale_serialize(scale_casted)
        return
    }
    private func getPinchCenterX(): Float64 {
        return this.getPinchCenterX_serialize()
    }
    private func setPinchCenterX(pinchCenterX: Float64): Unit {
        let pinchCenterX_casted: Float64 = pinchCenterX
        let thisPeer = this
        thisPeer.setPinchCenterX_serialize(pinchCenterX_casted)
        return
    }
    private func getPinchCenterY(): Float64 {
        return this.getPinchCenterY_serialize()
    }
    private func setPinchCenterY(pinchCenterY: Float64): Unit {
        let pinchCenterY_casted: Float64 = pinchCenterY
        let thisPeer = this
        thisPeer.setPinchCenterY_serialize(pinchCenterY_casted)
        return
    }
    private func getScale_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PinchGestureEvent_getScale(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setScale_serialize(scale: Float64): Unit {
        ArkUIGeneratedNativeModule._PinchGestureEvent_setScale(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, scale);
    }
    private func getPinchCenterX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PinchGestureEvent_getPinchCenterX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setPinchCenterX_serialize(pinchCenterX: Float64): Unit {
        ArkUIGeneratedNativeModule._PinchGestureEvent_setPinchCenterX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, pinchCenterX);
    }
    private func getPinchCenterY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PinchGestureEvent_getPinchCenterY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setPinchCenterY_serialize(pinchCenterY: Float64): Unit {
        ArkUIGeneratedNativeModule._PinchGestureEvent_setPinchCenterY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, pinchCenterY);
    }
}
public open class PinchGestureEvent_serializer {
    public static func write(buffer: SerializerBase, value: PinchGestureEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PinchGestureEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PinchGestureEventInternal.fromPtr(ptr)
    }
}
