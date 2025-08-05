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
public interface BaseEvent {
    public mut open prop target: EventTarget
    public mut open prop timestamp: Int64
    public mut open prop source: SourceType
    public mut open prop axisHorizontal: Option<Float64>
    public mut open prop axisVertical: Option<Float64>
    public mut open prop pressure: Float64
    public mut open prop tiltX: Float64
    public mut open prop tiltY: Float64
    public mut open prop rollAngle: Option<Float64>
    public mut open prop sourceTool: SourceTool
    public mut open prop deviceId: Option<Float64>
    public mut open prop targetDisplayId: Option<Float64>
    public open func getModifierKeyState(keys: ArrayList<String>): Bool
}
public open class BaseEventInternal <: MaterializedBase & BaseEvent {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop target: EventTarget
    {
        get() {
            return this.getTarget()
        }
        set(target) {
            this.setTarget(target)
        }
    }
    public mut open prop timestamp: Int64
    {
        get() {
            return this.getTimestamp()
        }
        set(timestamp) {
            this.setTimestamp(timestamp)
        }
    }
    public mut open prop source: SourceType
    {
        get() {
            return this.getSource()
        }
        set(source) {
            this.setSource(source)
        }
    }
    public mut open prop axisHorizontal: Option<Float64>
    {
        get() {
            return this.getAxisHorizontal()
        }
        set(axisHorizontal) {
            let axisHorizontal_NonNull = match (axisHorizontal as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setAxisHorizontal(axisHorizontal_NonNull)
        }
    }
    public mut open prop axisVertical: Option<Float64>
    {
        get() {
            return this.getAxisVertical()
        }
        set(axisVertical) {
            let axisVertical_NonNull = match (axisVertical as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setAxisVertical(axisVertical_NonNull)
        }
    }
    public mut open prop pressure: Float64
    {
        get() {
            return this.getPressure()
        }
        set(pressure) {
            this.setPressure(pressure)
        }
    }
    public mut open prop tiltX: Float64
    {
        get() {
            return this.getTiltX()
        }
        set(tiltX) {
            this.setTiltX(tiltX)
        }
    }
    public mut open prop tiltY: Float64
    {
        get() {
            return this.getTiltY()
        }
        set(tiltY) {
            this.setTiltY(tiltY)
        }
    }
    public mut open prop rollAngle: Option<Float64>
    {
        get() {
            return this.getRollAngle()
        }
        set(rollAngle) {
            let rollAngle_NonNull = match (rollAngle as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setRollAngle(rollAngle_NonNull)
        }
    }
    public mut open prop sourceTool: SourceTool
    {
        get() {
            return this.getSourceTool()
        }
        set(sourceTool) {
            this.setSourceTool(sourceTool)
        }
    }
    public mut open prop deviceId: Option<Float64>
    {
        get() {
            return this.getDeviceId()
        }
        set(deviceId) {
            let deviceId_NonNull = match (deviceId as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setDeviceId(deviceId_NonNull)
        }
    }
    public mut open prop targetDisplayId: Option<Float64>
    {
        get() {
            return this.getTargetDisplayId()
        }
        set(targetDisplayId) {
            let targetDisplayId_NonNull = match (targetDisplayId as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setTargetDisplayId(targetDisplayId_NonNull)
        }
    }
    BaseEventInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, BaseEventInternal.getFinalizer())
    }
    BaseEventInternal() {
        super(BaseEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._BaseEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): BaseEventInternal {
        return BaseEventInternal(ptr)
    }
    public open func getModifierKeyState(keys: ArrayList<String>): Bool {
        let keys_casted: ArrayList<String> = keys
        return this.getModifierKeyState_serialize(keys_casted)
    }
    private func getTarget(): EventTarget {
        return this.getTarget_serialize()
    }
    private func setTarget(target: EventTarget): Unit {
        let target_casted: EventTarget = target
        let thisPeer = this
        thisPeer.setTarget_serialize(target_casted)
        return
    }
    private func getTimestamp(): Int64 {
        return this.getTimestamp_serialize()
    }
    private func setTimestamp(timestamp: Int64): Unit {
        let timestamp_casted: Int64 = timestamp
        let thisPeer = this
        thisPeer.setTimestamp_serialize(timestamp_casted)
        return
    }
    private func getSource(): SourceType {
        return this.getSource_serialize()
    }
    private func setSource(source: SourceType): Unit {
        let source_casted: SourceType = source
        let thisPeer = this
        thisPeer.setSource_serialize(source_casted)
        return
    }
    private func getAxisHorizontal(): Option<Float64> {
        return this.getAxisHorizontal_serialize()
    }
    private func setAxisHorizontal(axisHorizontal: Option<Float64>): Unit {
        let axisHorizontal_casted: Option<Float64> = if (let Some(axisHorizontal) <- axisHorizontal) {axisHorizontal} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setAxisHorizontal_serialize(axisHorizontal_casted)
        return
    }
    private func getAxisVertical(): Option<Float64> {
        return this.getAxisVertical_serialize()
    }
    private func setAxisVertical(axisVertical: Option<Float64>): Unit {
        let axisVertical_casted: Option<Float64> = if (let Some(axisVertical) <- axisVertical) {axisVertical} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setAxisVertical_serialize(axisVertical_casted)
        return
    }
    private func getPressure(): Float64 {
        return this.getPressure_serialize()
    }
    private func setPressure(pressure: Float64): Unit {
        let pressure_casted: Float64 = pressure
        let thisPeer = this
        thisPeer.setPressure_serialize(pressure_casted)
        return
    }
    private func getTiltX(): Float64 {
        return this.getTiltX_serialize()
    }
    private func setTiltX(tiltX: Float64): Unit {
        let tiltX_casted: Float64 = tiltX
        let thisPeer = this
        thisPeer.setTiltX_serialize(tiltX_casted)
        return
    }
    private func getTiltY(): Float64 {
        return this.getTiltY_serialize()
    }
    private func setTiltY(tiltY: Float64): Unit {
        let tiltY_casted: Float64 = tiltY
        let thisPeer = this
        thisPeer.setTiltY_serialize(tiltY_casted)
        return
    }
    private func getRollAngle(): Option<Float64> {
        return this.getRollAngle_serialize()
    }
    private func setRollAngle(rollAngle: Option<Float64>): Unit {
        let rollAngle_casted: Option<Float64> = if (let Some(rollAngle) <- rollAngle) {rollAngle} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setRollAngle_serialize(rollAngle_casted)
        return
    }
    private func getSourceTool(): SourceTool {
        return this.getSourceTool_serialize()
    }
    private func setSourceTool(sourceTool: SourceTool): Unit {
        let sourceTool_casted: SourceTool = sourceTool
        let thisPeer = this
        thisPeer.setSourceTool_serialize(sourceTool_casted)
        return
    }
    private func getDeviceId(): Option<Float64> {
        return this.getDeviceId_serialize()
    }
    private func setDeviceId(deviceId: Option<Float64>): Unit {
        let deviceId_casted: Option<Float64> = if (let Some(deviceId) <- deviceId) {deviceId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setDeviceId_serialize(deviceId_casted)
        return
    }
    private func getTargetDisplayId(): Option<Float64> {
        return this.getTargetDisplayId_serialize()
    }
    private func setTargetDisplayId(targetDisplayId: Option<Float64>): Unit {
        let targetDisplayId_casted: Option<Float64> = if (let Some(targetDisplayId) <- targetDisplayId) {targetDisplayId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTargetDisplayId_serialize(targetDisplayId_casted)
        return
    }
    private func getModifierKeyState_serialize(keys: ArrayList<String>): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(keys.size));
        for (keysCounterI in 0..keys.size) {
            let keysTmpElement: String = keys[Int64(keysCounterI)]
            thisSerializer.writeString(keysTmpElement);
        }
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getModifierKeyState(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func getTarget_serialize(): EventTarget {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getTarget(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: EventTarget = EventTarget_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func setTarget_serialize(target: EventTarget): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        EventTarget_serializer.write(thisSerializer, target);
        ArkUIGeneratedNativeModule._BaseEvent_setTarget(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getTimestamp_serialize(): Int64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getTimestamp(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setTimestamp_serialize(timestamp: Int64): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setTimestamp(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, timestamp);
    }
    private func getSource_serialize(): SourceType {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getSource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return SourceType(retval)
    }
    private func setSource_serialize(source: SourceType): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setSource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, source.value);
    }
    private func getAxisHorizontal_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getAxisHorizontal(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setAxisHorizontal_serialize(axisHorizontal: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (axisHorizontal.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let axisHorizontalTmpValue = axisHorizontal
            thisSerializer.writeNumber(axisHorizontalTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setAxisHorizontal(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getAxisVertical_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getAxisVertical(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setAxisVertical_serialize(axisVertical: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (axisVertical.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let axisVerticalTmpValue = axisVertical
            thisSerializer.writeNumber(axisVerticalTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setAxisVertical(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getPressure_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getPressure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setPressure_serialize(pressure: Float64): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setPressure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, pressure);
    }
    private func getTiltX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getTiltX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setTiltX_serialize(tiltX: Float64): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setTiltX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, tiltX);
    }
    private func getTiltY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getTiltY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setTiltY_serialize(tiltY: Float64): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setTiltY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, tiltY);
    }
    private func getRollAngle_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getRollAngle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setRollAngle_serialize(rollAngle: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (rollAngle.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rollAngleTmpValue = rollAngle
            thisSerializer.writeNumber(rollAngleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setRollAngle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getSourceTool_serialize(): SourceTool {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getSourceTool(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return SourceTool(retval)
    }
    private func setSourceTool_serialize(sourceTool: SourceTool): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setSourceTool(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, sourceTool.value);
    }
    private func getDeviceId_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getDeviceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setDeviceId_serialize(deviceId: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (deviceId.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let deviceIdTmpValue = deviceId
            thisSerializer.writeNumber(deviceIdTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setDeviceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getTargetDisplayId_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getTargetDisplayId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setTargetDisplayId_serialize(targetDisplayId: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (targetDisplayId.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let targetDisplayIdTmpValue = targetDisplayId
            thisSerializer.writeNumber(targetDisplayIdTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setTargetDisplayId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class BaseEvent_serializer {
    public static func write(buffer: SerializerBase, value: BaseEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): BaseEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return BaseEventInternal.fromPtr(ptr)
    }
}
