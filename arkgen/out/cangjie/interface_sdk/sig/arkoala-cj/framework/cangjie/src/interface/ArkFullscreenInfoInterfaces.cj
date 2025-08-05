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
public interface FullscreenInfoInterfaces <:  {
    public mut open prop fullscreen: Bool
}
public open class FullscreenInfo <: FullscreenInfoInterfaces {
    private var fullscreen_container: Bool
    public mut open prop fullscreen: Bool
    {
        get() {
            return fullscreen_container
        }
        set(fullscreen) {
            fullscreen_container = fullscreen
        }
    }
    FullscreenInfo(fullscreen: Bool) {
        this.fullscreen_container = fullscreen
    }
}
public open class FullscreenInfo_serializer {
    public static func write(buffer: SerializerBase, value: FullscreenInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFullscreen = value.fullscreen
        valueSerializer.writeBoolean(valueHolderForFullscreen);
    }
    public static func read(buffer: DeserializerBase): FullscreenInfo {
        var valueDeserializer: DeserializerBase = buffer
        let fullscreenTmpResult: Bool = valueDeserializer.readBoolean()
        var value: FullscreenInfo = FullscreenInfo(fullscreenTmpResult)
        return value
    }
}
