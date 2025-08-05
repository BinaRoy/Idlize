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
public interface Literal_Object_object__String_name_Array_String_methodListInterfaces <:  {
    public mut open prop object_: Any
    public mut open prop name: String
    public mut open prop methodList: ArrayList<String>
}
public open class Literal_Object_object__String_name_Array_String_methodList <: Literal_Object_object__String_name_Array_String_methodListInterfaces {
    private var object__container: Any
    public mut open prop object_: Any
    {
        get() {
            return object__container
        }
        set(object_) {
            object__container = object_
        }
    }
    private var name_container: String
    public mut open prop name: String
    {
        get() {
            return name_container
        }
        set(name) {
            name_container = name
        }
    }
    private var methodList_container: ArrayList<String>
    public mut open prop methodList: ArrayList<String>
    {
        get() {
            return methodList_container
        }
        set(methodList) {
            methodList_container = methodList
        }
    }
    Literal_Object_object__String_name_Array_String_methodList(object_: Any, name: String, methodList: ArrayList<String>) {
        this.object__container = object_
        this.name_container = name
        this.methodList_container = methodList
    }
}
