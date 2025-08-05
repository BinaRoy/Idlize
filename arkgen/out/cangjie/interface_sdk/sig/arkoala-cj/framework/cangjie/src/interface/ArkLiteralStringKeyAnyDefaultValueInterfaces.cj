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
public interface Literal_String_key_Any_defaultValueInterfaces <:  {
    public mut open prop key: String
    public mut open prop defaultValue: Any
}
public open class Literal_String_key_Any_defaultValue <: Literal_String_key_Any_defaultValueInterfaces {
    private var key_container: String
    public mut open prop key: String
    {
        get() {
            return key_container
        }
        set(key) {
            key_container = key
        }
    }
    private var defaultValue_container: Any
    public mut open prop defaultValue: Any
    {
        get() {
            return defaultValue_container
        }
        set(defaultValue) {
            defaultValue_container = defaultValue
        }
    }
    Literal_String_key_Any_defaultValue(key: String, defaultValue: Any) {
        this.key_container = key
        this.defaultValue_container = defaultValue
    }
}
