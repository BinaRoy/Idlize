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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public interface BaseEvent {
    public open mut prop source: SourceType
    public open mut prop axisHorizontal: Option<Float64>
    public open mut prop axisVertical: Option<Float64>
    public open mut prop pressure: Float64
    public open mut prop tiltX: Float64
    public open mut prop sourceTool: SourceTool
    public open mut prop deviceId: Option<Float64>
    public open mut prop targetDisplayId: Option<Float64>
    public func getModifierKeyState(keys: ArrayList<String>): Bool
}
public open class BaseEventInternal <: MaterializedBase & BaseEvent {
    var peer: Option<Finalizable> = Option.None
    public  func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open mut prop source: SourceType
    {
        get() {
            return this.getSource()
        }
        set(source) {
            this.setSource(source)
        }
    }
    public open mut prop axisHorizontal: Option<Float64>
    {
        get() {
            return this.getAxisHorizontal()
        }
        set(axisHorizontal) {
            let axisHorizontal_NonNull = match (axisHorizontal as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setAxisHorizontal(axisHorizontal_NonNull)
        }
    }
    public open mut prop axisVertical: Option<Float64>
    {
        get() {
            return this.getAxisVertical()
        }
        set(axisVertical) {
            let axisVertical_NonNull = match (axisVertical as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setAxisVertical(axisVertical_NonNull)
        }
    }
    public open mut prop pressure: Float64
    {
        get() {
            return this.getPressure()
        }
        set(pressure) {
            this.setPressure(pressure)
        }
    }
    public open mut prop tiltX: Float64
    {
        get() {
            return this.getTiltX()
        }
        set(tiltX) {
            this.setTiltX(tiltX)
        }
    }
    public open mut prop sourceTool: SourceTool
    {
        get() {
            return this.getSourceTool()
        }
        set(sourceTool) {
            this.setSourceTool(sourceTool)
        }
    }
    public open mut prop deviceId: Option<Float64>
    {
        get() {
            return this.getDeviceId()
        }
        set(deviceId) {
            let deviceId_NonNull = match (deviceId as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setDeviceId(deviceId_NonNull)
        }
    }
    public open mut prop targetDisplayId: Option<Float64>
    {
        get() {
            return this.getTargetDisplayId()
        }
        set(targetDisplayId) {
            let targetDisplayId_NonNull = match (targetDisplayId as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setTargetDisplayId(targetDisplayId_NonNull)
        }
    }
    init(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, BaseEventInternal.getFinalizer())
    }
    init() {
        this(BaseEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._BaseEvent_getFinalizer()
    }
    public  static func fromPtr(ptr: UInt64): BaseEventInternal {
        return BaseEventInternal(ptr)
    }
    public  func getModifierKeyState(keys: ArrayList<String>): Bool {
        let keys_casted: ArrayList<String> = keys
        return this.getModifierKeyState_serialize(keys_casted)
    }
    private  func getSource(): SourceType {
        return this.getSource_serialize()
    }
    private  func setSource(source: SourceType): Unit {
        let source_casted: SourceType = source
        let thisPeer = this
        thisPeer.setSource_serialize(source_casted)
        return
    }
    private  func getAxisHorizontal(): Option<Float64> {
        return this.getAxisHorizontal_serialize()
    }
    private  func setAxisHorizontal(axisHorizontal: Option<Float64>): Unit {
        let axisHorizontal_casted: Option<Float64> = if (let Some(axisHorizontal) <- axisHorizontal) {axisHorizontal} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setAxisHorizontal_serialize(axisHorizontal_casted)
        return
    }
    private  func getAxisVertical(): Option<Float64> {
        return this.getAxisVertical_serialize()
    }
    private  func setAxisVertical(axisVertical: Option<Float64>): Unit {
        let axisVertical_casted: Option<Float64> = if (let Some(axisVertical) <- axisVertical) {axisVertical} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setAxisVertical_serialize(axisVertical_casted)
        return
    }
    private  func getPressure(): Float64 {
        return this.getPressure_serialize()
    }
    private  func setPressure(pressure: Float64): Unit {
        let pressure_casted: Float64 = pressure
        let thisPeer = this
        thisPeer.setPressure_serialize(pressure_casted)
        return
    }
    private  func getTiltX(): Float64 {
        return this.getTiltX_serialize()
    }
    private  func setTiltX(tiltX: Float64): Unit {
        let tiltX_casted: Float64 = tiltX
        let thisPeer = this
        thisPeer.setTiltX_serialize(tiltX_casted)
        return
    }
    private  func getSourceTool(): SourceTool {
        return this.getSourceTool_serialize()
    }
    private  func setSourceTool(sourceTool: SourceTool): Unit {
        let sourceTool_casted: SourceTool = sourceTool
        let thisPeer = this
        thisPeer.setSourceTool_serialize(sourceTool_casted)
        return
    }
    private  func getDeviceId(): Option<Float64> {
        return this.getDeviceId_serialize()
    }
    private  func setDeviceId(deviceId: Option<Float64>): Unit {
        let deviceId_casted: Option<Float64> = if (let Some(deviceId) <- deviceId) {deviceId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setDeviceId_serialize(deviceId_casted)
        return
    }
    private  func getTargetDisplayId(): Option<Float64> {
        return this.getTargetDisplayId_serialize()
    }
    private  func setTargetDisplayId(targetDisplayId: Option<Float64>): Unit {
        let targetDisplayId_casted: Option<Float64> = if (let Some(targetDisplayId) <- targetDisplayId) {targetDisplayId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTargetDisplayId_serialize(targetDisplayId_casted)
        return
    }
    private  func getModifierKeyState_serialize(keys: ArrayList<String>): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(keys.size))
        for (keysCounterI in 0..keys.size) {
            let keysTmpElement: String = keys[Int64(keysCounterI)]
            thisSerializer.writeString(keysTmpElement)
        }
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getModifierKeyState(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  func getSource_serialize(): SourceType {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getSource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return SourceType.parse(retval)
    }
    private  func setSource_serialize(source: SourceType): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setSource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, source.get())
    }
    private  func getAxisHorizontal_serialize(): Option<Float64> {
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
    private  func setAxisHorizontal_serialize(axisHorizontal: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(axisHorizontal) <- axisHorizontal) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let axisHorizontalTmpValue = axisHorizontal
            thisSerializer.writeNumber(axisHorizontalTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._BaseEvent_setAxisHorizontal(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  func getAxisVertical_serialize(): Option<Float64> {
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
    private  func setAxisVertical_serialize(axisVertical: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(axisVertical) <- axisVertical) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let axisVerticalTmpValue = axisVertical
            thisSerializer.writeNumber(axisVerticalTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._BaseEvent_setAxisVertical(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  func getPressure_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getPressure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setPressure_serialize(pressure: Float64): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setPressure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, pressure)
    }
    private  func getTiltX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getTiltX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setTiltX_serialize(tiltX: Float64): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setTiltX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, tiltX)
    }
    private  func getSourceTool_serialize(): SourceTool {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getSourceTool(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return SourceTool.parse(retval)
    }
    private  func setSourceTool_serialize(sourceTool: SourceTool): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setSourceTool(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, sourceTool.get())
    }
    private  func getDeviceId_serialize(): Option<Float64> {
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
    private  func setDeviceId_serialize(deviceId: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(deviceId) <- deviceId) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let deviceIdTmpValue = deviceId
            thisSerializer.writeNumber(deviceIdTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._BaseEvent_setDeviceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  func getTargetDisplayId_serialize(): Option<Float64> {
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
    private  func setTargetDisplayId_serialize(targetDisplayId: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(targetDisplayId) <- targetDisplayId) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let targetDisplayIdTmpValue = targetDisplayId
            thisSerializer.writeNumber(targetDisplayIdTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._BaseEvent_setTargetDisplayId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
}
public class BaseEvent_serializer {
    public  static func write(buffer: SerializerBase, value: BaseEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value))
    }
    public  static func read(buffer: DeserializerBase): BaseEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return BaseEventInternal.fromPtr(ptr)
    }
}
