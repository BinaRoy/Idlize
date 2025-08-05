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
public interface FormCallbackInfoInterfaces <:  {
    public mut open prop id: Int64
    public mut open prop idString: String
}
public open class FormCallbackInfo <: FormCallbackInfoInterfaces {
    private var id_container: Int64
    public mut open prop id: Int64
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var idString_container: String
    public mut open prop idString: String
    {
        get() {
            return idString_container
        }
        set(idString) {
            idString_container = idString
        }
    }
    FormCallbackInfo(id: Int64, idString: String) {
        this.id_container = id
        this.idString_container = idString
    }
}
public open class FormCallbackInfo_serializer {
    public static func write(buffer: SerializerBase, value: FormCallbackInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForId = value.id
        valueSerializer.writeInt64(valueHolderForId);
        let valueHolderForIdString = value.idString
        valueSerializer.writeString(valueHolderForIdString);
    }
    public static func read(buffer: DeserializerBase): FormCallbackInfo {
        var valueDeserializer: DeserializerBase = buffer
        let idTmpResult: Int64 = valueDeserializer.readInt64()
        let idStringTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: FormCallbackInfo = FormCallbackInfo(idTmpResult, idStringTmpResult)
        return value
    }
}
