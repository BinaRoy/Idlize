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
public interface DecorationOptionsInterfaces <:  {
    public mut open prop enableMultiType: Option<Bool>
}
public open class DecorationOptions <: DecorationOptionsInterfaces {
    private var enableMultiType_container: Option<Bool>
    public mut open prop enableMultiType: Option<Bool>
    {
        get() {
            return enableMultiType_container
        }
        set(enableMultiType) {
            enableMultiType_container = enableMultiType
        }
    }
    DecorationOptions(enableMultiType: Option<Bool>) {
        this.enableMultiType_container = enableMultiType
    }
}
public open class DecorationOptions_serializer {
    public static func write(buffer: SerializerBase, value: DecorationOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnableMultiType = value.enableMultiType
        if (valueHolderForEnableMultiType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableMultiTypeTmpValue = valueHolderForEnableMultiType
            valueSerializer.writeBoolean(valueHolderForEnableMultiTypeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DecorationOptions {
        var valueDeserializer: DeserializerBase = buffer
        let enableMultiTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableMultiTypeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableMultiTypeTmpBuf_runtimeType))) {
            enableMultiTypeTmpBuf = valueDeserializer.readBoolean()
        }
        let enableMultiTypeTmpResult: Option<Bool> = enableMultiTypeTmpBuf
        var value: DecorationOptions = DecorationOptions(enableMultiTypeTmpResult)
        return value
    }
}
