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
public interface EventLocationInfoInterfaces <:  {
    public mut open prop x: Float64
    public mut open prop y: Float64
    public mut open prop windowX: Float64
    public mut open prop windowY: Float64
    public mut open prop displayX: Float64
    public mut open prop displayY: Float64
}
public open class EventLocationInfo <: EventLocationInfoInterfaces {
    private var x_container: Float64
    public mut open prop x: Float64
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Float64
    public mut open prop y: Float64
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var windowX_container: Float64
    public mut open prop windowX: Float64
    {
        get() {
            return windowX_container
        }
        set(windowX) {
            windowX_container = windowX
        }
    }
    private var windowY_container: Float64
    public mut open prop windowY: Float64
    {
        get() {
            return windowY_container
        }
        set(windowY) {
            windowY_container = windowY
        }
    }
    private var displayX_container: Float64
    public mut open prop displayX: Float64
    {
        get() {
            return displayX_container
        }
        set(displayX) {
            displayX_container = displayX
        }
    }
    private var displayY_container: Float64
    public mut open prop displayY: Float64
    {
        get() {
            return displayY_container
        }
        set(displayY) {
            displayY_container = displayY
        }
    }
    EventLocationInfo(x: Float64, y: Float64, windowX: Float64, windowY: Float64, displayX: Float64, displayY: Float64) {
        this.x_container = x
        this.y_container = y
        this.windowX_container = windowX
        this.windowY_container = windowY
        this.displayX_container = displayX
        this.displayY_container = displayY
    }
}
public open class EventLocationInfo_serializer {
    public static func write(buffer: SerializerBase, value: EventLocationInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        valueSerializer.writeNumber(valueHolderForX);
        let valueHolderForY = value.y
        valueSerializer.writeNumber(valueHolderForY);
        let valueHolderForWindowX = value.windowX
        valueSerializer.writeNumber(valueHolderForWindowX);
        let valueHolderForWindowY = value.windowY
        valueSerializer.writeNumber(valueHolderForWindowY);
        let valueHolderForDisplayX = value.displayX
        valueSerializer.writeNumber(valueHolderForDisplayX);
        let valueHolderForDisplayY = value.displayY
        valueSerializer.writeNumber(valueHolderForDisplayY);
    }
    public static func read(buffer: DeserializerBase): EventLocationInfo {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let windowXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let windowYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let displayXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let displayYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: EventLocationInfo = EventLocationInfo(xTmpResult, yTmpResult, windowXTmpResult, windowYTmpResult, displayXTmpResult, displayYTmpResult)
        return value
    }
}
