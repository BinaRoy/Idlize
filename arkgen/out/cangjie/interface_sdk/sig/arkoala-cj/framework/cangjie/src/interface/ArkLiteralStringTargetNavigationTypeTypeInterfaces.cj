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
public interface Literal_String_target_NavigationType_typeInterfaces <:  {
    public mut open prop target: String
    public mut open prop type_: Option<NavigationType>
}
public open class Literal_String_target_NavigationType_type <: Literal_String_target_NavigationType_typeInterfaces {
    private var target_container: String
    public mut open prop target: String
    {
        get() {
            return target_container
        }
        set(target) {
            target_container = target
        }
    }
    private var type_container: Option<NavigationType>
    public mut open prop type_: Option<NavigationType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    Literal_String_target_NavigationType_type(target: String, type_: Option<NavigationType>) {
        this.target_container = target
        this.type_container = type_
    }
}
