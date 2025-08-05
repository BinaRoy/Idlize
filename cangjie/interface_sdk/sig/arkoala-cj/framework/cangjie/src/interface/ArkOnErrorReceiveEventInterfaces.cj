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
public interface OnErrorReceiveEventInterfaces <:  {
    public mut open prop request: WebResourceRequest
    public mut open prop error: WebResourceError
}
public open class OnErrorReceiveEvent <: OnErrorReceiveEventInterfaces {
    private var request_container: WebResourceRequest
    public mut open prop request: WebResourceRequest
    {
        get() {
            return request_container
        }
        set(request) {
            request_container = request
        }
    }
    private var error_container: WebResourceError
    public mut open prop error: WebResourceError
    {
        get() {
            return error_container
        }
        set(error) {
            error_container = error
        }
    }
    OnErrorReceiveEvent(request: WebResourceRequest, error: WebResourceError) {
        this.request_container = request
        this.error_container = error
    }
}
public open class OnErrorReceiveEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnErrorReceiveEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRequest = value.request
        WebResourceRequest_serializer.write(valueSerializer, valueHolderForRequest);
        let valueHolderForError = value.error
        WebResourceError_serializer.write(valueSerializer, valueHolderForError);
    }
    public static func read(buffer: DeserializerBase): OnErrorReceiveEvent {
        var valueDeserializer: DeserializerBase = buffer
        let requestTmpResult: WebResourceRequest = match (WebResourceRequest_serializer.read(valueDeserializer) as WebResourceRequest) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let errorTmpResult: WebResourceError = match (WebResourceError_serializer.read(valueDeserializer) as WebResourceError) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnErrorReceiveEvent = OnErrorReceiveEvent(requestTmpResult, errorTmpResult)
        return value
    }
}
