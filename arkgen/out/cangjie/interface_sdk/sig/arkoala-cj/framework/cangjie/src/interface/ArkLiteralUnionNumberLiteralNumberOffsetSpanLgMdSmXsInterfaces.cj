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
public interface Literal_Union_Number_Literal_Number_offset_span_lg_md_sm_xsInterfaces <:  {
    public mut open prop xs: Option<Union_Number_Literal_Number_offset_span>
    public mut open prop sm: Option<Union_Number_Literal_Number_offset_span>
    public mut open prop md: Option<Union_Number_Literal_Number_offset_span>
    public mut open prop lg: Option<Union_Number_Literal_Number_offset_span>
}
public open class Literal_Union_Number_Literal_Number_offset_span_lg_md_sm_xs <: Literal_Union_Number_Literal_Number_offset_span_lg_md_sm_xsInterfaces {
    private var xs_container: Option<Union_Number_Literal_Number_offset_span>
    public mut open prop xs: Option<Union_Number_Literal_Number_offset_span>
    {
        get() {
            return xs_container
        }
        set(xs) {
            xs_container = xs
        }
    }
    private var sm_container: Option<Union_Number_Literal_Number_offset_span>
    public mut open prop sm: Option<Union_Number_Literal_Number_offset_span>
    {
        get() {
            return sm_container
        }
        set(sm) {
            sm_container = sm
        }
    }
    private var md_container: Option<Union_Number_Literal_Number_offset_span>
    public mut open prop md: Option<Union_Number_Literal_Number_offset_span>
    {
        get() {
            return md_container
        }
        set(md) {
            md_container = md
        }
    }
    private var lg_container: Option<Union_Number_Literal_Number_offset_span>
    public mut open prop lg: Option<Union_Number_Literal_Number_offset_span>
    {
        get() {
            return lg_container
        }
        set(lg) {
            lg_container = lg
        }
    }
    Literal_Union_Number_Literal_Number_offset_span_lg_md_sm_xs(xs: Option<Union_Number_Literal_Number_offset_span>, sm: Option<Union_Number_Literal_Number_offset_span>, md: Option<Union_Number_Literal_Number_offset_span>, lg: Option<Union_Number_Literal_Number_offset_span>) {
        this.xs_container = xs
        this.sm_container = sm
        this.md_container = md
        this.lg_container = lg
    }
}
