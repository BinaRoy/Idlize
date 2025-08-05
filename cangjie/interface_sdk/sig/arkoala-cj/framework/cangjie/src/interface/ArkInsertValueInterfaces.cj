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
public interface InsertValueInterfaces <:  {
    public mut open prop insertOffset: Float64
    public mut open prop insertValue: String
}
public open class InsertValue <: InsertValueInterfaces {
    private var insertOffset_container: Float64
    public mut open prop insertOffset: Float64
    {
        get() {
            return insertOffset_container
        }
        set(insertOffset) {
            insertOffset_container = insertOffset
        }
    }
    private var insertValue_container: String
    public mut open prop insertValue: String
    {
        get() {
            return insertValue_container
        }
        set(insertValue) {
            insertValue_container = insertValue
        }
    }
    InsertValue(insertOffset: Float64, insertValue: String) {
        this.insertOffset_container = insertOffset
        this.insertValue_container = insertValue
    }
}
public open class InsertValue_serializer {
    public static func write(buffer: SerializerBase, value: InsertValue): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForInsertOffset = value.insertOffset
        valueSerializer.writeNumber(valueHolderForInsertOffset);
        let valueHolderForInsertValue = value.insertValue
        valueSerializer.writeString(valueHolderForInsertValue);
    }
    public static func read(buffer: DeserializerBase): InsertValue {
        var valueDeserializer: DeserializerBase = buffer
        let insertOffsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let insertValueTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: InsertValue = InsertValue(insertOffsetTmpResult, insertValueTmpResult)
        return value
    }
}
