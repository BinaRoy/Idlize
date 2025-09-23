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

public type Callback_Extender_OnProgress = (value: Float32) -> Unit
public type Callback_Extender_OnFinish = () -> Unit
public type Callback_RangeUpdate = (start: Int32, end: Int32) -> Unit
public type Callback_CreateItem = (index: Int32) -> UInt64
public class ResourceStr {
    private var selector: Int32
    public  func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public  func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union ResourceStr") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public  func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union ResourceStr") }
    }
}
public class ResourceColor {
    private var selector: Int32
    public  func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public  func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public  func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public  func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value3: Option<Resource> = None<Resource>
    init(param: Resource) {
        value3 = param
        selector = 3
    }
    public  func getValue3(): Resource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
}
public type RestrictedWorker_onexit_Callback = (code: Float64) -> Unit
public type RestrictedWorker_onerror_Callback = (ev: ErrorEvent) -> Unit
public type RestrictedWorker_onmessage_Callback = (event: MessageEvents) -> Unit
public type Callback_StateStylesChange = (currentState: Int32) -> Unit
public enum PerfMonitorActionType <: ToString & Equatable<PerfMonitorActionType> {
    | LAST_DOWN
    | LAST_UP
    | FIRST_MOVE

    public func get(): Int32 {
        match(this) {
            case LAST_DOWN => 0
            case LAST_UP => 1
            case FIRST_MOVE => 2
        }
    }

    static func parse(val: Int32): PerfMonitorActionType {
        match(val) {
            case 0 => LAST_DOWN
            case 1 => LAST_UP
            case 2 => FIRST_MOVE
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?PerfMonitorActionType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case LAST_DOWN => "Last_down"
            case LAST_UP => "Last_up"
            case FIRST_MOVE => "First_move"
        }
    }

    public override operator func ==(that: PerfMonitorActionType): Bool {
        match((this, that)) {
            case(LAST_DOWN, LAST_DOWN) => true
            case(LAST_UP, LAST_UP) => true
            case(FIRST_MOVE, FIRST_MOVE) => true
            case _ => false
        }
    }

    public override operator func !=(that: PerfMonitorActionType): Bool {
        !(this == that)
    }
}
public enum PerfMonitorSourceType <: ToString & Equatable<PerfMonitorSourceType> {
    | PERF_TOUCH_EVENT
    | PERF_MOUSE_EVENT
    | PERF_TOUCHPAD_EVENT
    | PERF_JOYSTICK_EVENT
    | PERF_KEY_EVENT

    public func get(): Int32 {
        match(this) {
            case PERF_TOUCH_EVENT => 0
            case PERF_MOUSE_EVENT => 1
            case PERF_TOUCHPAD_EVENT => 2
            case PERF_JOYSTICK_EVENT => 3
            case PERF_KEY_EVENT => 4
        }
    }

    static func parse(val: Int32): PerfMonitorSourceType {
        match(val) {
            case 0 => PERF_TOUCH_EVENT
            case 1 => PERF_MOUSE_EVENT
            case 2 => PERF_TOUCHPAD_EVENT
            case 3 => PERF_JOYSTICK_EVENT
            case 4 => PERF_KEY_EVENT
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?PerfMonitorSourceType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case PERF_TOUCH_EVENT => "Perf_touch_event"
            case PERF_MOUSE_EVENT => "Perf_mouse_event"
            case PERF_TOUCHPAD_EVENT => "Perf_touchpad_event"
            case PERF_JOYSTICK_EVENT => "Perf_joystick_event"
            case PERF_KEY_EVENT => "Perf_key_event"
        }
    }

    public override operator func ==(that: PerfMonitorSourceType): Bool {
        match((this, that)) {
            case(PERF_TOUCH_EVENT, PERF_TOUCH_EVENT) => true
            case(PERF_MOUSE_EVENT, PERF_MOUSE_EVENT) => true
            case(PERF_TOUCHPAD_EVENT, PERF_TOUCHPAD_EVENT) => true
            case(PERF_JOYSTICK_EVENT, PERF_JOYSTICK_EVENT) => true
            case(PERF_KEY_EVENT, PERF_KEY_EVENT) => true
            case _ => false
        }
    }

    public override operator func !=(that: PerfMonitorSourceType): Bool {
        !(this == that)
    }
}
public class Length {
    private var selector: Int32
    public  func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    public init(param: String) {
        value0 = param
        selector = 0
    }
    public  func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
    private var value1: Option<Float64> = None<Float64>
    public init(param: Float64) {
        value1 = param
        selector = 1
    }
    public  func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
    private var value2: Option<Resource> = None<Resource>
    public init(param: Resource) {
        value2 = param
        selector = 2
    }
    public  func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
}
public type CustomNodeBuilder = (parentNode: UInt64) -> UInt64
public type NavExtender_OnUpdateStack = () -> Unit
public type SearchValueCallback = (value: String) -> Unit
public type Callback_onMeasureSize_SizeResult = (selfLayoutInfo: Any, children: ArrayList<Any>, constraint: Any) -> SizeResult
public type Callback_onPlaceChildren_Void = (selfLayoutInfo: Any, children: ArrayList<Any>, constraint: Any) -> Unit
public type TextFieldValueCallback = (value: ResourceStr) -> Unit
public class Union_Number_String {
    private var selector: Int32
    public  func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public  func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public  func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String") }
    }
}
public enum ButtonType <: ToString & Equatable<ButtonType> {
    | CAPSULE
    | CIRCLE

    public func get(): Int32 {
        match(this) {
            case CAPSULE => 0
            case CIRCLE => 1
        }
    }

    static func parse(val: Int32): ButtonType {
        match(val) {
            case 0 => CAPSULE
            case 1 => CIRCLE
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?ButtonType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case CAPSULE => "Capsule"
            case CIRCLE => "Circle"
        }
    }

    public override operator func ==(that: ButtonType): Bool {
        match((this, that)) {
            case(CAPSULE, CAPSULE) => true
            case(CIRCLE, CIRCLE) => true
            case _ => false
        }
    }

    public override operator func !=(that: ButtonType): Bool {
        !(this == that)
    }
}
public enum HorizontalAlign <: ToString & Equatable<HorizontalAlign> {
    | START
    | CENTER
    | END

    public func get(): Int32 {
        match(this) {
            case START => 0
            case CENTER => 1
            case END => 2
        }
    }

    static func parse(val: Int32): HorizontalAlign {
        match(val) {
            case 0 => START
            case 1 => CENTER
            case 2 => END
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?HorizontalAlign {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case START => "Start"
            case CENTER => "Center"
            case END => "End"
        }
    }

    public override operator func ==(that: HorizontalAlign): Bool {
        match((this, that)) {
            case(START, START) => true
            case(CENTER, CENTER) => true
            case(END, END) => true
            case _ => false
        }
    }

    public override operator func !=(that: HorizontalAlign): Bool {
        !(this == that)
    }
}
public enum LayoutSafeAreaType <: ToString & Equatable<LayoutSafeAreaType> {
    | SYSTEM

    public func get(): Int32 {
        match(this) {
            case SYSTEM => 0
        }
    }

    static func parse(val: Int32): LayoutSafeAreaType {
        match(val) {
            case 0 => SYSTEM
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?LayoutSafeAreaType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case SYSTEM => "System"
        }
    }

    public override operator func ==(that: LayoutSafeAreaType): Bool {
        match((this, that)) {
            case(SYSTEM, SYSTEM) => true
            case _ => false
        }
    }

    public override operator func !=(that: LayoutSafeAreaType): Bool {
        !(this == that)
    }
}
public enum LayoutSafeAreaEdge <: ToString & Equatable<LayoutSafeAreaEdge> {
    | TOP
    | BOTTOM

    public func get(): Int32 {
        match(this) {
            case TOP => 0
            case BOTTOM => 1
        }
    }

    static func parse(val: Int32): LayoutSafeAreaEdge {
        match(val) {
            case 0 => TOP
            case 1 => BOTTOM
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?LayoutSafeAreaEdge {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case TOP => "Top"
            case BOTTOM => "Bottom"
        }
    }

    public override operator func ==(that: LayoutSafeAreaEdge): Bool {
        match((this, that)) {
            case(TOP, TOP) => true
            case(BOTTOM, BOTTOM) => true
            case _ => false
        }
    }

    public override operator func !=(that: LayoutSafeAreaEdge): Bool {
        !(this == that)
    }
}
public enum TitleHeight <: ToString & Equatable<TitleHeight> {
    | MAIN_ONLY
    | MAIN_WITH_SUB

    public func get(): Int32 {
        match(this) {
            case MAIN_ONLY => 0
            case MAIN_WITH_SUB => 1
        }
    }

    static func parse(val: Int32): TitleHeight {
        match(val) {
            case 0 => MAIN_ONLY
            case 1 => MAIN_WITH_SUB
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?TitleHeight {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case MAIN_ONLY => "Main_only"
            case MAIN_WITH_SUB => "Main_with_sub"
        }
    }

    public override operator func ==(that: TitleHeight): Bool {
        match((this, that)) {
            case(MAIN_ONLY, MAIN_ONLY) => true
            case(MAIN_WITH_SUB, MAIN_WITH_SUB) => true
            case _ => false
        }
    }

    public override operator func !=(that: TitleHeight): Bool {
        !(this == that)
    }
}
public enum SourceType <: ToString & Equatable<SourceType> {
    | UNKNOWN
    | MOUSE
    | TOUCH_SCREEN

    public func get(): Int32 {
        match(this) {
            case UNKNOWN => 0
            case MOUSE => 1
            case TOUCH_SCREEN => 2
        }
    }

    static func parse(val: Int32): SourceType {
        match(val) {
            case 0 => UNKNOWN
            case 1 => MOUSE
            case 2 => TOUCH_SCREEN
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?SourceType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case UNKNOWN => "Unknown"
            case MOUSE => "Mouse"
            case TOUCH_SCREEN => "Touch_screen"
        }
    }

    public override operator func ==(that: SourceType): Bool {
        match((this, that)) {
            case(UNKNOWN, UNKNOWN) => true
            case(MOUSE, MOUSE) => true
            case(TOUCH_SCREEN, TOUCH_SCREEN) => true
            case _ => false
        }
    }

    public override operator func !=(that: SourceType): Bool {
        !(this == that)
    }
}
public enum SourceTool <: ToString & Equatable<SourceTool> {
    | UNKNOWN
    | FINGER
    | PEN
    | MOUSE
    | TOUCHPAD
    | JOYSTICK

    public func get(): Int32 {
        match(this) {
            case UNKNOWN => 0
            case FINGER => 1
            case PEN => 2
            case MOUSE => 3
            case TOUCHPAD => 4
            case JOYSTICK => 5
        }
    }

    static func parse(val: Int32): SourceTool {
        match(val) {
            case 0 => UNKNOWN
            case 1 => FINGER
            case 2 => PEN
            case 3 => MOUSE
            case 4 => TOUCHPAD
            case 5 => JOYSTICK
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?SourceTool {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case UNKNOWN => "Unknown"
            case FINGER => "Finger"
            case PEN => "Pen"
            case MOUSE => "Mouse"
            case TOUCHPAD => "Touchpad"
            case JOYSTICK => "Joystick"
        }
    }

    public override operator func ==(that: SourceTool): Bool {
        match((this, that)) {
            case(UNKNOWN, UNKNOWN) => true
            case(FINGER, FINGER) => true
            case(PEN, PEN) => true
            case(MOUSE, MOUSE) => true
            case(TOUCHPAD, TOUCHPAD) => true
            case(JOYSTICK, JOYSTICK) => true
            case _ => false
        }
    }

    public override operator func !=(that: SourceTool): Bool {
        !(this == that)
    }
}
public enum ThemeColorMode <: ToString & Equatable<ThemeColorMode> {
    | SYSTEM
    | LIGHT
    | DARK

    public func get(): Int32 {
        match(this) {
            case SYSTEM => 0
            case LIGHT => 1
            case DARK => 2
        }
    }

    static func parse(val: Int32): ThemeColorMode {
        match(val) {
            case 0 => SYSTEM
            case 1 => LIGHT
            case 2 => DARK
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?ThemeColorMode {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case SYSTEM => "System"
            case LIGHT => "Light"
            case DARK => "Dark"
        }
    }

    public override operator func ==(that: ThemeColorMode): Bool {
        match((this, that)) {
            case(SYSTEM, SYSTEM) => true
            case(LIGHT, LIGHT) => true
            case(DARK, DARK) => true
            case _ => false
        }
    }

    public override operator func !=(that: ThemeColorMode): Bool {
        !(this == that)
    }
}
public enum AdaptiveColor <: ToString & Equatable<AdaptiveColor> {
    | DEFAULT

    public func get(): Int32 {
        match(this) {
            case DEFAULT => 0
        }
    }

    static func parse(val: Int32): AdaptiveColor {
        match(val) {
            case 0 => DEFAULT
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?AdaptiveColor {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case DEFAULT => "Default"
        }
    }

    public override operator func ==(that: AdaptiveColor): Bool {
        match((this, that)) {
            case(DEFAULT, DEFAULT) => true
            case _ => false
        }
    }

    public override operator func !=(that: AdaptiveColor): Bool {
        !(this == that)
    }
}
public enum DragPreviewMode <: ToString & Equatable<DragPreviewMode> {
    | AUTO
    | DISABLE_SCALE
    | ENABLE_DEFAULT_SHADOW
    | ENABLE_DEFAULT_RADIUS

    public func get(): Int32 {
        match(this) {
            case AUTO => 1
            case DISABLE_SCALE => 2
            case ENABLE_DEFAULT_SHADOW => 3
            case ENABLE_DEFAULT_RADIUS => 4
        }
    }

    static func parse(val: Int32): DragPreviewMode {
        match(val) {
            case 1 => AUTO
            case 2 => DISABLE_SCALE
            case 3 => ENABLE_DEFAULT_SHADOW
            case 4 => ENABLE_DEFAULT_RADIUS
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?DragPreviewMode {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case AUTO => "Auto"
            case DISABLE_SCALE => "Disable_scale"
            case ENABLE_DEFAULT_SHADOW => "Enable_default_shadow"
            case ENABLE_DEFAULT_RADIUS => "Enable_default_radius"
        }
    }

    public override operator func ==(that: DragPreviewMode): Bool {
        match((this, that)) {
            case(AUTO, AUTO) => true
            case(DISABLE_SCALE, DISABLE_SCALE) => true
            case(ENABLE_DEFAULT_SHADOW, ENABLE_DEFAULT_SHADOW) => true
            case(ENABLE_DEFAULT_RADIUS, ENABLE_DEFAULT_RADIUS) => true
            case _ => false
        }
    }

    public override operator func !=(that: DragPreviewMode): Bool {
        !(this == that)
    }
}
public type ImageModifier = Any
public enum BlurStyle <: ToString & Equatable<BlurStyle> {
    | THIN

    public func get(): Int32 {
        match(this) {
            case THIN => 0
        }
    }

    static func parse(val: Int32): BlurStyle {
        match(val) {
            case 0 => THIN
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?BlurStyle {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case THIN => "Thin"
        }
    }

    public override operator func ==(that: BlurStyle): Bool {
        match((this, that)) {
            case(THIN, THIN) => true
            case _ => false
        }
    }

    public override operator func !=(that: BlurStyle): Bool {
        !(this == that)
    }
}
public enum BlurStyleActivePolicy <: ToString & Equatable<BlurStyleActivePolicy> {
    | FOLLOWS_WINDOW_ACTIVE_STATE
    | ALWAYS_ACTIVE
    | ALWAYS_INACTIVE

    public func get(): Int32 {
        match(this) {
            case FOLLOWS_WINDOW_ACTIVE_STATE => 0
            case ALWAYS_ACTIVE => 1
            case ALWAYS_INACTIVE => 2
        }
    }

    static func parse(val: Int32): BlurStyleActivePolicy {
        match(val) {
            case 0 => FOLLOWS_WINDOW_ACTIVE_STATE
            case 1 => ALWAYS_ACTIVE
            case 2 => ALWAYS_INACTIVE
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?BlurStyleActivePolicy {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case FOLLOWS_WINDOW_ACTIVE_STATE => "Follows_window_active_state"
            case ALWAYS_ACTIVE => "Always_active"
            case ALWAYS_INACTIVE => "Always_inactive"
        }
    }

    public override operator func ==(that: BlurStyleActivePolicy): Bool {
        match((this, that)) {
            case(FOLLOWS_WINDOW_ACTIVE_STATE, FOLLOWS_WINDOW_ACTIVE_STATE) => true
            case(ALWAYS_ACTIVE, ALWAYS_ACTIVE) => true
            case(ALWAYS_INACTIVE, ALWAYS_INACTIVE) => true
            case _ => false
        }
    }

    public override operator func !=(that: BlurStyleActivePolicy): Bool {
        !(this == that)
    }
}
public enum SheetSize <: ToString & Equatable<SheetSize> {
    | MEDIUM
    | LARGE
    | FIT_CONTENT

    public func get(): Int32 {
        match(this) {
            case MEDIUM => 0
            case LARGE => 1
            case FIT_CONTENT => 2
        }
    }

    static func parse(val: Int32): SheetSize {
        match(val) {
            case 0 => MEDIUM
            case 1 => LARGE
            case 2 => FIT_CONTENT
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?SheetSize {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case MEDIUM => "Medium"
            case LARGE => "Large"
            case FIT_CONTENT => "Fit_content"
        }
    }

    public override operator func ==(that: SheetSize): Bool {
        match((this, that)) {
            case(MEDIUM, MEDIUM) => true
            case(LARGE, LARGE) => true
            case(FIT_CONTENT, FIT_CONTENT) => true
            case _ => false
        }
    }

    public override operator func !=(that: SheetSize): Bool {
        !(this == that)
    }
}
public enum SheetType <: ToString & Equatable<SheetType> {
    | BOTTOM
    | CENTER
    | POPUP

    public func get(): Int32 {
        match(this) {
            case BOTTOM => 0
            case CENTER => 1
            case POPUP => 2
        }
    }

    static func parse(val: Int32): SheetType {
        match(val) {
            case 0 => BOTTOM
            case 1 => CENTER
            case 2 => POPUP
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?SheetType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case BOTTOM => "Bottom"
            case CENTER => "Center"
            case POPUP => "Popup"
        }
    }

    public override operator func ==(that: SheetType): Bool {
        match((this, that)) {
            case(BOTTOM, BOTTOM) => true
            case(CENTER, CENTER) => true
            case(POPUP, POPUP) => true
            case _ => false
        }
    }

    public override operator func !=(that: SheetType): Bool {
        !(this == that)
    }
}
public enum SheetMode <: ToString & Equatable<SheetMode> {
    | OVERLAY
    | EMBEDDED

    public func get(): Int32 {
        match(this) {
            case OVERLAY => 0
            case EMBEDDED => 1
        }
    }

    static func parse(val: Int32): SheetMode {
        match(val) {
            case 0 => OVERLAY
            case 1 => EMBEDDED
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?SheetMode {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case OVERLAY => "Overlay"
            case EMBEDDED => "Embedded"
        }
    }

    public override operator func ==(that: SheetMode): Bool {
        match((this, that)) {
            case(OVERLAY, OVERLAY) => true
            case(EMBEDDED, EMBEDDED) => true
            case _ => false
        }
    }

    public override operator func !=(that: SheetMode): Bool {
        !(this == that)
    }
}
public enum ShadowStyle <: ToString & Equatable<ShadowStyle> {
    | OUTER_DEFAULT_XS
    | OUTER_DEFAULT_SM
    | OUTER_DEFAULT_MD
    | OUTER_DEFAULT_LG
    | OUTER_FLOATING_SM
    | OUTER_FLOATING_MD

    public func get(): Int32 {
        match(this) {
            case OUTER_DEFAULT_XS => 0
            case OUTER_DEFAULT_SM => 1
            case OUTER_DEFAULT_MD => 2
            case OUTER_DEFAULT_LG => 3
            case OUTER_FLOATING_SM => 4
            case OUTER_FLOATING_MD => 5
        }
    }

    static func parse(val: Int32): ShadowStyle {
        match(val) {
            case 0 => OUTER_DEFAULT_XS
            case 1 => OUTER_DEFAULT_SM
            case 2 => OUTER_DEFAULT_MD
            case 3 => OUTER_DEFAULT_LG
            case 4 => OUTER_FLOATING_SM
            case 5 => OUTER_FLOATING_MD
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?ShadowStyle {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case OUTER_DEFAULT_XS => "Outer_default_xs"
            case OUTER_DEFAULT_SM => "Outer_default_sm"
            case OUTER_DEFAULT_MD => "Outer_default_md"
            case OUTER_DEFAULT_LG => "Outer_default_lg"
            case OUTER_FLOATING_SM => "Outer_floating_sm"
            case OUTER_FLOATING_MD => "Outer_floating_md"
        }
    }

    public override operator func ==(that: ShadowStyle): Bool {
        match((this, that)) {
            case(OUTER_DEFAULT_XS, OUTER_DEFAULT_XS) => true
            case(OUTER_DEFAULT_SM, OUTER_DEFAULT_SM) => true
            case(OUTER_DEFAULT_MD, OUTER_DEFAULT_MD) => true
            case(OUTER_DEFAULT_LG, OUTER_DEFAULT_LG) => true
            case(OUTER_FLOATING_SM, OUTER_FLOATING_SM) => true
            case(OUTER_FLOATING_MD, OUTER_FLOATING_MD) => true
            case _ => false
        }
    }

    public override operator func !=(that: ShadowStyle): Bool {
        !(this == that)
    }
}
public enum ShadowType <: ToString & Equatable<ShadowType> {
    | COLOR
    | BLUR

    public func get(): Int32 {
        match(this) {
            case COLOR => 0
            case BLUR => 1
        }
    }

    static func parse(val: Int32): ShadowType {
        match(val) {
            case 0 => COLOR
            case 1 => BLUR
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?ShadowType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case COLOR => "Color"
            case BLUR => "Blur"
        }
    }

    public override operator func ==(that: ShadowType): Bool {
        match((this, that)) {
            case(COLOR, COLOR) => true
            case(BLUR, BLUR) => true
            case _ => false
        }
    }

    public override operator func !=(that: ShadowType): Bool {
        !(this == that)
    }
}
public enum BorderStyle <: ToString & Equatable<BorderStyle> {
    | DOTTED
    | DASHED
    | SOLID

    public func get(): Int32 {
        match(this) {
            case DOTTED => 0
            case DASHED => 1
            case SOLID => 2
        }
    }

    static func parse(val: Int32): BorderStyle {
        match(val) {
            case 0 => DOTTED
            case 1 => DASHED
            case 2 => SOLID
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?BorderStyle {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case DOTTED => "Dotted"
            case DASHED => "Dashed"
            case SOLID => "Solid"
        }
    }

    public override operator func ==(that: BorderStyle): Bool {
        match((this, that)) {
            case(DOTTED, DOTTED) => true
            case(DASHED, DASHED) => true
            case(SOLID, SOLID) => true
            case _ => false
        }
    }

    public override operator func !=(that: BorderStyle): Bool {
        !(this == that)
    }
}
public type UIContext = Any
public type CustomBuilder = () -> Unit
public enum Color <: ToString & Equatable<Color> {
    | WHITE
    | BLACK

    public func get(): Int32 {
        match(this) {
            case WHITE => 0
            case BLACK => 1
        }
    }

    static func parse(val: Int32): Color {
        match(val) {
            case 0 => WHITE
            case 1 => BLACK
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?Color {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case WHITE => "White"
            case BLACK => "Black"
        }
    }

    public override operator func ==(that: Color): Bool {
        match((this, that)) {
            case(WHITE, WHITE) => true
            case(BLACK, BLACK) => true
            case _ => false
        }
    }

    public override operator func !=(that: Color): Bool {
        !(this == that)
    }
}
public enum Curve <: ToString & Equatable<Curve> {
    | LINEAR
    | EASE

    public func get(): Int32 {
        match(this) {
            case LINEAR => 0
            case EASE => 1
        }
    }

    static func parse(val: Int32): Curve {
        match(val) {
            case 0 => LINEAR
            case 1 => EASE
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?Curve {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case LINEAR => "Linear"
            case EASE => "Ease"
        }
    }

    public override operator func ==(that: Curve): Bool {
        match((this, that)) {
            case(LINEAR, LINEAR) => true
            case(EASE, EASE) => true
            case _ => false
        }
    }

    public override operator func !=(that: Curve): Bool {
        !(this == that)
    }
}
public enum CheckBoxShape <: ToString & Equatable<CheckBoxShape> {
    | CIRCLE
    | ROUNDED_SQUARE

    public func get(): Int32 {
        match(this) {
            case CIRCLE => 0
            case ROUNDED_SQUARE => 1
        }
    }

    static func parse(val: Int32): CheckBoxShape {
        match(val) {
            case 0 => CIRCLE
            case 1 => ROUNDED_SQUARE
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?CheckBoxShape {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case CIRCLE => "Circle"
            case ROUNDED_SQUARE => "Rounded_square"
        }
    }

    public override operator func ==(that: CheckBoxShape): Bool {
        match((this, that)) {
            case(CIRCLE, CIRCLE) => true
            case(ROUNDED_SQUARE, ROUNDED_SQUARE) => true
            case _ => false
        }
    }

    public override operator func !=(that: CheckBoxShape): Bool {
        !(this == that)
    }
}
public enum TextHeightAdaptivePolicy <: ToString & Equatable<TextHeightAdaptivePolicy> {
    | MAX_LINES_FIRST
    | MIN_FONT_SIZE_FIRST
    | LAYOUT_CONSTRAINT_FIRST

    public func get(): Int32 {
        match(this) {
            case MAX_LINES_FIRST => 0
            case MIN_FONT_SIZE_FIRST => 1
            case LAYOUT_CONSTRAINT_FIRST => 2
        }
    }

    static func parse(val: Int32): TextHeightAdaptivePolicy {
        match(val) {
            case 0 => MAX_LINES_FIRST
            case 1 => MIN_FONT_SIZE_FIRST
            case 2 => LAYOUT_CONSTRAINT_FIRST
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?TextHeightAdaptivePolicy {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case MAX_LINES_FIRST => "Max_lines_first"
            case MIN_FONT_SIZE_FIRST => "Min_font_size_first"
            case LAYOUT_CONSTRAINT_FIRST => "Layout_constraint_first"
        }
    }

    public override operator func ==(that: TextHeightAdaptivePolicy): Bool {
        match((this, that)) {
            case(MAX_LINES_FIRST, MAX_LINES_FIRST) => true
            case(MIN_FONT_SIZE_FIRST, MIN_FONT_SIZE_FIRST) => true
            case(LAYOUT_CONSTRAINT_FIRST, LAYOUT_CONSTRAINT_FIRST) => true
            case _ => false
        }
    }

    public override operator func !=(that: TextHeightAdaptivePolicy): Bool {
        !(this == that)
    }
}
public enum TextOverflow <: ToString & Equatable<TextOverflow> {
    | NONE
    | CLIP
    | ELLIPSIS
    | MARQUEE

    public func get(): Int32 {
        match(this) {
            case NONE => 0
            case CLIP => 1
            case ELLIPSIS => 2
            case MARQUEE => 3
        }
    }

    static func parse(val: Int32): TextOverflow {
        match(val) {
            case 0 => NONE
            case 1 => CLIP
            case 2 => ELLIPSIS
            case 3 => MARQUEE
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?TextOverflow {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case NONE => "None"
            case CLIP => "Clip"
            case ELLIPSIS => "Ellipsis"
            case MARQUEE => "Marquee"
        }
    }

    public override operator func ==(that: TextOverflow): Bool {
        match((this, that)) {
            case(NONE, NONE) => true
            case(CLIP, CLIP) => true
            case(ELLIPSIS, ELLIPSIS) => true
            case(MARQUEE, MARQUEE) => true
            case _ => false
        }
    }

    public override operator func !=(that: TextOverflow): Bool {
        !(this == that)
    }
}
public enum FontWeight <: ToString & Equatable<FontWeight> {
    | LIGHTER
    | NORMAL
    | REGULAR
    | MEDIUM
    | BOLD
    | BOLDER

    public func get(): Int32 {
        match(this) {
            case LIGHTER => 0
            case NORMAL => 1
            case REGULAR => 2
            case MEDIUM => 3
            case BOLD => 4
            case BOLDER => 5
        }
    }

    static func parse(val: Int32): FontWeight {
        match(val) {
            case 0 => LIGHTER
            case 1 => NORMAL
            case 2 => REGULAR
            case 3 => MEDIUM
            case 4 => BOLD
            case 5 => BOLDER
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?FontWeight {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case LIGHTER => "Lighter"
            case NORMAL => "Normal"
            case REGULAR => "Regular"
            case MEDIUM => "Medium"
            case BOLD => "Bold"
            case BOLDER => "Bolder"
        }
    }

    public override operator func ==(that: FontWeight): Bool {
        match((this, that)) {
            case(LIGHTER, LIGHTER) => true
            case(NORMAL, NORMAL) => true
            case(REGULAR, REGULAR) => true
            case(MEDIUM, MEDIUM) => true
            case(BOLD, BOLD) => true
            case(BOLDER, BOLDER) => true
            case _ => false
        }
    }

    public override operator func !=(that: FontWeight): Bool {
        !(this == that)
    }
}
public enum FontStyle <: ToString & Equatable<FontStyle> {
    | NORMAL
    | ITALIC

    public func get(): Int32 {
        match(this) {
            case NORMAL => 0
            case ITALIC => 1
        }
    }

    static func parse(val: Int32): FontStyle {
        match(val) {
            case 0 => NORMAL
            case 1 => ITALIC
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?FontStyle {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case NORMAL => "Normal"
            case ITALIC => "Italic"
        }
    }

    public override operator func ==(that: FontStyle): Bool {
        match((this, that)) {
            case(NORMAL, NORMAL) => true
            case(ITALIC, ITALIC) => true
            case _ => false
        }
    }

    public override operator func !=(that: FontStyle): Bool {
        !(this == that)
    }
}
public enum ColoringStrategy <: ToString & Equatable<ColoringStrategy> {
    | INVERT
    | AVERAGE
    | PRIMARY

    public func get(): String {
        match(this) {
            case INVERT => "invert"
            case AVERAGE => "average"
            case PRIMARY => "primary"
        }
    }

    static func parse(val: Int32): ColoringStrategy {
        match(val) {
            case 0 => INVERT
            case 1 => AVERAGE
            case 2 => PRIMARY
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?ColoringStrategy {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    static func parse(val: String): ColoringStrategy {
        match(val) {
            case "invert" => INVERT
            case "average" => AVERAGE
            case "primary" => PRIMARY
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?String): ?ColoringStrategy {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case INVERT => "Invert"
            case AVERAGE => "Average"
            case PRIMARY => "Primary"
        }
    }

    public override operator func ==(that: ColoringStrategy): Bool {
        match((this, that)) {
            case(INVERT, INVERT) => true
            case(AVERAGE, AVERAGE) => true
            case(PRIMARY, PRIMARY) => true
            case _ => false
        }
    }

    public override operator func !=(that: ColoringStrategy): Bool {
        !(this == that)
    }
}
public enum EmbeddedType <: ToString & Equatable<EmbeddedType> {
    | EMBEDDED_UI_EXTENSION

    public func get(): Int32 {
        match(this) {
            case EMBEDDED_UI_EXTENSION => 0
        }
    }

    static func parse(val: Int32): EmbeddedType {
        match(val) {
            case 0 => EMBEDDED_UI_EXTENSION
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?EmbeddedType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case EMBEDDED_UI_EXTENSION => "Embedded_ui_extension"
        }
    }

    public override operator func ==(that: EmbeddedType): Bool {
        match((this, that)) {
            case(EMBEDDED_UI_EXTENSION, EMBEDDED_UI_EXTENSION) => true
            case _ => false
        }
    }

    public override operator func !=(that: EmbeddedType): Bool {
        !(this == that)
    }
}
public enum Axis <: ToString & Equatable<Axis> {
    | VERTICAL
    | HORIZONTAL

    public func get(): Int32 {
        match(this) {
            case VERTICAL => 0
            case HORIZONTAL => 1
        }
    }

    static func parse(val: Int32): Axis {
        match(val) {
            case 0 => VERTICAL
            case 1 => HORIZONTAL
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?Axis {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case VERTICAL => "Vertical"
            case HORIZONTAL => "Horizontal"
        }
    }

    public override operator func ==(that: Axis): Bool {
        match((this, that)) {
            case(VERTICAL, VERTICAL) => true
            case(HORIZONTAL, HORIZONTAL) => true
            case _ => false
        }
    }

    public override operator func !=(that: Axis): Bool {
        !(this == that)
    }
}
public enum VerticalAlign <: ToString & Equatable<VerticalAlign> {
    | TOP
    | CENTER
    | BOTTOM

    public func get(): Int32 {
        match(this) {
            case TOP => 0
            case CENTER => 1
            case BOTTOM => 2
        }
    }

    static func parse(val: Int32): VerticalAlign {
        match(val) {
            case 0 => TOP
            case 1 => CENTER
            case 2 => BOTTOM
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?VerticalAlign {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case TOP => "Top"
            case CENTER => "Center"
            case BOTTOM => "Bottom"
        }
    }

    public override operator func ==(that: VerticalAlign): Bool {
        match((this, that)) {
            case(TOP, TOP) => true
            case(CENTER, CENTER) => true
            case(BOTTOM, BOTTOM) => true
            case _ => false
        }
    }

    public override operator func !=(that: VerticalAlign): Bool {
        !(this == that)
    }
}
public enum TextCase <: ToString & Equatable<TextCase> {
    | NORMAL
    | LOWER_CASE
    | UPPER_CASE

    public func get(): Int32 {
        match(this) {
            case NORMAL => 0
            case LOWER_CASE => 1
            case UPPER_CASE => 2
        }
    }

    static func parse(val: Int32): TextCase {
        match(val) {
            case 0 => NORMAL
            case 1 => LOWER_CASE
            case 2 => UPPER_CASE
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?TextCase {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case NORMAL => "Normal"
            case LOWER_CASE => "Lower_case"
            case UPPER_CASE => "Upper_case"
        }
    }

    public override operator func ==(that: TextCase): Bool {
        match((this, that)) {
            case(NORMAL, NORMAL) => true
            case(LOWER_CASE, LOWER_CASE) => true
            case(UPPER_CASE, UPPER_CASE) => true
            case _ => false
        }
    }

    public override operator func !=(that: TextCase): Bool {
        !(this == that)
    }
}
public enum TextAlign <: ToString & Equatable<TextAlign> {
    | CENTER
    | START
    | END
    | JUSTIFY

    public func get(): Int32 {
        match(this) {
            case CENTER => 0
            case START => 1
            case END => 2
            case JUSTIFY => 3
        }
    }

    static func parse(val: Int32): TextAlign {
        match(val) {
            case 0 => CENTER
            case 1 => START
            case 2 => END
            case 3 => JUSTIFY
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?TextAlign {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case CENTER => "Center"
            case START => "Start"
            case END => "End"
            case JUSTIFY => "Justify"
        }
    }

    public override operator func ==(that: TextAlign): Bool {
        match((this, that)) {
            case(CENTER, CENTER) => true
            case(START, START) => true
            case(END, END) => true
            case(JUSTIFY, JUSTIFY) => true
            case _ => false
        }
    }

    public override operator func !=(that: TextAlign): Bool {
        !(this == that)
    }
}
public enum WordBreak <: ToString & Equatable<WordBreak> {
    | NORMAL
    | BREAK_ALL
    | BREAK_WORD
    | HYPHENATION

    public func get(): Int32 {
        match(this) {
            case NORMAL => 0
            case BREAK_ALL => 1
            case BREAK_WORD => 2
            case HYPHENATION => 3
        }
    }

    static func parse(val: Int32): WordBreak {
        match(val) {
            case 0 => NORMAL
            case 1 => BREAK_ALL
            case 2 => BREAK_WORD
            case 3 => HYPHENATION
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?WordBreak {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case NORMAL => "Normal"
            case BREAK_ALL => "Break_all"
            case BREAK_WORD => "Break_word"
            case HYPHENATION => "Hyphenation"
        }
    }

    public override operator func ==(that: WordBreak): Bool {
        match((this, that)) {
            case(NORMAL, NORMAL) => true
            case(BREAK_ALL, BREAK_ALL) => true
            case(BREAK_WORD, BREAK_WORD) => true
            case(HYPHENATION, HYPHENATION) => true
            case _ => false
        }
    }

    public override operator func !=(that: WordBreak): Bool {
        !(this == that)
    }
}
public enum NavigationTitleMode <: ToString & Equatable<NavigationTitleMode> {
    | FREE
    | FULL
    | MINI

    public func get(): Int32 {
        match(this) {
            case FREE => 0
            case FULL => 1
            case MINI => 2
        }
    }

    static func parse(val: Int32): NavigationTitleMode {
        match(val) {
            case 0 => FREE
            case 1 => FULL
            case 2 => MINI
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?NavigationTitleMode {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case FREE => "Free"
            case FULL => "Full"
            case MINI => "Mini"
        }
    }

    public override operator func ==(that: NavigationTitleMode): Bool {
        match((this, that)) {
            case(FREE, FREE) => true
            case(FULL, FULL) => true
            case(MINI, MINI) => true
            case _ => false
        }
    }

    public override operator func !=(that: NavigationTitleMode): Bool {
        !(this == that)
    }
}
public enum NavigationMode <: ToString & Equatable<NavigationMode> {
    | STACK
    | SPLIT
    | AUTO

    public func get(): Int32 {
        match(this) {
            case STACK => 0
            case SPLIT => 1
            case AUTO => 2
        }
    }

    static func parse(val: Int32): NavigationMode {
        match(val) {
            case 0 => STACK
            case 1 => SPLIT
            case 2 => AUTO
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?NavigationMode {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case STACK => "Stack"
            case SPLIT => "Split"
            case AUTO => "Auto"
        }
    }

    public override operator func ==(that: NavigationMode): Bool {
        match((this, that)) {
            case(STACK, STACK) => true
            case(SPLIT, SPLIT) => true
            case(AUTO, AUTO) => true
            case _ => false
        }
    }

    public override operator func !=(that: NavigationMode): Bool {
        !(this == that)
    }
}
public enum EnumDTS <: ToString & Equatable<EnumDTS> {
    | ELEM_0
    | ELEM_1
    | ELEM_2

    public func get(): Int32 {
        match(this) {
            case ELEM_0 => 0
            case ELEM_1 => 1
            case ELEM_2 => 2
        }
    }

    static func parse(val: Int32): EnumDTS {
        match(val) {
            case 0 => ELEM_0
            case 1 => ELEM_1
            case 2 => ELEM_2
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?EnumDTS {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case ELEM_0 => "Elem_0"
            case ELEM_1 => "Elem_1"
            case ELEM_2 => "Elem_2"
        }
    }

    public override operator func ==(that: EnumDTS): Bool {
        match((this, that)) {
            case(ELEM_0, ELEM_0) => true
            case(ELEM_1, ELEM_1) => true
            case(ELEM_2, ELEM_2) => true
            case _ => false
        }
    }

    public override operator func !=(that: EnumDTS): Bool {
        !(this == that)
    }
}
public enum InputType <: ToString & Equatable<InputType> {
    | NORMAL
    | NUMBER

    public func get(): Int32 {
        match(this) {
            case NORMAL => 0
            case NUMBER => 1
        }
    }

    static func parse(val: Int32): InputType {
        match(val) {
            case 0 => NORMAL
            case 1 => NUMBER
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?InputType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case NORMAL => "Normal"
            case NUMBER => "Number"
        }
    }

    public override operator func ==(that: InputType): Bool {
        match((this, that)) {
            case(NORMAL, NORMAL) => true
            case(NUMBER, NUMBER) => true
            case _ => false
        }
    }

    public override operator func !=(that: InputType): Bool {
        !(this == that)
    }
}
public enum ContentType <: ToString & Equatable<ContentType> {
    | USER_NAME
    | PASSWORD

    public func get(): Int32 {
        match(this) {
            case USER_NAME => 0
            case PASSWORD => 1
        }
    }

    static func parse(val: Int32): ContentType {
        match(val) {
            case 0 => USER_NAME
            case 1 => PASSWORD
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?ContentType {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case USER_NAME => "User_name"
            case PASSWORD => "Password"
        }
    }

    public override operator func ==(that: ContentType): Bool {
        match((this, that)) {
            case(USER_NAME, USER_NAME) => true
            case(PASSWORD, PASSWORD) => true
            case _ => false
        }
    }

    public override operator func !=(that: ContentType): Bool {
        !(this == that)
    }
}
public class Dimension {
    private var selector: Int32
    public  func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public  func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Dimension") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public  func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Dimension") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public  func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Dimension") }
    }
}
public class Union_String_Array_String {
    private var selector: Int32
    public  func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public  func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Array_String") }
    }
    private var value1: Option<ArrayList<String>> = None<ArrayList<String>>
    init(param: ArrayList<String>) {
        value1 = param
        selector = 1
    }
    public  func getValue1(): ArrayList<String> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Array_String") }
    }
}
public class Union_Number_Array_Number {
    private var selector: Int32
    public  func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public  func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number") }
    }
    private var value1: Option<ArrayList<Float64>> = None<ArrayList<Float64>>
    init(param: ArrayList<Float64>) {
        value1 = param
        selector = 1
    }
    public  func getValue1(): ArrayList<Float64> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number") }
    }
}
public type TextPickerScrollStopCallback = (value: Array<String>, index: Array<Float64>) -> Unit
public type LengthMetricsUnit = Any
public type LengthMetrics = Any
public type PX = String
public class VP {
    private var selector: Int32
    public  func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public  func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union VP") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public  func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union VP") }
    }
}
public type FP = String
public type LPX = String
public type Percentage = String
