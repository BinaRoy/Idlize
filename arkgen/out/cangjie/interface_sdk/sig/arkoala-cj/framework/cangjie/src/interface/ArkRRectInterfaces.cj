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
public interface RRectInterfaces <:  {
    public mut open prop left: Float64
    public mut open prop top: Float64
    public mut open prop width: Float64
    public mut open prop height: Float64
    public mut open prop radius: Float64
}
public open class RRect <: RRectInterfaces {
    private var left_container: Float64
    public mut open prop left: Float64
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
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
    private var width_container: Float64
    public mut open prop width: Float64
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Float64
    public mut open prop height: Float64
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var radius_container: Float64
    public mut open prop radius: Float64
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    RRect(left: Float64, top: Float64, width: Float64, height: Float64, radius: Float64) {
        this.left_container = left
        this.top_container = top
        this.width_container = width
        this.height_container = height
        this.radius_container = radius
    }
}
public open class RRect_serializer {
    public static func write(buffer: SerializerBase, value: RRect): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForLeft = value.left
        valueSerializer.writeNumber(valueHolderForLeft);
        let valueHolderForTop = value.top
        valueSerializer.writeNumber(valueHolderForTop);
        let valueHolderForWidth = value.width
        valueSerializer.writeNumber(valueHolderForWidth);
        let valueHolderForHeight = value.height
        valueSerializer.writeNumber(valueHolderForHeight);
        let valueHolderForRadius = value.radius
        valueSerializer.writeNumber(valueHolderForRadius);
    }
    public static func read(buffer: DeserializerBase): RRect {
        var valueDeserializer: DeserializerBase = buffer
        let leftTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let topTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let widthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let radiusTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: RRect = RRect(leftTmpResult, topTmpResult, widthTmpResult, heightTmpResult, radiusTmpResult)
        return value
    }
}
