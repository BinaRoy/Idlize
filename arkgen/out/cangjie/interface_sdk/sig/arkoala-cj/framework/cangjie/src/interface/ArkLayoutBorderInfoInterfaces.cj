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
public interface LayoutBorderInfoInterfaces <:  {
    public mut open prop borderWidth: EdgeWidths
    public mut open prop margin: Margin
    public mut open prop padding: Padding
}
public open class LayoutBorderInfo <: LayoutBorderInfoInterfaces {
    private var borderWidth_container: EdgeWidths
    public mut open prop borderWidth: EdgeWidths
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var margin_container: Margin
    public mut open prop margin: Margin
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    private var padding_container: Padding
    public mut open prop padding: Padding
    {
        get() {
            return padding_container
        }
        set(padding) {
            padding_container = padding
        }
    }
    LayoutBorderInfo(borderWidth: EdgeWidths, margin: Margin, padding: Padding) {
        this.borderWidth_container = borderWidth
        this.margin_container = margin
        this.padding_container = padding
    }
}
