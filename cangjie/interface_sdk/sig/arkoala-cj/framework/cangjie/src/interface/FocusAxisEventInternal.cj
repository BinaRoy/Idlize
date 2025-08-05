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
public interface FocusAxisEvent {
    public mut open prop axisMap: HashMap<Int64, Float64>
    public mut open prop stopPropagation: (() -> Unit)
}
public open class FocusAxisEventInternal <: BaseEventInternal & MaterializedBase & FocusAxisEvent {
    public mut open prop axisMap: HashMap<Int64, Float64>
    {
        get() {
            return this.getAxisMap()
        }
        set(axisMap) {
            this.setAxisMap(axisMap)
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
    FocusAxisEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    FocusAxisEventInternal() {
        super(FocusAxisEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._FocusAxisEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._FocusAxisEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): FocusAxisEventInternal {
        return FocusAxisEventInternal(ptr)
    }
    private func getAxisMap(): HashMap<Int64, Float64> {
        return this.getAxisMap_serialize()
    }
    private func setAxisMap(axisMap: HashMap<Int64, Float64>): Unit {
        let axisMap_casted: HashMap<Int64, Float64> = axisMap
        let thisPeer = this
        thisPeer.setAxisMap_serialize(axisMap_casted)
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
    private func getAxisMap_serialize(): HashMap<Int64, Float64> {
        let retval = ArkUIGeneratedNativeModule._FocusAxisEvent_getAxisMap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferSizeVar: Int32 = retvalDeserializer.readInt32()
        var buffer: HashMap<Int64, Float64> = HashMap<Int64, Float64>()
        // TODO: TS map resize;
        for (bufferIVar in 0..bufferSizeVar) {
            let bufferKeyVar: AxisModel = AxisModel(retvalDeserializer.readInt32())
            let bufferValueVar: Float64 = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            buffer.add(bufferKeyVar, bufferValueVar);
        }
        let returnResult: HashMap<Int64, Float64> = buffer
        return returnResult
    }
    private func setAxisMap_serialize(axisMap: HashMap<Int64, Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(axisMap.size));
        for ((axisMapKeyVar, axisMapValueVar) in axisMap) {
            thisSerializer.writeInt32(axisMapKeyVar.value);
            thisSerializer.writeNumber(axisMapValueVar);
        }
        ArkUIGeneratedNativeModule._FocusAxisEvent_setAxisMap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getStopPropagation_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._FocusAxisEvent_getStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setStopPropagation_serialize(stopPropagation: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(stopPropagation);
        ArkUIGeneratedNativeModule._FocusAxisEvent_setStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class FocusAxisEvent_serializer {
    public static func write(buffer: SerializerBase, value: FocusAxisEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): FocusAxisEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return FocusAxisEventInternal.fromPtr(ptr)
    }
}
