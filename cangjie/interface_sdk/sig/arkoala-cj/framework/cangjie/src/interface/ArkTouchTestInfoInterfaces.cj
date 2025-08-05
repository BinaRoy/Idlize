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
public interface TouchTestInfoInterfaces <:  {
    public mut open prop windowX: Float64
    public mut open prop windowY: Float64
    public mut open prop parentX: Float64
    public mut open prop parentY: Float64
    public mut open prop x: Float64
    public mut open prop y: Float64
    public mut open prop rect: RectResult
    public mut open prop id: String
}
public open class TouchTestInfo <: TouchTestInfoInterfaces {
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
    private var parentX_container: Float64
    public mut open prop parentX: Float64
    {
        get() {
            return parentX_container
        }
        set(parentX) {
            parentX_container = parentX
        }
    }
    private var parentY_container: Float64
    public mut open prop parentY: Float64
    {
        get() {
            return parentY_container
        }
        set(parentY) {
            parentY_container = parentY
        }
    }
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
    private var rect_container: RectResult
    public mut open prop rect: RectResult
    {
        get() {
            return rect_container
        }
        set(rect) {
            rect_container = rect
        }
    }
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
    TouchTestInfo(windowX: Float64, windowY: Float64, parentX: Float64, parentY: Float64, x: Float64, y: Float64, rect: RectResult, id: String) {
        this.windowX_container = windowX
        this.windowY_container = windowY
        this.parentX_container = parentX
        this.parentY_container = parentY
        this.x_container = x
        this.y_container = y
        this.rect_container = rect
        this.id_container = id
    }
}
public open class TouchTestInfo_serializer {
    public static func write(buffer: SerializerBase, value: TouchTestInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWindowX = value.windowX
        valueSerializer.writeNumber(valueHolderForWindowX);
        let valueHolderForWindowY = value.windowY
        valueSerializer.writeNumber(valueHolderForWindowY);
        let valueHolderForParentX = value.parentX
        valueSerializer.writeNumber(valueHolderForParentX);
        let valueHolderForParentY = value.parentY
        valueSerializer.writeNumber(valueHolderForParentY);
        let valueHolderForX = value.x
        valueSerializer.writeNumber(valueHolderForX);
        let valueHolderForY = value.y
        valueSerializer.writeNumber(valueHolderForY);
        let valueHolderForRect = value.rect
        RectResult_serializer.write(valueSerializer, valueHolderForRect);
        let valueHolderForId = value.id
        valueSerializer.writeString(valueHolderForId);
    }
    public static func read(buffer: DeserializerBase): TouchTestInfo {
        var valueDeserializer: DeserializerBase = buffer
        let windowXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let windowYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let parentXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let parentYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let xTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let rectTmpResult: RectResult = RectResult_serializer.read(valueDeserializer)
        let idTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TouchTestInfo = TouchTestInfo(windowXTmpResult, windowYTmpResult, parentXTmpResult, parentYTmpResult, xTmpResult, yTmpResult, rectTmpResult, idTmpResult)
        return value
    }
}
