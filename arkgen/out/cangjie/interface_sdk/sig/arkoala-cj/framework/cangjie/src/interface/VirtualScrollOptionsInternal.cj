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
public interface VirtualScrollOptions {
    public mut open prop totalCount: Option<Float64>
    public mut open prop reusable: Option<Bool>
    public open func onLazyLoading(index: Float64): Unit
    public open func onTotalCount(): Float64
}
public open class VirtualScrollOptionsInternal <: MaterializedBase & VirtualScrollOptions {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop totalCount: Option<Float64>
    {
        get() {
            return this.getTotalCount()
        }
        set(totalCount) {
            let totalCount_NonNull = match (totalCount as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setTotalCount(totalCount_NonNull)
        }
    }
    public mut open prop reusable: Option<Bool>
    {
        get() {
            return this.getReusable()
        }
        set(reusable) {
            let reusable_NonNull = match (reusable as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setReusable(reusable_NonNull)
        }
    }
    VirtualScrollOptionsInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, VirtualScrollOptionsInternal.getFinalizer())
    }
    VirtualScrollOptionsInternal() {
        super(VirtualScrollOptionsInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._VirtualScrollOptions_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._VirtualScrollOptions_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): VirtualScrollOptionsInternal {
        return VirtualScrollOptionsInternal(ptr)
    }
    public open func onLazyLoading(index: Float64): Unit {
        let index_casted: Float64 = index
        let thisPeer = this
        thisPeer.onLazyLoading_serialize(index_casted)
        return
    }
    public open func onTotalCount(): Float64 {
        return this.onTotalCount_serialize()
    }
    private func getTotalCount(): Option<Float64> {
        return this.getTotalCount_serialize()
    }
    private func setTotalCount(totalCount: Option<Float64>): Unit {
        let totalCount_casted: Option<Float64> = if (let Some(totalCount) <- totalCount) {totalCount} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTotalCount_serialize(totalCount_casted)
        return
    }
    private func getReusable(): Option<Bool> {
        return this.getReusable_serialize()
    }
    private func setReusable(reusable: Option<Bool>): Unit {
        let reusable_casted: Option<Bool> = if (let Some(reusable) <- reusable) {reusable} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setReusable_serialize(reusable_casted)
        return
    }
    private func onLazyLoading_serialize(index: Float64): Unit {
        ArkUIGeneratedNativeModule._VirtualScrollOptions_onLazyLoading(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index);
    }
    private func onTotalCount_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._VirtualScrollOptions_onTotalCount(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getTotalCount_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._VirtualScrollOptions_getTotalCount(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setTotalCount_serialize(totalCount: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (totalCount.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let totalCountTmpValue = totalCount
            thisSerializer.writeNumber(totalCountTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._VirtualScrollOptions_setTotalCount(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getReusable_serialize(): Option<Bool> {
        let retval = ArkUIGeneratedNativeModule._VirtualScrollOptions_getReusable(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = retvalDeserializer.readBoolean()
        }
        let returnResult: Option<Bool> = buffer
        return returnResult
    }
    private func setReusable_serialize(reusable: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (reusable.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let reusableTmpValue = reusable
            thisSerializer.writeBoolean(reusableTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._VirtualScrollOptions_setReusable(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class VirtualScrollOptions_serializer {
    public static func write(buffer: SerializerBase, value: VirtualScrollOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): VirtualScrollOptions {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return VirtualScrollOptionsInternal.fromPtr(ptr)
    }
}
