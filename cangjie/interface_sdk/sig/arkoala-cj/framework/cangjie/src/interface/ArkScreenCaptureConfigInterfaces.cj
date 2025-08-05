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
public interface ScreenCaptureConfigInterfaces <:  {
    public mut open prop captureMode: WebCaptureMode
}
public open class ScreenCaptureConfig <: ScreenCaptureConfigInterfaces {
    private var captureMode_container: WebCaptureMode
    public mut open prop captureMode: WebCaptureMode
    {
        get() {
            return captureMode_container
        }
        set(captureMode) {
            captureMode_container = captureMode
        }
    }
    ScreenCaptureConfig(captureMode: WebCaptureMode) {
        this.captureMode_container = captureMode
    }
}
public open class ScreenCaptureConfig_serializer {
    public static func write(buffer: SerializerBase, value: ScreenCaptureConfig): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForCaptureMode = value.captureMode
        valueSerializer.writeInt32(valueHolderForCaptureMode.value);
    }
    public static func read(buffer: DeserializerBase): ScreenCaptureConfig {
        var valueDeserializer: DeserializerBase = buffer
        let captureModeTmpResult: WebCaptureMode = WebCaptureMode(valueDeserializer.readInt32())
        var value: ScreenCaptureConfig = ScreenCaptureConfig(captureModeTmpResult)
        return value
    }
}
