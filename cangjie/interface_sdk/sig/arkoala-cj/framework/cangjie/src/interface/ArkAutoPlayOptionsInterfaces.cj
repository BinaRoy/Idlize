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
public interface AutoPlayOptionsInterfaces <:  {
    public mut open prop stopWhenTouched: Bool
}
public open class AutoPlayOptions <: AutoPlayOptionsInterfaces {
    private var stopWhenTouched_container: Bool
    public mut open prop stopWhenTouched: Bool
    {
        get() {
            return stopWhenTouched_container
        }
        set(stopWhenTouched) {
            stopWhenTouched_container = stopWhenTouched
        }
    }
    AutoPlayOptions(stopWhenTouched: Bool) {
        this.stopWhenTouched_container = stopWhenTouched
    }
}
public open class AutoPlayOptions_serializer {
    public static func write(buffer: SerializerBase, value: AutoPlayOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStopWhenTouched = value.stopWhenTouched
        valueSerializer.writeBoolean(valueHolderForStopWhenTouched);
    }
    public static func read(buffer: DeserializerBase): AutoPlayOptions {
        var valueDeserializer: DeserializerBase = buffer
        let stopWhenTouchedTmpResult: Bool = valueDeserializer.readBoolean()
        var value: AutoPlayOptions = AutoPlayOptions(stopWhenTouchedTmpResult)
        return value
    }
}
