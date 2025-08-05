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
public interface PositionWithAffinityInterfaces <:  {
    public mut open prop position: Float64
    public mut open prop affinity: Affinity
}
public open class PositionWithAffinity <: PositionWithAffinityInterfaces {
    private var position_container: Float64
    public mut open prop position: Float64
    {
        get() {
            return position_container
        }
        set(position) {
            position_container = position
        }
    }
    private var affinity_container: Affinity
    public mut open prop affinity: Affinity
    {
        get() {
            return affinity_container
        }
        set(affinity) {
            affinity_container = affinity
        }
    }
    PositionWithAffinity(position: Float64, affinity: Affinity) {
        this.position_container = position
        this.affinity_container = affinity
    }
}
public open class PositionWithAffinity_serializer {
    public static func write(buffer: SerializerBase, value: PositionWithAffinity): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPosition = value.position
        valueSerializer.writeNumber(valueHolderForPosition);
        let valueHolderForAffinity = value.affinity
        valueSerializer.writeCustomObject("Any", valueHolderForAffinity);
    }
    public static func read(buffer: DeserializerBase): PositionWithAffinity {
        var valueDeserializer: DeserializerBase = buffer
        let positionTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let affinityTmpResult: Affinity = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: PositionWithAffinity = PositionWithAffinity(positionTmpResult, affinityTmpResult)
        return value
    }
}
