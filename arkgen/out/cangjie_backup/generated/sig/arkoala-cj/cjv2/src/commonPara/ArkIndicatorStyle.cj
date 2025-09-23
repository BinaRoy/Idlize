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

public class IndicatorStyle {
    public var height: Option<Length>
    public var width: Option<Length>
    public var borderRadius: Option<Length>
    public var marginTop: Option<Length>
    public var color: Option<ResourceColor>
    public var selectedColor: Option<ResourceColor>
    public var left: Option<Length>
    public var top: Option<Length>
    public var right: Option<Length>
    public var bottom: Option<Length>
    public var size: Option<Length>
    public var mask: Option<Bool>
    init(height: Option<Length>, width: Option<Length>, borderRadius: Option<Length>, marginTop: Option<Length>, color: Option<ResourceColor>, selectedColor: Option<ResourceColor>, left: Option<Length>, top: Option<Length>, right: Option<Length>, bottom: Option<Length>, size: Option<Length>, mask: Option<Bool>) {
        this.height = height
        this.width = width
        this.borderRadius = borderRadius
        this.marginTop = marginTop
        this.color = color
        this.selectedColor = selectedColor
        this.left = left
        this.top = top
        this.right = right
        this.bottom = bottom
        this.size = size
        this.mask = mask
    }
}
