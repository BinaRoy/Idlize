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
public interface KeyboardOptionsInterfaces <:  {
    public mut open prop supportAvoidance: Option<Bool>
}
public open class KeyboardOptions <: KeyboardOptionsInterfaces {
    private var supportAvoidance_container: Option<Bool>
    public mut open prop supportAvoidance: Option<Bool>
    {
        get() {
            return supportAvoidance_container
        }
        set(supportAvoidance) {
            supportAvoidance_container = supportAvoidance
        }
    }
    KeyboardOptions(supportAvoidance: Option<Bool>) {
        this.supportAvoidance_container = supportAvoidance
    }
}
public open class KeyboardOptions_serializer {
    public static func write(buffer: SerializerBase, value: KeyboardOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSupportAvoidance = value.supportAvoidance
        if (valueHolderForSupportAvoidance.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSupportAvoidanceTmpValue = valueHolderForSupportAvoidance
            valueSerializer.writeBoolean(valueHolderForSupportAvoidanceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): KeyboardOptions {
        var valueDeserializer: DeserializerBase = buffer
        let supportAvoidanceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var supportAvoidanceTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(supportAvoidanceTmpBuf_runtimeType))) {
            supportAvoidanceTmpBuf = valueDeserializer.readBoolean()
        }
        let supportAvoidanceTmpResult: Option<Bool> = supportAvoidanceTmpBuf
        var value: KeyboardOptions = KeyboardOptions(supportAvoidanceTmpResult)
        return value
    }
}
