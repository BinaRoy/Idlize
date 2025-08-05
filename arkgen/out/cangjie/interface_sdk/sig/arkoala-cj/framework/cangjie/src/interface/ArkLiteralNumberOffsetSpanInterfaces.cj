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
public interface Literal_Number_offset_spanInterfaces <:  {
    public mut open prop span: Float64
    public mut open prop offset: Float64
}
public open class Literal_Number_offset_span <: Literal_Number_offset_spanInterfaces {
    private var span_container: Float64
    public mut open prop span: Float64
    {
        get() {
            return span_container
        }
        set(span) {
            span_container = span
        }
    }
    private var offset_container: Float64
    public mut open prop offset: Float64
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    Literal_Number_offset_span(span: Float64, offset: Float64) {
        this.span_container = span
        this.offset_container = offset
    }
}
