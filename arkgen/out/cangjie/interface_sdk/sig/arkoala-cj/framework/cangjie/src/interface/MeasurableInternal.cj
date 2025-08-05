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
public interface Measurable {
    public mut open prop uniqueId: Option<Float64>
    public open func measure(constraint: ConstraintSizeOptions): MeasureResult
    public open func getMargin(): DirectionalEdgesT
    public open func getPadding(): DirectionalEdgesT
    public open func getBorderWidth(): DirectionalEdgesT
}
public open class MeasurableInternal <: MaterializedBase & Measurable {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop uniqueId: Option<Float64>
    {
        get() {
            return this.getUniqueId()
        }
        set(uniqueId) {
            let uniqueId_NonNull = match (uniqueId as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setUniqueId(uniqueId_NonNull)
        }
    }
    MeasurableInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, MeasurableInternal.getFinalizer())
    }
    MeasurableInternal() {
        super(MeasurableInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Measurable_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._Measurable_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): MeasurableInternal {
        return MeasurableInternal(ptr)
    }
    public open func measure(constraint: ConstraintSizeOptions): MeasureResult {
        let constraint_casted: ConstraintSizeOptions = constraint
        return this.measure_serialize(constraint_casted)
    }
    public open func getMargin(): DirectionalEdgesT {
        return this.getMargin_serialize()
    }
    public open func getPadding(): DirectionalEdgesT {
        return this.getPadding_serialize()
    }
    public open func getBorderWidth(): DirectionalEdgesT {
        return this.getBorderWidth_serialize()
    }
    private func getUniqueId(): Option<Float64> {
        return this.getUniqueId_serialize()
    }
    private func setUniqueId(uniqueId: Option<Float64>): Unit {
        let uniqueId_casted: Option<Float64> = if (let Some(uniqueId) <- uniqueId) {uniqueId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setUniqueId_serialize(uniqueId_casted)
        return
    }
    private func measure_serialize(constraint: ConstraintSizeOptions): MeasureResult {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ConstraintSizeOptions_serializer.write(thisSerializer, constraint);
        let retval = ArkUIGeneratedNativeModule._Measurable_measure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: MeasureResult = MeasureResult_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getMargin_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Measurable_getMargin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getPadding_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Measurable_getPadding(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getBorderWidth_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Measurable_getBorderWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getUniqueId_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._Measurable_getUniqueId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setUniqueId_serialize(uniqueId: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (uniqueId.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let uniqueIdTmpValue = uniqueId
            thisSerializer.writeNumber(uniqueIdTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Measurable_setUniqueId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class Measurable_serializer {
    public static func write(buffer: SerializerBase, value: Measurable): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): Measurable {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return MeasurableInternal.fromPtr(ptr)
    }
}
