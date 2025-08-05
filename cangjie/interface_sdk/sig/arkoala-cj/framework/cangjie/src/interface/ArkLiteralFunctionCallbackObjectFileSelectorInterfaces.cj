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
public interface Literal_Function_callback__Object_fileSelectorInterfaces <:  {
    public mut open prop callback_: Any
    public mut open prop fileSelector: Any
}
public open class Literal_Function_callback__Object_fileSelector <: Literal_Function_callback__Object_fileSelectorInterfaces {
    private var callback__container: Any
    public mut open prop callback_: Any
    {
        get() {
            return callback__container
        }
        set(callback_) {
            callback__container = callback_
        }
    }
    private var fileSelector_container: Any
    public mut open prop fileSelector: Any
    {
        get() {
            return fileSelector_container
        }
        set(fileSelector) {
            fileSelector_container = fileSelector
        }
    }
    Literal_Function_callback__Object_fileSelector(callback_: Any, fileSelector: Any) {
        this.callback__container = callback_
        this.fileSelector_container = fileSelector
    }
}
