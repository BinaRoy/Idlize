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
public open class ChildrenMainSizeInternal {
    public static func fromPtr(ptr: UInt64): ChildrenMainSize {
        return ChildrenMainSize(false, ptr)
    }
}
public open class ChildrenMainSize <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop childDefaultSize: Float64
    {
        get() {
            return this.getChildDefaultSize()
        }
        set(childDefaultSize) {
            this.setChildDefaultSize(childDefaultSize)
        }
    }
    ChildrenMainSize(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ChildrenMainSize.getFinalizer())
    }
    ChildrenMainSize(childDefaultSize: Float64) {
        super(false, ChildrenMainSize.construct(childDefaultSize))
    }
    static func construct(childDefaultSize: Float64): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ChildrenMainSize_construct(childDefaultSize)
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ChildrenMainSize_getFinalizer()
    }
    public open func splice(start: Float64, deleteCount: Option<Float64>, childrenSize: Option<ArrayList<Float64>>): Unit {
        let start_casted: Float64 = start
        let deleteCount_casted: Option<Float64> = if (let Some(deleteCount) <- deleteCount) {deleteCount} else { throw Exception("Type has to be not None")}
        let childrenSize_casted: Option<ArrayList<Float64>> = if (let Some(childrenSize) <- childrenSize) {childrenSize} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.splice_serialize(start_casted, deleteCount_casted, childrenSize_casted)
        return
    }
    public open func update(index: Float64, childSize: Float64): Unit {
        let index_casted: Float64 = index
        let childSize_casted: Float64 = childSize
        let thisPeer = this
        thisPeer.update_serialize(index_casted, childSize_casted)
        return
    }
    private func getChildDefaultSize(): Float64 {
        return this.getChildDefaultSize_serialize()
    }
    private func setChildDefaultSize(childDefaultSize: Float64): Unit {
        let childDefaultSize_casted: Float64 = childDefaultSize
        let thisPeer = this
        thisPeer.setChildDefaultSize_serialize(childDefaultSize_casted)
        return
    }
    private func splice_serialize(start: Float64, deleteCount: Option<Float64>, childrenSize: Option<ArrayList<Float64>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (deleteCount.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let deleteCountTmpValue = deleteCount
            thisSerializer.writeNumber(deleteCountTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (childrenSize.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let childrenSizeTmpValue = childrenSize
            thisSerializer.writeInt32(Int32(childrenSizeTmpValue.size));
            for (childrenSizeTmpValueCounterI in 0..childrenSizeTmpValue.size) {
                let childrenSizeTmpValueTmpElement: Float64 = childrenSizeTmpValue[Int64(childrenSizeTmpValueCounterI)]
                thisSerializer.writeNumber(childrenSizeTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ChildrenMainSize_splice(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func update_serialize(index: Float64, childSize: Float64): Unit {
        ArkUIGeneratedNativeModule._ChildrenMainSize_update(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, childSize);
    }
    private func getChildDefaultSize_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ChildrenMainSize_getChildDefaultSize(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setChildDefaultSize_serialize(childDefaultSize: Float64): Unit {
        ArkUIGeneratedNativeModule._ChildrenMainSize_setChildDefaultSize(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, childDefaultSize);
    }
}
public open class ChildrenMainSize_serializer {
    public static func write(buffer: SerializerBase, value: ChildrenMainSize): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ChildrenMainSize {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ChildrenMainSizeInternal.fromPtr(ptr)
    }
}
