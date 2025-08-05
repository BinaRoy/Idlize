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
public interface BuilderNodeOptionsInterfaces <:  {
    public mut open prop selfIdealSize: Option<Size>
    public mut open prop type_: Option<Float64>
    public mut open prop surfaceId: Option<String>
}
public open class BuilderNodeOptions <: BuilderNodeOptionsInterfaces {
    private var selfIdealSize_container: Option<Size>
    public mut open prop selfIdealSize: Option<Size>
    {
        get() {
            return selfIdealSize_container
        }
        set(selfIdealSize) {
            selfIdealSize_container = selfIdealSize
        }
    }
    private var type_container: Option<Float64>
    public mut open prop type_: Option<Float64>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var surfaceId_container: Option<String>
    public mut open prop surfaceId: Option<String>
    {
        get() {
            return surfaceId_container
        }
        set(surfaceId) {
            surfaceId_container = surfaceId
        }
    }
    BuilderNodeOptions(selfIdealSize: Option<Size>, type_: Option<Float64>, surfaceId: Option<String>) {
        this.selfIdealSize_container = selfIdealSize
        this.type_container = type_
        this.surfaceId_container = surfaceId
    }
}
public open class BuilderNodeOptions_serializer {
    public static func write(buffer: SerializerBase, value: BuilderNodeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSelfIdealSize = value.selfIdealSize
        if (valueHolderForSelfIdealSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelfIdealSizeTmpValue = valueHolderForSelfIdealSize
            Size_serializer.write(valueSerializer, valueHolderForSelfIdealSizeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeNumber(valueHolderForTypeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSurfaceId = value.surfaceId
        if (valueHolderForSurfaceId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSurfaceIdTmpValue = valueHolderForSurfaceId
            valueSerializer.writeString(valueHolderForSurfaceIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BuilderNodeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let selfIdealSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selfIdealSizeTmpBuf: Option<Size> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selfIdealSizeTmpBuf_runtimeType))) {
            selfIdealSizeTmpBuf = Size_serializer.read(valueDeserializer)
        }
        let selfIdealSizeTmpResult: Option<Size> = selfIdealSizeTmpBuf
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let typeTmpResult: Option<Float64> = typeTmpBuf
        let surfaceIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var surfaceIdTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(surfaceIdTmpBuf_runtimeType))) {
            surfaceIdTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let surfaceIdTmpResult: Option<String> = surfaceIdTmpBuf
        var value: BuilderNodeOptions = BuilderNodeOptions(selfIdealSizeTmpResult, typeTmpResult, surfaceIdTmpResult)
        return value
    }
}
