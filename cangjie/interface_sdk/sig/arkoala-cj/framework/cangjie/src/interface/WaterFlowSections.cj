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
public open class WaterFlowSectionsInternal {
    public static func fromPtr(ptr: UInt64): WaterFlowSections {
        return WaterFlowSections(ptr)
    }
}
public open class WaterFlowSections <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    WaterFlowSections(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, WaterFlowSections.getFinalizer())
    }
    WaterFlowSections() {
        super(WaterFlowSections.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._WaterFlowSections_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._WaterFlowSections_getFinalizer()
    }
    public open func splice(start: Float64, deleteCount: Option<Float64>, sections: Option<ArrayList<SectionOptions>>): Bool {
        let start_casted: Float64 = start
        let deleteCount_casted: Option<Float64> = if (let Some(deleteCount) <- deleteCount) {deleteCount} else { throw Exception("Type has to be not None")}
        let sections_casted: Option<ArrayList<SectionOptions>> = if (let Some(sections) <- sections) {sections} else { throw Exception("Type has to be not None")}
        return this.splice_serialize(start_casted, deleteCount_casted, sections_casted)
    }
    public open func push(section: SectionOptions): Bool {
        let section_casted: SectionOptions = section
        return this.push_serialize(section_casted)
    }
    public open func update(sectionIndex: Float64, section: SectionOptions): Bool {
        let sectionIndex_casted: Float64 = sectionIndex
        let section_casted: SectionOptions = section
        return this.update_serialize(sectionIndex_casted, section_casted)
    }
    public open func values(): ArrayList<SectionOptions> {
        return this.values_serialize()
    }
    public open func length(): Float64 {
        return this.length_serialize()
    }
    private func splice_serialize(start: Float64, deleteCount: Option<Float64>, sections: Option<ArrayList<SectionOptions>>): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (deleteCount.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let deleteCountTmpValue = deleteCount
            thisSerializer.writeNumber(deleteCountTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (sections.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sectionsTmpValue = sections
            thisSerializer.writeInt32(Int32(sectionsTmpValue.size));
            for (sectionsTmpValueCounterI in 0..sectionsTmpValue.size) {
                let sectionsTmpValueTmpElement: SectionOptions = sectionsTmpValue[Int64(sectionsTmpValueCounterI)]
                SectionOptions_serializer.write(thisSerializer, sectionsTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._WaterFlowSections_splice(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func push_serialize(section: SectionOptions): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SectionOptions_serializer.write(thisSerializer, section);
        let retval = ArkUIGeneratedNativeModule._WaterFlowSections_push(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func update_serialize(sectionIndex: Float64, section: SectionOptions): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SectionOptions_serializer.write(thisSerializer, section);
        let retval = ArkUIGeneratedNativeModule._WaterFlowSections_update(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, sectionIndex, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func values_serialize(): ArrayList<SectionOptions> {
        let retval = ArkUIGeneratedNativeModule._WaterFlowSections_values(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<SectionOptions> = ArrayList<SectionOptions>(Int64(bufferLength))
        buffer = ArrayList<SectionOptions>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = SectionOptions_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<SectionOptions> = buffer
        return returnResult
    }
    private func length_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._WaterFlowSections_length(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class WaterFlowSections_serializer {
    public static func write(buffer: SerializerBase, value: WaterFlowSections): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): WaterFlowSections {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return WaterFlowSectionsInternal.fromPtr(ptr)
    }
}
