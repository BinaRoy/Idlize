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
public interface HeaderInterfaces <:  {
    public mut open prop headerKey: String
    public mut open prop headerValue: String
}
public open class Header <: HeaderInterfaces {
    private var headerKey_container: String
    public mut open prop headerKey: String
    {
        get() {
            return headerKey_container
        }
        set(headerKey) {
            headerKey_container = headerKey
        }
    }
    private var headerValue_container: String
    public mut open prop headerValue: String
    {
        get() {
            return headerValue_container
        }
        set(headerValue) {
            headerValue_container = headerValue
        }
    }
    Header(headerKey: String, headerValue: String) {
        this.headerKey_container = headerKey
        this.headerValue_container = headerValue
    }
}
public open class Header_serializer {
    public static func write(buffer: SerializerBase, value: Header): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHeaderKey = value.headerKey
        valueSerializer.writeString(valueHolderForHeaderKey);
        let valueHolderForHeaderValue = value.headerValue
        valueSerializer.writeString(valueHolderForHeaderValue);
    }
    public static func read(buffer: DeserializerBase): Header {
        var valueDeserializer: DeserializerBase = buffer
        let headerKeyTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let headerValueTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: Header = Header(headerKeyTmpResult, headerValueTmpResult)
        return value
    }
}
