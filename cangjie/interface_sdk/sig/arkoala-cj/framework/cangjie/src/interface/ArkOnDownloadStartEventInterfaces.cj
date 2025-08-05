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
public interface OnDownloadStartEventInterfaces <:  {
    public mut open prop url: String
    public mut open prop userAgent: String
    public mut open prop contentDisposition: String
    public mut open prop mimetype: String
    public mut open prop contentLength: Float64
}
public open class OnDownloadStartEvent <: OnDownloadStartEventInterfaces {
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
    private var userAgent_container: String
    public mut open prop userAgent: String
    {
        get() {
            return userAgent_container
        }
        set(userAgent) {
            userAgent_container = userAgent
        }
    }
    private var contentDisposition_container: String
    public mut open prop contentDisposition: String
    {
        get() {
            return contentDisposition_container
        }
        set(contentDisposition) {
            contentDisposition_container = contentDisposition
        }
    }
    private var mimetype_container: String
    public mut open prop mimetype: String
    {
        get() {
            return mimetype_container
        }
        set(mimetype) {
            mimetype_container = mimetype
        }
    }
    private var contentLength_container: Float64
    public mut open prop contentLength: Float64
    {
        get() {
            return contentLength_container
        }
        set(contentLength) {
            contentLength_container = contentLength
        }
    }
    OnDownloadStartEvent(url: String, userAgent: String, contentDisposition: String, mimetype: String, contentLength: Float64) {
        this.url_container = url
        this.userAgent_container = userAgent
        this.contentDisposition_container = contentDisposition
        this.mimetype_container = mimetype
        this.contentLength_container = contentLength
    }
}
public open class OnDownloadStartEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnDownloadStartEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForUrl = value.url
        valueSerializer.writeString(valueHolderForUrl);
        let valueHolderForUserAgent = value.userAgent
        valueSerializer.writeString(valueHolderForUserAgent);
        let valueHolderForContentDisposition = value.contentDisposition
        valueSerializer.writeString(valueHolderForContentDisposition);
        let valueHolderForMimetype = value.mimetype
        valueSerializer.writeString(valueHolderForMimetype);
        let valueHolderForContentLength = value.contentLength
        valueSerializer.writeNumber(valueHolderForContentLength);
    }
    public static func read(buffer: DeserializerBase): OnDownloadStartEvent {
        var valueDeserializer: DeserializerBase = buffer
        let urlTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let userAgentTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let contentDispositionTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let mimetypeTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let contentLengthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnDownloadStartEvent = OnDownloadStartEvent(urlTmpResult, userAgentTmpResult, contentDispositionTmpResult, mimetypeTmpResult, contentLengthTmpResult)
        return value
    }
}
