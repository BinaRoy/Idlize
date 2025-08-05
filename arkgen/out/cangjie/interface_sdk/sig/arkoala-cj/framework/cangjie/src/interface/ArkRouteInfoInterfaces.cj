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
public interface RouteInfoInterfaces <:  {
    public mut open prop name: String
    public mut open prop param: Option<Any>
}
public open class RouteInfo <: RouteInfoInterfaces {
    private var name_container: String
    public mut open prop name: String
    {
        get() {
            return name_container
        }
        set(name) {
            name_container = name
        }
    }
    private var param_container: Option<Any>
    public mut open prop param: Option<Any>
    {
        get() {
            return param_container
        }
        set(param) {
            param_container = param
        }
    }
    RouteInfo(name: String, param: Option<Any>) {
        this.name_container = name
        this.param_container = param
    }
}
public open class RouteInfo_serializer {
    public static func write(buffer: SerializerBase, value: RouteInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForName = value.name
        valueSerializer.writeString(valueHolderForName);
        let valueHolderForParam = value.param
        if (valueHolderForParam.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParamTmpValue = valueHolderForParam
            valueSerializer.holdAndWriteObject(valueHolderForParamTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RouteInfo {
        var valueDeserializer: DeserializerBase = buffer
        let nameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let paramTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paramTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paramTmpBuf_runtimeType))) {
            paramTmpBuf = match (valueDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paramTmpResult: Option<Any> = paramTmpBuf
        var value: RouteInfo = RouteInfo(nameTmpResult, paramTmpResult)
        return value
    }
}
