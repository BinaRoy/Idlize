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
public interface OnFirstContentfulPaintEventInterfaces <:  {
    public mut open prop navigationStartTick: Any
    public mut open prop firstContentfulPaintMs: Any
}
public open class OnFirstContentfulPaintEvent <: OnFirstContentfulPaintEventInterfaces {
    private var navigationStartTick_container: Any
    public mut open prop navigationStartTick: Any
    {
        get() {
            return navigationStartTick_container
        }
        set(navigationStartTick) {
            navigationStartTick_container = navigationStartTick
        }
    }
    private var firstContentfulPaintMs_container: Any
    public mut open prop firstContentfulPaintMs: Any
    {
        get() {
            return firstContentfulPaintMs_container
        }
        set(firstContentfulPaintMs) {
            firstContentfulPaintMs_container = firstContentfulPaintMs
        }
    }
    OnFirstContentfulPaintEvent(navigationStartTick: Any, firstContentfulPaintMs: Any) {
        this.navigationStartTick_container = navigationStartTick
        this.firstContentfulPaintMs_container = firstContentfulPaintMs
    }
}
public open class OnFirstContentfulPaintEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnFirstContentfulPaintEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForNavigationStartTick = value.navigationStartTick
        valueSerializer.writeCustomObject("Any", valueHolderForNavigationStartTick);
        let valueHolderForFirstContentfulPaintMs = value.firstContentfulPaintMs
        valueSerializer.writeCustomObject("Any", valueHolderForFirstContentfulPaintMs);
    }
    public static func read(buffer: DeserializerBase): OnFirstContentfulPaintEvent {
        var valueDeserializer: DeserializerBase = buffer
        let navigationStartTickTmpResult: Any = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let firstContentfulPaintMsTmpResult: Any = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnFirstContentfulPaintEvent = OnFirstContentfulPaintEvent(navigationStartTickTmpResult, firstContentfulPaintMsTmpResult)
        return value
    }
}
