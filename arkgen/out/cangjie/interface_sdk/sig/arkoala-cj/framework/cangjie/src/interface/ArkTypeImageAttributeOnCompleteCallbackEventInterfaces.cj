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
public interface Type_ImageAttribute_onComplete_callback_eventInterfaces <:  {
    public mut open prop width: Float64
    public mut open prop height: Float64
    public mut open prop componentWidth: Float64
    public mut open prop componentHeight: Float64
    public mut open prop loadingStatus: Float64
    public mut open prop contentWidth: Float64
    public mut open prop contentHeight: Float64
    public mut open prop contentOffsetX: Float64
    public mut open prop contentOffsetY: Float64
}
public open class Type_ImageAttribute_onComplete_callback_event <: Type_ImageAttribute_onComplete_callback_eventInterfaces {
    private var width_container: Float64
    public mut open prop width: Float64
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Float64
    public mut open prop height: Float64
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var componentWidth_container: Float64
    public mut open prop componentWidth: Float64
    {
        get() {
            return componentWidth_container
        }
        set(componentWidth) {
            componentWidth_container = componentWidth
        }
    }
    private var componentHeight_container: Float64
    public mut open prop componentHeight: Float64
    {
        get() {
            return componentHeight_container
        }
        set(componentHeight) {
            componentHeight_container = componentHeight
        }
    }
    private var loadingStatus_container: Float64
    public mut open prop loadingStatus: Float64
    {
        get() {
            return loadingStatus_container
        }
        set(loadingStatus) {
            loadingStatus_container = loadingStatus
        }
    }
    private var contentWidth_container: Float64
    public mut open prop contentWidth: Float64
    {
        get() {
            return contentWidth_container
        }
        set(contentWidth) {
            contentWidth_container = contentWidth
        }
    }
    private var contentHeight_container: Float64
    public mut open prop contentHeight: Float64
    {
        get() {
            return contentHeight_container
        }
        set(contentHeight) {
            contentHeight_container = contentHeight
        }
    }
    private var contentOffsetX_container: Float64
    public mut open prop contentOffsetX: Float64
    {
        get() {
            return contentOffsetX_container
        }
        set(contentOffsetX) {
            contentOffsetX_container = contentOffsetX
        }
    }
    private var contentOffsetY_container: Float64
    public mut open prop contentOffsetY: Float64
    {
        get() {
            return contentOffsetY_container
        }
        set(contentOffsetY) {
            contentOffsetY_container = contentOffsetY
        }
    }
    Type_ImageAttribute_onComplete_callback_event(width: Float64, height: Float64, componentWidth: Float64, componentHeight: Float64, loadingStatus: Float64, contentWidth: Float64, contentHeight: Float64, contentOffsetX: Float64, contentOffsetY: Float64) {
        this.width_container = width
        this.height_container = height
        this.componentWidth_container = componentWidth
        this.componentHeight_container = componentHeight
        this.loadingStatus_container = loadingStatus
        this.contentWidth_container = contentWidth
        this.contentHeight_container = contentHeight
        this.contentOffsetX_container = contentOffsetX
        this.contentOffsetY_container = contentOffsetY
    }
}
