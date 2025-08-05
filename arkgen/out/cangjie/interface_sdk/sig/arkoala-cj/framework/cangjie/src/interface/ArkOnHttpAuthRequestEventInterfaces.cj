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
public interface OnHttpAuthRequestEventInterfaces <:  {
    public mut open prop handler: HttpAuthHandler
    public mut open prop host: String
    public mut open prop realm: String
}
public open class OnHttpAuthRequestEvent <: OnHttpAuthRequestEventInterfaces {
    private var handler_container: HttpAuthHandler
    public mut open prop handler: HttpAuthHandler
    {
        get() {
            return handler_container
        }
        set(handler) {
            handler_container = handler
        }
    }
    private var host_container: String
    public mut open prop host: String
    {
        get() {
            return host_container
        }
        set(host) {
            host_container = host
        }
    }
    private var realm_container: String
    public mut open prop realm: String
    {
        get() {
            return realm_container
        }
        set(realm) {
            realm_container = realm
        }
    }
    OnHttpAuthRequestEvent(handler: HttpAuthHandler, host: String, realm: String) {
        this.handler_container = handler
        this.host_container = host
        this.realm_container = realm
    }
}
public open class OnHttpAuthRequestEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnHttpAuthRequestEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHandler = value.handler
        HttpAuthHandler_serializer.write(valueSerializer, valueHolderForHandler);
        let valueHolderForHost = value.host
        valueSerializer.writeString(valueHolderForHost);
        let valueHolderForRealm = value.realm
        valueSerializer.writeString(valueHolderForRealm);
    }
    public static func read(buffer: DeserializerBase): OnHttpAuthRequestEvent {
        var valueDeserializer: DeserializerBase = buffer
        let handlerTmpResult: HttpAuthHandler = match (HttpAuthHandler_serializer.read(valueDeserializer) as HttpAuthHandler) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let hostTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let realmTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnHttpAuthRequestEvent = OnHttpAuthRequestEvent(handlerTmpResult, hostTmpResult, realmTmpResult)
        return value
    }
}
