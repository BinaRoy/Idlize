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
public interface SslErrorEventInterfaces <:  {
    public mut open prop handler: SslErrorHandler
    public mut open prop error: SslError
    public mut open prop url: String
    public mut open prop originalUrl: String
    public mut open prop referrer: String
    public mut open prop isFatalError: Bool
    public mut open prop isMainFrame: Bool
}
public open class SslErrorEvent <: SslErrorEventInterfaces {
    private var handler_container: SslErrorHandler
    public mut open prop handler: SslErrorHandler
    {
        get() {
            return handler_container
        }
        set(handler) {
            handler_container = handler
        }
    }
    private var error_container: SslError
    public mut open prop error: SslError
    {
        get() {
            return error_container
        }
        set(error) {
            error_container = error
        }
    }
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
    private var originalUrl_container: String
    public mut open prop originalUrl: String
    {
        get() {
            return originalUrl_container
        }
        set(originalUrl) {
            originalUrl_container = originalUrl
        }
    }
    private var referrer_container: String
    public mut open prop referrer: String
    {
        get() {
            return referrer_container
        }
        set(referrer) {
            referrer_container = referrer
        }
    }
    private var isFatalError_container: Bool
    public mut open prop isFatalError: Bool
    {
        get() {
            return isFatalError_container
        }
        set(isFatalError) {
            isFatalError_container = isFatalError
        }
    }
    private var isMainFrame_container: Bool
    public mut open prop isMainFrame: Bool
    {
        get() {
            return isMainFrame_container
        }
        set(isMainFrame) {
            isMainFrame_container = isMainFrame
        }
    }
    SslErrorEvent(handler: SslErrorHandler, error: SslError, url: String, originalUrl: String, referrer: String, isFatalError: Bool, isMainFrame: Bool) {
        this.handler_container = handler
        this.error_container = error
        this.url_container = url
        this.originalUrl_container = originalUrl
        this.referrer_container = referrer
        this.isFatalError_container = isFatalError
        this.isMainFrame_container = isMainFrame
    }
}
public open class SslErrorEvent_serializer {
    public static func write(buffer: SerializerBase, value: SslErrorEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHandler = value.handler
        SslErrorHandler_serializer.write(valueSerializer, valueHolderForHandler);
        let valueHolderForError = value.error
        valueSerializer.writeInt32(valueHolderForError.value);
        let valueHolderForUrl = value.url
        valueSerializer.writeString(valueHolderForUrl);
        let valueHolderForOriginalUrl = value.originalUrl
        valueSerializer.writeString(valueHolderForOriginalUrl);
        let valueHolderForReferrer = value.referrer
        valueSerializer.writeString(valueHolderForReferrer);
        let valueHolderForIsFatalError = value.isFatalError
        valueSerializer.writeBoolean(valueHolderForIsFatalError);
        let valueHolderForIsMainFrame = value.isMainFrame
        valueSerializer.writeBoolean(valueHolderForIsMainFrame);
    }
    public static func read(buffer: DeserializerBase): SslErrorEvent {
        var valueDeserializer: DeserializerBase = buffer
        let handlerTmpResult: SslErrorHandler = match (SslErrorHandler_serializer.read(valueDeserializer) as SslErrorHandler) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let errorTmpResult: SslError = SslError(valueDeserializer.readInt32())
        let urlTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let originalUrlTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let referrerTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let isFatalErrorTmpResult: Bool = valueDeserializer.readBoolean()
        let isMainFrameTmpResult: Bool = valueDeserializer.readBoolean()
        var value: SslErrorEvent = SslErrorEvent(handlerTmpResult, errorTmpResult, urlTmpResult, originalUrlTmpResult, referrerTmpResult, isFatalErrorTmpResult, isMainFrameTmpResult)
        return value
    }
}
