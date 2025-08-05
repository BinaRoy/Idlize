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
public interface TouchEvent {
    public mut open prop type_: TouchType
    public mut open prop touches: ArrayList<TouchObject>
    public mut open prop changedTouches: ArrayList<TouchObject>
    public mut open prop stopPropagation: (() -> Unit)
    public mut open prop preventDefault: (() -> Unit)
    public open func getHistoricalPoints(): ArrayList<HistoricalPoint>
}
public open class TouchEventInternal <: BaseEventInternal & MaterializedBase & TouchEvent {
    public mut open prop type_: TouchType
    {
        get() {
            return this.getType()
        }
        set(type_) {
            this.setType(type_)
        }
    }
    public mut open prop touches: ArrayList<TouchObject>
    {
        get() {
            return this.getTouches()
        }
        set(touches) {
            this.setTouches(touches)
        }
    }
    public mut open prop changedTouches: ArrayList<TouchObject>
    {
        get() {
            return this.getChangedTouches()
        }
        set(changedTouches) {
            this.setChangedTouches(changedTouches)
        }
    }
    public mut open prop stopPropagation: (() -> Unit)
    {
        get() {
            return this.getStopPropagation()
        }
        set(stopPropagation) {
            this.setStopPropagation(stopPropagation)
        }
    }
    public mut open prop preventDefault: (() -> Unit)
    {
        get() {
            return this.getPreventDefault()
        }
        set(preventDefault) {
            this.setPreventDefault(preventDefault)
        }
    }
    TouchEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    TouchEventInternal() {
        super(TouchEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TouchEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TouchEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): TouchEventInternal {
        return TouchEventInternal(ptr)
    }
    public open func getHistoricalPoints(): ArrayList<HistoricalPoint> {
        return this.getHistoricalPoints_serialize()
    }
    private func getType(): TouchType {
        return this.getType_serialize()
    }
    private func setType(type_: TouchType): Unit {
        let type_casted: TouchType = type_
        let thisPeer = this
        thisPeer.setType_serialize(type_casted)
        return
    }
    private func getTouches(): ArrayList<TouchObject> {
        return this.getTouches_serialize()
    }
    private func setTouches(touches: ArrayList<TouchObject>): Unit {
        let touches_casted: ArrayList<TouchObject> = touches
        let thisPeer = this
        thisPeer.setTouches_serialize(touches_casted)
        return
    }
    private func getChangedTouches(): ArrayList<TouchObject> {
        return this.getChangedTouches_serialize()
    }
    private func setChangedTouches(changedTouches: ArrayList<TouchObject>): Unit {
        let changedTouches_casted: ArrayList<TouchObject> = changedTouches
        let thisPeer = this
        thisPeer.setChangedTouches_serialize(changedTouches_casted)
        return
    }
    private func getStopPropagation(): (() -> Unit) {
        return this.getStopPropagation_serialize()
    }
    private func setStopPropagation(stopPropagation: (() -> Unit)): Unit {
        let stopPropagation_casted: (() -> Unit) = stopPropagation
        let thisPeer = this
        thisPeer.setStopPropagation_serialize(stopPropagation_casted)
        return
    }
    private func getPreventDefault(): (() -> Unit) {
        return this.getPreventDefault_serialize()
    }
    private func setPreventDefault(preventDefault: (() -> Unit)): Unit {
        let preventDefault_casted: (() -> Unit) = preventDefault
        let thisPeer = this
        thisPeer.setPreventDefault_serialize(preventDefault_casted)
        return
    }
    private func getHistoricalPoints_serialize(): ArrayList<HistoricalPoint> {
        let retval = ArkUIGeneratedNativeModule._TouchEvent_getHistoricalPoints(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<HistoricalPoint> = ArrayList<HistoricalPoint>(Int64(bufferLength))
        buffer = ArrayList<HistoricalPoint>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = HistoricalPoint_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<HistoricalPoint> = buffer
        return returnResult
    }
    private func getType_serialize(): TouchType {
        let retval = ArkUIGeneratedNativeModule._TouchEvent_getType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return TouchType(retval)
    }
    private func setType_serialize(type_: TouchType): Unit {
        ArkUIGeneratedNativeModule._TouchEvent_setType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, type_.value);
    }
    private func getTouches_serialize(): ArrayList<TouchObject> {
        let retval = ArkUIGeneratedNativeModule._TouchEvent_getTouches(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<TouchObject> = ArrayList<TouchObject>(Int64(bufferLength))
        buffer = ArrayList<TouchObject>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = TouchObject_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<TouchObject> = buffer
        return returnResult
    }
    private func setTouches_serialize(touches: ArrayList<TouchObject>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(touches.size));
        for (touchesCounterI in 0..touches.size) {
            let touchesTmpElement: TouchObject = touches[Int64(touchesCounterI)]
            TouchObject_serializer.write(thisSerializer, touchesTmpElement);
        }
        ArkUIGeneratedNativeModule._TouchEvent_setTouches(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getChangedTouches_serialize(): ArrayList<TouchObject> {
        let retval = ArkUIGeneratedNativeModule._TouchEvent_getChangedTouches(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<TouchObject> = ArrayList<TouchObject>(Int64(bufferLength))
        buffer = ArrayList<TouchObject>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = TouchObject_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<TouchObject> = buffer
        return returnResult
    }
    private func setChangedTouches_serialize(changedTouches: ArrayList<TouchObject>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(changedTouches.size));
        for (changedTouchesCounterI in 0..changedTouches.size) {
            let changedTouchesTmpElement: TouchObject = changedTouches[Int64(changedTouchesCounterI)]
            TouchObject_serializer.write(thisSerializer, changedTouchesTmpElement);
        }
        ArkUIGeneratedNativeModule._TouchEvent_setChangedTouches(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getStopPropagation_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._TouchEvent_getStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setStopPropagation_serialize(stopPropagation: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(stopPropagation);
        ArkUIGeneratedNativeModule._TouchEvent_setStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getPreventDefault_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._TouchEvent_getPreventDefault(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setPreventDefault_serialize(preventDefault: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(preventDefault);
        ArkUIGeneratedNativeModule._TouchEvent_setPreventDefault(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class TouchEvent_serializer {
    public static func write(buffer: SerializerBase, value: TouchEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TouchEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TouchEventInternal.fromPtr(ptr)
    }
}
