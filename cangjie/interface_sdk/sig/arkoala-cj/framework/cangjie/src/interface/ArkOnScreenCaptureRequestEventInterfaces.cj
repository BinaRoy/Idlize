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
public interface OnScreenCaptureRequestEventInterfaces <:  {
    public mut open prop handler: ScreenCaptureHandler
}
public open class OnScreenCaptureRequestEvent <: OnScreenCaptureRequestEventInterfaces {
    private var handler_container: ScreenCaptureHandler
    public mut open prop handler: ScreenCaptureHandler
    {
        get() {
            return handler_container
        }
        set(handler) {
            handler_container = handler
        }
    }
    OnScreenCaptureRequestEvent(handler: ScreenCaptureHandler) {
        this.handler_container = handler
    }
}
public open class OnScreenCaptureRequestEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnScreenCaptureRequestEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHandler = value.handler
        ScreenCaptureHandler_serializer.write(valueSerializer, valueHolderForHandler);
    }
    public static func read(buffer: DeserializerBase): OnScreenCaptureRequestEvent {
        var valueDeserializer: DeserializerBase = buffer
        let handlerTmpResult: ScreenCaptureHandler = match (ScreenCaptureHandler_serializer.read(valueDeserializer) as ScreenCaptureHandler) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnScreenCaptureRequestEvent = OnScreenCaptureRequestEvent(handlerTmpResult)
        return value
    }
}
