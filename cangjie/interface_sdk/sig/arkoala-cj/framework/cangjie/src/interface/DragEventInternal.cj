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
public interface DragEvent {
    public mut open prop dragBehavior: DragBehavior
    public mut open prop useCustomDropAnimation: Bool
    public open func getGlobalDisplayX(): Float64
    public open func getGlobalDisplayY(): Float64
    public open func getDisplayX(): Float64
    public open func getDisplayY(): Float64
    public open func getWindowX(): Float64
    public open func getWindowY(): Float64
    public open func getX(): Float64
    public open func getY(): Float64
    public open func setData(unifiedData: UnifiedData): Unit
    public open func getData(): UnifiedData
    public open func getSummary(): Summary
    public open func setResult(dragResult: DragResult): Unit
    public open func getResult(): DragResult
    public open func getPreviewRect(): Rectangle
    public open func getVelocityX(): Float64
    public open func getVelocityY(): Float64
    public open func getVelocity(): Float64
    public open func getModifierKeyState(keys: ArrayList<String>): Bool
    public open func executeDropAnimation(customDropAnimation: (() -> Unit)): Unit
    public open func startDataLoading(options: DataSyncOptions): String
    public open func getDragSource(): String
    public open func isRemote(): Bool
    public open func getDisplayId(): Float64
    public open func setDataLoadParams(dataLoadParams: DataLoadParams): Unit
    public open func enableInternalDropAnimation(configuration: String): Unit
}
public open class DragEventInternal <: MaterializedBase & DragEvent {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop dragBehavior: DragBehavior
    {
        get() {
            return this.getDragBehavior()
        }
        set(dragBehavior) {
            this.setDragBehavior(dragBehavior)
        }
    }
    public mut open prop useCustomDropAnimation: Bool
    {
        get() {
            return this.getUseCustomDropAnimation()
        }
        set(useCustomDropAnimation) {
            this.setUseCustomDropAnimation(useCustomDropAnimation)
        }
    }
    DragEventInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, DragEventInternal.getFinalizer())
    }
    DragEventInternal() {
        super(DragEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._DragEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): DragEventInternal {
        return DragEventInternal(ptr)
    }
    public open func getGlobalDisplayX(): Float64 {
        return this.getGlobalDisplayX_serialize()
    }
    public open func getGlobalDisplayY(): Float64 {
        return this.getGlobalDisplayY_serialize()
    }
    public open func getDisplayX(): Float64 {
        return this.getDisplayX_serialize()
    }
    public open func getDisplayY(): Float64 {
        return this.getDisplayY_serialize()
    }
    public open func getWindowX(): Float64 {
        return this.getWindowX_serialize()
    }
    public open func getWindowY(): Float64 {
        return this.getWindowY_serialize()
    }
    public open func getX(): Float64 {
        return this.getX_serialize()
    }
    public open func getY(): Float64 {
        return this.getY_serialize()
    }
    public open func setData(unifiedData: UnifiedData): Unit {
        let unifiedData_casted: UnifiedData = unifiedData
        let thisPeer = this
        thisPeer.setData_serialize(unifiedData_casted)
        return
    }
    public open func getData(): UnifiedData {
        return this.getData_serialize()
    }
    public open func getSummary(): Summary {
        return this.getSummary_serialize()
    }
    public open func setResult(dragResult: DragResult): Unit {
        let dragResult_casted: DragResult = dragResult
        let thisPeer = this
        thisPeer.setResult_serialize(dragResult_casted)
        return
    }
    public open func getResult(): DragResult {
        return this.getResult_serialize()
    }
    public open func getPreviewRect(): Rectangle {
        return this.getPreviewRect_serialize()
    }
    public open func getVelocityX(): Float64 {
        return this.getVelocityX_serialize()
    }
    public open func getVelocityY(): Float64 {
        return this.getVelocityY_serialize()
    }
    public open func getVelocity(): Float64 {
        return this.getVelocity_serialize()
    }
    public open func getModifierKeyState(keys: ArrayList<String>): Bool {
        let keys_casted: ArrayList<String> = keys
        return this.getModifierKeyState_serialize(keys_casted)
    }
    public open func executeDropAnimation(customDropAnimation: (() -> Unit)): Unit {
        let customDropAnimation_casted: (() -> Unit) = customDropAnimation
        let thisPeer = this
        thisPeer.executeDropAnimation_serialize(customDropAnimation_casted)
        return
    }
    public open func startDataLoading(options: DataSyncOptions): String {
        let options_casted: DataSyncOptions = options
        return this.startDataLoading_serialize(options_casted)
    }
    public open func getDragSource(): String {
        return this.getDragSource_serialize()
    }
    public open func isRemote(): Bool {
        return this.isRemote_serialize()
    }
    public open func getDisplayId(): Float64 {
        return this.getDisplayId_serialize()
    }
    public open func setDataLoadParams(dataLoadParams: DataLoadParams): Unit {
        let dataLoadParams_casted: DataLoadParams = dataLoadParams
        let thisPeer = this
        thisPeer.setDataLoadParams_serialize(dataLoadParams_casted)
        return
    }
    public open func enableInternalDropAnimation(configuration: String): Unit {
        let configuration_casted: String = configuration
        let thisPeer = this
        thisPeer.enableInternalDropAnimation_serialize(configuration_casted)
        return
    }
    private func getDragBehavior(): DragBehavior {
        return this.getDragBehavior_serialize()
    }
    private func setDragBehavior(dragBehavior: DragBehavior): Unit {
        let dragBehavior_casted: DragBehavior = dragBehavior
        let thisPeer = this
        thisPeer.setDragBehavior_serialize(dragBehavior_casted)
        return
    }
    private func getUseCustomDropAnimation(): Bool {
        return this.getUseCustomDropAnimation_serialize()
    }
    private func setUseCustomDropAnimation(useCustomDropAnimation: Bool): Unit {
        let useCustomDropAnimation_casted: Bool = useCustomDropAnimation
        let thisPeer = this
        thisPeer.setUseCustomDropAnimation_serialize(useCustomDropAnimation_casted)
        return
    }
    private func getGlobalDisplayX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getGlobalDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getGlobalDisplayY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getGlobalDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getDisplayX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getDisplayY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getWindowX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getWindowY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setData_serialize(unifiedData: UnifiedData): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", unifiedData);
        ArkUIGeneratedNativeModule._DragEvent_setData(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getData_serialize(): UnifiedData {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getData(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func getSummary_serialize(): Summary {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getSummary(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setResult_serialize(dragResult: DragResult): Unit {
        ArkUIGeneratedNativeModule._DragEvent_setResult(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, dragResult.value);
    }
    private func getResult_serialize(): DragResult {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getResult(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return DragResult(retval)
    }
    private func getPreviewRect_serialize(): Rectangle {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getPreviewRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: Rectangle = Rectangle_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getVelocityX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getVelocityX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getVelocityY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getVelocityY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getVelocity_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getVelocity(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getModifierKeyState_serialize(keys: ArrayList<String>): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(keys.size));
        for (keysCounterI in 0..keys.size) {
            let keysTmpElement: String = keys[Int64(keysCounterI)]
            thisSerializer.writeString(keysTmpElement);
        }
        let retval = ArkUIGeneratedNativeModule._DragEvent_getModifierKeyState(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func executeDropAnimation_serialize(customDropAnimation: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(customDropAnimation);
        ArkUIGeneratedNativeModule._DragEvent_executeDropAnimation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func startDataLoading_serialize(options: DataSyncOptions): String {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", options);
        let retval = ArkUIGeneratedNativeModule._DragEvent_startDataLoading(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func getDragSource_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getDragSource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func isRemote_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._DragEvent_isRemote(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getDisplayId_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getDisplayId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setDataLoadParams_serialize(dataLoadParams: DataLoadParams): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", dataLoadParams);
        ArkUIGeneratedNativeModule._DragEvent_setDataLoadParams(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func enableInternalDropAnimation_serialize(configuration: String): Unit {
        ArkUIGeneratedNativeModule._DragEvent_enableInternalDropAnimation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, configuration);
    }
    private func getDragBehavior_serialize(): DragBehavior {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getDragBehavior(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return DragBehavior(retval)
    }
    private func setDragBehavior_serialize(dragBehavior: DragBehavior): Unit {
        ArkUIGeneratedNativeModule._DragEvent_setDragBehavior(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, dragBehavior.value);
    }
    private func getUseCustomDropAnimation_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._DragEvent_getUseCustomDropAnimation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setUseCustomDropAnimation_serialize(useCustomDropAnimation: Bool): Unit {
        ArkUIGeneratedNativeModule._DragEvent_setUseCustomDropAnimation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (useCustomDropAnimation) { Int32(1) } else { Int32(0) });
    }
}
public open class DragEvent_serializer {
    public static func write(buffer: SerializerBase, value: DragEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): DragEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return DragEventInternal.fromPtr(ptr)
    }
}
