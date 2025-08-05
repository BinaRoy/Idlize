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
public interface TouchResultInterfaces <:  {
    public mut open prop strategy: TouchTestStrategy
    public mut open prop id: Option<String>
}
public open class TouchResult <: TouchResultInterfaces {
    private var strategy_container: TouchTestStrategy
    public mut open prop strategy: TouchTestStrategy
    {
        get() {
            return strategy_container
        }
        set(strategy) {
            strategy_container = strategy
        }
    }
    private var id_container: Option<String>
    public mut open prop id: Option<String>
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    TouchResult(strategy: TouchTestStrategy, id: Option<String>) {
        this.strategy_container = strategy
        this.id_container = id
    }
}
public open class TouchResult_serializer {
    public static func write(buffer: SerializerBase, value: TouchResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStrategy = value.strategy
        valueSerializer.writeInt32(valueHolderForStrategy.value);
        let valueHolderForId = value.id
        if (valueHolderForId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIdTmpValue = valueHolderForId
            valueSerializer.writeString(valueHolderForIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TouchResult {
        var valueDeserializer: DeserializerBase = buffer
        let strategyTmpResult: TouchTestStrategy = TouchTestStrategy(valueDeserializer.readInt32())
        let idTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var idTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(idTmpBuf_runtimeType))) {
            idTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let idTmpResult: Option<String> = idTmpBuf
        var value: TouchResult = TouchResult(strategyTmpResult, idTmpResult)
        return value
    }
}
