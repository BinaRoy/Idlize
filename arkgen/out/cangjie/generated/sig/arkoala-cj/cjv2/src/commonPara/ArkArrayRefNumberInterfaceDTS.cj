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

public class ArrayRefNumberInterfaceDTS {
    public var tuple: Option<ArrayList<Float64>>
    init(tuple: Option<ArrayList<Float64>>) {
        this.tuple = tuple
    }
}
public class ArrayRefNumberInterfaceDTS_serializer {
    public  static func write(buffer: SerializerBase, value: ArrayRefNumberInterfaceDTS): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTuple = value.tuple
        if (let Some(valueHolderForTuple) <- valueHolderForTuple) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTupleTmpValue = valueHolderForTuple
            valueSerializer.writeInt32(Int32(valueHolderForTupleTmpValue.size))
            for (valueHolderForTupleTmpValueCounterI in 0..valueHolderForTupleTmpValue.size) {
                let valueHolderForTupleTmpValueTmpElement: Float64 = valueHolderForTupleTmpValue[Int64(valueHolderForTupleTmpValueCounterI)]
                valueSerializer.writeNumber(valueHolderForTupleTmpValueTmpElement)
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): ArrayRefNumberInterfaceDTS {
        var valueDeserializer: DeserializerBase = buffer
        let tupleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var tupleTmpBuf: Option<ArrayList<Float64>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(tupleTmpBuf_runtimeType))) {
            let tupleTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var tupleTmpBuf_: ArrayList<Float64> = ArrayList<Float64>(Int64(tupleTmpBuf_Length))
            tupleTmpBuf_ = ArrayList<Float64>(Int64(tupleTmpBuf_Length))
            for (tupleTmpBuf_BufCounterI in 0..tupleTmpBuf_Length) {
                tupleTmpBuf_[Int64(tupleTmpBuf_BufCounterI)] = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            tupleTmpBuf = tupleTmpBuf_
        }
        let tupleTmpResult: Option<ArrayList<Float64>> = tupleTmpBuf
        var value: ArrayRefNumberInterfaceDTS = ArrayRefNumberInterfaceDTS(tupleTmpResult)
        return value
    }
}
