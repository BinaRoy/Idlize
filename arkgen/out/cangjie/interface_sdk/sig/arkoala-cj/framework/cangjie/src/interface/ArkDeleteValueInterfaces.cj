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
public interface DeleteValueInterfaces <:  {
    public mut open prop deleteOffset: Float64
    public mut open prop direction: TextDeleteDirection
    public mut open prop deleteValue: String
}
public open class DeleteValue <: DeleteValueInterfaces {
    private var deleteOffset_container: Float64
    public mut open prop deleteOffset: Float64
    {
        get() {
            return deleteOffset_container
        }
        set(deleteOffset) {
            deleteOffset_container = deleteOffset
        }
    }
    private var direction_container: TextDeleteDirection
    public mut open prop direction: TextDeleteDirection
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var deleteValue_container: String
    public mut open prop deleteValue: String
    {
        get() {
            return deleteValue_container
        }
        set(deleteValue) {
            deleteValue_container = deleteValue
        }
    }
    DeleteValue(deleteOffset: Float64, direction: TextDeleteDirection, deleteValue: String) {
        this.deleteOffset_container = deleteOffset
        this.direction_container = direction
        this.deleteValue_container = deleteValue
    }
}
public open class DeleteValue_serializer {
    public static func write(buffer: SerializerBase, value: DeleteValue): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDeleteOffset = value.deleteOffset
        valueSerializer.writeNumber(valueHolderForDeleteOffset);
        let valueHolderForDirection = value.direction
        valueSerializer.writeInt32(valueHolderForDirection.value);
        let valueHolderForDeleteValue = value.deleteValue
        valueSerializer.writeString(valueHolderForDeleteValue);
    }
    public static func read(buffer: DeserializerBase): DeleteValue {
        var valueDeserializer: DeserializerBase = buffer
        let deleteOffsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let directionTmpResult: TextDeleteDirection = TextDeleteDirection(valueDeserializer.readInt32())
        let deleteValueTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: DeleteValue = DeleteValue(deleteOffsetTmpResult, directionTmpResult, deleteValueTmpResult)
        return value
    }
}
