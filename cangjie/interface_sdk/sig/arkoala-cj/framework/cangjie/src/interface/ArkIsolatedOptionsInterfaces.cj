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
public interface IsolatedOptionsInterfaces <:  {
    public mut open prop want: Want
    public mut open prop worker: RestrictedWorker
}
public open class IsolatedOptions <: IsolatedOptionsInterfaces {
    private var want_container: Want
    public mut open prop want: Want
    {
        get() {
            return want_container
        }
        set(want) {
            want_container = want
        }
    }
    private var worker_container: RestrictedWorker
    public mut open prop worker: RestrictedWorker
    {
        get() {
            return worker_container
        }
        set(worker) {
            worker_container = worker
        }
    }
    IsolatedOptions(want: Want, worker: RestrictedWorker) {
        this.want_container = want
        this.worker_container = worker
    }
}
