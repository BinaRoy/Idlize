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
public interface Literal_String_value_Callback_Void_actionInterfaces <:  {
    public mut open prop value: String
    public mut open prop action: (() -> Unit)
}
public open class Literal_String_value_Callback_Void_action <: Literal_String_value_Callback_Void_actionInterfaces {
    private var value_container: String
    public mut open prop value: String
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var action_container: (() -> Unit)
    public mut open prop action: (() -> Unit)
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    Literal_String_value_Callback_Void_action(value: String, action: (() -> Unit)) {
        this.value_container = value
        this.action_container = action
    }
}
