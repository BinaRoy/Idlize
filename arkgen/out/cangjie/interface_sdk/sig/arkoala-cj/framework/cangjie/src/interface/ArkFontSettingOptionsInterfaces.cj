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
public interface FontSettingOptionsInterfaces <:  {
    public mut open prop enableVariableFontWeight: Option<Bool>
}
public open class FontSettingOptions <: FontSettingOptionsInterfaces {
    private var enableVariableFontWeight_container: Option<Bool>
    public mut open prop enableVariableFontWeight: Option<Bool>
    {
        get() {
            return enableVariableFontWeight_container
        }
        set(enableVariableFontWeight) {
            enableVariableFontWeight_container = enableVariableFontWeight
        }
    }
    FontSettingOptions(enableVariableFontWeight: Option<Bool>) {
        this.enableVariableFontWeight_container = enableVariableFontWeight
    }
}
public open class FontSettingOptions_serializer {
    public static func write(buffer: SerializerBase, value: FontSettingOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnableVariableFontWeight = value.enableVariableFontWeight
        if (valueHolderForEnableVariableFontWeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableVariableFontWeightTmpValue = valueHolderForEnableVariableFontWeight
            valueSerializer.writeBoolean(valueHolderForEnableVariableFontWeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FontSettingOptions {
        var valueDeserializer: DeserializerBase = buffer
        let enableVariableFontWeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableVariableFontWeightTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableVariableFontWeightTmpBuf_runtimeType))) {
            enableVariableFontWeightTmpBuf = valueDeserializer.readBoolean()
        }
        let enableVariableFontWeightTmpResult: Option<Bool> = enableVariableFontWeightTmpBuf
        var value: FontSettingOptions = FontSettingOptions(enableVariableFontWeightTmpResult)
        return value
    }
}
