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
public interface Literal_Union_String_Resource_url_Array_Header_headersInterfaces <:  {
    public mut open prop url: Union_String_Resource
    public mut open prop headers: Option<ArrayList<Header>>
}
public open class Literal_Union_String_Resource_url_Array_Header_headers <: Literal_Union_String_Resource_url_Array_Header_headersInterfaces {
    private var url_container: Union_String_Resource
    public mut open prop url: Union_String_Resource
    {
        get() {
            return url_container
        }
        set(url) {
            url_container = url
        }
    }
    private var headers_container: Option<ArrayList<Header>>
    public mut open prop headers: Option<ArrayList<Header>>
    {
        get() {
            return headers_container
        }
        set(headers) {
            headers_container = headers
        }
    }
    Literal_Union_String_Resource_url_Array_Header_headers(url: Union_String_Resource, headers: Option<ArrayList<Header>>) {
        this.url_container = url
        this.headers_container = headers
    }
}
