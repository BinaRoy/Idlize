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
public interface ColumnOptionsInterfaces <:  {
    public mut open prop space: Option<Union_String_Number>
}
public open class ColumnOptions <: ColumnOptionsInterfaces {
    private var space_container: Option<Union_String_Number>
    public mut open prop space: Option<Union_String_Number>
    {
        get() {
            return space_container
        }
        set(space) {
            space_container = space
        }
    }
    ColumnOptions(space: Option<Union_String_Number>) {
        this.space_container = space
    }
}
public open class ColumnOptions_serializer {
    public static func write(buffer: SerializerBase, value: ColumnOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSpace = value.space
        if (valueHolderForSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSpaceTmpValue = valueHolderForSpace
            if (valueHolderForSpaceTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSpaceTmpValueForIdx0 = valueHolderForSpaceTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSpaceTmpValueForIdx0);
            } else if (valueHolderForSpaceTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSpaceTmpValueForIdx1 = valueHolderForSpaceTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSpaceTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ColumnOptions {
        var valueDeserializer: DeserializerBase = buffer
        let spaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var spaceTmpBuf: Option<Union_String_Number> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(spaceTmpBuf_runtimeType))) {
            let spaceTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var spaceTmpBuf_: Union_String_Number 
            if (spaceTmpBuf_UnionSelector == Int8(0)) {
                spaceTmpBuf_ = Union_String_Number(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (spaceTmpBuf_UnionSelector == Int8(1)) {
                spaceTmpBuf_ = Union_String_Number(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for spaceTmpBuf_ has to be chosen through deserialisation.")
            }
            spaceTmpBuf = match (spaceTmpBuf_ as Union_String_Number) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let spaceTmpResult: Option<Union_String_Number> = spaceTmpBuf
        var value: ColumnOptions = ColumnOptions(spaceTmpResult)
        return value
    }
}
