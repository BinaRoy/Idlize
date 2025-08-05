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
public interface ResizableOptionsInterfaces <:  {
    public mut open prop slice: Option<EdgeWidths>
    public mut open prop lattice: Option<DrawingLattice>
}
public open class ResizableOptions <: ResizableOptionsInterfaces {
    private var slice_container: Option<EdgeWidths>
    public mut open prop slice: Option<EdgeWidths>
    {
        get() {
            return slice_container
        }
        set(slice) {
            slice_container = slice
        }
    }
    private var lattice_container: Option<DrawingLattice>
    public mut open prop lattice: Option<DrawingLattice>
    {
        get() {
            return lattice_container
        }
        set(lattice) {
            lattice_container = lattice
        }
    }
    ResizableOptions(slice: Option<EdgeWidths>, lattice: Option<DrawingLattice>) {
        this.slice_container = slice
        this.lattice_container = lattice
    }
}
public open class ResizableOptions_serializer {
    public static func write(buffer: SerializerBase, value: ResizableOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSlice = value.slice
        if (valueHolderForSlice.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSliceTmpValue = valueHolderForSlice
            EdgeWidths_serializer.write(valueSerializer, valueHolderForSliceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLattice = value.lattice
        if (valueHolderForLattice.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLatticeTmpValue = valueHolderForLattice
            valueSerializer.writeCustomObject("Any", valueHolderForLatticeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ResizableOptions {
        var valueDeserializer: DeserializerBase = buffer
        let sliceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sliceTmpBuf: Option<EdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sliceTmpBuf_runtimeType))) {
            sliceTmpBuf = EdgeWidths_serializer.read(valueDeserializer)
        }
        let sliceTmpResult: Option<EdgeWidths> = sliceTmpBuf
        let latticeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var latticeTmpBuf: Option<DrawingLattice> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(latticeTmpBuf_runtimeType))) {
            latticeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let latticeTmpResult: Option<DrawingLattice> = latticeTmpBuf
        var value: ResizableOptions = ResizableOptions(sliceTmpResult, latticeTmpResult)
        return value
    }
}
