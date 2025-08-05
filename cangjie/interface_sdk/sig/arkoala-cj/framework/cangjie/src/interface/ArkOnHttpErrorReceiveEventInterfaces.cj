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
public interface OnHttpErrorReceiveEventInterfaces <:  {
    public mut open prop request: WebResourceRequest
    public mut open prop response: WebResourceResponse
}
public open class OnHttpErrorReceiveEvent <: OnHttpErrorReceiveEventInterfaces {
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
    private var response_container: WebResourceResponse
    public mut open prop response: WebResourceResponse
    {
        get() {
            return response_container
        }
        set(response) {
            response_container = response
        }
    }
    OnHttpErrorReceiveEvent(request: WebResourceRequest, response: WebResourceResponse) {
        this.request_container = request
        this.response_container = response
    }
}
public open class OnHttpErrorReceiveEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnHttpErrorReceiveEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRequest = value.request
        WebResourceRequest_serializer.write(valueSerializer, valueHolderForRequest);
        let valueHolderForResponse = value.response
        WebResourceResponse_serializer.write(valueSerializer, valueHolderForResponse);
    }
    public static func read(buffer: DeserializerBase): OnHttpErrorReceiveEvent {
        var valueDeserializer: DeserializerBase = buffer
        let requestTmpResult: WebResourceRequest = match (WebResourceRequest_serializer.read(valueDeserializer) as WebResourceRequest) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let responseTmpResult: WebResourceResponse = match (WebResourceResponse_serializer.read(valueDeserializer) as WebResourceResponse) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnHttpErrorReceiveEvent = OnHttpErrorReceiveEvent(requestTmpResult, responseTmpResult)
        return value
    }
}
