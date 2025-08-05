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
public interface GestureEvent {
    public mut open prop repeat: Bool
    public mut open prop fingerList: ArrayList<FingerInfo>
    public mut open prop fingerInfos: Option<ArrayList<FingerInfo>>
    public mut open prop offsetX: Float64
    public mut open prop offsetY: Float64
    public mut open prop angle: Float64
    public mut open prop speed: Float64
    public mut open prop scale: Float64
    public mut open prop pinchCenterX: Float64
    public mut open prop pinchCenterY: Float64
    public mut open prop velocityX: Float64
    public mut open prop velocityY: Float64
    public mut open prop velocity: Float64
    public mut open prop tapLocation: Option<EventLocationInfo>
}
public open class GestureEventInternal <: BaseEventInternal & MaterializedBase & GestureEvent {
    public mut open prop repeat: Bool
    {
        get() {
            return this.getRepeat()
        }
        set(repeat) {
            this.setRepeat(repeat)
        }
    }
    public mut open prop fingerList: ArrayList<FingerInfo>
    {
        get() {
            return this.getFingerList()
        }
        set(fingerList) {
            this.setFingerList(fingerList)
        }
    }
    public mut open prop fingerInfos: Option<ArrayList<FingerInfo>>
    {
        get() {
            return this.getFingerInfos()
        }
        set(fingerInfos) {
            let fingerInfos_NonNull = match (fingerInfos as ArrayList<FingerInfo>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setFingerInfos(fingerInfos_NonNull)
        }
    }
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
    public mut open prop angle: Float64
    {
        get() {
            return this.getAngle()
        }
        set(angle) {
            this.setAngle(angle)
        }
    }
    public mut open prop speed: Float64
    {
        get() {
            return this.getSpeed()
        }
        set(speed) {
            this.setSpeed(speed)
        }
    }
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
    public mut open prop tapLocation: Option<EventLocationInfo>
    {
        get() {
            return this.getTapLocation()
        }
        set(tapLocation) {
            let tapLocation_NonNull = match (tapLocation as EventLocationInfo) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setTapLocation(tapLocation_NonNull)
        }
    }
    GestureEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    GestureEventInternal() {
        super(GestureEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._GestureEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): GestureEventInternal {
        return GestureEventInternal(ptr)
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
    private func getFingerList(): ArrayList<FingerInfo> {
        return this.getFingerList_serialize()
    }
    private func setFingerList(fingerList: ArrayList<FingerInfo>): Unit {
        let fingerList_casted: ArrayList<FingerInfo> = fingerList
        let thisPeer = this
        thisPeer.setFingerList_serialize(fingerList_casted)
        return
    }
    private func getFingerInfos(): Option<ArrayList<FingerInfo>> {
        return this.getFingerInfos_serialize()
    }
    private func setFingerInfos(fingerInfos: Option<ArrayList<FingerInfo>>): Unit {
        let fingerInfos_casted: Option<ArrayList<FingerInfo>> = if (let Some(fingerInfos) <- fingerInfos) {fingerInfos} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setFingerInfos_serialize(fingerInfos_casted)
        return
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
    private func getAngle(): Float64 {
        return this.getAngle_serialize()
    }
    private func setAngle(angle: Float64): Unit {
        let angle_casted: Float64 = angle
        let thisPeer = this
        thisPeer.setAngle_serialize(angle_casted)
        return
    }
    private func getSpeed(): Float64 {
        return this.getSpeed_serialize()
    }
    private func setSpeed(speed: Float64): Unit {
        let speed_casted: Float64 = speed
        let thisPeer = this
        thisPeer.setSpeed_serialize(speed_casted)
        return
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
    private func getTapLocation(): Option<EventLocationInfo> {
        return this.getTapLocation_serialize()
    }
    private func setTapLocation(tapLocation: Option<EventLocationInfo>): Unit {
        let tapLocation_casted: Option<EventLocationInfo> = if (let Some(tapLocation) <- tapLocation) {tapLocation} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTapLocation_serialize(tapLocation_casted)
        return
    }
    private func getRepeat_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getRepeat(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setRepeat_serialize(repeat: Bool): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setRepeat(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (repeat) { Int32(1) } else { Int32(0) });
    }
    private func getFingerList_serialize(): ArrayList<FingerInfo> {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getFingerList(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<FingerInfo> = ArrayList<FingerInfo>(Int64(bufferLength))
        buffer = ArrayList<FingerInfo>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = FingerInfo_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<FingerInfo> = buffer
        return returnResult
    }
    private func setFingerList_serialize(fingerList: ArrayList<FingerInfo>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(fingerList.size));
        for (fingerListCounterI in 0..fingerList.size) {
            let fingerListTmpElement: FingerInfo = fingerList[Int64(fingerListCounterI)]
            FingerInfo_serializer.write(thisSerializer, fingerListTmpElement);
        }
        ArkUIGeneratedNativeModule._GestureEvent_setFingerList(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getFingerInfos_serialize(): Option<ArrayList<FingerInfo>> {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getFingerInfos(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ArrayList<FingerInfo>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_Length: Int32 = retvalDeserializer.readInt32()
            var buffer_: ArrayList<FingerInfo> = ArrayList<FingerInfo>(Int64(buffer_Length))
            buffer_ = ArrayList<FingerInfo>(Int64(buffer_Length))
            for (buffer_BufCounterI in 0..buffer_Length) {
                buffer_[Int64(buffer_BufCounterI)] = FingerInfo_serializer.read(retvalDeserializer)
            }
            buffer = buffer_
        }
        let returnResult: Option<ArrayList<FingerInfo>> = buffer
        return returnResult
    }
    private func setFingerInfos_serialize(fingerInfos: Option<ArrayList<FingerInfo>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fingerInfos.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fingerInfosTmpValue = fingerInfos
            thisSerializer.writeInt32(Int32(fingerInfosTmpValue.size));
            for (fingerInfosTmpValueCounterI in 0..fingerInfosTmpValue.size) {
                let fingerInfosTmpValueTmpElement: FingerInfo = fingerInfosTmpValue[Int64(fingerInfosTmpValueCounterI)]
                FingerInfo_serializer.write(thisSerializer, fingerInfosTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._GestureEvent_setFingerInfos(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOffsetX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getOffsetX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setOffsetX_serialize(offsetX: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setOffsetX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, offsetX);
    }
    private func getOffsetY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getOffsetY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setOffsetY_serialize(offsetY: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setOffsetY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, offsetY);
    }
    private func getAngle_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getAngle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setAngle_serialize(angle: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setAngle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, angle);
    }
    private func getSpeed_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getSpeed(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setSpeed_serialize(speed: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setSpeed(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, speed);
    }
    private func getScale_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getScale(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setScale_serialize(scale: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setScale(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, scale);
    }
    private func getPinchCenterX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getPinchCenterX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setPinchCenterX_serialize(pinchCenterX: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setPinchCenterX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, pinchCenterX);
    }
    private func getPinchCenterY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getPinchCenterY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setPinchCenterY_serialize(pinchCenterY: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setPinchCenterY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, pinchCenterY);
    }
    private func getVelocityX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getVelocityX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setVelocityX_serialize(velocityX: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setVelocityX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, velocityX);
    }
    private func getVelocityY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getVelocityY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setVelocityY_serialize(velocityY: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setVelocityY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, velocityY);
    }
    private func getVelocity_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getVelocity(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setVelocity_serialize(velocity: Float64): Unit {
        ArkUIGeneratedNativeModule._GestureEvent_setVelocity(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, velocity);
    }
    private func getTapLocation_serialize(): Option<EventLocationInfo> {
        let retval = ArkUIGeneratedNativeModule._GestureEvent_getTapLocation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<EventLocationInfo> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = EventLocationInfo_serializer.read(retvalDeserializer)
        }
        let returnResult: Option<EventLocationInfo> = buffer
        return returnResult
    }
    private func setTapLocation_serialize(tapLocation: Option<EventLocationInfo>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (tapLocation.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let tapLocationTmpValue = tapLocation
            EventLocationInfo_serializer.write(thisSerializer, tapLocationTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._GestureEvent_setTapLocation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class GestureEvent_serializer {
    public static func write(buffer: SerializerBase, value: GestureEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): GestureEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return GestureEventInternal.fromPtr(ptr)
    }
}
