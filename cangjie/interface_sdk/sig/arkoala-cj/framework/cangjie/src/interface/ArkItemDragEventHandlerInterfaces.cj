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
public interface ItemDragEventHandlerInterfaces <:  {
    public mut open prop onLongPress: Option<((parameter: Float64) -> Unit)>
    public mut open prop onDragStart: Option<((parameter: Float64) -> Unit)>
    public mut open prop onMoveThrough: Option<OnMoveHandler>
    public mut open prop onDrop: Option<((parameter: Float64) -> Unit)>
}
public open class ItemDragEventHandler <: ItemDragEventHandlerInterfaces {
    private var onLongPress_container: Option<((parameter: Float64) -> Unit)>
    public mut open prop onLongPress: Option<((parameter: Float64) -> Unit)>
    {
        get() {
            return onLongPress_container
        }
        set(onLongPress) {
            onLongPress_container = onLongPress
        }
    }
    private var onDragStart_container: Option<((parameter: Float64) -> Unit)>
    public mut open prop onDragStart: Option<((parameter: Float64) -> Unit)>
    {
        get() {
            return onDragStart_container
        }
        set(onDragStart) {
            onDragStart_container = onDragStart
        }
    }
    private var onMoveThrough_container: Option<OnMoveHandler>
    public mut open prop onMoveThrough: Option<OnMoveHandler>
    {
        get() {
            return onMoveThrough_container
        }
        set(onMoveThrough) {
            onMoveThrough_container = onMoveThrough
        }
    }
    private var onDrop_container: Option<((parameter: Float64) -> Unit)>
    public mut open prop onDrop: Option<((parameter: Float64) -> Unit)>
    {
        get() {
            return onDrop_container
        }
        set(onDrop) {
            onDrop_container = onDrop
        }
    }
    ItemDragEventHandler(onLongPress: Option<((parameter: Float64) -> Unit)>, onDragStart: Option<((parameter: Float64) -> Unit)>, onMoveThrough: Option<OnMoveHandler>, onDrop: Option<((parameter: Float64) -> Unit)>) {
        this.onLongPress_container = onLongPress
        this.onDragStart_container = onDragStart
        this.onMoveThrough_container = onMoveThrough
        this.onDrop_container = onDrop
    }
}
