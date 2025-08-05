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
public interface XComponentParameterInterfaces <:  {
    public mut open prop id: String
    public mut open prop type_: XComponentType
    public mut open prop libraryname: Option<String>
    public mut open prop controller: Option<XComponentController>
}
public open class XComponentParameter <: XComponentParameterInterfaces {
    private var id_container: String
    public mut open prop id: String
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var type_container: XComponentType
    public mut open prop type_: XComponentType
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var libraryname_container: Option<String>
    public mut open prop libraryname: Option<String>
    {
        get() {
            return libraryname_container
        }
        set(libraryname) {
            libraryname_container = libraryname
        }
    }
    private var controller_container: Option<XComponentController>
    public mut open prop controller: Option<XComponentController>
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    XComponentParameter(id: String, type_: XComponentType, libraryname: Option<String>, controller: Option<XComponentController>) {
        this.id_container = id
        this.type_container = type_
        this.libraryname_container = libraryname
        this.controller_container = controller
    }
}
