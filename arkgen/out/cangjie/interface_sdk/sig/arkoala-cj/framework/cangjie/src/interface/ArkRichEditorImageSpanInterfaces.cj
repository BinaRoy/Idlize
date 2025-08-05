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
public interface RichEditorImageSpanInterfaces <:  {
    public mut open prop spanPosition: RichEditorSpanPosition
    public mut open prop value: Union_PixelMap_ResourceStr
    public mut open prop imageStyle: Option<RichEditorImageSpanStyle>
}
public open class RichEditorImageSpan <: RichEditorImageSpanInterfaces {
    private var spanPosition_container: RichEditorSpanPosition
    public mut open prop spanPosition: RichEditorSpanPosition
    {
        get() {
            return spanPosition_container
        }
        set(spanPosition) {
            spanPosition_container = spanPosition
        }
    }
    private var value_container: Union_PixelMap_ResourceStr
    public mut open prop value: Union_PixelMap_ResourceStr
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var imageStyle_container: Option<RichEditorImageSpanStyle>
    public mut open prop imageStyle: Option<RichEditorImageSpanStyle>
    {
        get() {
            return imageStyle_container
        }
        set(imageStyle) {
            imageStyle_container = imageStyle
        }
    }
    RichEditorImageSpan(spanPosition: RichEditorSpanPosition, value: Union_PixelMap_ResourceStr, imageStyle: Option<RichEditorImageSpanStyle>) {
        this.spanPosition_container = spanPosition
        this.value_container = value
        this.imageStyle_container = imageStyle
    }
}
