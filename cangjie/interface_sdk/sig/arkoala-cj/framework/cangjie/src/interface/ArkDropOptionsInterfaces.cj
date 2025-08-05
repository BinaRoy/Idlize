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
public interface DropOptionsInterfaces <:  {
    public mut open prop disableDataPrefetch: Option<Bool>
}
public open class DropOptions <: DropOptionsInterfaces {
    private var disableDataPrefetch_container: Option<Bool>
    public mut open prop disableDataPrefetch: Option<Bool>
    {
        get() {
            return disableDataPrefetch_container
        }
        set(disableDataPrefetch) {
            disableDataPrefetch_container = disableDataPrefetch
        }
    }
    DropOptions(disableDataPrefetch: Option<Bool>) {
        this.disableDataPrefetch_container = disableDataPrefetch
    }
}
public open class DropOptions_serializer {
    public static func write(buffer: SerializerBase, value: DropOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDisableDataPrefetch = value.disableDataPrefetch
        if (valueHolderForDisableDataPrefetch.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisableDataPrefetchTmpValue = valueHolderForDisableDataPrefetch
            valueSerializer.writeBoolean(valueHolderForDisableDataPrefetchTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DropOptions {
        var valueDeserializer: DeserializerBase = buffer
        let disableDataPrefetchTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disableDataPrefetchTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disableDataPrefetchTmpBuf_runtimeType))) {
            disableDataPrefetchTmpBuf = valueDeserializer.readBoolean()
        }
        let disableDataPrefetchTmpResult: Option<Bool> = disableDataPrefetchTmpBuf
        var value: DropOptions = DropOptions(disableDataPrefetchTmpResult)
        return value
    }
}
