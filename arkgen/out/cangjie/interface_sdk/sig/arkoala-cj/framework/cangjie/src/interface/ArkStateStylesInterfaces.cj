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
public interface StateStylesInterfaces <:  {
    public mut open prop normal: Option<Any>
    public mut open prop pressed: Option<Any>
    public mut open prop disabled: Option<Any>
    public mut open prop focused: Option<Any>
    public mut open prop clicked: Option<Any>
    public mut open prop selected: Option<Any>
}
public open class StateStyles <: StateStylesInterfaces {
    private var normal_container: Option<Any>
    public mut open prop normal: Option<Any>
    {
        get() {
            return normal_container
        }
        set(normal) {
            normal_container = normal
        }
    }
    private var pressed_container: Option<Any>
    public mut open prop pressed: Option<Any>
    {
        get() {
            return pressed_container
        }
        set(pressed) {
            pressed_container = pressed
        }
    }
    private var disabled_container: Option<Any>
    public mut open prop disabled: Option<Any>
    {
        get() {
            return disabled_container
        }
        set(disabled) {
            disabled_container = disabled
        }
    }
    private var focused_container: Option<Any>
    public mut open prop focused: Option<Any>
    {
        get() {
            return focused_container
        }
        set(focused) {
            focused_container = focused
        }
    }
    private var clicked_container: Option<Any>
    public mut open prop clicked: Option<Any>
    {
        get() {
            return clicked_container
        }
        set(clicked) {
            clicked_container = clicked
        }
    }
    private var selected_container: Option<Any>
    public mut open prop selected: Option<Any>
    {
        get() {
            return selected_container
        }
        set(selected) {
            selected_container = selected
        }
    }
    StateStyles(normal: Option<Any>, pressed: Option<Any>, disabled: Option<Any>, focused: Option<Any>, clicked: Option<Any>, selected: Option<Any>) {
        this.normal_container = normal
        this.pressed_container = pressed
        this.disabled_container = disabled
        this.focused_container = focused
        this.clicked_container = clicked
        this.selected_container = selected
    }
}
