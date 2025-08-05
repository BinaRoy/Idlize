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
public open class OffscreenCanvasInternal {
    public static func fromPtr(ptr: UInt64): OffscreenCanvas {
        return OffscreenCanvas(false, false, false, ptr)
    }
}
public open class OffscreenCanvas <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop height: Float64
    {
        get() {
            return this.getHeight()
        }
        set(height) {
            this.setHeight(height)
        }
    }
    public mut open prop width: Float64
    {
        get() {
            return this.getWidth()
        }
        set(width) {
            this.setWidth(width)
        }
    }
    OffscreenCanvas(_0: Bool, _1: Bool, _2: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, OffscreenCanvas.getFinalizer())
    }
    OffscreenCanvas(width: Float64, height: Float64) {
        super(false, false, false, OffscreenCanvas.construct0(width, height))
    }
    OffscreenCanvas(width: Float64, height: Float64, unit: LengthMetricsUnit) {
        super(false, false, false, OffscreenCanvas.construct1(width, height, unit))
    }
    init (width: Float64, height: Float64) {
        OffscreenCanvas(width, height, Option.None)
    }
    OffscreenCanvas(width: Float64, height: Float64, unit: Option<LengthMetricsUnit>) {
        super(false, false, false, OffscreenCanvas.construct2(width, height, unit))
    }
    static func construct0(width: Float64, height: Float64): UInt64 {
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvas_construct0(width, height)
        return retval
    }
    static func construct1(width: Float64, height: Float64, unit: LengthMetricsUnit): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", unit);
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvas_construct1(width, height, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct2(width: Float64, height: Float64, unit: Option<LengthMetricsUnit>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (unit.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let unitTmpValue = unit
            thisSerializer.writeCustomObject("Any", unitTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvas_construct2(width, height, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._OffscreenCanvas_getFinalizer()
    }
    public open func transferToImageBitmap(): ImageBitmap {
        return this.transferToImageBitmap_serialize()
    }
    public open func getContext2d(options: Option<RenderingContextSettings>): OffscreenCanvasRenderingContext2D {
        let options_casted: Option<RenderingContextSettings> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        return this.getContext2d_serialize(options_casted)
    }
    private func getHeight(): Float64 {
        return this.getHeight_serialize()
    }
    private func setHeight(height: Float64): Unit {
        let height_casted: Float64 = height
        let thisPeer = this
        thisPeer.setHeight_serialize(height_casted)
        return
    }
    private func getWidth(): Float64 {
        return this.getWidth_serialize()
    }
    private func setWidth(width: Float64): Unit {
        let width_casted: Float64 = width
        let thisPeer = this
        thisPeer.setWidth_serialize(width_casted)
        return
    }
    public open func getContext(contextType: String, options: RenderingContextSettings): OffscreenCanvasRenderingContext2D {
        throw Exception("Improve")
    }
    private func transferToImageBitmap_serialize(): ImageBitmap {
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvas_transferToImageBitmap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: ImageBitmap = ImageBitmapInternal.fromPtr(retval)
        return obj
    }
    private func getContext2d_serialize(options: Option<RenderingContextSettings>): OffscreenCanvasRenderingContext2D {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            RenderingContextSettings_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvas_getContext2d(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: OffscreenCanvasRenderingContext2D = OffscreenCanvasRenderingContext2DInternal.fromPtr(retval)
        return obj
    }
    private func getHeight_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvas_getHeight(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setHeight_serialize(height: Float64): Unit {
        ArkUIGeneratedNativeModule._OffscreenCanvas_setHeight(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, height);
    }
    private func getWidth_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvas_getWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setWidth_serialize(width: Float64): Unit {
        ArkUIGeneratedNativeModule._OffscreenCanvas_setWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, width);
    }
}
public open class OffscreenCanvas_serializer {
    public static func write(buffer: SerializerBase, value: OffscreenCanvas): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): OffscreenCanvas {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return OffscreenCanvasInternal.fromPtr(ptr)
    }
}
