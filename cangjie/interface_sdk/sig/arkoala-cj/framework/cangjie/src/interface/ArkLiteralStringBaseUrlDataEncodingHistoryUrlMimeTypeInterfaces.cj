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
public interface Literal_String_baseUrl_data_encoding_historyUrl_mimeTypeInterfaces <:  {
    public mut open prop data: String
    public mut open prop mimeType: String
    public mut open prop encoding: String
    public mut open prop baseUrl: Option<String>
    public mut open prop historyUrl: Option<String>
}
public open class Literal_String_baseUrl_data_encoding_historyUrl_mimeType <: Literal_String_baseUrl_data_encoding_historyUrl_mimeTypeInterfaces {
    private var data_container: String
    public mut open prop data: String
    {
        get() {
            return data_container
        }
        set(data) {
            data_container = data
        }
    }
    private var mimeType_container: String
    public mut open prop mimeType: String
    {
        get() {
            return mimeType_container
        }
        set(mimeType) {
            mimeType_container = mimeType
        }
    }
    private var encoding_container: String
    public mut open prop encoding: String
    {
        get() {
            return encoding_container
        }
        set(encoding) {
            encoding_container = encoding
        }
    }
    private var baseUrl_container: Option<String>
    public mut open prop baseUrl: Option<String>
    {
        get() {
            return baseUrl_container
        }
        set(baseUrl) {
            baseUrl_container = baseUrl
        }
    }
    private var historyUrl_container: Option<String>
    public mut open prop historyUrl: Option<String>
    {
        get() {
            return historyUrl_container
        }
        set(historyUrl) {
            historyUrl_container = historyUrl
        }
    }
    Literal_String_baseUrl_data_encoding_historyUrl_mimeType(data: String, mimeType: String, encoding: String, baseUrl: Option<String>, historyUrl: Option<String>) {
        this.data_container = data
        this.mimeType_container = mimeType
        this.encoding_container = encoding
        this.baseUrl_container = baseUrl
        this.historyUrl_container = historyUrl
    }
}
