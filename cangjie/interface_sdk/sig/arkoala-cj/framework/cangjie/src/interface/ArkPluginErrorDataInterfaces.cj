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
public interface PluginErrorDataInterfaces <:  {
    public mut open prop errcode: Float64
    public mut open prop msg: String
}
public open class PluginErrorData <: PluginErrorDataInterfaces {
    private var errcode_container: Float64
    public mut open prop errcode: Float64
    {
        get() {
            return errcode_container
        }
        set(errcode) {
            errcode_container = errcode
        }
    }
    private var msg_container: String
    public mut open prop msg: String
    {
        get() {
            return msg_container
        }
        set(msg) {
            msg_container = msg
        }
    }
    PluginErrorData(errcode: Float64, msg: String) {
        this.errcode_container = errcode
        this.msg_container = msg
    }
}
public open class PluginErrorData_serializer {
    public static func write(buffer: SerializerBase, value: PluginErrorData): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForErrcode = value.errcode
        valueSerializer.writeNumber(valueHolderForErrcode);
        let valueHolderForMsg = value.msg
        valueSerializer.writeString(valueHolderForMsg);
    }
    public static func read(buffer: DeserializerBase): PluginErrorData {
        var valueDeserializer: DeserializerBase = buffer
        let errcodeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let msgTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: PluginErrorData = PluginErrorData(errcodeTmpResult, msgTmpResult)
        return value
    }
}
