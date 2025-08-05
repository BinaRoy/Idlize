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
public interface LengthConstrainInterfaces <:  {
    public mut open prop minLength: Length
    public mut open prop maxLength: Length
}
public open class LengthConstrain <: LengthConstrainInterfaces {
    private var minLength_container: Length
    public mut open prop minLength: Length
    {
        get() {
            return minLength_container
        }
        set(minLength) {
            minLength_container = minLength
        }
    }
    private var maxLength_container: Length
    public mut open prop maxLength: Length
    {
        get() {
            return maxLength_container
        }
        set(maxLength) {
            maxLength_container = maxLength
        }
    }
    LengthConstrain(minLength: Length, maxLength: Length) {
        this.minLength_container = minLength
        this.maxLength_container = maxLength
    }
}
