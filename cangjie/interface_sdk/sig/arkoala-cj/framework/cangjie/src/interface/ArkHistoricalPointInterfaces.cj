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
public interface HistoricalPointInterfaces <:  {
    public mut open prop touchObject: TouchObject
    public mut open prop size: Float64
    public mut open prop force: Float64
    public mut open prop timestamp: Int64
}
public open class HistoricalPoint <: HistoricalPointInterfaces {
    private var touchObject_container: TouchObject
    public mut open prop touchObject: TouchObject
    {
        get() {
            return touchObject_container
        }
        set(touchObject) {
            touchObject_container = touchObject
        }
    }
    private var size_container: Float64
    public mut open prop size: Float64
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    private var force_container: Float64
    public mut open prop force: Float64
    {
        get() {
            return force_container
        }
        set(force) {
            force_container = force
        }
    }
    private var timestamp_container: Int64
    public mut open prop timestamp: Int64
    {
        get() {
            return timestamp_container
        }
        set(timestamp) {
            timestamp_container = timestamp
        }
    }
    HistoricalPoint(touchObject: TouchObject, size: Float64, force: Float64, timestamp: Int64) {
        this.touchObject_container = touchObject
        this.size_container = size
        this.force_container = force
        this.timestamp_container = timestamp
    }
}
public open class HistoricalPoint_serializer {
    public static func write(buffer: SerializerBase, value: HistoricalPoint): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTouchObject = value.touchObject
        TouchObject_serializer.write(valueSerializer, valueHolderForTouchObject);
        let valueHolderForSize = value.size
        valueSerializer.writeNumber(valueHolderForSize);
        let valueHolderForForce = value.force
        valueSerializer.writeNumber(valueHolderForForce);
        let valueHolderForTimestamp = value.timestamp
        valueSerializer.writeInt64(valueHolderForTimestamp);
    }
    public static func read(buffer: DeserializerBase): HistoricalPoint {
        var valueDeserializer: DeserializerBase = buffer
        let touchObjectTmpResult: TouchObject = TouchObject_serializer.read(valueDeserializer)
        let sizeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let forceTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let timestampTmpResult: Int64 = valueDeserializer.readInt64()
        var value: HistoricalPoint = HistoricalPoint(touchObjectTmpResult, sizeTmpResult, forceTmpResult, timestampTmpResult)
        return value
    }
}
