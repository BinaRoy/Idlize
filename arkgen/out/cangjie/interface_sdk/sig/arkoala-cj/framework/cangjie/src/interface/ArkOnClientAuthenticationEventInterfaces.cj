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
public interface OnClientAuthenticationEventInterfaces <:  {
    public mut open prop handler: ClientAuthenticationHandler
    public mut open prop host: String
    public mut open prop port: Float64
    public mut open prop keyTypes: ArrayList<String>
    public mut open prop issuers: ArrayList<String>
}
public open class OnClientAuthenticationEvent <: OnClientAuthenticationEventInterfaces {
    private var handler_container: ClientAuthenticationHandler
    public mut open prop handler: ClientAuthenticationHandler
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
    private var port_container: Float64
    public mut open prop port: Float64
    {
        get() {
            return port_container
        }
        set(port) {
            port_container = port
        }
    }
    private var keyTypes_container: ArrayList<String>
    public mut open prop keyTypes: ArrayList<String>
    {
        get() {
            return keyTypes_container
        }
        set(keyTypes) {
            keyTypes_container = keyTypes
        }
    }
    private var issuers_container: ArrayList<String>
    public mut open prop issuers: ArrayList<String>
    {
        get() {
            return issuers_container
        }
        set(issuers) {
            issuers_container = issuers
        }
    }
    OnClientAuthenticationEvent(handler: ClientAuthenticationHandler, host: String, port: Float64, keyTypes: ArrayList<String>, issuers: ArrayList<String>) {
        this.handler_container = handler
        this.host_container = host
        this.port_container = port
        this.keyTypes_container = keyTypes
        this.issuers_container = issuers
    }
}
public open class OnClientAuthenticationEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnClientAuthenticationEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHandler = value.handler
        ClientAuthenticationHandler_serializer.write(valueSerializer, valueHolderForHandler);
        let valueHolderForHost = value.host
        valueSerializer.writeString(valueHolderForHost);
        let valueHolderForPort = value.port
        valueSerializer.writeNumber(valueHolderForPort);
        let valueHolderForKeyTypes = value.keyTypes
        valueSerializer.writeInt32(Int32(valueHolderForKeyTypes.size));
        for (valueHolderForKeyTypesCounterI in 0..valueHolderForKeyTypes.size) {
            let valueHolderForKeyTypesTmpElement: String = valueHolderForKeyTypes[Int64(valueHolderForKeyTypesCounterI)]
            valueSerializer.writeString(valueHolderForKeyTypesTmpElement);
        }
        let valueHolderForIssuers = value.issuers
        valueSerializer.writeInt32(Int32(valueHolderForIssuers.size));
        for (valueHolderForIssuersCounterI in 0..valueHolderForIssuers.size) {
            let valueHolderForIssuersTmpElement: String = valueHolderForIssuers[Int64(valueHolderForIssuersCounterI)]
            valueSerializer.writeString(valueHolderForIssuersTmpElement);
        }
    }
    public static func read(buffer: DeserializerBase): OnClientAuthenticationEvent {
        var valueDeserializer: DeserializerBase = buffer
        let handlerTmpResult: ClientAuthenticationHandler = match (ClientAuthenticationHandler_serializer.read(valueDeserializer) as ClientAuthenticationHandler) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let hostTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let portTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let keyTypesTmpBufLength: Int32 = valueDeserializer.readInt32()
        var keyTypesTmpBuf: ArrayList<String> = ArrayList<String>(Int64(keyTypesTmpBufLength))
        keyTypesTmpBuf = ArrayList<String>(Int64(keyTypesTmpBufLength))
        for (keyTypesTmpBufBufCounterI in 0..keyTypesTmpBufLength) {
            keyTypesTmpBuf[Int64(keyTypesTmpBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let keyTypesTmpResult: ArrayList<String> = keyTypesTmpBuf
        let issuersTmpBufLength: Int32 = valueDeserializer.readInt32()
        var issuersTmpBuf: ArrayList<String> = ArrayList<String>(Int64(issuersTmpBufLength))
        issuersTmpBuf = ArrayList<String>(Int64(issuersTmpBufLength))
        for (issuersTmpBufBufCounterI in 0..issuersTmpBufLength) {
            issuersTmpBuf[Int64(issuersTmpBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let issuersTmpResult: ArrayList<String> = issuersTmpBuf
        var value: OnClientAuthenticationEvent = OnClientAuthenticationEvent(handlerTmpResult, hostTmpResult, portTmpResult, keyTypesTmpResult, issuersTmpResult)
        return value
    }
}
