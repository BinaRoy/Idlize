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
public interface BarrierStyleInterfaces <:  {
    public mut open prop id: String
    public mut open prop direction: BarrierDirection
    public mut open prop referencedId: ArrayList<String>
}
public open class BarrierStyle <: BarrierStyleInterfaces {
    private var id_container: String
    public mut open prop id: String
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var direction_container: BarrierDirection
    public mut open prop direction: BarrierDirection
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var referencedId_container: ArrayList<String>
    public mut open prop referencedId: ArrayList<String>
    {
        get() {
            return referencedId_container
        }
        set(referencedId) {
            referencedId_container = referencedId
        }
    }
    BarrierStyle(id: String, direction: BarrierDirection, referencedId: ArrayList<String>) {
        this.id_container = id
        this.direction_container = direction
        this.referencedId_container = referencedId
    }
}
public open class BarrierStyle_serializer {
    public static func write(buffer: SerializerBase, value: BarrierStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForId = value.id
        valueSerializer.writeString(valueHolderForId);
        let valueHolderForDirection = value.direction
        valueSerializer.writeInt32(valueHolderForDirection.value);
        let valueHolderForReferencedId = value.referencedId
        valueSerializer.writeInt32(Int32(valueHolderForReferencedId.size));
        for (valueHolderForReferencedIdCounterI in 0..valueHolderForReferencedId.size) {
            let valueHolderForReferencedIdTmpElement: String = valueHolderForReferencedId[Int64(valueHolderForReferencedIdCounterI)]
            valueSerializer.writeString(valueHolderForReferencedIdTmpElement);
        }
    }
    public static func read(buffer: DeserializerBase): BarrierStyle {
        var valueDeserializer: DeserializerBase = buffer
        let idTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let directionTmpResult: BarrierDirection = BarrierDirection(valueDeserializer.readInt32())
        let referencedIdTmpBufLength: Int32 = valueDeserializer.readInt32()
        var referencedIdTmpBuf: ArrayList<String> = ArrayList<String>(Int64(referencedIdTmpBufLength))
        referencedIdTmpBuf = ArrayList<String>(Int64(referencedIdTmpBufLength))
        for (referencedIdTmpBufBufCounterI in 0..referencedIdTmpBufLength) {
            referencedIdTmpBuf[Int64(referencedIdTmpBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let referencedIdTmpResult: ArrayList<String> = referencedIdTmpBuf
        var value: BarrierStyle = BarrierStyle(idTmpResult, directionTmpResult, referencedIdTmpResult)
        return value
    }
}
