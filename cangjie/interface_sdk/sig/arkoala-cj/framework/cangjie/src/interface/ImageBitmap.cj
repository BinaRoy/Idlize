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
public open class ImageBitmapInternal {
    public static func fromPtr(ptr: UInt64): ImageBitmap {
        return ImageBitmap(false, false, ptr)
    }
}
public open class ImageBitmap <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop height: Float64
    public open prop width: Float64
    public open prop height: Float64
    public open prop width: Float64
    ImageBitmap(_0: Bool, _1: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ImageBitmap.getFinalizer())
        height = this.getHeight()
        width = this.getWidth()
        height = this.getHeight()
        width = this.getWidth()
    }
    ImageBitmap(src: String) {
        super(false, false, ImageBitmap.construct0(src))
    }
    ImageBitmap(src: String, unit: LengthMetricsUnit) {
        super(false, false, ImageBitmap.construct1(src, unit))
    }
    ImageBitmap(data: PixelMap) {
        super(false, false, ImageBitmap.construct2(data))
    }
    ImageBitmap(data: PixelMap, unit: LengthMetricsUnit) {
        super(false, false, ImageBitmap.construct3(data, unit))
    }
    init (src: Union_PixelMap_String) {
        ImageBitmap(src, Option.None)
    }
    ImageBitmap(src: Union_PixelMap_String, unit: Option<LengthMetricsUnit>) {
        super(false, false, ImageBitmap.construct4(src, unit))
    }
    static func construct0(src: String): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_construct0(src)
        return retval
    }
    static func construct1(src: String, unit: LengthMetricsUnit): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", unit);
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_construct1(src, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct2(data: PixelMap): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", data);
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_construct2(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct3(data: PixelMap, unit: LengthMetricsUnit): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", data);
        thisSerializer.writeCustomObject("Any", unit);
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_construct3(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct4(src: Union_PixelMap_String, unit: Option<LengthMetricsUnit>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (src.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let srcForIdx0 = src.getValue0()
            thisSerializer.writeCustomObject("Any", srcForIdx0);
        } else if (src.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let srcForIdx1 = src.getValue1()
            thisSerializer.writeString(srcForIdx1);
        }
        if (unit.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let unitTmpValue = unit
            thisSerializer.writeCustomObject("Any", unitTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_construct4(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ImageBitmap_getFinalizer()
    }
    public open func close(): Unit {
        let thisPeer = this
        thisPeer.close_serialize()
        return
    }
    private func getHeight(): Float64 {
        return this.getHeight0_serialize()
    }
    private func getWidth(): Float64 {
        return this.getWidth0_serialize()
    }
    private func getHeight(): Float64 {
        return this.getHeight1_serialize()
    }
    private func getWidth(): Float64 {
        return this.getWidth1_serialize()
    }
    private func close_serialize(): Unit {
        ArkUIGeneratedNativeModule._ImageBitmap_close(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getHeight0_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_getHeight0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getWidth0_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_getWidth0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getHeight1_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_getHeight1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getWidth1_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ImageBitmap_getWidth1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class ImageBitmap_serializer {
    public static func write(buffer: SerializerBase, value: ImageBitmap): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ImageBitmap {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ImageBitmapInternal.fromPtr(ptr)
    }
}
