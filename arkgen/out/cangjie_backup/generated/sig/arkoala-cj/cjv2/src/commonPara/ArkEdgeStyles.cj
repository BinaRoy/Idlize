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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class EdgeStyles {
    public var top: Option<BorderStyle>
    public var right: Option<BorderStyle>
    public var bottom: Option<BorderStyle>
    public var left: Option<BorderStyle>
    init(top: Option<BorderStyle>, right: Option<BorderStyle>, bottom: Option<BorderStyle>, left: Option<BorderStyle>) {
        this.top = top
        this.right = right
        this.bottom = bottom
        this.left = left
    }
}
