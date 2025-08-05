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
public open class ImageDataInternal {
    public static func fromPtr(ptr: UInt64): ImageData {
        return ImageData(false, false, false, false, ptr)
    }
}
public open class ImageData <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop data: Array<UInt8>
    public open prop height: Float64
    public open prop width: Float64
    public open prop data: Array<UInt8>
    public open prop height: Float64
    public open prop width: Float64
    ImageData(_0: Bool, _1: Bool, _2: Bool, _3: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ImageData.getFinalizer())
        data = this.getData()
        height = this.getHeight()
        width = this.getWidth()
        data = this.getData()
        height = this.getHeight()
        width = this.getWidth()
    }
    init (width: Float64, height: Float64) {
        ImageData(width, height, Option.None)
    }
    ImageData(width: Float64, height: Float64, data: Option<Array<UInt8>>) {
        super(false, false, false, false, ImageData.construct0(width, height, data))
    }
    init (width: Float64, height: Float64, data: Option<Array<UInt8>>) {
        ImageData(width, height, data, Option.None)
    }
    init (width: Float64, height: Float64) {
        ImageData(width, height, Option.None, Option.None)
    }
    ImageData(width: Float64, height: Float64, data: Option<Array<UInt8>>, unit: Option<LengthMetricsUnit>) {
        super(false, false, false, false, ImageData.construct1(width, height, data, unit))
    }
    static func construct0(width: Float64, height: Float64, data: Option<Array<UInt8>>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (data.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let dataTmpValue = data
            thisSerializer.writeBuffer(dataTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._ImageData_construct0(width, height, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct1(width: Float64, height: Float64, data: Option<Array<UInt8>>, unit: Option<LengthMetricsUnit>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (data.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let dataTmpValue = data
            thisSerializer.writeBuffer(dataTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (unit.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let unitTmpValue = unit
            thisSerializer.writeCustomObject("Any", unitTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._ImageData_construct1(width, height, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ImageData_getFinalizer()
    }
    private func getData(): Array<UInt8> {
        return this.getData0_serialize()
    }
    private func getHeight(): Float64 {
        return this.getHeight0_serialize()
    }
    private func getWidth(): Float64 {
        return this.getWidth0_serialize()
    }
    private func getData(): Array<UInt8> {
        return this.getData1_serialize()
    }
    private func getHeight(): Float64 {
        return this.getHeight1_serialize()
    }
    private func getWidth(): Float64 {
        return this.getWidth1_serialize()
    }
    private func getData0_serialize(): Array<UInt8> {
        let retval = ArkUIGeneratedNativeModule._ImageData_getData0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return DeserializerBase(retval, Int32(retval.size)).readBuffer()
    }
    private func getHeight0_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ImageData_getHeight0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getWidth0_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ImageData_getWidth0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getData1_serialize(): Array<UInt8> {
        let retval = ArkUIGeneratedNativeModule._ImageData_getData1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return DeserializerBase(retval, Int32(retval.size)).readBuffer()
    }
    private func getHeight1_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ImageData_getHeight1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getWidth1_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ImageData_getWidth1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class ImageData_serializer {
    public static func write(buffer: SerializerBase, value: ImageData): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ImageData {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ImageDataInternal.fromPtr(ptr)
    }
}
