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
public interface OnAlertEventInterfaces <:  {
    public mut open prop url: String
    public mut open prop message: String
    public mut open prop result: JsResult
}
public open class OnAlertEvent <: OnAlertEventInterfaces {
    private var url_container: String
    public mut open prop url: String
    {
        get() {
            return url_container
        }
        set(url) {
            url_container = url
        }
    }
    private var message_container: String
    public mut open prop message: String
    {
        get() {
            return message_container
        }
        set(message) {
            message_container = message
        }
    }
    private var result_container: JsResult
    public mut open prop result: JsResult
    {
        get() {
            return result_container
        }
        set(result) {
            result_container = result
        }
    }
    OnAlertEvent(url: String, message: String, result: JsResult) {
        this.url_container = url
        this.message_container = message
        this.result_container = result
    }
}
public open class OnAlertEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnAlertEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForUrl = value.url
        valueSerializer.writeString(valueHolderForUrl);
        let valueHolderForMessage = value.message
        valueSerializer.writeString(valueHolderForMessage);
        let valueHolderForResult = value.result
        JsResult_serializer.write(valueSerializer, valueHolderForResult);
    }
    public static func read(buffer: DeserializerBase): OnAlertEvent {
        var valueDeserializer: DeserializerBase = buffer
        let urlTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let messageTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let resultTmpResult: JsResult = match (JsResult_serializer.read(valueDeserializer) as JsResult) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnAlertEvent = OnAlertEvent(urlTmpResult, messageTmpResult, resultTmpResult)
        return value
    }
}
