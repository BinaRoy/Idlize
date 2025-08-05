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
public interface NativeMediaPlayerConfigInterfaces <:  {
    public mut open prop enable: Bool
    public mut open prop shouldOverlay: Bool
}
public open class NativeMediaPlayerConfig <: NativeMediaPlayerConfigInterfaces {
    private var enable_container: Bool
    public mut open prop enable: Bool
    {
        get() {
            return enable_container
        }
        set(enable) {
            enable_container = enable
        }
    }
    private var shouldOverlay_container: Bool
    public mut open prop shouldOverlay: Bool
    {
        get() {
            return shouldOverlay_container
        }
        set(shouldOverlay) {
            shouldOverlay_container = shouldOverlay
        }
    }
    NativeMediaPlayerConfig(enable: Bool, shouldOverlay: Bool) {
        this.enable_container = enable
        this.shouldOverlay_container = shouldOverlay
    }
}
public open class NativeMediaPlayerConfig_serializer {
    public static func write(buffer: SerializerBase, value: NativeMediaPlayerConfig): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnable = value.enable
        valueSerializer.writeBoolean(valueHolderForEnable);
        let valueHolderForShouldOverlay = value.shouldOverlay
        valueSerializer.writeBoolean(valueHolderForShouldOverlay);
    }
    public static func read(buffer: DeserializerBase): NativeMediaPlayerConfig {
        var valueDeserializer: DeserializerBase = buffer
        let enableTmpResult: Bool = valueDeserializer.readBoolean()
        let shouldOverlayTmpResult: Bool = valueDeserializer.readBoolean()
        var value: NativeMediaPlayerConfig = NativeMediaPlayerConfig(enableTmpResult, shouldOverlayTmpResult)
        return value
    }
}
