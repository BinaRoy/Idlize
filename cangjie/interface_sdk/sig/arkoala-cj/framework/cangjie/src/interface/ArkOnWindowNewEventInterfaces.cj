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
public interface OnWindowNewEventInterfaces <:  {
    public mut open prop isAlert: Bool
    public mut open prop isUserTrigger: Bool
    public mut open prop targetUrl: String
    public mut open prop handler: ControllerHandler
}
public open class OnWindowNewEvent <: OnWindowNewEventInterfaces {
    private var isAlert_container: Bool
    public mut open prop isAlert: Bool
    {
        get() {
            return isAlert_container
        }
        set(isAlert) {
            isAlert_container = isAlert
        }
    }
    private var isUserTrigger_container: Bool
    public mut open prop isUserTrigger: Bool
    {
        get() {
            return isUserTrigger_container
        }
        set(isUserTrigger) {
            isUserTrigger_container = isUserTrigger
        }
    }
    private var targetUrl_container: String
    public mut open prop targetUrl: String
    {
        get() {
            return targetUrl_container
        }
        set(targetUrl) {
            targetUrl_container = targetUrl
        }
    }
    private var handler_container: ControllerHandler
    public mut open prop handler: ControllerHandler
    {
        get() {
            return handler_container
        }
        set(handler) {
            handler_container = handler
        }
    }
    OnWindowNewEvent(isAlert: Bool, isUserTrigger: Bool, targetUrl: String, handler: ControllerHandler) {
        this.isAlert_container = isAlert
        this.isUserTrigger_container = isUserTrigger
        this.targetUrl_container = targetUrl
        this.handler_container = handler
    }
}
public open class OnWindowNewEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnWindowNewEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsAlert = value.isAlert
        valueSerializer.writeBoolean(valueHolderForIsAlert);
        let valueHolderForIsUserTrigger = value.isUserTrigger
        valueSerializer.writeBoolean(valueHolderForIsUserTrigger);
        let valueHolderForTargetUrl = value.targetUrl
        valueSerializer.writeString(valueHolderForTargetUrl);
        let valueHolderForHandler = value.handler
        ControllerHandler_serializer.write(valueSerializer, valueHolderForHandler);
    }
    public static func read(buffer: DeserializerBase): OnWindowNewEvent {
        var valueDeserializer: DeserializerBase = buffer
        let isAlertTmpResult: Bool = valueDeserializer.readBoolean()
        let isUserTriggerTmpResult: Bool = valueDeserializer.readBoolean()
        let targetUrlTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let handlerTmpResult: ControllerHandler = match (ControllerHandler_serializer.read(valueDeserializer) as ControllerHandler) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnWindowNewEvent = OnWindowNewEvent(isAlertTmpResult, isUserTriggerTmpResult, targetUrlTmpResult, handlerTmpResult)
        return value
    }
}
