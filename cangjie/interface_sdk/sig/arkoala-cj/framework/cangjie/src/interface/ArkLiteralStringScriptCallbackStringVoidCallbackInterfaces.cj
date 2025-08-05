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
public interface Literal_String_script_Callback_String_Void_callback_Interfaces <:  {
    public mut open prop script: String
    public mut open prop callback_: Option<((breakpoints: String) -> Unit)>
}
public open class Literal_String_script_Callback_String_Void_callback_ <: Literal_String_script_Callback_String_Void_callback_Interfaces {
    private var script_container: String
    public mut open prop script: String
    {
        get() {
            return script_container
        }
        set(script) {
            script_container = script
        }
    }
    private var callback__container: Option<((breakpoints: String) -> Unit)>
    public mut open prop callback_: Option<((breakpoints: String) -> Unit)>
    {
        get() {
            return callback__container
        }
        set(callback_) {
            callback__container = callback_
        }
    }
    Literal_String_script_Callback_String_Void_callback_(script: String, callback_: Option<((breakpoints: String) -> Unit)>) {
        this.script_container = script
        this.callback__container = callback_
    }
}
