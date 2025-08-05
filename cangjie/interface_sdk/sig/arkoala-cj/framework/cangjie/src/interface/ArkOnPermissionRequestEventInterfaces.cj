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
public interface OnPermissionRequestEventInterfaces <:  {
    public mut open prop request: PermissionRequest
}
public open class OnPermissionRequestEvent <: OnPermissionRequestEventInterfaces {
    private var request_container: PermissionRequest
    public mut open prop request: PermissionRequest
    {
        get() {
            return request_container
        }
        set(request) {
            request_container = request
        }
    }
    OnPermissionRequestEvent(request: PermissionRequest) {
        this.request_container = request
    }
}
public open class OnPermissionRequestEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnPermissionRequestEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRequest = value.request
        PermissionRequest_serializer.write(valueSerializer, valueHolderForRequest);
    }
    public static func read(buffer: DeserializerBase): OnPermissionRequestEvent {
        var valueDeserializer: DeserializerBase = buffer
        let requestTmpResult: PermissionRequest = match (PermissionRequest_serializer.read(valueDeserializer) as PermissionRequest) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnPermissionRequestEvent = OnPermissionRequestEvent(requestTmpResult)
        return value
    }
}
