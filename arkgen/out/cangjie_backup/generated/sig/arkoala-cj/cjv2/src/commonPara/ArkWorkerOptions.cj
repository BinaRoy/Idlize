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

public class WorkerOptions {
    public var type_: Option<String>
    public var name: Option<String>
    public var shared: Option<Bool>
    init(type_: Option<String>, name: Option<String>, shared: Option<Bool>) {
        this.type_ = type_
        this.name = name
        this.shared = shared
    }
}
public class WorkerOptions_serializer {
    public  static func write(buffer: SerializerBase, value: WorkerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        if (let Some(valueHolderForType) <- valueHolderForType) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeString(valueHolderForTypeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForName = value.name
        if (let Some(valueHolderForName) <- valueHolderForName) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForNameTmpValue = valueHolderForName
            valueSerializer.writeString(valueHolderForNameTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForShared = value.shared
        if (let Some(valueHolderForShared) <- valueHolderForShared) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSharedTmpValue = valueHolderForShared
            valueSerializer.writeBoolean(valueHolderForSharedTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): WorkerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let typeTmpResult: Option<String> = typeTmpBuf
        let nameTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var nameTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(nameTmpBuf_runtimeType))) {
            nameTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let nameTmpResult: Option<String> = nameTmpBuf
        let sharedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sharedTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sharedTmpBuf_runtimeType))) {
            sharedTmpBuf = valueDeserializer.readBoolean()
        }
        let sharedTmpResult: Option<Bool> = sharedTmpBuf
        var value: WorkerOptions = WorkerOptions(typeTmpResult, nameTmpResult, sharedTmpResult)
        return value
    }
}
