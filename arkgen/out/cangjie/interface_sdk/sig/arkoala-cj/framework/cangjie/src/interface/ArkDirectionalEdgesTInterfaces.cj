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
public interface DirectionalEdgesTInterfaces <:  {
    public mut open prop start: Float64
    public mut open prop end: Float64
    public mut open prop top: Float64
    public mut open prop bottom: Float64
}
public open class DirectionalEdgesT <: DirectionalEdgesTInterfaces {
    private var start_container: Float64
    public mut open prop start: Float64
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Float64
    public mut open prop end: Float64
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var top_container: Float64
    public mut open prop top: Float64
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var bottom_container: Float64
    public mut open prop bottom: Float64
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    DirectionalEdgesT(start: Float64, end: Float64, top: Float64, bottom: Float64) {
        this.start_container = start
        this.end_container = end
        this.top_container = top
        this.bottom_container = bottom
    }
}
public open class DirectionalEdgesT_serializer {
    public static func write(buffer: SerializerBase, value: DirectionalEdgesT): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        valueSerializer.writeNumber(valueHolderForStart);
        let valueHolderForEnd = value.end
        valueSerializer.writeNumber(valueHolderForEnd);
        let valueHolderForTop = value.top
        valueSerializer.writeNumber(valueHolderForTop);
        let valueHolderForBottom = value.bottom
        valueSerializer.writeNumber(valueHolderForBottom);
    }
    public static func read(buffer: DeserializerBase): DirectionalEdgesT {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let endTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let topTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let bottomTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: DirectionalEdgesT = DirectionalEdgesT(startTmpResult, endTmpResult, topTmpResult, bottomTmpResult)
        return value
    }
}
