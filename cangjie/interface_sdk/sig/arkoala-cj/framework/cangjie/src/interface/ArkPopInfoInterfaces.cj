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
public interface PopInfoInterfaces <:  {
    public mut open prop info: NavPathInfo
    public mut open prop result: Any
}
public open class PopInfo <: PopInfoInterfaces {
    private var info_container: NavPathInfo
    public mut open prop info: NavPathInfo
    {
        get() {
            return info_container
        }
        set(info) {
            info_container = info
        }
    }
    private var result_container: Any
    public mut open prop result: Any
    {
        get() {
            return result_container
        }
        set(result) {
            result_container = result
        }
    }
    PopInfo(info: NavPathInfo, result: Any) {
        this.info_container = info
        this.result_container = result
    }
}
public open class PopInfo_serializer {
    public static func write(buffer: SerializerBase, value: PopInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForInfo = value.info
        NavPathInfo_serializer.write(valueSerializer, valueHolderForInfo);
        let valueHolderForResult = value.result
        valueSerializer.holdAndWriteObject(valueHolderForResult);
    }
    public static func read(buffer: DeserializerBase): PopInfo {
        var valueDeserializer: DeserializerBase = buffer
        let infoTmpResult: NavPathInfo = match (NavPathInfo_serializer.read(valueDeserializer) as NavPathInfo) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let resultTmpResult: Any = match (valueDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: PopInfo = PopInfo(infoTmpResult, resultTmpResult)
        return value
    }
}
