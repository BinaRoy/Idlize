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

public class Resource {
    public var bundleName: String
    public var moduleName: String
    public var id: Int64
    public var params: Option<ArrayList<String>>
    public var type_: Option<Int64>
    init(bundleName: String, moduleName: String, id: Int64, params: Option<ArrayList<String>>, type_: Option<Int64>) {
        this.bundleName = bundleName
        this.moduleName = moduleName
        this.id = id
        this.params = params
        this.type_ = type_
    }
}
public class Resource_serializer {
    public  static func write(buffer: SerializerBase, value: Resource): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBundleName = value.bundleName
        valueSerializer.writeString(valueHolderForBundleName)
        let valueHolderForModuleName = value.moduleName
        valueSerializer.writeString(valueHolderForModuleName)
        let valueHolderForId = value.id
        valueSerializer.writeInt64(valueHolderForId)
        let valueHolderForParams = value.params
        if (let Some(valueHolderForParams) <- valueHolderForParams) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForParamsTmpValue = valueHolderForParams
            valueSerializer.writeInt32(Int32(valueHolderForParamsTmpValue.size))
            for (valueHolderForParamsTmpValueCounterI in 0..valueHolderForParamsTmpValue.size) {
                let valueHolderForParamsTmpValueTmpElement: String = valueHolderForParamsTmpValue[Int64(valueHolderForParamsTmpValueCounterI)]
                valueSerializer.writeString(valueHolderForParamsTmpValueTmpElement)
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForType_ = value.type_
        if (let Some(valueHolderForType_) <- valueHolderForType_) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForType_TmpValue = valueHolderForType_
            valueSerializer.writeInt64(valueHolderForType_TmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): Resource {
        var valueDeserializer: DeserializerBase = buffer
        let bundleNameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let moduleNameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let idTmpResult: Int64 = valueDeserializer.readInt64()
        let paramsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paramsTmpBuf: Option<ArrayList<String>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paramsTmpBuf_runtimeType))) {
            let paramsTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var paramsTmpBuf_: ArrayList<String> = ArrayList<String>(Int64(paramsTmpBuf_Length))
            paramsTmpBuf_ = ArrayList<String>(Int64(paramsTmpBuf_Length))
            for (paramsTmpBuf_BufCounterI in 0..paramsTmpBuf_Length) {
                paramsTmpBuf_[Int64(paramsTmpBuf_BufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            paramsTmpBuf = paramsTmpBuf_
        }
        let paramsTmpResult: Option<ArrayList<String>> = paramsTmpBuf
        let type_TmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var type_TmpBuf: Option<Int64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(type_TmpBuf_runtimeType))) {
            type_TmpBuf = valueDeserializer.readInt64()
        }
        let type_TmpResult: Option<Int64> = type_TmpBuf
        var value: Resource = Resource(bundleNameTmpResult, moduleNameTmpResult, idTmpResult, paramsTmpResult, type_TmpResult)
        return value
    }
}
