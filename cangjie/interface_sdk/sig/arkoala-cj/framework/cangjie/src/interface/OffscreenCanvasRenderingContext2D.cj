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
public open class OffscreenCanvasRenderingContext2DInternal {
    public static func fromPtr(ptr: UInt64): OffscreenCanvasRenderingContext2D {
        return OffscreenCanvasRenderingContext2D(false, false, false, false, ptr)
    }
}
public open class OffscreenCanvasRenderingContext2D <: CanvasRenderer & MaterializedBase {
    OffscreenCanvasRenderingContext2D(_0: Bool, _1: Bool, _2: Bool, _3: Bool, peerPtr: UInt64) {
        super(peerPtr)
    }
    init (width: Float64, height: Float64) {
        OffscreenCanvasRenderingContext2D(width, height, Option.None)
    }
    OffscreenCanvasRenderingContext2D(width: Float64, height: Float64, settings: Option<RenderingContextSettings>) {
        super(false, false, false, false, OffscreenCanvasRenderingContext2D.construct0(width, height, settings))
    }
    init (width: Float64, height: Float64, settings: Option<RenderingContextSettings>) {
        OffscreenCanvasRenderingContext2D(width, height, settings, Option.None)
    }
    init (width: Float64, height: Float64) {
        OffscreenCanvasRenderingContext2D(width, height, Option.None, Option.None)
    }
    OffscreenCanvasRenderingContext2D(width: Float64, height: Float64, settings: Option<RenderingContextSettings>, unit: Option<LengthMetricsUnit>) {
        super(false, false, false, false, OffscreenCanvasRenderingContext2D.construct1(width, height, settings, unit))
    }
    static func construct0(width: Float64, height: Float64, settings: Option<RenderingContextSettings>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (settings.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let settingsTmpValue = settings
            RenderingContextSettings_serializer.write(thisSerializer, settingsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvasRenderingContext2D_construct0(width, height, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct1(width: Float64, height: Float64, settings: Option<RenderingContextSettings>, unit: Option<LengthMetricsUnit>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (settings.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let settingsTmpValue = settings
            RenderingContextSettings_serializer.write(thisSerializer, settingsTmpValue);
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
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvasRenderingContext2D_construct1(width, height, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._OffscreenCanvasRenderingContext2D_getFinalizer()
    }
    public open func toDataURL(type_: Option<String>, quality: Option<Float32>): String {
        let type_casted: Option<String> = if (let Some(type_) <- type_) {type_} else { throw Exception("Type has to be not None")}
        let quality_casted: Option<Float32> = if (let Some(quality) <- quality) {quality} else { throw Exception("Type has to be not None")}
        return this.toDataURL_serialize(type_casted, quality_casted)
    }
    public open func transferToImageBitmap(): ImageBitmap {
        return this.transferToImageBitmap_serialize()
    }
    private func toDataURL_serialize(type_: Option<String>, quality: Option<Float32>): String {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (type_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let typeTmpValue = type_
            thisSerializer.writeString(typeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (quality.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let qualityTmpValue = quality
            thisSerializer.writeFloat32(qualityTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvasRenderingContext2D_toDataURL(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func transferToImageBitmap_serialize(): ImageBitmap {
        let retval = ArkUIGeneratedNativeModule._OffscreenCanvasRenderingContext2D_transferToImageBitmap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: ImageBitmap = ImageBitmapInternal.fromPtr(retval)
        return obj
    }
}
public open class OffscreenCanvasRenderingContext2D_serializer {
    public static func write(buffer: SerializerBase, value: OffscreenCanvasRenderingContext2D): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): OffscreenCanvasRenderingContext2D {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return OffscreenCanvasRenderingContext2DInternal.fromPtr(ptr)
    }
}
