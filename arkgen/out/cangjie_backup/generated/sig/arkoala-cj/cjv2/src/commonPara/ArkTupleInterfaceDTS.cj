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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class TupleInterfaceDTS {
    public var tuple: Option<(Float64, Bool)>
    init(tuple: Option<(Float64, Bool)>) {
        this.tuple = tuple
    }
}
public class TupleInterfaceDTS_serializer {
    public  static func write(buffer: SerializerBase, value: TupleInterfaceDTS): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTuple = value.tuple
        if (let Some(valueHolderForTuple) <- valueHolderForTuple) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTupleTmpValue = valueHolderForTuple
            valueSerializer.writeCustomObject("(Float64, Bool)", valueHolderForTupleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): TupleInterfaceDTS {
        var valueDeserializer: DeserializerBase = buffer
        let tupleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var tupleTmpBuf: Option<(Float64, Bool)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(tupleTmpBuf_runtimeType))) {
            tupleTmpBuf = match (valueDeserializer.readCustomObject("(Float64, Bool)") as (Float64, Bool)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let tupleTmpResult: Option<(Float64, Bool)> = tupleTmpBuf
        var value: TupleInterfaceDTS = TupleInterfaceDTS(tupleTmpResult)
        return value
    }
}
