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
public interface TerminationInfoInterfaces <:  {
    public mut open prop code: Float64
    public mut open prop want: Option<Any>
}
public open class TerminationInfo <: TerminationInfoInterfaces {
    private var code_container: Float64
    public mut open prop code: Float64
    {
        get() {
            return code_container
        }
        set(code) {
            code_container = code
        }
    }
    private var want_container: Option<Any>
    public mut open prop want: Option<Any>
    {
        get() {
            return want_container
        }
        set(want) {
            want_container = want
        }
    }
    TerminationInfo(code: Float64, want: Option<Any>) {
        this.code_container = code
        this.want_container = want
    }
}
public open class TerminationInfo_serializer {
    public static func write(buffer: SerializerBase, value: TerminationInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForCode = value.code
        valueSerializer.writeNumber(valueHolderForCode);
        let valueHolderForWant = value.want
        if (valueHolderForWant.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWantTmpValue = valueHolderForWant
            valueSerializer.writeCustomObject("Any", valueHolderForWantTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TerminationInfo {
        var valueDeserializer: DeserializerBase = buffer
        let codeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let wantTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var wantTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(wantTmpBuf_runtimeType))) {
            wantTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let wantTmpResult: Option<Any> = wantTmpBuf
        var value: TerminationInfo = TerminationInfo(codeTmpResult, wantTmpResult)
        return value
    }
}
