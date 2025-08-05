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
public interface BreakPointsInterfaces <:  {
    public mut open prop value: Option<ArrayList<String>>
    public mut open prop reference: Option<BreakpointsReference>
}
public open class BreakPoints <: BreakPointsInterfaces {
    private var value_container: Option<ArrayList<String>>
    public mut open prop value: Option<ArrayList<String>>
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var reference_container: Option<BreakpointsReference>
    public mut open prop reference: Option<BreakpointsReference>
    {
        get() {
            return reference_container
        }
        set(reference) {
            reference_container = reference
        }
    }
    BreakPoints(value: Option<ArrayList<String>>, reference: Option<BreakpointsReference>) {
        this.value_container = value
        this.reference_container = reference
    }
}
public open class BreakPoints_serializer {
    public static func write(buffer: SerializerBase, value: BreakPoints): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValue = value.value
        if (valueHolderForValue.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValueTmpValue = valueHolderForValue
            valueSerializer.writeInt32(Int32(valueHolderForValueTmpValue.size));
            for (valueHolderForValueTmpValueCounterI in 0..valueHolderForValueTmpValue.size) {
                let valueHolderForValueTmpValueTmpElement: String = valueHolderForValueTmpValue[Int64(valueHolderForValueTmpValueCounterI)]
                valueSerializer.writeString(valueHolderForValueTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForReference = value.reference
        if (valueHolderForReference.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForReferenceTmpValue = valueHolderForReference
            valueSerializer.writeInt32(valueHolderForReferenceTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BreakPoints {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueTmpBuf: Option<ArrayList<String>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueTmpBuf_runtimeType))) {
            let valueTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var valueTmpBuf_: ArrayList<String> = ArrayList<String>(Int64(valueTmpBuf_Length))
            valueTmpBuf_ = ArrayList<String>(Int64(valueTmpBuf_Length))
            for (valueTmpBuf_BufCounterI in 0..valueTmpBuf_Length) {
                valueTmpBuf_[Int64(valueTmpBuf_BufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            valueTmpBuf = valueTmpBuf_
        }
        let valueTmpResult: Option<ArrayList<String>> = valueTmpBuf
        let referenceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var referenceTmpBuf: Option<BreakpointsReference> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(referenceTmpBuf_runtimeType))) {
            referenceTmpBuf = BreakpointsReference(valueDeserializer.readInt32())
        }
        let referenceTmpResult: Option<BreakpointsReference> = referenceTmpBuf
        var value: BreakPoints = BreakPoints(valueTmpResult, referenceTmpResult)
        return value
    }
}
