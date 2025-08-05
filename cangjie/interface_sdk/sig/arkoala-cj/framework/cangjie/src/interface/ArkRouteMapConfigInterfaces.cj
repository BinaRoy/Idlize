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
public interface RouteMapConfigInterfaces <:  {
    public mut open prop name: String
    public mut open prop pageSourceFile: String
    public mut open prop data: Any
}
public open class RouteMapConfig <: RouteMapConfigInterfaces {
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
    private var pageSourceFile_container: String
    public mut open prop pageSourceFile: String
    {
        get() {
            return pageSourceFile_container
        }
        set(pageSourceFile) {
            pageSourceFile_container = pageSourceFile
        }
    }
    private var data_container: Any
    public mut open prop data: Any
    {
        get() {
            return data_container
        }
        set(data) {
            data_container = data
        }
    }
    RouteMapConfig(name: String, pageSourceFile: String, data: Any) {
        this.name_container = name
        this.pageSourceFile_container = pageSourceFile
        this.data_container = data
    }
}
public open class RouteMapConfig_serializer {
    public static func write(buffer: SerializerBase, value: RouteMapConfig): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForName = value.name
        valueSerializer.writeString(valueHolderForName);
        let valueHolderForPageSourceFile = value.pageSourceFile
        valueSerializer.writeString(valueHolderForPageSourceFile);
        let valueHolderForData = value.data
        valueSerializer.holdAndWriteObject(valueHolderForData);
    }
    public static func read(buffer: DeserializerBase): RouteMapConfig {
        var valueDeserializer: DeserializerBase = buffer
        let nameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let pageSourceFileTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let dataTmpResult: Any = match (valueDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: RouteMapConfig = RouteMapConfig(nameTmpResult, pageSourceFileTmpResult, dataTmpResult)
        return value
    }
}
