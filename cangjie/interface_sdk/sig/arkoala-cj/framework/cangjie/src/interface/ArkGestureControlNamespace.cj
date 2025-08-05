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
public open class GestureControlGestureType {
    public static var TAP_GESTURE: GestureControlGestureType = GestureControlGestureType(0)
    public static var LONG_PRESS_GESTURE: GestureControlGestureType = GestureControlGestureType(1)
    public static var PAN_GESTURE: GestureControlGestureType = GestureControlGestureType(2)
    public static var PINCH_GESTURE: GestureControlGestureType = GestureControlGestureType(3)
    public static var SWIPE_GESTURE: GestureControlGestureType = GestureControlGestureType(4)
    public static var ROTATION_GESTURE: GestureControlGestureType = GestureControlGestureType(5)
    public static var DRAG: GestureControlGestureType = GestureControlGestureType(6)
    public static var CLICK: GestureControlGestureType = GestureControlGestureType(7)
    public var value: Int32
    GestureControlGestureType(arg0: Int32) {
        value = arg0
    }
}
