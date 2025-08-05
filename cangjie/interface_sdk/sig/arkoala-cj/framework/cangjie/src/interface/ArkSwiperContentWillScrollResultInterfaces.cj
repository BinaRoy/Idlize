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
public interface SwiperContentWillScrollResultInterfaces <:  {
    public mut open prop currentIndex: Float64
    public mut open prop comingIndex: Float64
    public mut open prop offset: Float64
}
public open class SwiperContentWillScrollResult <: SwiperContentWillScrollResultInterfaces {
    private var currentIndex_container: Float64
    public mut open prop currentIndex: Float64
    {
        get() {
            return currentIndex_container
        }
        set(currentIndex) {
            currentIndex_container = currentIndex
        }
    }
    private var comingIndex_container: Float64
    public mut open prop comingIndex: Float64
    {
        get() {
            return comingIndex_container
        }
        set(comingIndex) {
            comingIndex_container = comingIndex
        }
    }
    private var offset_container: Float64
    public mut open prop offset: Float64
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    SwiperContentWillScrollResult(currentIndex: Float64, comingIndex: Float64, offset: Float64) {
        this.currentIndex_container = currentIndex
        this.comingIndex_container = comingIndex
        this.offset_container = offset
    }
}
public open class SwiperContentWillScrollResult_serializer {
    public static func write(buffer: SerializerBase, value: SwiperContentWillScrollResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForCurrentIndex = value.currentIndex
        valueSerializer.writeNumber(valueHolderForCurrentIndex);
        let valueHolderForComingIndex = value.comingIndex
        valueSerializer.writeNumber(valueHolderForComingIndex);
        let valueHolderForOffset = value.offset
        valueSerializer.writeNumber(valueHolderForOffset);
    }
    public static func read(buffer: DeserializerBase): SwiperContentWillScrollResult {
        var valueDeserializer: DeserializerBase = buffer
        let currentIndexTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let comingIndexTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let offsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: SwiperContentWillScrollResult = SwiperContentWillScrollResult(currentIndexTmpResult, comingIndexTmpResult, offsetTmpResult)
        return value
    }
}
