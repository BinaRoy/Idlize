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
public interface SurfaceRectInterfaces <:  {
    public mut open prop offsetX: Option<Float64>
    public mut open prop offsetY: Option<Float64>
    public mut open prop surfaceWidth: Float64
    public mut open prop surfaceHeight: Float64
}
public open class SurfaceRect <: SurfaceRectInterfaces {
    private var offsetX_container: Option<Float64>
    public mut open prop offsetX: Option<Float64>
    {
        get() {
            return offsetX_container
        }
        set(offsetX) {
            offsetX_container = offsetX
        }
    }
    private var offsetY_container: Option<Float64>
    public mut open prop offsetY: Option<Float64>
    {
        get() {
            return offsetY_container
        }
        set(offsetY) {
            offsetY_container = offsetY
        }
    }
    private var surfaceWidth_container: Float64
    public mut open prop surfaceWidth: Float64
    {
        get() {
            return surfaceWidth_container
        }
        set(surfaceWidth) {
            surfaceWidth_container = surfaceWidth
        }
    }
    private var surfaceHeight_container: Float64
    public mut open prop surfaceHeight: Float64
    {
        get() {
            return surfaceHeight_container
        }
        set(surfaceHeight) {
            surfaceHeight_container = surfaceHeight
        }
    }
    SurfaceRect(offsetX: Option<Float64>, offsetY: Option<Float64>, surfaceWidth: Float64, surfaceHeight: Float64) {
        this.offsetX_container = offsetX
        this.offsetY_container = offsetY
        this.surfaceWidth_container = surfaceWidth
        this.surfaceHeight_container = surfaceHeight
    }
}
public open class SurfaceRect_serializer {
    public static func write(buffer: SerializerBase, value: SurfaceRect): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffsetX = value.offsetX
        if (valueHolderForOffsetX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetXTmpValue = valueHolderForOffsetX
            valueSerializer.writeNumber(valueHolderForOffsetXTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffsetY = value.offsetY
        if (valueHolderForOffsetY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetYTmpValue = valueHolderForOffsetY
            valueSerializer.writeNumber(valueHolderForOffsetYTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSurfaceWidth = value.surfaceWidth
        valueSerializer.writeNumber(valueHolderForSurfaceWidth);
        let valueHolderForSurfaceHeight = value.surfaceHeight
        valueSerializer.writeNumber(valueHolderForSurfaceHeight);
    }
    public static func read(buffer: DeserializerBase): SurfaceRect {
        var valueDeserializer: DeserializerBase = buffer
        let offsetXTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetXTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetXTmpBuf_runtimeType))) {
            offsetXTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetXTmpResult: Option<Float64> = offsetXTmpBuf
        let offsetYTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetYTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetYTmpBuf_runtimeType))) {
            offsetYTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetYTmpResult: Option<Float64> = offsetYTmpBuf
        let surfaceWidthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let surfaceHeightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: SurfaceRect = SurfaceRect(offsetXTmpResult, offsetYTmpResult, surfaceWidthTmpResult, surfaceHeightTmpResult)
        return value
    }
}
