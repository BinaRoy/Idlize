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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class BuilderNodeOptions {
    public var selfIdealSize: Option<Any>
    public var type_: Option<Int64>
    public var surfaceId: Option<String>
    init(selfIdealSize: Option<Any>, type_: Option<Int64>, surfaceId: Option<String>) {
        this.selfIdealSize = selfIdealSize
        this.type_ = type_
        this.surfaceId = surfaceId
    }
}
public class BuilderNodeOptions_serializer {
    public  static func write(buffer: SerializerBase, value: BuilderNodeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSelfIdealSize = value.selfIdealSize
        if (let Some(valueHolderForSelfIdealSize) <- valueHolderForSelfIdealSize) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSelfIdealSizeTmpValue = valueHolderForSelfIdealSize
            valueSerializer.writeCustomObject("Any", valueHolderForSelfIdealSizeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForType = value.type_
        if (let Some(valueHolderForType) <- valueHolderForType) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt64(valueHolderForTypeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForSurfaceId = value.surfaceId
        if (let Some(valueHolderForSurfaceId) <- valueHolderForSurfaceId) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSurfaceIdTmpValue = valueHolderForSurfaceId
            valueSerializer.writeString(valueHolderForSurfaceIdTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): BuilderNodeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let selfIdealSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selfIdealSizeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selfIdealSizeTmpBuf_runtimeType))) {
            selfIdealSizeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selfIdealSizeTmpResult: Option<Any> = selfIdealSizeTmpBuf
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<Int64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = valueDeserializer.readInt64()
        }
        let typeTmpResult: Option<Int64> = typeTmpBuf
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
