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
public interface OnRenderExitedEventInterfaces <:  {
    public mut open prop renderExitReason: RenderExitReason
}
public open class OnRenderExitedEvent <: OnRenderExitedEventInterfaces {
    private var renderExitReason_container: RenderExitReason
    public mut open prop renderExitReason: RenderExitReason
    {
        get() {
            return renderExitReason_container
        }
        set(renderExitReason) {
            renderExitReason_container = renderExitReason
        }
    }
    OnRenderExitedEvent(renderExitReason: RenderExitReason) {
        this.renderExitReason_container = renderExitReason
    }
}
public open class OnRenderExitedEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnRenderExitedEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRenderExitReason = value.renderExitReason
        valueSerializer.writeInt32(valueHolderForRenderExitReason.value);
    }
    public static func read(buffer: DeserializerBase): OnRenderExitedEvent {
        var valueDeserializer: DeserializerBase = buffer
        let renderExitReasonTmpResult: RenderExitReason = RenderExitReason(valueDeserializer.readInt32())
        var value: OnRenderExitedEvent = OnRenderExitedEvent(renderExitReasonTmpResult)
        return value
    }
}
