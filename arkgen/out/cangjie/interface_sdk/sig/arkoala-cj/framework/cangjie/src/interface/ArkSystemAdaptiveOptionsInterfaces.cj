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
public interface SystemAdaptiveOptionsInterfaces <:  {
    public mut open prop disableSystemAdaptation: Option<Bool>
}
public open class SystemAdaptiveOptions <: SystemAdaptiveOptionsInterfaces {
    private var disableSystemAdaptation_container: Option<Bool>
    public mut open prop disableSystemAdaptation: Option<Bool>
    {
        get() {
            return disableSystemAdaptation_container
        }
        set(disableSystemAdaptation) {
            disableSystemAdaptation_container = disableSystemAdaptation
        }
    }
    SystemAdaptiveOptions(disableSystemAdaptation: Option<Bool>) {
        this.disableSystemAdaptation_container = disableSystemAdaptation
    }
}
public open class SystemAdaptiveOptions_serializer {
    public static func write(buffer: SerializerBase, value: SystemAdaptiveOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDisableSystemAdaptation = value.disableSystemAdaptation
        if (valueHolderForDisableSystemAdaptation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisableSystemAdaptationTmpValue = valueHolderForDisableSystemAdaptation
            valueSerializer.writeBoolean(valueHolderForDisableSystemAdaptationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SystemAdaptiveOptions {
        var valueDeserializer: DeserializerBase = buffer
        let disableSystemAdaptationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disableSystemAdaptationTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disableSystemAdaptationTmpBuf_runtimeType))) {
            disableSystemAdaptationTmpBuf = valueDeserializer.readBoolean()
        }
        let disableSystemAdaptationTmpResult: Option<Bool> = disableSystemAdaptationTmpBuf
        var value: SystemAdaptiveOptions = SystemAdaptiveOptions(disableSystemAdaptationTmpResult)
        return value
    }
}
