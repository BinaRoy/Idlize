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
public interface ColumnOptionsV2Interfaces <:  {
    public mut open prop stub: String
}
public open class ColumnOptionsV2 <: ColumnOptionsV2Interfaces {
    private var stub_container: String
    public mut open prop stub: String
    {
        get() {
            return stub_container
        }
        set(stub) {
            stub_container = stub
        }
    }
    ColumnOptionsV2(stub: String) {
        this.stub_container = stub
    }
}
public open class ColumnOptionsV2_serializer {
    public static func write(buffer: SerializerBase, value: ColumnOptionsV2): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStub = value.stub
        valueSerializer.writeString(valueHolderForStub);
    }
    public static func read(buffer: DeserializerBase): ColumnOptionsV2 {
        var valueDeserializer: DeserializerBase = buffer
        let stubTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: ColumnOptionsV2 = ColumnOptionsV2(stubTmpResult)
        return value
    }
}
