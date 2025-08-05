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
public type Callback_Extender_OnProgress = (value: Float32) -> Unit
public type Callback_Extender_OnFinish = () -> Unit
public open class Union_Curve_String_ICurve {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Curve> = None<Curve>
    init(param: Curve) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Curve {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Curve_String_ICurve") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Curve_String_ICurve") }
    }
    private var value2: Option<ICurve> = None<ICurve>
    init(param: ICurve) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): ICurve {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Curve_String_ICurve") }
    }
}
public type Callback_RangeUpdate = (start: Int32, end: Int32) -> Unit
public type Callback_CreateItem = (index: Int32) -> UInt64
public open class ResourceStr {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union ResourceStr") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union ResourceStr") }
    }
}
public open class ResourceColor {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value3: Option<Resource> = None<Resource>
    init(param: Resource) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Resource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
}
public type RestrictedWorker_onexit_Callback = (code: Float64) -> Unit
public type RestrictedWorker_onerror_Callback = (ev: ErrorEvent) -> Unit
public type RestrictedWorker_onmessage_Callback = (event: MessageEvents) -> Unit
public type Callback_StateStylesChange = (currentState: Int32) -> Unit
public open class PerfMonitorActionType {
    public static var LAST_DOWN: PerfMonitorActionType = PerfMonitorActionType(0)
    public static var LAST_UP: PerfMonitorActionType = PerfMonitorActionType(1)
    public static var FIRST_MOVE: PerfMonitorActionType = PerfMonitorActionType(2)
    public var value: Int32
    PerfMonitorActionType(arg0: Int32) {
        value = arg0
    }
}
public open class PerfMonitorSourceType {
    public static var PERF_TOUCH_EVENT: PerfMonitorSourceType = PerfMonitorSourceType(0)
    public static var PERF_MOUSE_EVENT: PerfMonitorSourceType = PerfMonitorSourceType(1)
    public static var PERF_TOUCHPAD_EVENT: PerfMonitorSourceType = PerfMonitorSourceType(2)
    public static var PERF_JOYSTICK_EVENT: PerfMonitorSourceType = PerfMonitorSourceType(3)
    public static var PERF_KEY_EVENT: PerfMonitorSourceType = PerfMonitorSourceType(4)
    public var value: Int32
    PerfMonitorSourceType(arg0: Int32) {
        value = arg0
    }
}
public open class Length {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
}
public type CustomNodeBuilder = (parentNode: UInt64) -> UInt64
public type NavExtender_OnUpdateStack = () -> Unit
public type SearchValueCallback = (value: String) -> Unit
public type Callback_onMeasureSize_SizeResult = (selfLayoutInfo: GeometryInfo, children: ArrayList<Measurable>, constraint: ConstraintSizeOptions) -> SizeResult
public type Callback_onPlaceChildren_Void = (selfLayoutInfo: GeometryInfo, children: ArrayList<Layoutable>, constraint: ConstraintSizeOptions) -> Unit
public type TextFieldValueCallback = (value: ResourceStr) -> Unit
public open class Union_Length_LayoutPolicy {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_LayoutPolicy") }
    }
    private var value1: Option<LayoutPolicy> = None<LayoutPolicy>
    init(param: LayoutPolicy) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LayoutPolicy {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_LayoutPolicy") }
    }
}
public open class Union_Padding_Length_LocalizedPadding {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Padding> = None<Padding>
    init(param: Padding) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Padding {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Length_LocalizedPadding") }
    }
    private var value1: Option<Length> = None<Length>
    init(param: Length) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Length {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Length_LocalizedPadding") }
    }
    private var value2: Option<LocalizedPadding> = None<LocalizedPadding>
    init(param: LocalizedPadding) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedPadding {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Length_LocalizedPadding") }
    }
}
public open class Union_Length_EdgeWidths_LocalizedEdgeWidths {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_EdgeWidths_LocalizedEdgeWidths") }
    }
    private var value1: Option<EdgeWidths> = None<EdgeWidths>
    init(param: EdgeWidths) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeWidths {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_EdgeWidths_LocalizedEdgeWidths") }
    }
    private var value2: Option<LocalizedEdgeWidths> = None<LocalizedEdgeWidths>
    init(param: LocalizedEdgeWidths) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdgeWidths {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Length_EdgeWidths_LocalizedEdgeWidths") }
    }
}
public open class Union_ResourceColor_EdgeColors_LocalizedEdgeColors {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_EdgeColors_LocalizedEdgeColors") }
    }
    private var value1: Option<EdgeColors> = None<EdgeColors>
    init(param: EdgeColors) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeColors {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_EdgeColors_LocalizedEdgeColors") }
    }
    private var value2: Option<LocalizedEdgeColors> = None<LocalizedEdgeColors>
    init(param: LocalizedEdgeColors) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdgeColors {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_EdgeColors_LocalizedEdgeColors") }
    }
}
public open class Union_BorderStyle_EdgeStyles {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<BorderStyle> = None<BorderStyle>
    init(param: BorderStyle) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): BorderStyle {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_BorderStyle_EdgeStyles") }
    }
    private var value1: Option<EdgeStyles> = None<EdgeStyles>
    init(param: EdgeStyles) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeStyles {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_BorderStyle_EdgeStyles") }
    }
}
public open class Union_Length_BorderRadiuses_LocalizedBorderRadiuses {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_BorderRadiuses_LocalizedBorderRadiuses") }
    }
    private var value1: Option<BorderRadiuses> = None<BorderRadiuses>
    init(param: BorderRadiuses) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BorderRadiuses {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_BorderRadiuses_LocalizedBorderRadiuses") }
    }
    private var value2: Option<LocalizedBorderRadiuses> = None<LocalizedBorderRadiuses>
    init(param: LocalizedBorderRadiuses) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedBorderRadiuses {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Length_BorderRadiuses_LocalizedBorderRadiuses") }
    }
}
public open class CheckBoxShape {
    public static var CIRCLE: CheckBoxShape = CheckBoxShape(0)
    public static var ROUNDED_SQUARE: CheckBoxShape = CheckBoxShape(1)
    public var value: Int32
    CheckBoxShape(arg0: Int32) {
        value = arg0
    }
}
public open class Color {
    public static var WHITE: Color = Color(0)
    public static var BLACK: Color = Color(1)
    public static var BLUE: Color = Color(2)
    public static var BROWN: Color = Color(3)
    public static var GRAY: Color = Color(4)
    public static var GREEN: Color = Color(5)
    public static var GREY: Color = Color(6)
    public static var ORANGE: Color = Color(7)
    public static var PINK: Color = Color(8)
    public static var RED: Color = Color(9)
    public static var YELLOW: Color = Color(10)
    public static var TRANSPARENT: Color = Color(11)
    public var value: Int32
    Color(arg0: Int32) {
        value = arg0
    }
}
public open class ColoringStrategy {
    public static var INVERT: ColoringStrategy = ColoringStrategy(0)
    public static var AVERAGE: ColoringStrategy = ColoringStrategy(1)
    public static var PRIMARY: ColoringStrategy = ColoringStrategy(2)
    public var value: Int32
    ColoringStrategy(arg0: Int32) {
        value = arg0
    }
}
public open class ImageFit {
    public static var CONTAIN: ImageFit = ImageFit(0)
    public static var COVER: ImageFit = ImageFit(1)
    public static var AUTO: ImageFit = ImageFit(2)
    public static var FILL: ImageFit = ImageFit(3)
    public static var SCALE_DOWN: ImageFit = ImageFit(4)
    public static var NONE: ImageFit = ImageFit(5)
    public static var TOP_START: ImageFit = ImageFit(7)
    public static var TOP: ImageFit = ImageFit(8)
    public static var TOP_END: ImageFit = ImageFit(9)
    public static var START: ImageFit = ImageFit(10)
    public static var CENTER: ImageFit = ImageFit(11)
    public static var END: ImageFit = ImageFit(12)
    public static var BOTTOM_START: ImageFit = ImageFit(13)
    public static var BOTTOM: ImageFit = ImageFit(14)
    public static var BOTTOM_END: ImageFit = ImageFit(15)
    public static var MATRIX: ImageFit = ImageFit(16)
    public var value: Int32
    ImageFit(arg0: Int32) {
        value = arg0
    }
}
public open class BorderStyle {
    public static var DOTTED: BorderStyle = BorderStyle(0)
    public static var DASHED: BorderStyle = BorderStyle(1)
    public static var SOLID: BorderStyle = BorderStyle(2)
    public var value: Int32
    BorderStyle(arg0: Int32) {
        value = arg0
    }
}
public open class LineJoinStyle {
    public static var MITER: LineJoinStyle = LineJoinStyle(0)
    public static var ROUND: LineJoinStyle = LineJoinStyle(1)
    public static var BEVEL: LineJoinStyle = LineJoinStyle(2)
    public var value: Int32
    LineJoinStyle(arg0: Int32) {
        value = arg0
    }
}
public open class TouchType {
    public static var DOWN: TouchType = TouchType(0)
    public static var UP: TouchType = TouchType(1)
    public static var MOVE: TouchType = TouchType(2)
    public static var CANCEL: TouchType = TouchType(3)
    public static var HOVER_ENTER: TouchType = TouchType(9)
    public static var HOVER_MOVE: TouchType = TouchType(10)
    public static var HOVER_EXIT: TouchType = TouchType(11)
    public static var HOVER_CANCEL: TouchType = TouchType(12)
    public var value: Int32
    TouchType(arg0: Int32) {
        value = arg0
    }
}
public open class InteractionHand {
    public static var NONE: InteractionHand = InteractionHand(0)
    public static var LEFT: InteractionHand = InteractionHand(1)
    public static var RIGHT: InteractionHand = InteractionHand(2)
    public var value: Int32
    InteractionHand(arg0: Int32) {
        value = arg0
    }
}
public open class MouseButton {
    public static var LEFT: MouseButton = MouseButton(0)
    public static var RIGHT: MouseButton = MouseButton(1)
    public static var MIDDLE: MouseButton = MouseButton(2)
    public static var BACK: MouseButton = MouseButton(3)
    public static var FORWARD: MouseButton = MouseButton(4)
    public static var NONE: MouseButton = MouseButton(5)
    public var value: Int32
    MouseButton(arg0: Int32) {
        value = arg0
    }
}
public open class MouseAction {
    public static var PRESS: MouseAction = MouseAction(0)
    public static var RELEASE: MouseAction = MouseAction(1)
    public static var MOVE: MouseAction = MouseAction(2)
    public static var HOVER: MouseAction = MouseAction(3)
    public static var CANCEL: MouseAction = MouseAction(13)
    public var value: Int32
    MouseAction(arg0: Int32) {
        value = arg0
    }
}
public open class AnimationStatus {
    public static var INITIAL: AnimationStatus = AnimationStatus(0)
    public static var RUNNING: AnimationStatus = AnimationStatus(1)
    public static var PAUSED: AnimationStatus = AnimationStatus(2)
    public static var STOPPED: AnimationStatus = AnimationStatus(3)
    public var value: Int32
    AnimationStatus(arg0: Int32) {
        value = arg0
    }
}
public open class Curve {
    public static var LINEAR: Curve = Curve(0)
    public static var EASE: Curve = Curve(1)
    public static var EASE_IN: Curve = Curve(2)
    public static var EASE_OUT: Curve = Curve(3)
    public static var EASE_IN_OUT: Curve = Curve(4)
    public static var FAST_OUT_SLOW_IN: Curve = Curve(5)
    public static var LINEAR_OUT_SLOW_IN: Curve = Curve(6)
    public static var FAST_OUT_LINEAR_IN: Curve = Curve(7)
    public static var EXTREME_DECELERATION: Curve = Curve(8)
    public static var SHARP: Curve = Curve(9)
    public static var RHYTHM: Curve = Curve(10)
    public static var SMOOTH: Curve = Curve(11)
    public static var FRICTION: Curve = Curve(12)
    public var value: Int32
    Curve(arg0: Int32) {
        value = arg0
    }
}
public type Curve = Any
public open class FillMode {
    public static var NONE: FillMode = FillMode(0)
    public static var FORWARDS: FillMode = FillMode(1)
    public static var BACKWARDS: FillMode = FillMode(2)
    public static var BOTH: FillMode = FillMode(3)
    public var value: Int32
    FillMode(arg0: Int32) {
        value = arg0
    }
}
public open class PlayMode {
    public static var NORMAL: PlayMode = PlayMode(0)
    public static var REVERSE: PlayMode = PlayMode(1)
    public static var ALTERNATE: PlayMode = PlayMode(2)
    public static var ALTERNATE_REVERSE: PlayMode = PlayMode(3)
    public var value: Int32
    PlayMode(arg0: Int32) {
        value = arg0
    }
}
public open class KeyType {
    public static var DOWN: KeyType = KeyType(0)
    public static var UP: KeyType = KeyType(1)
    public var value: Int32
    KeyType(arg0: Int32) {
        value = arg0
    }
}
public open class KeySource {
    public static var UNKNOWN: KeySource = KeySource(0)
    public static var KEYBOARD: KeySource = KeySource(1)
    public static var JOYSTICK: KeySource = KeySource(2)
    public var value: Int32
    KeySource(arg0: Int32) {
        value = arg0
    }
}
public open class Edge {
    public static var TOP: Edge = Edge(0)
    public static var CENTER: Edge = Edge(1)
    public static var BOTTOM: Edge = Edge(2)
    public static var BASELINE: Edge = Edge(3)
    public static var START: Edge = Edge(4)
    public static var MIDDLE: Edge = Edge(5)
    public static var END: Edge = Edge(6)
    public var value: Int32
    Edge(arg0: Int32) {
        value = arg0
    }
}
public open class Week {
    public static var MON: Week = Week(0)
    public static var TUE: Week = Week(1)
    public static var WED: Week = Week(2)
    public static var THUR: Week = Week(3)
    public static var FRI: Week = Week(4)
    public static var SAT: Week = Week(5)
    public static var SUN: Week = Week(6)
    public var value: Int32
    Week(arg0: Int32) {
        value = arg0
    }
}
public open class Direction {
    public static var LTR: Direction = Direction(0)
    public static var RTL: Direction = Direction(1)
    public static var AUTO: Direction = Direction(2)
    public var value: Int32
    Direction(arg0: Int32) {
        value = arg0
    }
}
public open class BarState {
    public static var OFF: BarState = BarState(0)
    public static var AUTO: BarState = BarState(1)
    public static var ON: BarState = BarState(2)
    public var value: Int32
    BarState(arg0: Int32) {
        value = arg0
    }
}
public open class EdgeEffect {
    public static var SPRING: EdgeEffect = EdgeEffect(0)
    public static var FADE: EdgeEffect = EdgeEffect(1)
    public static var NONE: EdgeEffect = EdgeEffect(2)
    public var value: Int32
    EdgeEffect(arg0: Int32) {
        value = arg0
    }
}
public open class Alignment {
    public static var TOP_START: Alignment = Alignment(0)
    public static var TOP: Alignment = Alignment(1)
    public static var TOP_END: Alignment = Alignment(2)
    public static var START: Alignment = Alignment(3)
    public static var CENTER: Alignment = Alignment(4)
    public static var END: Alignment = Alignment(5)
    public static var BOTTOM_START: Alignment = Alignment(6)
    public static var BOTTOM: Alignment = Alignment(7)
    public static var BOTTOM_END: Alignment = Alignment(8)
    public var value: Int32
    Alignment(arg0: Int32) {
        value = arg0
    }
}
public open class LocalizedAlignment {
    public static var TOP_START: LocalizedAlignment = LocalizedAlignment(0)
    public static var TOP: LocalizedAlignment = LocalizedAlignment(1)
    public static var TOP_END: LocalizedAlignment = LocalizedAlignment(2)
    public static var START: LocalizedAlignment = LocalizedAlignment(3)
    public static var CENTER: LocalizedAlignment = LocalizedAlignment(4)
    public static var END: LocalizedAlignment = LocalizedAlignment(5)
    public static var BOTTOM_START: LocalizedAlignment = LocalizedAlignment(6)
    public static var BOTTOM: LocalizedAlignment = LocalizedAlignment(7)
    public static var BOTTOM_END: LocalizedAlignment = LocalizedAlignment(8)
    public var value: Int32
    LocalizedAlignment(arg0: Int32) {
        value = arg0
    }
}
public open class TransitionType {
    public static var ALL: TransitionType = TransitionType(0)
    public static var INSERT: TransitionType = TransitionType(1)
    public static var DELETE: TransitionType = TransitionType(2)
    public var value: Int32
    TransitionType(arg0: Int32) {
        value = arg0
    }
}
public open class RelateType {
    public static var FILL: RelateType = RelateType(0)
    public static var FIT: RelateType = RelateType(1)
    public var value: Int32
    RelateType(arg0: Int32) {
        value = arg0
    }
}
public open class Visibility {
    public static var VISIBLE: Visibility = Visibility(0)
    public static var HIDDEN: Visibility = Visibility(1)
    public static var NONE: Visibility = Visibility(2)
    public var value: Int32
    Visibility(arg0: Int32) {
        value = arg0
    }
}
public open class LineCapStyle {
    public static var BUTT: LineCapStyle = LineCapStyle(0)
    public static var ROUND: LineCapStyle = LineCapStyle(1)
    public static var SQUARE: LineCapStyle = LineCapStyle(2)
    public var value: Int32
    LineCapStyle(arg0: Int32) {
        value = arg0
    }
}
public open class Axis {
    public static var VERTICAL: Axis = Axis(0)
    public static var HORIZONTAL: Axis = Axis(1)
    public var value: Int32
    Axis(arg0: Int32) {
        value = arg0
    }
}
public open class HorizontalAlign {
    public static var START: HorizontalAlign = HorizontalAlign(0)
    public static var CENTER: HorizontalAlign = HorizontalAlign(1)
    public static var END: HorizontalAlign = HorizontalAlign(2)
    public var value: Int32
    HorizontalAlign(arg0: Int32) {
        value = arg0
    }
}
public open class FlexAlign {
    public static var START: FlexAlign = FlexAlign(0)
    public static var CENTER: FlexAlign = FlexAlign(1)
    public static var END: FlexAlign = FlexAlign(2)
    public static var SPACE_BETWEEN: FlexAlign = FlexAlign(3)
    public static var SPACE_AROUND: FlexAlign = FlexAlign(4)
    public static var SPACE_EVENLY: FlexAlign = FlexAlign(5)
    public var value: Int32
    FlexAlign(arg0: Int32) {
        value = arg0
    }
}
public open class ItemAlign {
    public static var AUTO: ItemAlign = ItemAlign(0)
    public static var START: ItemAlign = ItemAlign(1)
    public static var CENTER: ItemAlign = ItemAlign(2)
    public static var END: ItemAlign = ItemAlign(3)
    public static var BASELINE: ItemAlign = ItemAlign(4)
    public static var STRETCH: ItemAlign = ItemAlign(5)
    public var value: Int32
    ItemAlign(arg0: Int32) {
        value = arg0
    }
}
public open class FlexDirection {
    public static var ROW: FlexDirection = FlexDirection(0)
    public static var COLUMN: FlexDirection = FlexDirection(1)
    public static var ROW_REVERSE: FlexDirection = FlexDirection(2)
    public static var COLUMN_REVERSE: FlexDirection = FlexDirection(3)
    public var value: Int32
    FlexDirection(arg0: Int32) {
        value = arg0
    }
}
public open class PixelRoundCalcPolicy {
    public static var NO_FORCE_ROUND: PixelRoundCalcPolicy = PixelRoundCalcPolicy(0)
    public static var FORCE_CEIL: PixelRoundCalcPolicy = PixelRoundCalcPolicy(1)
    public static var FORCE_FLOOR: PixelRoundCalcPolicy = PixelRoundCalcPolicy(2)
    public var value: Int32
    PixelRoundCalcPolicy(arg0: Int32) {
        value = arg0
    }
}
public open class PixelRoundMode {
    public static var PIXEL_ROUND_ON_LAYOUT_FINISH: PixelRoundMode = PixelRoundMode(0)
    public static var PIXEL_ROUND_AFTER_MEASURE: PixelRoundMode = PixelRoundMode(1)
    public var value: Int32
    PixelRoundMode(arg0: Int32) {
        value = arg0
    }
}
public open class FlexWrap {
    public static var NO_WRAP: FlexWrap = FlexWrap(0)
    public static var WRAP: FlexWrap = FlexWrap(1)
    public static var WRAP_REVERSE: FlexWrap = FlexWrap(2)
    public var value: Int32
    FlexWrap(arg0: Int32) {
        value = arg0
    }
}
public open class VerticalAlign {
    public static var TOP: VerticalAlign = VerticalAlign(0)
    public static var CENTER: VerticalAlign = VerticalAlign(1)
    public static var BOTTOM: VerticalAlign = VerticalAlign(2)
    public var value: Int32
    VerticalAlign(arg0: Int32) {
        value = arg0
    }
}
public open class ImageRepeat {
    public static var NO_REPEAT: ImageRepeat = ImageRepeat(0)
    public static var X: ImageRepeat = ImageRepeat(1)
    public static var Y: ImageRepeat = ImageRepeat(2)
    public static var XY: ImageRepeat = ImageRepeat(3)
    public var value: Int32
    ImageRepeat(arg0: Int32) {
        value = arg0
    }
}
public open class ImageSize {
    public static var AUTO: ImageSize = ImageSize(0)
    public static var COVER: ImageSize = ImageSize(1)
    public static var CONTAIN: ImageSize = ImageSize(2)
    public static var FILL: ImageSize = ImageSize(3)
    public var value: Int32
    ImageSize(arg0: Int32) {
        value = arg0
    }
}
public open class GradientDirection {
    public static var LEFT: GradientDirection = GradientDirection(0)
    public static var TOP: GradientDirection = GradientDirection(1)
    public static var RIGHT: GradientDirection = GradientDirection(2)
    public static var BOTTOM: GradientDirection = GradientDirection(3)
    public static var LEFT_TOP: GradientDirection = GradientDirection(4)
    public static var LEFT_BOTTOM: GradientDirection = GradientDirection(5)
    public static var RIGHT_TOP: GradientDirection = GradientDirection(6)
    public static var RIGHT_BOTTOM: GradientDirection = GradientDirection(7)
    public static var NONE: GradientDirection = GradientDirection(8)
    public var value: Int32
    GradientDirection(arg0: Int32) {
        value = arg0
    }
}
public open class SharedTransitionEffectType {
    public static var STATIC: SharedTransitionEffectType = SharedTransitionEffectType(0)
    public static var EXCHANGE: SharedTransitionEffectType = SharedTransitionEffectType(1)
    public var value: Int32
    SharedTransitionEffectType(arg0: Int32) {
        value = arg0
    }
}
public open class FontStyle {
    public static var NORMAL: FontStyle = FontStyle(0)
    public static var ITALIC: FontStyle = FontStyle(1)
    public var value: Int32
    FontStyle(arg0: Int32) {
        value = arg0
    }
}
public open class FontWeight {
    public static var LIGHTER: FontWeight = FontWeight(0)
    public static var NORMAL: FontWeight = FontWeight(1)
    public static var REGULAR: FontWeight = FontWeight(2)
    public static var MEDIUM: FontWeight = FontWeight(3)
    public static var BOLD: FontWeight = FontWeight(4)
    public static var BOLDER: FontWeight = FontWeight(5)
    public var value: Int32
    FontWeight(arg0: Int32) {
        value = arg0
    }
}
public open class TextAlign {
    public static var CENTER: TextAlign = TextAlign(0)
    public static var START: TextAlign = TextAlign(1)
    public static var END: TextAlign = TextAlign(2)
    public static var JUSTIFY: TextAlign = TextAlign(3)
    public var value: Int32
    TextAlign(arg0: Int32) {
        value = arg0
    }
}
public open class TextOverflow {
    public static var NONE: TextOverflow = TextOverflow(0)
    public static var CLIP: TextOverflow = TextOverflow(1)
    public static var ELLIPSIS: TextOverflow = TextOverflow(2)
    public static var MARQUEE: TextOverflow = TextOverflow(3)
    public var value: Int32
    TextOverflow(arg0: Int32) {
        value = arg0
    }
}
public open class TextDecorationType {
    public static var NONE: TextDecorationType = TextDecorationType(0)
    public static var UNDERLINE: TextDecorationType = TextDecorationType(1)
    public static var OVERLINE: TextDecorationType = TextDecorationType(2)
    public static var LINE_THROUGH: TextDecorationType = TextDecorationType(3)
    public var value: Int32
    TextDecorationType(arg0: Int32) {
        value = arg0
    }
}
public open class TextCase {
    public static var NORMAL: TextCase = TextCase(0)
    public static var LOWER_CASE: TextCase = TextCase(1)
    public static var UPPER_CASE: TextCase = TextCase(2)
    public var value: Int32
    TextCase(arg0: Int32) {
        value = arg0
    }
}
public open class TextHeightAdaptivePolicy {
    public static var MAX_LINES_FIRST: TextHeightAdaptivePolicy = TextHeightAdaptivePolicy(0)
    public static var MIN_FONT_SIZE_FIRST: TextHeightAdaptivePolicy = TextHeightAdaptivePolicy(1)
    public static var LAYOUT_CONSTRAINT_FIRST: TextHeightAdaptivePolicy = TextHeightAdaptivePolicy(2)
    public var value: Int32
    TextHeightAdaptivePolicy(arg0: Int32) {
        value = arg0
    }
}
public open class ResponseType {
    public static var RIGHT_CLICK: ResponseType = ResponseType(0)
    public static var LONG_PRESS: ResponseType = ResponseType(1)
    public var value: Int32
    ResponseType(arg0: Int32) {
        value = arg0
    }
}
public open class HoverEffect {
    public static var AUTO: HoverEffect = HoverEffect(0)
    public static var SCALE: HoverEffect = HoverEffect(1)
    public static var HIGHLIGHT: HoverEffect = HoverEffect(2)
    public static var NONE: HoverEffect = HoverEffect(3)
    public var value: Int32
    HoverEffect(arg0: Int32) {
        value = arg0
    }
}
public open class Placement {
    public static var LEFT: Placement = Placement(0)
    public static var RIGHT: Placement = Placement(1)
    public static var TOP: Placement = Placement(2)
    public static var BOTTOM: Placement = Placement(3)
    public static var TOP_LEFT: Placement = Placement(4)
    public static var TOP_RIGHT: Placement = Placement(5)
    public static var BOTTOM_LEFT: Placement = Placement(6)
    public static var BOTTOM_RIGHT: Placement = Placement(7)
    public static var LEFT_TOP: Placement = Placement(8)
    public static var LEFT_BOTTOM: Placement = Placement(9)
    public static var RIGHT_TOP: Placement = Placement(10)
    public static var RIGHT_BOTTOM: Placement = Placement(11)
    public var value: Int32
    Placement(arg0: Int32) {
        value = arg0
    }
}
public open class ArrowPointPosition {
    public static var START: ArrowPointPosition = ArrowPointPosition(0)
    public static var CENTER: ArrowPointPosition = ArrowPointPosition(1)
    public static var END: ArrowPointPosition = ArrowPointPosition(2)
    public var value: Int32
    ArrowPointPosition(arg0: Int32) {
        value = arg0
    }
}
public open class CopyOptions {
    public static var NONE: CopyOptions = CopyOptions(0)
    public static var IN_APP: CopyOptions = CopyOptions(1)
    public static var LOCAL_DEVICE: CopyOptions = CopyOptions(2)
    public static var CROSS_DEVICE: CopyOptions = CopyOptions(3)
    public var value: Int32
    CopyOptions(arg0: Int32) {
        value = arg0
    }
}
public open class HitTestMode {
    public static var DEFAULT: HitTestMode = HitTestMode(0)
    public static var BLOCK: HitTestMode = HitTestMode(1)
    public static var TRANSPARENT: HitTestMode = HitTestMode(2)
    public static var NONE: HitTestMode = HitTestMode(3)
    public static var BLOCK_HIERARCHY: HitTestMode = HitTestMode(4)
    public static var BLOCK_DESCENDANTS: HitTestMode = HitTestMode(5)
    public var value: Int32
    HitTestMode(arg0: Int32) {
        value = arg0
    }
}
public open class TitleHeight {
    public static var MAIN_ONLY: TitleHeight = TitleHeight(0)
    public static var MAIN_WITH_SUB: TitleHeight = TitleHeight(1)
    public var value: Int32
    TitleHeight(arg0: Int32) {
        value = arg0
    }
}
public open class ModifierKey {
    public static var CTRL: ModifierKey = ModifierKey(0)
    public static var SHIFT: ModifierKey = ModifierKey(1)
    public static var ALT: ModifierKey = ModifierKey(2)
    public var value: Int32
    ModifierKey(arg0: Int32) {
        value = arg0
    }
}
public open class FunctionKey {
    public static var ESC: FunctionKey = FunctionKey(0)
    public static var F1: FunctionKey = FunctionKey(1)
    public static var F2: FunctionKey = FunctionKey(2)
    public static var F3: FunctionKey = FunctionKey(3)
    public static var F4: FunctionKey = FunctionKey(4)
    public static var F5: FunctionKey = FunctionKey(5)
    public static var F6: FunctionKey = FunctionKey(6)
    public static var F7: FunctionKey = FunctionKey(7)
    public static var F8: FunctionKey = FunctionKey(8)
    public static var F9: FunctionKey = FunctionKey(9)
    public static var F10: FunctionKey = FunctionKey(10)
    public static var F11: FunctionKey = FunctionKey(11)
    public static var F12: FunctionKey = FunctionKey(12)
    public static var TAB: FunctionKey = FunctionKey(13)
    public static var DPAD_UP: FunctionKey = FunctionKey(14)
    public static var DPAD_DOWN: FunctionKey = FunctionKey(15)
    public static var DPAD_LEFT: FunctionKey = FunctionKey(16)
    public static var DPAD_RIGHT: FunctionKey = FunctionKey(17)
    public var value: Int32
    FunctionKey(arg0: Int32) {
        value = arg0
    }
}
public open class ImageSpanAlignment {
    public static var BASELINE: ImageSpanAlignment = ImageSpanAlignment(0)
    public static var BOTTOM: ImageSpanAlignment = ImageSpanAlignment(1)
    public static var CENTER: ImageSpanAlignment = ImageSpanAlignment(2)
    public static var TOP: ImageSpanAlignment = ImageSpanAlignment(3)
    public static var FOLLOW_PARAGRAPH: ImageSpanAlignment = ImageSpanAlignment(4)
    public var value: Int32
    ImageSpanAlignment(arg0: Int32) {
        value = arg0
    }
}
public open class ObscuredReasons {
    public static var PLACEHOLDER: ObscuredReasons = ObscuredReasons(0)
    public var value: Int32
    ObscuredReasons(arg0: Int32) {
        value = arg0
    }
}
public open class TextContentStyle {
    public static var DEFAULT: TextContentStyle = TextContentStyle(0)
    public static var INLINE: TextContentStyle = TextContentStyle(1)
    public var value: Int32
    TextContentStyle(arg0: Int32) {
        value = arg0
    }
}
public open class ClickEffectLevel {
    public static var LIGHT: ClickEffectLevel = ClickEffectLevel(0)
    public static var MIDDLE: ClickEffectLevel = ClickEffectLevel(1)
    public static var HEAVY: ClickEffectLevel = ClickEffectLevel(2)
    public var value: Int32
    ClickEffectLevel(arg0: Int32) {
        value = arg0
    }
}
public open class XComponentType {
    public static var SURFACE: XComponentType = XComponentType(0)
    public static var COMPONENT: XComponentType = XComponentType(1)
    public static var TEXTURE: XComponentType = XComponentType(2)
    public static var NODE: XComponentType = XComponentType(3)
    public var value: Int32
    XComponentType(arg0: Int32) {
        value = arg0
    }
}
public open class NestedScrollMode {
    public static var SELF_ONLY: NestedScrollMode = NestedScrollMode(0)
    public static var SELF_FIRST: NestedScrollMode = NestedScrollMode(1)
    public static var PARENT_FIRST: NestedScrollMode = NestedScrollMode(2)
    public static var PARALLEL: NestedScrollMode = NestedScrollMode(3)
    public var value: Int32
    NestedScrollMode(arg0: Int32) {
        value = arg0
    }
}
public open class ScrollSource {
    public static var DRAG: ScrollSource = ScrollSource(0)
    public static var FLING: ScrollSource = ScrollSource(1)
    public static var EDGE_EFFECT: ScrollSource = ScrollSource(2)
    public static var OTHER_USER_INPUT: ScrollSource = ScrollSource(3)
    public static var SCROLL_BAR: ScrollSource = ScrollSource(4)
    public static var SCROLL_BAR_FLING: ScrollSource = ScrollSource(5)
    public static var SCROLLER: ScrollSource = ScrollSource(6)
    public static var SCROLLER_ANIMATION: ScrollSource = ScrollSource(7)
    public var value: Int32
    ScrollSource(arg0: Int32) {
        value = arg0
    }
}
public open class RenderFit {
    public static var CENTER: RenderFit = RenderFit(0)
    public static var TOP: RenderFit = RenderFit(1)
    public static var BOTTOM: RenderFit = RenderFit(2)
    public static var LEFT: RenderFit = RenderFit(3)
    public static var RIGHT: RenderFit = RenderFit(4)
    public static var TOP_LEFT: RenderFit = RenderFit(5)
    public static var TOP_RIGHT: RenderFit = RenderFit(6)
    public static var BOTTOM_LEFT: RenderFit = RenderFit(7)
    public static var BOTTOM_RIGHT: RenderFit = RenderFit(8)
    public static var RESIZE_FILL: RenderFit = RenderFit(9)
    public static var RESIZE_CONTAIN: RenderFit = RenderFit(10)
    public static var RESIZE_CONTAIN_TOP_LEFT: RenderFit = RenderFit(11)
    public static var RESIZE_CONTAIN_BOTTOM_RIGHT: RenderFit = RenderFit(12)
    public static var RESIZE_COVER: RenderFit = RenderFit(13)
    public static var RESIZE_COVER_TOP_LEFT: RenderFit = RenderFit(14)
    public static var RESIZE_COVER_BOTTOM_RIGHT: RenderFit = RenderFit(15)
    public var value: Int32
    RenderFit(arg0: Int32) {
        value = arg0
    }
}
public open class DialogButtonStyle {
    public static var DEFAULT: DialogButtonStyle = DialogButtonStyle(0)
    public static var HIGHLIGHT: DialogButtonStyle = DialogButtonStyle(1)
    public var value: Int32
    DialogButtonStyle(arg0: Int32) {
        value = arg0
    }
}
public open class WordBreak {
    public static var NORMAL: WordBreak = WordBreak(0)
    public static var BREAK_ALL: WordBreak = WordBreak(1)
    public static var BREAK_WORD: WordBreak = WordBreak(2)
    public static var HYPHENATION: WordBreak = WordBreak(3)
    public var value: Int32
    WordBreak(arg0: Int32) {
        value = arg0
    }
}
public open class LineBreakStrategy {
    public static var GREEDY: LineBreakStrategy = LineBreakStrategy(0)
    public static var HIGH_QUALITY: LineBreakStrategy = LineBreakStrategy(1)
    public static var BALANCED: LineBreakStrategy = LineBreakStrategy(2)
    public var value: Int32
    LineBreakStrategy(arg0: Int32) {
        value = arg0
    }
}
public open class IlluminatedType {
    public static var NONE: IlluminatedType = IlluminatedType(0)
    public static var BORDER: IlluminatedType = IlluminatedType(1)
    public static var CONTENT: IlluminatedType = IlluminatedType(2)
    public static var BORDER_CONTENT: IlluminatedType = IlluminatedType(3)
    public static var BLOOM_BORDER: IlluminatedType = IlluminatedType(4)
    public static var BLOOM_BORDER_CONTENT: IlluminatedType = IlluminatedType(5)
    public var value: Int32
    IlluminatedType(arg0: Int32) {
        value = arg0
    }
}
public open class EllipsisMode {
    public static var START: EllipsisMode = EllipsisMode(0)
    public static var CENTER: EllipsisMode = EllipsisMode(1)
    public static var END: EllipsisMode = EllipsisMode(2)
    public var value: Int32
    EllipsisMode(arg0: Int32) {
        value = arg0
    }
}
public type Nullable<T> = Option<T>
public open class OptionWidthMode {
    public static var FIT_CONTENT: OptionWidthMode = OptionWidthMode(0)
    public static var FIT_TRIGGER: OptionWidthMode = OptionWidthMode(1)
    public var value: Int32
    OptionWidthMode(arg0: Int32) {
        value = arg0
    }
}
public open class FoldStatus {
    public static var FOLD_STATUS_UNKNOWN: FoldStatus = FoldStatus(0)
    public static var FOLD_STATUS_EXPANDED: FoldStatus = FoldStatus(1)
    public static var FOLD_STATUS_FOLDED: FoldStatus = FoldStatus(2)
    public static var FOLD_STATUS_HALF_FOLDED: FoldStatus = FoldStatus(3)
    public var value: Int32
    FoldStatus(arg0: Int32) {
        value = arg0
    }
}
public open class AppRotation {
    public static var ROTATION_0: AppRotation = AppRotation(0)
    public static var ROTATION_90: AppRotation = AppRotation(1)
    public static var ROTATION_180: AppRotation = AppRotation(2)
    public static var ROTATION_270: AppRotation = AppRotation(3)
    public var value: Int32
    AppRotation(arg0: Int32) {
        value = arg0
    }
}
public open class EmbeddedType {
    public static var EMBEDDED_UI_EXTENSION: EmbeddedType = EmbeddedType(0)
    public var value: Int32
    EmbeddedType(arg0: Int32) {
        value = arg0
    }
}
public open class MarqueeUpdateStrategy {
    public static var DEFAULT: MarqueeUpdateStrategy = MarqueeUpdateStrategy(0)
    public static var PRESERVE_POSITION: MarqueeUpdateStrategy = MarqueeUpdateStrategy(1)
    public var value: Int32
    MarqueeUpdateStrategy(arg0: Int32) {
        value = arg0
    }
}
public open class TextDecorationStyle {
    public static var SOLID: TextDecorationStyle = TextDecorationStyle(0)
    public static var DOUBLE: TextDecorationStyle = TextDecorationStyle(1)
    public static var DOTTED: TextDecorationStyle = TextDecorationStyle(2)
    public static var DASHED: TextDecorationStyle = TextDecorationStyle(3)
    public static var WAVY: TextDecorationStyle = TextDecorationStyle(4)
    public var value: Int32
    TextDecorationStyle(arg0: Int32) {
        value = arg0
    }
}
public open class TextSelectableMode {
    public static var SELECTABLE_UNFOCUSABLE: TextSelectableMode = TextSelectableMode(0)
    public static var SELECTABLE_FOCUSABLE: TextSelectableMode = TextSelectableMode(1)
    public static var UNSELECTABLE: TextSelectableMode = TextSelectableMode(2)
    public var value: Int32
    TextSelectableMode(arg0: Int32) {
        value = arg0
    }
}
public open class AccessibilityHoverType {
    public static var HOVER_ENTER: AccessibilityHoverType = AccessibilityHoverType(0)
    public static var HOVER_MOVE: AccessibilityHoverType = AccessibilityHoverType(1)
    public static var HOVER_EXIT: AccessibilityHoverType = AccessibilityHoverType(2)
    public static var HOVER_CANCEL: AccessibilityHoverType = AccessibilityHoverType(3)
    public var value: Int32
    AccessibilityHoverType(arg0: Int32) {
        value = arg0
    }
}
public open class WidthBreakpoint {
    public static var WIDTH_XS: WidthBreakpoint = WidthBreakpoint(0)
    public static var WIDTH_SM: WidthBreakpoint = WidthBreakpoint(1)
    public static var WIDTH_MD: WidthBreakpoint = WidthBreakpoint(2)
    public static var WIDTH_LG: WidthBreakpoint = WidthBreakpoint(3)
    public static var WIDTH_XL: WidthBreakpoint = WidthBreakpoint(4)
    public var value: Int32
    WidthBreakpoint(arg0: Int32) {
        value = arg0
    }
}
public open class HeightBreakpoint {
    public static var HEIGHT_SM: HeightBreakpoint = HeightBreakpoint(0)
    public static var HEIGHT_MD: HeightBreakpoint = HeightBreakpoint(1)
    public static var HEIGHT_LG: HeightBreakpoint = HeightBreakpoint(2)
    public var value: Int32
    HeightBreakpoint(arg0: Int32) {
        value = arg0
    }
}
public open class AxisModel {
    public static var ABS_X: AxisModel = AxisModel(0)
    public static var ABS_Y: AxisModel = AxisModel(1)
    public static var ABS_Z: AxisModel = AxisModel(2)
    public static var ABS_RZ: AxisModel = AxisModel(3)
    public static var ABS_GAS: AxisModel = AxisModel(4)
    public static var ABS_BRAKE: AxisModel = AxisModel(5)
    public static var ABS_HAT0X: AxisModel = AxisModel(6)
    public static var ABS_HAT0Y: AxisModel = AxisModel(7)
    public var value: Int32
    AxisModel(arg0: Int32) {
        value = arg0
    }
}
public open class PageFlipMode {
    public static var CONTINUOUS: PageFlipMode = PageFlipMode(0)
    public static var SINGLE: PageFlipMode = PageFlipMode(1)
    public var value: Int32
    PageFlipMode(arg0: Int32) {
        value = arg0
    }
}
public open class FocusWrapMode {
    public static var DEFAULT: FocusWrapMode = FocusWrapMode(0)
    public static var WRAP_WITH_ARROW: FocusWrapMode = FocusWrapMode(1)
    public var value: Int32
    FocusWrapMode(arg0: Int32) {
        value = arg0
    }
}
public open class CrownAction {
    public static var BEGIN: CrownAction = CrownAction(0)
    public static var UPDATE: CrownAction = CrownAction(1)
    public static var END: CrownAction = CrownAction(2)
    public var value: Int32
    CrownAction(arg0: Int32) {
        value = arg0
    }
}
public open class CrownSensitivity {
    public static var LOW: CrownSensitivity = CrownSensitivity(0)
    public static var MEDIUM: CrownSensitivity = CrownSensitivity(1)
    public static var HIGH: CrownSensitivity = CrownSensitivity(2)
    public var value: Int32
    CrownSensitivity(arg0: Int32) {
        value = arg0
    }
}
public open class AxisAction {
    public static var NONE: AxisAction = AxisAction(0)
    public static var BEGIN: AxisAction = AxisAction(1)
    public static var UPDATE: AxisAction = AxisAction(2)
    public static var END: AxisAction = AxisAction(3)
    public static var CANCEL: AxisAction = AxisAction(4)
    public var value: Int32
    AxisAction(arg0: Int32) {
        value = arg0
    }
}
public open class FocusDrawLevel {
    public static var SELF: FocusDrawLevel = FocusDrawLevel(0)
    public static var TOP: FocusDrawLevel = FocusDrawLevel(1)
    public var value: Int32
    FocusDrawLevel(arg0: Int32) {
        value = arg0
    }
}
public open class DividerMode {
    public static var FLOATING_ABOVE_MENU: DividerMode = DividerMode(0)
    public static var EMBEDDED_IN_MENU: DividerMode = DividerMode(1)
    public var value: Int32
    DividerMode(arg0: Int32) {
        value = arg0
    }
}
public open class EventQueryType {
    public static var ON_CLICK: EventQueryType = EventQueryType(0)
    public var value: Int32
    EventQueryType(arg0: Int32) {
        value = arg0
    }
}
public open class TipsAnchorType {
    public static var TARGET: TipsAnchorType = TipsAnchorType(0)
    public static var CURSOR: TipsAnchorType = TipsAnchorType(1)
    public var value: Int32
    TipsAnchorType(arg0: Int32) {
        value = arg0
    }
}
public open class ColorSpace {
    public static var SRGB: ColorSpace = ColorSpace(0)
    public static var DISPLAY_P3: ColorSpace = ColorSpace(1)
    public var value: Int32
    ColorSpace(arg0: Int32) {
        value = arg0
    }
}
public open class AnimationPropertyType {
    public static var ROTATION: AnimationPropertyType = AnimationPropertyType(0)
    public static var TRANSLATION: AnimationPropertyType = AnimationPropertyType(1)
    public static var SCALE: AnimationPropertyType = AnimationPropertyType(2)
    public static var OPACITY: AnimationPropertyType = AnimationPropertyType(3)
    public var value: Int32
    AnimationPropertyType(arg0: Int32) {
        value = arg0
    }
}
public type ReuseIdCallback = () -> String
public type Context = Any
public open class AccessibilitySamePageMode {
    public static var SEMI_SILENT: AccessibilitySamePageMode = AccessibilitySamePageMode(0)
    public static var FULL_SILENT: AccessibilitySamePageMode = AccessibilitySamePageMode(1)
    public var value: Int32
    AccessibilitySamePageMode(arg0: Int32) {
        value = arg0
    }
}
public open class AccessibilityRoleType {
    public static var ACTION_SHEET: AccessibilityRoleType = AccessibilityRoleType(0)
    public static var ALERT_DIALOG: AccessibilityRoleType = AccessibilityRoleType(1)
    public static var INDEXER_COMPONENT: AccessibilityRoleType = AccessibilityRoleType(2)
    public static var BADGE_COMPONENT: AccessibilityRoleType = AccessibilityRoleType(3)
    public static var BLANK: AccessibilityRoleType = AccessibilityRoleType(4)
    public static var BUTTON: AccessibilityRoleType = AccessibilityRoleType(5)
    public static var BACK_BUTTON: AccessibilityRoleType = AccessibilityRoleType(6)
    public static var SHEET_DRAG_BAR: AccessibilityRoleType = AccessibilityRoleType(7)
    public static var CALENDAR_PICKER: AccessibilityRoleType = AccessibilityRoleType(8)
    public static var CALENDAR: AccessibilityRoleType = AccessibilityRoleType(9)
    public static var CANVAS: AccessibilityRoleType = AccessibilityRoleType(10)
    public static var CANVAS_GRADIENT: AccessibilityRoleType = AccessibilityRoleType(11)
    public static var CANVAS_PATTERN: AccessibilityRoleType = AccessibilityRoleType(12)
    public static var CHECKBOX: AccessibilityRoleType = AccessibilityRoleType(13)
    public static var CHECKBOX_GROUP: AccessibilityRoleType = AccessibilityRoleType(14)
    public static var CIRCLE: AccessibilityRoleType = AccessibilityRoleType(15)
    public static var COLUMN_SPLIT: AccessibilityRoleType = AccessibilityRoleType(16)
    public static var COLUMN: AccessibilityRoleType = AccessibilityRoleType(17)
    public static var CANVAS_RENDERING_CONTEXT_2D: AccessibilityRoleType = AccessibilityRoleType(18)
    public static var CHART: AccessibilityRoleType = AccessibilityRoleType(19)
    public static var COUNTER: AccessibilityRoleType = AccessibilityRoleType(20)
    public static var CONTAINER_MODAL: AccessibilityRoleType = AccessibilityRoleType(21)
    public static var DATA_PANEL: AccessibilityRoleType = AccessibilityRoleType(22)
    public static var DATE_PICKER: AccessibilityRoleType = AccessibilityRoleType(23)
    public static var DIALOG: AccessibilityRoleType = AccessibilityRoleType(24)
    public static var DIVIDER: AccessibilityRoleType = AccessibilityRoleType(25)
    public static var DRAG_BAR: AccessibilityRoleType = AccessibilityRoleType(26)
    public static var EFFECT_COMPONENT: AccessibilityRoleType = AccessibilityRoleType(27)
    public static var ELLIPSE: AccessibilityRoleType = AccessibilityRoleType(28)
    public static var FLEX: AccessibilityRoleType = AccessibilityRoleType(29)
    public static var FLOW_ITEM: AccessibilityRoleType = AccessibilityRoleType(30)
    public static var FORM_COMPONENT: AccessibilityRoleType = AccessibilityRoleType(31)
    public static var FORM_LINK: AccessibilityRoleType = AccessibilityRoleType(32)
    public static var GAUGE: AccessibilityRoleType = AccessibilityRoleType(33)
    public static var GRID: AccessibilityRoleType = AccessibilityRoleType(34)
    public static var GRID_COL: AccessibilityRoleType = AccessibilityRoleType(35)
    public static var GRID_CONTAINER: AccessibilityRoleType = AccessibilityRoleType(36)
    public static var GRID_ITEM: AccessibilityRoleType = AccessibilityRoleType(37)
    public static var GRID_ROW: AccessibilityRoleType = AccessibilityRoleType(38)
    public static var HYPERLINK: AccessibilityRoleType = AccessibilityRoleType(39)
    public static var IMAGE: AccessibilityRoleType = AccessibilityRoleType(40)
    public static var IMAGE_ANIMATOR: AccessibilityRoleType = AccessibilityRoleType(41)
    public static var IMAGE_BITMAP: AccessibilityRoleType = AccessibilityRoleType(42)
    public static var IMAGE_DATA: AccessibilityRoleType = AccessibilityRoleType(43)
    public static var IMAGE_SPAN: AccessibilityRoleType = AccessibilityRoleType(44)
    public static var LABEL: AccessibilityRoleType = AccessibilityRoleType(45)
    public static var LINE: AccessibilityRoleType = AccessibilityRoleType(46)
    public static var LIST: AccessibilityRoleType = AccessibilityRoleType(47)
    public static var LIST_ITEM: AccessibilityRoleType = AccessibilityRoleType(48)
    public static var LIST_ITEM_GROUP: AccessibilityRoleType = AccessibilityRoleType(49)
    public static var LOADING_PROGRESS: AccessibilityRoleType = AccessibilityRoleType(50)
    public static var MARQUEE: AccessibilityRoleType = AccessibilityRoleType(51)
    public static var MATRIX2D: AccessibilityRoleType = AccessibilityRoleType(52)
    public static var MENU: AccessibilityRoleType = AccessibilityRoleType(53)
    public static var MENU_ITEM: AccessibilityRoleType = AccessibilityRoleType(54)
    public static var MENU_ITEM_GROUP: AccessibilityRoleType = AccessibilityRoleType(55)
    public static var NAV_DESTINATION: AccessibilityRoleType = AccessibilityRoleType(56)
    public static var NAV_ROUTER: AccessibilityRoleType = AccessibilityRoleType(57)
    public static var NAVIGATION: AccessibilityRoleType = AccessibilityRoleType(58)
    public static var NAVIGATION_BAR: AccessibilityRoleType = AccessibilityRoleType(59)
    public static var NAVIGATION_MENU: AccessibilityRoleType = AccessibilityRoleType(60)
    public static var NAVIGATOR: AccessibilityRoleType = AccessibilityRoleType(61)
    public static var OFFSCREEN_CANVAS: AccessibilityRoleType = AccessibilityRoleType(62)
    public static var OFFSCREEN_CANVAS_RENDERING_CONTEXT2D: AccessibilityRoleType = AccessibilityRoleType(63)
    public static var OPTION: AccessibilityRoleType = AccessibilityRoleType(64)
    public static var PANEL: AccessibilityRoleType = AccessibilityRoleType(65)
    public static var PAPER_PAGE: AccessibilityRoleType = AccessibilityRoleType(66)
    public static var PATH: AccessibilityRoleType = AccessibilityRoleType(67)
    public static var PATH2D: AccessibilityRoleType = AccessibilityRoleType(68)
    public static var PATTERN_LOCK: AccessibilityRoleType = AccessibilityRoleType(69)
    public static var PICKER: AccessibilityRoleType = AccessibilityRoleType(70)
    public static var PICKER_VIEW: AccessibilityRoleType = AccessibilityRoleType(71)
    public static var PLUGIN_COMPONENT: AccessibilityRoleType = AccessibilityRoleType(72)
    public static var POLYGON: AccessibilityRoleType = AccessibilityRoleType(73)
    public static var POLYLINE: AccessibilityRoleType = AccessibilityRoleType(74)
    public static var POPUP: AccessibilityRoleType = AccessibilityRoleType(75)
    public static var PROGRESS: AccessibilityRoleType = AccessibilityRoleType(76)
    public static var QRCODE: AccessibilityRoleType = AccessibilityRoleType(77)
    public static var RADIO: AccessibilityRoleType = AccessibilityRoleType(78)
    public static var RATING: AccessibilityRoleType = AccessibilityRoleType(79)
    public static var RECT: AccessibilityRoleType = AccessibilityRoleType(80)
    public static var REFRESH: AccessibilityRoleType = AccessibilityRoleType(81)
    public static var RELATIVE_CONTAINER: AccessibilityRoleType = AccessibilityRoleType(82)
    public static var REMOTE_WINDOW: AccessibilityRoleType = AccessibilityRoleType(83)
    public static var RICH_EDITOR: AccessibilityRoleType = AccessibilityRoleType(84)
    public static var RICH_TEXT: AccessibilityRoleType = AccessibilityRoleType(85)
    public static var ROLE_PAGER: AccessibilityRoleType = AccessibilityRoleType(86)
    public static var ROW: AccessibilityRoleType = AccessibilityRoleType(87)
    public static var ROW_SPLIT: AccessibilityRoleType = AccessibilityRoleType(88)
    public static var SCROLL: AccessibilityRoleType = AccessibilityRoleType(89)
    public static var SCROLL_BAR: AccessibilityRoleType = AccessibilityRoleType(90)
    public static var SEARCH: AccessibilityRoleType = AccessibilityRoleType(91)
    public static var SEARCH_FIELD: AccessibilityRoleType = AccessibilityRoleType(92)
    public static var SELECT: AccessibilityRoleType = AccessibilityRoleType(93)
    public static var SHAPE: AccessibilityRoleType = AccessibilityRoleType(94)
    public static var SIDEBAR_CONTAINER: AccessibilityRoleType = AccessibilityRoleType(95)
    public static var SLIDER: AccessibilityRoleType = AccessibilityRoleType(96)
    public static var SPAN: AccessibilityRoleType = AccessibilityRoleType(97)
    public static var STACK: AccessibilityRoleType = AccessibilityRoleType(98)
    public static var STEPPER: AccessibilityRoleType = AccessibilityRoleType(99)
    public static var STEPPER_ITEM: AccessibilityRoleType = AccessibilityRoleType(100)
    public static var SWIPER: AccessibilityRoleType = AccessibilityRoleType(101)
    public static var SWIPER_INDICATOR: AccessibilityRoleType = AccessibilityRoleType(102)
    public static var SWITCH: AccessibilityRoleType = AccessibilityRoleType(103)
    public static var SYMBOL_GLYPH: AccessibilityRoleType = AccessibilityRoleType(104)
    public static var TAB_CONTENT: AccessibilityRoleType = AccessibilityRoleType(105)
    public static var TAB_BAR: AccessibilityRoleType = AccessibilityRoleType(106)
    public static var TABS: AccessibilityRoleType = AccessibilityRoleType(107)
    public static var TEXT: AccessibilityRoleType = AccessibilityRoleType(108)
    public static var TEXT_CLOCK: AccessibilityRoleType = AccessibilityRoleType(109)
    public static var TEXT_ENTRY: AccessibilityRoleType = AccessibilityRoleType(110)
    public static var TEXT_INPUT: AccessibilityRoleType = AccessibilityRoleType(111)
    public static var TEXT_PICKER: AccessibilityRoleType = AccessibilityRoleType(112)
    public static var TEXT_TIMER: AccessibilityRoleType = AccessibilityRoleType(113)
    public static var TEXT_AREA: AccessibilityRoleType = AccessibilityRoleType(114)
    public static var TEXT_FIELD: AccessibilityRoleType = AccessibilityRoleType(115)
    public static var TIME_PICKER: AccessibilityRoleType = AccessibilityRoleType(116)
    public static var TITLE_BAR: AccessibilityRoleType = AccessibilityRoleType(117)
    public static var TOGGLER: AccessibilityRoleType = AccessibilityRoleType(118)
    public static var UI_EXTENSION_COMPONENT: AccessibilityRoleType = AccessibilityRoleType(119)
    public static var VIDEO: AccessibilityRoleType = AccessibilityRoleType(120)
    public static var WATER_FLOW: AccessibilityRoleType = AccessibilityRoleType(121)
    public static var WEB: AccessibilityRoleType = AccessibilityRoleType(122)
    public static var XCOMPONENT: AccessibilityRoleType = AccessibilityRoleType(123)
    public static var ROLE_NONE: AccessibilityRoleType = AccessibilityRoleType(124)
    public var value: Int32
    AccessibilityRoleType(arg0: Int32) {
        value = arg0
    }
}
public type AccessibilityFocusCallback = (isFocus: Bool) -> Unit
public open class AccessibilityAction {
    public static var UNDEFINED_ACTION: AccessibilityAction = AccessibilityAction(0)
    public static var ACCESSIBILITY_CLICK: AccessibilityAction = AccessibilityAction(1)
    public var value: Int32
    AccessibilityAction(arg0: Int32) {
        value = arg0
    }
}
public open class AccessibilityActionInterceptResult {
    public static var ACTION_INTERCEPT: AccessibilityActionInterceptResult = AccessibilityActionInterceptResult(0)
    public static var ACTION_CONTINUE: AccessibilityActionInterceptResult = AccessibilityActionInterceptResult(1)
    public static var ACTION_RISE: AccessibilityActionInterceptResult = AccessibilityActionInterceptResult(2)
    public var value: Int32
    AccessibilityActionInterceptResult(arg0: Int32) {
        value = arg0
    }
}
public type AccessibilityActionInterceptCallback = (action: AccessibilityAction) -> AccessibilityActionInterceptResult
public open class FinishCallbackType {
    public static var REMOVED: FinishCallbackType = FinishCallbackType(0)
    public static var LOGICALLY: FinishCallbackType = FinishCallbackType(1)
    public var value: Int32
    FinishCallbackType(arg0: Int32) {
        value = arg0
    }
}
public open class TouchTestStrategy {
    public static var DEFAULT: TouchTestStrategy = TouchTestStrategy(0)
    public static var FORWARD_COMPETITION: TouchTestStrategy = TouchTestStrategy(1)
    public static var FORWARD: TouchTestStrategy = TouchTestStrategy(2)
    public var value: Int32
    TouchTestStrategy(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Number_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String") }
    }
}
public open class TransitionHierarchyStrategy {
    public static var NONE: TransitionHierarchyStrategy = TransitionHierarchyStrategy(0)
    public static var ADAPTIVE: TransitionHierarchyStrategy = TransitionHierarchyStrategy(1)
    public var value: Int32
    TransitionHierarchyStrategy(arg0: Int32) {
        value = arg0
    }
}
public open class ChainStyle {
    public static var SPREAD: ChainStyle = ChainStyle(0)
    public static var SPREAD_INSIDE: ChainStyle = ChainStyle(1)
    public static var PACKED: ChainStyle = ChainStyle(2)
    public var value: Int32
    ChainStyle(arg0: Int32) {
        value = arg0
    }
}
public open class TransitionEdge {
    public static var TOP: TransitionEdge = TransitionEdge(0)
    public static var BOTTOM: TransitionEdge = TransitionEdge(1)
    public static var START: TransitionEdge = TransitionEdge(2)
    public static var END: TransitionEdge = TransitionEdge(3)
    public var value: Int32
    TransitionEdge(arg0: Int32) {
        value = arg0
    }
}
public open class EffectType {
    public static var DEFAULT: EffectType = EffectType(0)
    public static var WINDOW_EFFECT: EffectType = EffectType(1)
    public var value: Int32
    EffectType(arg0: Int32) {
        value = arg0
    }
}
public open class PreDragStatus {
    public static var ACTION_DETECTING_STATUS: PreDragStatus = PreDragStatus(0)
    public static var READY_TO_TRIGGER_DRAG_ACTION: PreDragStatus = PreDragStatus(1)
    public static var PREVIEW_LIFT_STARTED: PreDragStatus = PreDragStatus(2)
    public static var PREVIEW_LIFT_FINISHED: PreDragStatus = PreDragStatus(3)
    public static var PREVIEW_LANDING_STARTED: PreDragStatus = PreDragStatus(4)
    public static var PREVIEW_LANDING_FINISHED: PreDragStatus = PreDragStatus(5)
    public static var ACTION_CANCELED_BEFORE_DRAG: PreDragStatus = PreDragStatus(6)
    public static var PREPARING_FOR_DRAG_DETECTION: PreDragStatus = PreDragStatus(7)
    public var value: Int32
    PreDragStatus(arg0: Int32) {
        value = arg0
    }
}
public type PointerStyle = Any
public open class SourceType {
    public static var UNKNOWN: SourceType = SourceType(0)
    public static var MOUSE: SourceType = SourceType(1)
    public static var TOUCH_SCREEN: SourceType = SourceType(2)
    public var value: Int32
    SourceType(arg0: Int32) {
        value = arg0
    }
}
public open class SourceTool {
    public static var UNKNOWN: SourceTool = SourceTool(0)
    public static var FINGER: SourceTool = SourceTool(1)
    public static var PEN: SourceTool = SourceTool(2)
    public static var MOUSE: SourceTool = SourceTool(3)
    public static var TOUCHPAD: SourceTool = SourceTool(4)
    public static var JOYSTICK: SourceTool = SourceTool(5)
    public var value: Int32
    SourceTool(arg0: Int32) {
        value = arg0
    }
}
public open class RepeatMode {
    public static var REPEAT: RepeatMode = RepeatMode(0)
    public static var STRETCH: RepeatMode = RepeatMode(1)
    public static var ROUND: RepeatMode = RepeatMode(2)
    public static var SPACE: RepeatMode = RepeatMode(3)
    public var value: Int32
    RepeatMode(arg0: Int32) {
        value = arg0
    }
}
public open class BlurStyle {
    public static var THIN: BlurStyle = BlurStyle(0)
    public static var REGULAR: BlurStyle = BlurStyle(1)
    public static var THICK: BlurStyle = BlurStyle(2)
    public static var BACKGROUND_THIN: BlurStyle = BlurStyle(3)
    public static var BACKGROUND_REGULAR: BlurStyle = BlurStyle(4)
    public static var BACKGROUND_THICK: BlurStyle = BlurStyle(5)
    public static var BACKGROUND_ULTRA_THICK: BlurStyle = BlurStyle(6)
    public static var NONE: BlurStyle = BlurStyle(7)
    public static var COMPONENT_ULTRA_THIN: BlurStyle = BlurStyle(8)
    public static var COMPONENT_THIN: BlurStyle = BlurStyle(9)
    public static var COMPONENT_REGULAR: BlurStyle = BlurStyle(10)
    public static var COMPONENT_THICK: BlurStyle = BlurStyle(11)
    public static var COMPONENT_ULTRA_THICK: BlurStyle = BlurStyle(12)
    public var value: Int32
    BlurStyle(arg0: Int32) {
        value = arg0
    }
}
public open class BlurStyleActivePolicy {
    public static var FOLLOWS_WINDOW_ACTIVE_STATE: BlurStyleActivePolicy = BlurStyleActivePolicy(0)
    public static var ALWAYS_ACTIVE: BlurStyleActivePolicy = BlurStyleActivePolicy(1)
    public static var ALWAYS_INACTIVE: BlurStyleActivePolicy = BlurStyleActivePolicy(2)
    public var value: Int32
    BlurStyleActivePolicy(arg0: Int32) {
        value = arg0
    }
}
public open class ThemeColorMode {
    public static var SYSTEM: ThemeColorMode = ThemeColorMode(0)
    public static var LIGHT: ThemeColorMode = ThemeColorMode(1)
    public static var DARK: ThemeColorMode = ThemeColorMode(2)
    public var value: Int32
    ThemeColorMode(arg0: Int32) {
        value = arg0
    }
}
public open class AdaptiveColor {
    public static var DEFAULT: AdaptiveColor = AdaptiveColor(0)
    public static var AVERAGE: AdaptiveColor = AdaptiveColor(1)
    public var value: Int32
    AdaptiveColor(arg0: Int32) {
        value = arg0
    }
}
public open class ModalTransition {
    public static var DEFAULT: ModalTransition = ModalTransition(0)
    public static var NONE: ModalTransition = ModalTransition(1)
    public static var ALPHA: ModalTransition = ModalTransition(2)
    public var value: Int32
    ModalTransition(arg0: Int32) {
        value = arg0
    }
}
public open class Union_FontWeight_Number_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<FontWeight> = None<FontWeight>
    init(param: FontWeight) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): FontWeight {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_FontWeight_Number_String") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_FontWeight_Number_String") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_FontWeight_Number_String") }
    }
}
public open class Union_Resource_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Resource> = None<Resource>
    init(param: Resource) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Resource {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Resource_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Resource_String") }
    }
}
public open class Union_Length_BorderRadiuses {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_BorderRadiuses") }
    }
    private var value1: Option<BorderRadiuses> = None<BorderRadiuses>
    init(param: BorderRadiuses) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BorderRadiuses {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_BorderRadiuses") }
    }
}
public open class ShadowType {
    public static var COLOR: ShadowType = ShadowType(0)
    public static var BLUR: ShadowType = ShadowType(1)
    public var value: Int32
    ShadowType(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Number_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Resource") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Resource") }
    }
}
public open class Union_Color_String_Resource_ColoringStrategy {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_ColoringStrategy") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_ColoringStrategy") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_ColoringStrategy") }
    }
    private var value3: Option<ColoringStrategy> = None<ColoringStrategy>
    init(param: ColoringStrategy) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ColoringStrategy {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_ColoringStrategy") }
    }
}
public open class ShadowStyle {
    public static var OUTER_DEFAULT_XS: ShadowStyle = ShadowStyle(0)
    public static var OUTER_DEFAULT_SM: ShadowStyle = ShadowStyle(1)
    public static var OUTER_DEFAULT_MD: ShadowStyle = ShadowStyle(2)
    public static var OUTER_DEFAULT_LG: ShadowStyle = ShadowStyle(3)
    public static var OUTER_FLOATING_SM: ShadowStyle = ShadowStyle(4)
    public static var OUTER_FLOATING_MD: ShadowStyle = ShadowStyle(5)
    public var value: Int32
    ShadowStyle(arg0: Int32) {
        value = arg0
    }
}
public open class SafeAreaType {
    public static var SYSTEM: SafeAreaType = SafeAreaType(0)
    public static var CUTOUT: SafeAreaType = SafeAreaType(1)
    public static var KEYBOARD: SafeAreaType = SafeAreaType(2)
    public var value: Int32
    SafeAreaType(arg0: Int32) {
        value = arg0
    }
}
public open class SafeAreaEdge {
    public static var TOP: SafeAreaEdge = SafeAreaEdge(0)
    public static var BOTTOM: SafeAreaEdge = SafeAreaEdge(1)
    public static var START: SafeAreaEdge = SafeAreaEdge(2)
    public static var END: SafeAreaEdge = SafeAreaEdge(3)
    public var value: Int32
    SafeAreaEdge(arg0: Int32) {
        value = arg0
    }
}
public open class LayoutSafeAreaType {
    public static var SYSTEM: LayoutSafeAreaType = LayoutSafeAreaType(0)
    public var value: Int32
    LayoutSafeAreaType(arg0: Int32) {
        value = arg0
    }
}
public open class LayoutSafeAreaEdge {
    public static var TOP: LayoutSafeAreaEdge = LayoutSafeAreaEdge(0)
    public static var BOTTOM: LayoutSafeAreaEdge = LayoutSafeAreaEdge(1)
    public static var START: LayoutSafeAreaEdge = LayoutSafeAreaEdge(2)
    public static var END: LayoutSafeAreaEdge = LayoutSafeAreaEdge(3)
    public static var VERTICAL: LayoutSafeAreaEdge = LayoutSafeAreaEdge(4)
    public static var HORIZONTAL: LayoutSafeAreaEdge = LayoutSafeAreaEdge(5)
    public static var ALL: LayoutSafeAreaEdge = LayoutSafeAreaEdge(6)
    public var value: Int32
    LayoutSafeAreaEdge(arg0: Int32) {
        value = arg0
    }
}
public open class SheetSize {
    public static var MEDIUM: SheetSize = SheetSize(0)
    public static var LARGE: SheetSize = SheetSize(1)
    public static var FIT_CONTENT: SheetSize = SheetSize(2)
    public var value: Int32
    SheetSize(arg0: Int32) {
        value = arg0
    }
}
public open class Union_String_Resource_LinearGradient_common {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_LinearGradient_common") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_LinearGradient_common") }
    }
    private var value2: Option<LinearGradient_common> = None<LinearGradient_common>
    init(param: LinearGradient_common) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LinearGradient_common {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_LinearGradient_common") }
    }
}
public type SizeChangeCallback = (oldValue: SizeOptions, newValue: SizeOptions) -> Unit
public type GestureRecognizerJudgeBeginCallback = (event: BaseGestureEvent, current: GestureRecognizer, recognizers: ArrayList<GestureRecognizer>, touchRecognizers: ?ArrayList<TouchRecognizer>) -> GestureJudgeResult
public type ShouldBuiltInRecognizerParallelWithCallback = (current: GestureRecognizer, others: ArrayList<GestureRecognizer>) -> GestureRecognizer
public type TransitionFinishCallback = (transitionIn: Bool) -> Unit
public type TouchTestDoneCallback = (event: BaseGestureEvent, recognizers: ArrayList<GestureRecognizer>) -> Unit
public type PixelMap = Any
public open class DragBehavior {
    public static var COPY: DragBehavior = DragBehavior(0)
    public static var MOVE: DragBehavior = DragBehavior(1)
    public var value: Int32
    DragBehavior(arg0: Int32) {
        value = arg0
    }
}
public type UnifiedData = Any
public type Summary = Any
public type UniformDataType = Any
public type DataSyncOptions = Any
public type SpringLoadingContext = Any
public type DragSpringLoadingConfiguration = Any
public type DataLoadParams = Any
public open class DragResult {
    public static var DRAG_SUCCESSFUL: DragResult = DragResult(0)
    public static var DRAG_FAILED: DragResult = DragResult(1)
    public static var DRAG_CANCELED: DragResult = DragResult(2)
    public static var DROP_ENABLED: DragResult = DragResult(3)
    public static var DROP_DISABLED: DragResult = DragResult(4)
    public var value: Int32
    DragResult(arg0: Int32) {
        value = arg0
    }
}
public open class BlendMode {
    public static var NONE: BlendMode = BlendMode(0)
    public static var CLEAR: BlendMode = BlendMode(1)
    public static var SRC: BlendMode = BlendMode(2)
    public static var DST: BlendMode = BlendMode(3)
    public static var SRC_OVER: BlendMode = BlendMode(4)
    public static var DST_OVER: BlendMode = BlendMode(5)
    public static var SRC_IN: BlendMode = BlendMode(6)
    public static var DST_IN: BlendMode = BlendMode(7)
    public static var SRC_OUT: BlendMode = BlendMode(8)
    public static var DST_OUT: BlendMode = BlendMode(9)
    public static var SRC_ATOP: BlendMode = BlendMode(10)
    public static var DST_ATOP: BlendMode = BlendMode(11)
    public static var XOR: BlendMode = BlendMode(12)
    public static var PLUS: BlendMode = BlendMode(13)
    public static var MODULATE: BlendMode = BlendMode(14)
    public static var SCREEN: BlendMode = BlendMode(15)
    public static var OVERLAY: BlendMode = BlendMode(16)
    public static var DARKEN: BlendMode = BlendMode(17)
    public static var LIGHTEN: BlendMode = BlendMode(18)
    public static var COLOR_DODGE: BlendMode = BlendMode(19)
    public static var COLOR_BURN: BlendMode = BlendMode(20)
    public static var HARD_LIGHT: BlendMode = BlendMode(21)
    public static var SOFT_LIGHT: BlendMode = BlendMode(22)
    public static var DIFFERENCE: BlendMode = BlendMode(23)
    public static var EXCLUSION: BlendMode = BlendMode(24)
    public static var MULTIPLY: BlendMode = BlendMode(25)
    public static var HUE: BlendMode = BlendMode(26)
    public static var SATURATION: BlendMode = BlendMode(27)
    public static var COLOR: BlendMode = BlendMode(28)
    public static var LUMINOSITY: BlendMode = BlendMode(29)
    public var value: Int32
    BlendMode(arg0: Int32) {
        value = arg0
    }
}
public open class BlendApplyType {
    public static var FAST: BlendApplyType = BlendApplyType(0)
    public static var OFFSCREEN: BlendApplyType = BlendApplyType(1)
    public var value: Int32
    BlendApplyType(arg0: Int32) {
        value = arg0
    }
}
public type OnDragEventCallback = (event: DragEvent, extraParams: ?String) -> Unit
public type IntentionCode = Any
public open class SheetType {
    public static var BOTTOM: SheetType = SheetType(0)
    public static var CENTER: SheetType = SheetType(1)
    public static var POPUP: SheetType = SheetType(2)
    public static var SIDE: SheetType = SheetType(3)
    public var value: Int32
    SheetType(arg0: Int32) {
        value = arg0
    }
}
public open class SheetMode {
    public static var OVERLAY: SheetMode = SheetMode(0)
    public static var EMBEDDED: SheetMode = SheetMode(1)
    public var value: Int32
    SheetMode(arg0: Int32) {
        value = arg0
    }
}
public open class ScrollSizeMode {
    public static var FOLLOW_DETENT: ScrollSizeMode = ScrollSizeMode(0)
    public static var CONTINUOUS: ScrollSizeMode = ScrollSizeMode(1)
    public var value: Int32
    ScrollSizeMode(arg0: Int32) {
        value = arg0
    }
}
public open class SheetKeyboardAvoidMode {
    public static var NONE: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(0)
    public static var TRANSLATE_AND_RESIZE: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(1)
    public static var RESIZE_ONLY: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(2)
    public static var TRANSLATE_AND_SCROLL: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(3)
    public static var POPUP_SHEET: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(4)
    public var value: Int32
    SheetKeyboardAvoidMode(arg0: Int32) {
        value = arg0
    }
}
public open class Union_SheetSize_Length {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<SheetSize> = None<SheetSize>
    init(param: SheetSize) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): SheetSize {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_SheetSize_Length") }
    }
    private var value1: Option<Length> = None<Length>
    init(param: Length) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Length {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_SheetSize_Length") }
    }
}
public open class Union_Boolean_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Resource") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Resource") }
    }
}
public open class Union_SheetTitleOptions_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<SheetTitleOptions> = None<SheetTitleOptions>
    init(param: SheetTitleOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): SheetTitleOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_SheetTitleOptions_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_SheetTitleOptions_CustomBuilder") }
    }
}
public open class Dimension {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Dimension") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Dimension") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Dimension") }
    }
}
public open class Union_Dimension_EdgeWidths_LocalizedEdgeWidths {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeWidths_LocalizedEdgeWidths") }
    }
    private var value1: Option<EdgeWidths> = None<EdgeWidths>
    init(param: EdgeWidths) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeWidths {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeWidths_LocalizedEdgeWidths") }
    }
    private var value2: Option<LocalizedEdgeWidths> = None<LocalizedEdgeWidths>
    init(param: LocalizedEdgeWidths) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdgeWidths {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeWidths_LocalizedEdgeWidths") }
    }
}
public open class Union_ShadowOptions_ShadowStyle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ShadowOptions> = None<ShadowOptions>
    init(param: ShadowOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ShadowOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ShadowOptions_ShadowStyle") }
    }
    private var value1: Option<ShadowStyle> = None<ShadowStyle>
    init(param: ShadowStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ShadowStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ShadowOptions_ShadowStyle") }
    }
}
public open class Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<LengthMetrics> = None<LengthMetrics>
    init(param: LengthMetrics) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): LengthMetrics {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses") }
    }
    private var value1: Option<BorderRadiuses> = None<BorderRadiuses>
    init(param: BorderRadiuses) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BorderRadiuses {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses") }
    }
    private var value2: Option<LocalizedBorderRadiuses> = None<LocalizedBorderRadiuses>
    init(param: LocalizedBorderRadiuses) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedBorderRadiuses {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_BorderRadiuses_LocalizedBorderRadiuses") }
    }
}
public open class DismissReason {
    public static var PRESS_BACK: DismissReason = DismissReason(0)
    public static var TOUCH_OUTSIDE: DismissReason = DismissReason(1)
    public static var CLOSE_BUTTON: DismissReason = DismissReason(2)
    public static var SLIDE_DOWN: DismissReason = DismissReason(3)
    public static var SLIDE: DismissReason = DismissReason(4)
    public var value: Int32
    DismissReason(arg0: Int32) {
        value = arg0
    }
}
public type PopupStateChangeCallback = (event: PopupStateChangeParam) -> Unit
public open class Union_Boolean_PopupMaskType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_PopupMaskType") }
    }
    private var value1: Option<PopupMaskType> = None<PopupMaskType>
    init(param: PopupMaskType) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PopupMaskType {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_PopupMaskType") }
    }
}
public open class Union_Boolean_Callback_DismissPopupAction_Void {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Callback_DismissPopupAction_Void") }
    }
    private var value1: Option<((parameter: DismissPopupAction) -> Unit)> = None<((parameter: DismissPopupAction) -> Unit)>
    init(param: ((parameter: DismissPopupAction) -> Unit)) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ((parameter: DismissPopupAction) -> Unit) {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Callback_DismissPopupAction_Void") }
    }
}
public open class Union_Boolean_Literal_ResourceColor_color {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Literal_ResourceColor_color") }
    }
    private var value1: Option<Literal_ResourceColor_color> = None<Literal_ResourceColor_color>
    init(param: Literal_ResourceColor_color) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Literal_ResourceColor_color {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Literal_ResourceColor_color") }
    }
}
public open class Union_Color_String_Resource_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_Number") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_Number") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_Number") }
    }
    private var value3: Option<Float64> = None<Float64>
    init(param: Float64) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Float64 {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_Number") }
    }
}
public open class MenuPreviewMode {
    public static var NONE: MenuPreviewMode = MenuPreviewMode(0)
    public static var IMAGE: MenuPreviewMode = MenuPreviewMode(1)
    public var value: Int32
    MenuPreviewMode(arg0: Int32) {
        value = arg0
    }
}
public open class BorderRadiusType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union BorderRadiusType") }
    }
    private var value1: Option<BorderRadiuses> = None<BorderRadiuses>
    init(param: BorderRadiuses) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BorderRadiuses {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union BorderRadiusType") }
    }
    private var value2: Option<LocalizedBorderRadiuses> = None<LocalizedBorderRadiuses>
    init(param: LocalizedBorderRadiuses) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedBorderRadiuses {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union BorderRadiusType") }
    }
}
public open class HapticFeedbackMode {
    public static var DISABLED: HapticFeedbackMode = HapticFeedbackMode(0)
    public static var ENABLED: HapticFeedbackMode = HapticFeedbackMode(1)
    public static var AUTO: HapticFeedbackMode = HapticFeedbackMode(2)
    public var value: Int32
    HapticFeedbackMode(arg0: Int32) {
        value = arg0
    }
}
public open class ModalMode {
    public static var AUTO: ModalMode = ModalMode(0)
    public static var NONE: ModalMode = ModalMode(1)
    public static var TARGET_WINDOW: ModalMode = ModalMode(2)
    public var value: Int32
    ModalMode(arg0: Int32) {
        value = arg0
    }
}
public open class PreviewScaleMode {
    public static var AUTO: PreviewScaleMode = PreviewScaleMode(0)
    public static var CONSTANT: PreviewScaleMode = PreviewScaleMode(1)
    public static var MAINTAIN: PreviewScaleMode = PreviewScaleMode(2)
    public var value: Int32
    PreviewScaleMode(arg0: Int32) {
        value = arg0
    }
}
public open class AvailableLayoutArea {
    public static var SAFE_AREA: AvailableLayoutArea = AvailableLayoutArea(0)
    public var value: Int32
    AvailableLayoutArea(arg0: Int32) {
        value = arg0
    }
}
public open class Union_MenuPreviewMode_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<MenuPreviewMode> = None<MenuPreviewMode>
    init(param: MenuPreviewMode) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): MenuPreviewMode {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_MenuPreviewMode_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_MenuPreviewMode_CustomBuilder") }
    }
}
public open class Union_ResourceColor_EdgeColors {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_EdgeColors") }
    }
    private var value1: Option<EdgeColors> = None<EdgeColors>
    init(param: EdgeColors) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeColors {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_EdgeColors") }
    }
}
public open class Union_Dimension_EdgeOutlineWidths {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeOutlineWidths") }
    }
    private var value1: Option<EdgeOutlineWidths> = None<EdgeOutlineWidths>
    init(param: EdgeOutlineWidths) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeOutlineWidths {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeOutlineWidths") }
    }
}
public open class Union_Boolean_MenuMaskType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_MenuMaskType") }
    }
    private var value1: Option<MenuMaskType> = None<MenuMaskType>
    init(param: MenuMaskType) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): MenuMaskType {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_MenuMaskType") }
    }
}
public open class OutlineStyle {
    public static var SOLID: OutlineStyle = OutlineStyle(0)
    public static var DASHED: OutlineStyle = OutlineStyle(1)
    public static var DOTTED: OutlineStyle = OutlineStyle(2)
    public var value: Int32
    OutlineStyle(arg0: Int32) {
        value = arg0
    }
}
public open class DragPreviewMode {
    public static var AUTO: DragPreviewMode = DragPreviewMode(1)
    public static var DISABLE_SCALE: DragPreviewMode = DragPreviewMode(2)
    public static var ENABLE_DEFAULT_SHADOW: DragPreviewMode = DragPreviewMode(3)
    public static var ENABLE_DEFAULT_RADIUS: DragPreviewMode = DragPreviewMode(4)
    public static var ENABLE_DRAG_ITEM_GRAY_EFFECT: DragPreviewMode = DragPreviewMode(5)
    public static var ENABLE_MULTI_TILE_EFFECT: DragPreviewMode = DragPreviewMode(6)
    public static var ENABLE_TOUCH_POINT_CALCULATION_BASED_ON_FINAL_PREVIEW: DragPreviewMode = DragPreviewMode(7)
    public var value: Int32
    DragPreviewMode(arg0: Int32) {
        value = arg0
    }
}
public open class DraggingSizeChangeEffect {
    public static var DEFAULT: DraggingSizeChangeEffect = DraggingSizeChangeEffect(0)
    public static var SIZE_TRANSITION: DraggingSizeChangeEffect = DraggingSizeChangeEffect(1)
    public static var SIZE_CONTENT_TRANSITION: DraggingSizeChangeEffect = DraggingSizeChangeEffect(2)
    public var value: Int32
    DraggingSizeChangeEffect(arg0: Int32) {
        value = arg0
    }
}
public open class MenuPolicy {
    public static var DEFAULT: MenuPolicy = MenuPolicy(0)
    public static var HIDE: MenuPolicy = MenuPolicy(1)
    public static var SHOW: MenuPolicy = MenuPolicy(2)
    public var value: Int32
    MenuPolicy(arg0: Int32) {
        value = arg0
    }
}
public type ImageModifier = Any
public type SymbolGlyphModifier = Any
public open class Union_DragPreviewMode_Array_DragPreviewMode {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<DragPreviewMode> = None<DragPreviewMode>
    init(param: DragPreviewMode) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): DragPreviewMode {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_DragPreviewMode_Array_DragPreviewMode") }
    }
    private var value1: Option<ArrayList<DragPreviewMode>> = None<ArrayList<DragPreviewMode>>
    init(param: ArrayList<DragPreviewMode>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<DragPreviewMode> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_DragPreviewMode_Array_DragPreviewMode") }
    }
}
public open class Union_Boolean_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Number") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Number") }
    }
}
public type CircleShape = Any
public type EllipseShape = Any
public type PathShape = Any
public type RectShape = Any
public open class TipsMessageType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union TipsMessageType") }
    }
    private var value1: Option<StyledString> = None<StyledString>
    init(param: StyledString) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): StyledString {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union TipsMessageType") }
    }
}
public type Matrix4Transit = Any
public open class Union_Number_Literal_Number_offset_span {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Literal_Number_offset_span") }
    }
    private var value1: Option<Literal_Number_offset_span> = None<Literal_Number_offset_span>
    init(param: Literal_Number_offset_span) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Literal_Number_offset_span {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Literal_Number_offset_span") }
    }
}
public open class Union_CustomBuilder_DragItemInfo {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): CustomBuilder {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_DragItemInfo") }
    }
    private var value1: Option<DragItemInfo> = None<DragItemInfo>
    init(param: DragItemInfo) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DragItemInfo {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_DragItemInfo") }
    }
}
public open class Union_Array_Rectangle_Rectangle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<Rectangle>> = None<ArrayList<Rectangle>>
    init(param: ArrayList<Rectangle>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<Rectangle> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Array_Rectangle_Rectangle") }
    }
    private var value1: Option<Rectangle> = None<Rectangle>
    init(param: Rectangle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Rectangle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Array_Rectangle_Rectangle") }
    }
}
public open class Union_Padding_LengthMetrics_LocalizedPadding {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Padding> = None<Padding>
    init(param: Padding) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Padding {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Padding_LengthMetrics_LocalizedPadding") }
    }
    private var value1: Option<LengthMetrics> = None<LengthMetrics>
    init(param: LengthMetrics) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LengthMetrics {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Padding_LengthMetrics_LocalizedPadding") }
    }
    private var value2: Option<LocalizedPadding> = None<LocalizedPadding>
    init(param: LocalizedPadding) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedPadding {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Padding_LengthMetrics_LocalizedPadding") }
    }
}
public open class Union_Margin_Length_LocalizedMargin {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Margin> = None<Margin>
    init(param: Margin) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Margin {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Margin_Length_LocalizedMargin") }
    }
    private var value1: Option<Length> = None<Length>
    init(param: Length) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Length {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Margin_Length_LocalizedMargin") }
    }
    private var value2: Option<LocalizedMargin> = None<LocalizedMargin>
    init(param: LocalizedMargin) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedMargin {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Margin_Length_LocalizedMargin") }
    }
}
public open class Union_CustomBuilder_ResourceColor {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): CustomBuilder {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_ResourceColor") }
    }
    private var value1: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceColor {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_ResourceColor") }
    }
}
public open class Union_ResourceColor_ColorMetrics {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_ColorMetrics") }
    }
    private var value1: Option<ColorMetrics> = None<ColorMetrics>
    init(param: ColorMetrics) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ColorMetrics {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_ColorMetrics") }
    }
}
public open class Union_ResourceStr_PixelMap {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_PixelMap") }
    }
    private var value1: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PixelMap {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_PixelMap") }
    }
}
public open class Union_SizeOptions_ImageSize {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<SizeOptions> = None<SizeOptions>
    init(param: SizeOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): SizeOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_SizeOptions_ImageSize") }
    }
    private var value1: Option<ImageSize> = None<ImageSize>
    init(param: ImageSize) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ImageSize {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_SizeOptions_ImageSize") }
    }
}
public open class Union_Position_Alignment {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Position> = None<Position>
    init(param: Position) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Position {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Position_Alignment") }
    }
    private var value1: Option<Alignment> = None<Alignment>
    init(param: Alignment) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Alignment {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Position_Alignment") }
    }
}
public open class Union_OutlineStyle_EdgeOutlineStyles {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<OutlineStyle> = None<OutlineStyle>
    init(param: OutlineStyle) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): OutlineStyle {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_OutlineStyle_EdgeOutlineStyles") }
    }
    private var value1: Option<EdgeOutlineStyles> = None<EdgeOutlineStyles>
    init(param: EdgeOutlineStyles) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeOutlineStyles {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_OutlineStyle_EdgeOutlineStyles") }
    }
}
public open class Union_Dimension_OutlineRadiuses {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_OutlineRadiuses") }
    }
    private var value1: Option<OutlineRadiuses> = None<OutlineRadiuses>
    init(param: OutlineRadiuses) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): OutlineRadiuses {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_OutlineRadiuses") }
    }
}
public open class Union_ResourceColor_ColoringStrategy {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_ColoringStrategy") }
    }
    private var value1: Option<ColoringStrategy> = None<ColoringStrategy>
    init(param: ColoringStrategy) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ColoringStrategy {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_ColoringStrategy") }
    }
}
public open class Union_TransitionOptions_TransitionEffect {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<TransitionOptions> = None<TransitionOptions>
    init(param: TransitionOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): TransitionOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_TransitionOptions_TransitionEffect") }
    }
    private var value1: Option<TransitionEffect> = None<TransitionEffect>
    init(param: TransitionEffect) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): TransitionEffect {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_TransitionOptions_TransitionEffect") }
    }
}
public open class GestureType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<TapGestureInterface> = None<TapGestureInterface>
    init(param: TapGestureInterface) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): TapGestureInterface {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
    private var value1: Option<LongPressGestureInterface> = None<LongPressGestureInterface>
    init(param: LongPressGestureInterface) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LongPressGestureInterface {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
    private var value2: Option<PanGestureInterface> = None<PanGestureInterface>
    init(param: PanGestureInterface) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): PanGestureInterface {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
    private var value3: Option<PinchGestureInterface> = None<PinchGestureInterface>
    init(param: PinchGestureInterface) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): PinchGestureInterface {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
    private var value4: Option<SwipeGestureInterface> = None<SwipeGestureInterface>
    init(param: SwipeGestureInterface) {
        value4 = param
        selector = 4
    }
    public open func getValue4(): SwipeGestureInterface {
        if (let Some(value4) <- value4) {
            return value4
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
    private var value5: Option<RotationGestureInterface> = None<RotationGestureInterface>
    init(param: RotationGestureInterface) {
        value5 = param
        selector = 5
    }
    public open func getValue5(): RotationGestureInterface {
        if (let Some(value5) <- value5) {
            return value5
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
    private var value6: Option<GestureGroupInterface> = None<GestureGroupInterface>
    init(param: GestureGroupInterface) {
        value6 = param
        selector = 6
    }
    public open func getValue6(): GestureGroupInterface {
        if (let Some(value6) <- value6) {
            return value6
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
}
public open class Union_Color_String_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource") }
    }
}
public open class Union_Number_InvertOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_InvertOptions") }
    }
    private var value1: Option<InvertOptions> = None<InvertOptions>
    init(param: InvertOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): InvertOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_InvertOptions") }
    }
}
public open class Union_RotateOptions_RotateAngleOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<RotateOptions> = None<RotateOptions>
    init(param: RotateOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): RotateOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_RotateOptions_RotateAngleOptions") }
    }
    private var value1: Option<RotateAngleOptions> = None<RotateAngleOptions>
    init(param: RotateAngleOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RotateAngleOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_RotateOptions_RotateAngleOptions") }
    }
}
public open class Union_Alignment_LocalizedAlignment {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Alignment> = None<Alignment>
    init(param: Alignment) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Alignment {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Alignment_LocalizedAlignment") }
    }
    private var value1: Option<LocalizedAlignment> = None<LocalizedAlignment>
    init(param: LocalizedAlignment) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LocalizedAlignment {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Alignment_LocalizedAlignment") }
    }
}
public open class Union_Position_Edges_LocalizedEdges {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Position> = None<Position>
    init(param: Position) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Position {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Position_Edges_LocalizedEdges") }
    }
    private var value1: Option<Edges> = None<Edges>
    init(param: Edges) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Edges {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Position_Edges_LocalizedEdges") }
    }
    private var value2: Option<LocalizedEdges> = None<LocalizedEdges>
    init(param: LocalizedEdges) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdges {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Position_Edges_LocalizedEdges") }
    }
}
public open class Union_Position_LocalizedPosition {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Position> = None<Position>
    init(param: Position) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Position {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Position_LocalizedPosition") }
    }
    private var value1: Option<LocalizedPosition> = None<LocalizedPosition>
    init(param: LocalizedPosition) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LocalizedPosition {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Position_LocalizedPosition") }
    }
}
public open class Union_CustomBuilder_DragItemInfo_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): CustomBuilder {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_DragItemInfo_String") }
    }
    private var value1: Option<DragItemInfo> = None<DragItemInfo>
    init(param: DragItemInfo) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DragItemInfo {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_DragItemInfo_String") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_DragItemInfo_String") }
    }
}
public open class Union_String_CustomBuilder_ComponentContent {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_CustomBuilder_ComponentContent") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_CustomBuilder_ComponentContent") }
    }
    private var value2: Option<ComponentContent> = None<ComponentContent>
    init(param: ComponentContent) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): ComponentContent {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_CustomBuilder_ComponentContent") }
    }
}
public open class Union_BlendMode_Blender {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<BlendMode> = None<BlendMode>
    init(param: BlendMode) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): BlendMode {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_BlendMode_Blender") }
    }
    private var value1: Option<Blender> = None<Blender>
    init(param: Blender) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Blender {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_BlendMode_Blender") }
    }
}
public open class Union_CircleShape_EllipseShape_PathShape_RectShape {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<CircleShape> = None<CircleShape>
    init(param: CircleShape) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): CircleShape {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_CircleShape_EllipseShape_PathShape_RectShape") }
    }
    private var value1: Option<EllipseShape> = None<EllipseShape>
    init(param: EllipseShape) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EllipseShape {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_CircleShape_EllipseShape_PathShape_RectShape") }
    }
    private var value2: Option<PathShape> = None<PathShape>
    init(param: PathShape) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): PathShape {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_CircleShape_EllipseShape_PathShape_RectShape") }
    }
    private var value3: Option<RectShape> = None<RectShape>
    init(param: RectShape) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): RectShape {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_CircleShape_EllipseShape_PathShape_RectShape") }
    }
}
public open class Union_PopupOptions_CustomPopupOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PopupOptions> = None<PopupOptions>
    init(param: PopupOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PopupOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_PopupOptions_CustomPopupOptions") }
    }
    private var value1: Option<CustomPopupOptions> = None<CustomPopupOptions>
    init(param: CustomPopupOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomPopupOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_PopupOptions_CustomPopupOptions") }
    }
}
public open class Union_Array_MenuElement_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<MenuElement>> = None<ArrayList<MenuElement>>
    init(param: ArrayList<MenuElement>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<MenuElement> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Array_MenuElement_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Array_MenuElement_CustomBuilder") }
    }
}
public open class Union_String_FunctionKey {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_FunctionKey") }
    }
    private var value1: Option<FunctionKey> = None<FunctionKey>
    init(param: FunctionKey) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): FunctionKey {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_FunctionKey") }
    }
}
public type CustomBuilder = () -> Unit
public open class Union_Number_String_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Resource") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Resource") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Resource") }
    }
}
public type NavDestinationInfo = Any
public type NavigationInfo = Any
public type RouterPageInfo = Any
public type UIContext = Any
public type DrawContext = Any
public type VisualEffect = Any
public type Filter = Any
public type Blender = Any
public type ComponentContent = Any
public type Theme = Any
public type PromptActionDialogController = Any
public open class ContentClipMode {
    public static var CONTENT_ONLY: ContentClipMode = ContentClipMode(0)
    public static var BOUNDARY: ContentClipMode = ContentClipMode(1)
    public static var SAFE_AREA: ContentClipMode = ContentClipMode(2)
    public var value: Int32
    ContentClipMode(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Color_Number_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Color_Number_String") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Color_Number_String") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Color_Number_String") }
    }
}
public open class Union_ContentClipMode_RectShape {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ContentClipMode> = None<ContentClipMode>
    init(param: ContentClipMode) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ContentClipMode {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ContentClipMode_RectShape") }
    }
    private var value1: Option<RectShape> = None<RectShape>
    init(param: RectShape) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RectShape {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ContentClipMode_RectShape") }
    }
}
public type OnScrollCallback = (scrollOffset: Float64, scrollState: ScrollState) -> Unit
public type OnWillStopDraggingCallback = (velocity: Float64) -> Unit
public type OnMoveHandler = (from_: Float64, to: Float64) -> Unit
public open class EffectEdge {
    public static var START: EffectEdge = EffectEdge(1)
    public static var END: EffectEdge = EffectEdge(2)
    public var value: Int32
    EffectEdge(arg0: Int32) {
        value = arg0
    }
}
public type HoverCallback = (isHover: Bool, event: HoverEvent) -> Unit
public type AccessibilityCallback = (isHover: Bool, event: AccessibilityHoverEvent) -> Unit
public type AccessibilityTransparentCallback = (event: TouchEvent) -> Unit
public type VisibleAreaChangeCallback = (isExpanding: Bool, currentRatio: Float64) -> Unit
public open class KeyboardAvoidMode {
    public static var DEFAULT: KeyboardAvoidMode = KeyboardAvoidMode(0)
    public static var NONE: KeyboardAvoidMode = KeyboardAvoidMode(1)
    public var value: Int32
    KeyboardAvoidMode(arg0: Int32) {
        value = arg0
    }
}
public open class HoverModeAreaType {
    public static var TOP_SCREEN: HoverModeAreaType = HoverModeAreaType(0)
    public static var BOTTOM_SCREEN: HoverModeAreaType = HoverModeAreaType(1)
    public var value: Int32
    HoverModeAreaType(arg0: Int32) {
        value = arg0
    }
}
public type Resource = Any
public type PX = String
public open class VP {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union VP") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union VP") }
    }
}
public type FP = String
public type LPX = String
public type Percentage = String
public type Degree = String
public type Margin = Padding
public type EdgeWidth = EdgeWidths
public type LocalizedMargin = LocalizedPadding
public type VoidCallback = () -> Unit
public type LengthMetricsUnit = Any
public type LengthMetrics = Any
public type ColorMetrics = Any
public open class Union_String_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource") }
    }
}
public open class Union_EdgeWidths_Length_LocalizedEdgeWidths {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<EdgeWidths> = None<EdgeWidths>
    init(param: EdgeWidths) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): EdgeWidths {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_EdgeWidths_Length_LocalizedEdgeWidths") }
    }
    private var value1: Option<Length> = None<Length>
    init(param: Length) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Length {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_EdgeWidths_Length_LocalizedEdgeWidths") }
    }
    private var value2: Option<LocalizedEdgeWidths> = None<LocalizedEdgeWidths>
    init(param: LocalizedEdgeWidths) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdgeWidths {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_EdgeWidths_Length_LocalizedEdgeWidths") }
    }
}
public open class Union_EdgeColors_ResourceColor_LocalizedEdgeColors {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<EdgeColors> = None<EdgeColors>
    init(param: EdgeColors) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): EdgeColors {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_EdgeColors_ResourceColor_LocalizedEdgeColors") }
    }
    private var value1: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceColor {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_EdgeColors_ResourceColor_LocalizedEdgeColors") }
    }
    private var value2: Option<LocalizedEdgeColors> = None<LocalizedEdgeColors>
    init(param: LocalizedEdgeColors) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdgeColors {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_EdgeColors_ResourceColor_LocalizedEdgeColors") }
    }
}
public open class Union_BorderRadiuses_Length_LocalizedBorderRadiuses {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<BorderRadiuses> = None<BorderRadiuses>
    init(param: BorderRadiuses) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): BorderRadiuses {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_BorderRadiuses_Length_LocalizedBorderRadiuses") }
    }
    private var value1: Option<Length> = None<Length>
    init(param: Length) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Length {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_BorderRadiuses_Length_LocalizedBorderRadiuses") }
    }
    private var value2: Option<LocalizedBorderRadiuses> = None<LocalizedBorderRadiuses>
    init(param: LocalizedBorderRadiuses) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedBorderRadiuses {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_BorderRadiuses_Length_LocalizedBorderRadiuses") }
    }
}
public open class Union_EdgeStyles_BorderStyle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<EdgeStyles> = None<EdgeStyles>
    init(param: EdgeStyles) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): EdgeStyles {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_EdgeStyles_BorderStyle") }
    }
    private var value1: Option<BorderStyle> = None<BorderStyle>
    init(param: BorderStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BorderStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_EdgeStyles_BorderStyle") }
    }
}
public open class Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<EdgeWidths> = None<EdgeWidths>
    init(param: EdgeWidths) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): EdgeWidths {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths") }
    }
    private var value1: Option<LengthMetrics> = None<LengthMetrics>
    init(param: LengthMetrics) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LengthMetrics {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths") }
    }
    private var value2: Option<LocalizedEdgeWidths> = None<LocalizedEdgeWidths>
    init(param: LocalizedEdgeWidths) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdgeWidths {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_EdgeWidths_LengthMetrics_LocalizedEdgeWidths") }
    }
}
public open class Union_EdgeOutlineWidths_Dimension {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<EdgeOutlineWidths> = None<EdgeOutlineWidths>
    init(param: EdgeOutlineWidths) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): EdgeOutlineWidths {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_EdgeOutlineWidths_Dimension") }
    }
    private var value1: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Dimension {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_EdgeOutlineWidths_Dimension") }
    }
}
public open class Union_OutlineRadiuses_Dimension {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<OutlineRadiuses> = None<OutlineRadiuses>
    init(param: OutlineRadiuses) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): OutlineRadiuses {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_OutlineRadiuses_Dimension") }
    }
    private var value1: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Dimension {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_OutlineRadiuses_Dimension") }
    }
}
public open class Union_EdgeOutlineStyles_OutlineStyle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<EdgeOutlineStyles> = None<EdgeOutlineStyles>
    init(param: EdgeOutlineStyles) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): EdgeOutlineStyles {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_EdgeOutlineStyles_OutlineStyle") }
    }
    private var value1: Option<OutlineStyle> = None<OutlineStyle>
    init(param: OutlineStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): OutlineStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_EdgeOutlineStyles_OutlineStyle") }
    }
}
public type LevelMode = Any
public type ImmersiveMode = Any
public open class Union_Dimension_BorderRadiuses_LocalizedBorderRadiuses {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_BorderRadiuses_LocalizedBorderRadiuses") }
    }
    private var value1: Option<BorderRadiuses> = None<BorderRadiuses>
    init(param: BorderRadiuses) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BorderRadiuses {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_BorderRadiuses_LocalizedBorderRadiuses") }
    }
    private var value2: Option<LocalizedBorderRadiuses> = None<LocalizedBorderRadiuses>
    init(param: LocalizedBorderRadiuses) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedBorderRadiuses {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_BorderRadiuses_LocalizedBorderRadiuses") }
    }
}
public open class DialogAlignment {
    public static var TOP: DialogAlignment = DialogAlignment(0)
    public static var CENTER: DialogAlignment = DialogAlignment(1)
    public static var BOTTOM: DialogAlignment = DialogAlignment(2)
    public static var DEFAULT: DialogAlignment = DialogAlignment(3)
    public static var TOP_START: DialogAlignment = DialogAlignment(4)
    public static var TOP_END: DialogAlignment = DialogAlignment(5)
    public static var CENTER_START: DialogAlignment = DialogAlignment(6)
    public static var CENTER_END: DialogAlignment = DialogAlignment(7)
    public static var BOTTOM_START: DialogAlignment = DialogAlignment(8)
    public static var BOTTOM_END: DialogAlignment = DialogAlignment(9)
    public var value: Int32
    DialogAlignment(arg0: Int32) {
        value = arg0
    }
}
public open class DialogButtonDirection {
    public static var AUTO: DialogButtonDirection = DialogButtonDirection(0)
    public static var HORIZONTAL: DialogButtonDirection = DialogButtonDirection(1)
    public static var VERTICAL: DialogButtonDirection = DialogButtonDirection(2)
    public var value: Int32
    DialogButtonDirection(arg0: Int32) {
        value = arg0
    }
}
public type LevelOrder = Any
public open class Type_AlertDialog_show_value {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<AlertDialogParamWithConfirm> = None<AlertDialogParamWithConfirm>
    init(param: AlertDialogParamWithConfirm) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): AlertDialogParamWithConfirm {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_AlertDialog_show_value") }
    }
    private var value1: Option<AlertDialogParamWithButtons> = None<AlertDialogParamWithButtons>
    init(param: AlertDialogParamWithButtons) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): AlertDialogParamWithButtons {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_AlertDialog_show_value") }
    }
    private var value2: Option<AlertDialogParamWithOptions> = None<AlertDialogParamWithOptions>
    init(param: AlertDialogParamWithOptions) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): AlertDialogParamWithOptions {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_AlertDialog_show_value") }
    }
}
public open class IndexerAlign {
    public static var LEFT: IndexerAlign = IndexerAlign(0)
    public static var RIGHT: IndexerAlign = IndexerAlign(1)
    public static var START: IndexerAlign = IndexerAlign(2)
    public static var END: IndexerAlign = IndexerAlign(3)
    public var value: Int32
    IndexerAlign(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Number_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Bindable") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Bindable") }
    }
}
public type OnAlphabetIndexerSelectCallback = (index: Float64) -> Unit
public type OnAlphabetIndexerPopupSelectCallback = (index: Float64) -> Unit
public type OnAlphabetIndexerRequestPopupDataCallback = (index: Float64) -> ArrayList<String>
public open class Union_String_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Number") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Number") }
    }
}
public open class BadgePosition {
    public static var RIGHT_TOP: BadgePosition = BadgePosition(0)
    public static var RIGHT: BadgePosition = BadgePosition(1)
    public static var LEFT: BadgePosition = BadgePosition(2)
    public var value: Int32
    BadgePosition(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Number_ResourceStr {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_ResourceStr") }
    }
    private var value1: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceStr {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_ResourceStr") }
    }
}
public open class Union_Number_FontWeight_ResourceStr {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_ResourceStr") }
    }
    private var value1: Option<FontWeight> = None<FontWeight>
    init(param: FontWeight) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): FontWeight {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_ResourceStr") }
    }
    private var value2: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): ResourceStr {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_ResourceStr") }
    }
}
public open class Union_BadgePosition_Position {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<BadgePosition> = None<BadgePosition>
    init(param: BadgePosition) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): BadgePosition {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_BadgePosition_Position") }
    }
    private var value1: Option<Position> = None<Position>
    init(param: Position) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Position {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_BadgePosition_Position") }
    }
}
public open class ButtonType {
    public static var CAPSULE: ButtonType = ButtonType(0)
    public static var CIRCLE: ButtonType = ButtonType(1)
    public static var NORMAL: ButtonType = ButtonType(2)
    public static var ROUNDED_RECTANGLE: ButtonType = ButtonType(3)
    public var value: Int32
    ButtonType(arg0: Int32) {
        value = arg0
    }
}
public open class ButtonStyleMode {
    public static var NORMAL: ButtonStyleMode = ButtonStyleMode(0)
    public static var EMPHASIZED: ButtonStyleMode = ButtonStyleMode(1)
    public static var TEXTUAL: ButtonStyleMode = ButtonStyleMode(2)
    public var value: Int32
    ButtonStyleMode(arg0: Int32) {
        value = arg0
    }
}
public open class ButtonRole {
    public static var NORMAL: ButtonRole = ButtonRole(0)
    public static var ERROR: ButtonRole = ButtonRole(1)
    public var value: Int32
    ButtonRole(arg0: Int32) {
        value = arg0
    }
}
public type ButtonTriggerClickCallback = (xPos: Float64, yPos: Float64) -> Unit
public open class ControlSize {
    public static var SMALL: ControlSize = ControlSize(0)
    public static var NORMAL: ControlSize = ControlSize(1)
    public var value: Int32
    ControlSize(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Number_FontWeight_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String") }
    }
    private var value1: Option<FontWeight> = None<FontWeight>
    init(param: FontWeight) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): FontWeight {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String") }
    }
}
public open class CalendarAlign {
    public static var START: CalendarAlign = CalendarAlign(0)
    public static var CENTER: CalendarAlign = CalendarAlign(1)
    public static var END: CalendarAlign = CalendarAlign(2)
    public var value: Int32
    CalendarAlign(arg0: Int32) {
        value = arg0
    }
}
public type DrawingCanvas = Any
public type CanvasFillRule = String
public type CanvasLineCap = String
public type CanvasLineJoin = String
public type CanvasDirection = String
public type CanvasTextAlign = String
public type CanvasTextBaseline = String
public type ImageSmoothingQuality = String
public type FrameNode = Any
public open class Union_String_ColorMetrics {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_ColorMetrics") }
    }
    private var value1: Option<ColorMetrics> = None<ColorMetrics>
    init(param: ColorMetrics) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ColorMetrics {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_ColorMetrics") }
    }
}
public open class Union_Number_Array_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number") }
    }
    private var value1: Option<ArrayList<Float64>> = None<ArrayList<Float64>>
    init(param: ArrayList<Float64>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<Float64> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number") }
    }
}
public open class Union_PixelMap_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PixelMap {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_String") }
    }
}
public open class Union_LengthMetrics_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<LengthMetrics> = None<LengthMetrics>
    init(param: LengthMetrics) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): LengthMetrics {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_String") }
    }
}
public open class Union_String_Number_CanvasGradient_CanvasPattern {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_CanvasGradient_CanvasPattern") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_CanvasGradient_CanvasPattern") }
    }
    private var value2: Option<CanvasGradient> = None<CanvasGradient>
    init(param: CanvasGradient) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): CanvasGradient {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_CanvasGradient_CanvasPattern") }
    }
    private var value3: Option<CanvasPattern> = None<CanvasPattern>
    init(param: CanvasPattern) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): CanvasPattern {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_CanvasGradient_CanvasPattern") }
    }
}
public open class Union_ImageBitmap_PixelMap {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ImageBitmap> = None<ImageBitmap>
    init(param: ImageBitmap) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ImageBitmap {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ImageBitmap_PixelMap") }
    }
    private var value1: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PixelMap {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ImageBitmap_PixelMap") }
    }
}
public open class Union_CanvasRenderingContext2D_DrawingRenderingContext {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<CanvasRenderingContext2D> = None<CanvasRenderingContext2D>
    init(param: CanvasRenderingContext2D) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): CanvasRenderingContext2D {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_CanvasRenderingContext2D_DrawingRenderingContext") }
    }
    private var value1: Option<DrawingRenderingContext> = None<DrawingRenderingContext>
    init(param: DrawingRenderingContext) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DrawingRenderingContext {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_CanvasRenderingContext2D_DrawingRenderingContext") }
    }
}
public type OnCheckboxChangeCallback = (value: Bool) -> Unit
public open class Union_Boolean_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Bindable") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Bindable") }
    }
}
public open class SelectStatus {
    public static var ALL: SelectStatus = SelectStatus(0)
    public static var PART: SelectStatus = SelectStatus(1)
    public static var NONE: SelectStatus = SelectStatus(2)
    public var value: Int32
    SelectStatus(arg0: Int32) {
        value = arg0
    }
}
public type OnCheckboxGroupChangeCallback = (value: CheckboxGroupResult) -> Unit
public open class SpaceType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union SpaceType") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union SpaceType") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union SpaceType") }
    }
}
public open class Union_ColumnOptions_ColumnOptionsV2 {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ColumnOptions> = None<ColumnOptions>
    init(param: ColumnOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ColumnOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ColumnOptions_ColumnOptionsV2") }
    }
    private var value1: Option<ColumnOptionsV2> = None<ColumnOptionsV2>
    init(param: ColumnOptionsV2) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ColumnOptionsV2 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ColumnOptions_ColumnOptionsV2") }
    }
}
public open class Union_Number_String_Boolean {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Boolean") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Boolean") }
    }
    private var value2: Option<Bool> = None<Bool>
    init(param: Bool) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Bool {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Boolean") }
    }
}
public open class Union_Number_String_Boolean_Object {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Boolean_Object") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Boolean_Object") }
    }
    private var value2: Option<Bool> = None<Bool>
    init(param: Bool) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Bool {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Boolean_Object") }
    }
    private var value3: Option<Any> = None<Any>
    init(param: Any) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Any {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Boolean_Object") }
    }
}
public type Scene = Any
public open class ModelType {
    public static var TEXTURE: ModelType = ModelType(0)
    public static var SURFACE: ModelType = ModelType(1)
    public var value: Int32
    ModelType(arg0: Int32) {
        value = arg0
    }
}
public open class Union_ResourceStr_Scene {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Scene") }
    }
    private var value1: Option<Scene> = None<Scene>
    init(param: Scene) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Scene {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Scene") }
    }
}
public open class Union_Dimension_BorderRadiuses {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_BorderRadiuses") }
    }
    private var value1: Option<BorderRadiuses> = None<BorderRadiuses>
    init(param: BorderRadiuses) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BorderRadiuses {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_BorderRadiuses") }
    }
}
public open class Union_ShadowOptions_Array_ShadowOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ShadowOptions> = None<ShadowOptions>
    init(param: ShadowOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ShadowOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ShadowOptions_Array_ShadowOptions") }
    }
    private var value1: Option<ArrayList<ShadowOptions>> = None<ArrayList<ShadowOptions>>
    init(param: ArrayList<ShadowOptions>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<ShadowOptions> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ShadowOptions_Array_ShadowOptions") }
    }
}
public type Content = Any
public open class Union_Dimension_EdgeWidths {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeWidths") }
    }
    private var value1: Option<EdgeWidths> = None<EdgeWidths>
    init(param: EdgeWidths) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeWidths {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeWidths") }
    }
}
public type PromptActionCommonState = Any
public open class DataPanelType {
    public static var LINE: DataPanelType = DataPanelType(0)
    public static var CIRCLE: DataPanelType = DataPanelType(1)
    public var value: Int32
    DataPanelType(arg0: Int32) {
        value = arg0
    }
}
public open class Union_ResourceColor_LinearGradient {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_LinearGradient") }
    }
    private var value1: Option<LinearGradient> = None<LinearGradient>
    init(param: LinearGradient) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LinearGradient {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_LinearGradient") }
    }
}
public open class DatePickerMode {
    public static var DATE: DatePickerMode = DatePickerMode(0)
    public static var YEAR_AND_MONTH: DatePickerMode = DatePickerMode(1)
    public static var MONTH_AND_DAY: DatePickerMode = DatePickerMode(2)
    public var value: Int32
    DatePickerMode(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Date_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<DateTime> = None<DateTime>
    init(param: DateTime) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): DateTime {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Date_Bindable") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Date_Bindable") }
    }
}
public open class EffectLayer {
    public static var NONE: EffectLayer = EffectLayer(0)
    public static var CHARGE_MOTION: EffectLayer = EffectLayer(1)
    public static var CHARGE_TEXT: EffectLayer = EffectLayer(2)
    public var value: Int32
    EffectLayer(arg0: Int32) {
        value = arg0
    }
}
public open class FocusPriority {
    public static var AUTO: FocusPriority = FocusPriority(0)
    public static var PRIOR: FocusPriority = FocusPriority(2000)
    public static var PREVIOUS: FocusPriority = FocusPriority(3000)
    public var value: Int32
    FocusPriority(arg0: Int32) {
        value = arg0
    }
}
public open class KeyProcessingMode {
    public static var FOCUS_NAVIGATION: KeyProcessingMode = KeyProcessingMode(0)
    public static var ANCESTOR_EVENT: KeyProcessingMode = KeyProcessingMode(1)
    public var value: Int32
    KeyProcessingMode(arg0: Int32) {
        value = arg0
    }
}
public type WindowStatusType = Any
public type OnFoldStatusChangeCallback = (event: OnFoldStatusChangeInfo) -> Unit
public type OnHoverStatusChangeCallback = (param: HoverEventParam) -> Unit
public open class FormDimension {
    public static var DIMENSION_1_2: FormDimension = FormDimension(0)
    public static var DIMENSION_2_2: FormDimension = FormDimension(1)
    public static var DIMENSION_2_4: FormDimension = FormDimension(2)
    public static var DIMENSION_4_4: FormDimension = FormDimension(3)
    public static var DIMENSION_2_1: FormDimension = FormDimension(4)
    public static var DIMENSION_1_1: FormDimension = FormDimension(6)
    public static var DIMENSION_6_4: FormDimension = FormDimension(7)
    public static var DIMENSION_2_3: FormDimension = FormDimension(8)
    public static var DIMENSION_3_3: FormDimension = FormDimension(9)
    public var value: Int32
    FormDimension(arg0: Int32) {
        value = arg0
    }
}
public open class FormRenderingMode {
    public static var FULL_COLOR: FormRenderingMode = FormRenderingMode(0)
    public static var SINGLE_COLOR: FormRenderingMode = FormRenderingMode(1)
    public var value: Int32
    FormRenderingMode(arg0: Int32) {
        value = arg0
    }
}
public open class FormShape {
    public static var RECT: FormShape = FormShape(1)
    public static var CIRCLE: FormShape = FormShape(2)
    public var value: Int32
    FormShape(arg0: Int32) {
        value = arg0
    }
}
public open class Union_I64_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Int64> = None<Int64>
    init(param: Int64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Int64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_I64_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_I64_String") }
    }
}
public open class Type_GaugeAttribute_colors_colors {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_GaugeAttribute_colors_colors") }
    }
    private var value1: Option<LinearGradient> = None<LinearGradient>
    init(param: LinearGradient) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LinearGradient {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_GaugeAttribute_colors_colors") }
    }
    private var value2: Option<ArrayList<Tuple_Union_ResourceColor_LinearGradient_Number>> = None<ArrayList<Tuple_Union_ResourceColor_LinearGradient_Number>>
    init(param: ArrayList<Tuple_Union_ResourceColor_LinearGradient_Number>) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): ArrayList<Tuple_Union_ResourceColor_LinearGradient_Number> {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_GaugeAttribute_colors_colors") }
    }
}
public open class PanDirection {
    public static var NONE: PanDirection = PanDirection(0)
    public static var HORIZONTAL: PanDirection = PanDirection(1)
    public static var LEFT: PanDirection = PanDirection(2)
    public static var RIGHT: PanDirection = PanDirection(3)
    public static var VERTICAL: PanDirection = PanDirection(4)
    public static var UP: PanDirection = PanDirection(5)
    public static var DOWN: PanDirection = PanDirection(6)
    public static var ALL: PanDirection = PanDirection(7)
    public var value: Int32
    PanDirection(arg0: Int32) {
        value = arg0
    }
}
public open class SwipeDirection {
    public static var NONE: SwipeDirection = SwipeDirection(0)
    public static var HORIZONTAL: SwipeDirection = SwipeDirection(1)
    public static var VERTICAL: SwipeDirection = SwipeDirection(2)
    public static var ALL: SwipeDirection = SwipeDirection(3)
    public var value: Int32
    SwipeDirection(arg0: Int32) {
        value = arg0
    }
}
public open class GestureMode {
    public static var SEQUENCE: GestureMode = GestureMode(0)
    public static var PARALLEL: GestureMode = GestureMode(1)
    public static var EXCLUSIVE: GestureMode = GestureMode(2)
    public var value: Int32
    GestureMode(arg0: Int32) {
        value = arg0
    }
}
public open class GestureMask {
    public static var NORMAL: GestureMask = GestureMask(0)
    public static var IGNORE_INTERNAL: GestureMask = GestureMask(1)
    public var value: Int32
    GestureMask(arg0: Int32) {
        value = arg0
    }
}
public open class GestureJudgeResult {
    public static var CONTINUE: GestureJudgeResult = GestureJudgeResult(0)
    public static var REJECT: GestureJudgeResult = GestureJudgeResult(1)
    public var value: Int32
    GestureJudgeResult(arg0: Int32) {
        value = arg0
    }
}
public open class Type_PanGestureInterface_callable0_value {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Literal_Number_distance_fingers_PanDirection_direction> = None<Literal_Number_distance_fingers_PanDirection_direction>
    init(param: Literal_Number_distance_fingers_PanDirection_direction) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Literal_Number_distance_fingers_PanDirection_direction {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_PanGestureInterface_callable0_value") }
    }
    private var value1: Option<PanGestureOptions> = None<PanGestureOptions>
    init(param: PanGestureOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PanGestureOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_PanGestureInterface_callable0_value") }
    }
}
public open class Union_PanGestureHandlerOptions_PanGestureOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PanGestureHandlerOptions> = None<PanGestureHandlerOptions>
    init(param: PanGestureHandlerOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PanGestureHandlerOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_PanGestureHandlerOptions_PanGestureOptions") }
    }
    private var value1: Option<PanGestureOptions> = None<PanGestureOptions>
    init(param: PanGestureOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PanGestureOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_PanGestureHandlerOptions_PanGestureOptions") }
    }
}
public open class GesturePriority {
    public static var NORMAL: GesturePriority = GesturePriority(0)
    public static var PRIORITY: GesturePriority = GesturePriority(1)
    public var value: Int32
    GesturePriority(arg0: Int32) {
        value = arg0
    }
}
public open class GestureRecognizerState {
    public static var READY: GestureRecognizerState = GestureRecognizerState(0)
    public static var DETECTING: GestureRecognizerState = GestureRecognizerState(1)
    public static var PENDING: GestureRecognizerState = GestureRecognizerState(2)
    public static var BLOCKED: GestureRecognizerState = GestureRecognizerState(3)
    public static var SUCCESSFUL: GestureRecognizerState = GestureRecognizerState(4)
    public static var FAILED: GestureRecognizerState = GestureRecognizerState(5)
    public var value: Int32
    GestureRecognizerState(arg0: Int32) {
        value = arg0
    }
}
public open class ScrollState {
    public static var IDLE: ScrollState = ScrollState(0)
    public static var SCROLL: ScrollState = ScrollState(1)
    public static var FLING: ScrollState = ScrollState(2)
    public var value: Int32
    ScrollState(arg0: Int32) {
        value = arg0
    }
}
public open class ListItemAlign {
    public static var START: ListItemAlign = ListItemAlign(0)
    public static var CENTER: ListItemAlign = ListItemAlign(1)
    public static var END: ListItemAlign = ListItemAlign(2)
    public var value: Int32
    ListItemAlign(arg0: Int32) {
        value = arg0
    }
}
public open class ListItemGroupArea {
    public static var NONE: ListItemGroupArea = ListItemGroupArea(0)
    public static var IN_LIST_ITEM_AREA: ListItemGroupArea = ListItemGroupArea(1)
    public static var IN_HEADER_AREA: ListItemGroupArea = ListItemGroupArea(2)
    public static var IN_FOOTER_AREA: ListItemGroupArea = ListItemGroupArea(3)
    public var value: Int32
    ListItemGroupArea(arg0: Int32) {
        value = arg0
    }
}
public open class StickyStyle {
    public static var NONE: StickyStyle = StickyStyle(0)
    public static var HEADER: StickyStyle = StickyStyle(1)
    public static var FOOTER: StickyStyle = StickyStyle(2)
    public var value: Int32
    StickyStyle(arg0: Int32) {
        value = arg0
    }
}
public open class ChainEdgeEffect {
    public static var DEFAULT: ChainEdgeEffect = ChainEdgeEffect(0)
    public static var STRETCH: ChainEdgeEffect = ChainEdgeEffect(1)
    public var value: Int32
    ChainEdgeEffect(arg0: Int32) {
        value = arg0
    }
}
public open class ScrollSnapAlign {
    public static var NONE: ScrollSnapAlign = ScrollSnapAlign(0)
    public static var START: ScrollSnapAlign = ScrollSnapAlign(1)
    public static var CENTER: ScrollSnapAlign = ScrollSnapAlign(2)
    public static var END: ScrollSnapAlign = ScrollSnapAlign(3)
    public var value: Int32
    ScrollSnapAlign(arg0: Int32) {
        value = arg0
    }
}
public type OnScrollVisibleContentChangeCallback = (start: VisibleListContentInfo, end: VisibleListContentInfo) -> Unit
public type OnListScrollIndexCallback = (start: Float64, end: Float64, center: Float64) -> Unit
public open class Union_Number_LengthConstrain {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_LengthConstrain") }
    }
    private var value1: Option<LengthConstrain> = None<LengthConstrain>
    init(param: LengthConstrain) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LengthConstrain {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_LengthConstrain") }
    }
}
public open class ScrollDirection {
    public static var VERTICAL: ScrollDirection = ScrollDirection(0)
    public static var HORIZONTAL: ScrollDirection = ScrollDirection(1)
    public static var FREE: ScrollDirection = ScrollDirection(2)
    public static var NONE: ScrollDirection = ScrollDirection(3)
    public var value: Int32
    ScrollDirection(arg0: Int32) {
        value = arg0
    }
}
public open class ScrollAlign {
    public static var START: ScrollAlign = ScrollAlign(0)
    public static var CENTER: ScrollAlign = ScrollAlign(1)
    public static var END: ScrollAlign = ScrollAlign(2)
    public static var AUTO: ScrollAlign = ScrollAlign(3)
    public var value: Int32
    ScrollAlign(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Curve_ICurve {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Curve> = None<Curve>
    init(param: Curve) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Curve {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Curve_ICurve") }
    }
    private var value1: Option<ICurve> = None<ICurve>
    init(param: ICurve) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ICurve {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Curve_ICurve") }
    }
}
public open class Union_ScrollAnimationOptions_Boolean {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ScrollAnimationOptions> = None<ScrollAnimationOptions>
    init(param: ScrollAnimationOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ScrollAnimationOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ScrollAnimationOptions_Boolean") }
    }
    private var value1: Option<Bool> = None<Bool>
    init(param: Bool) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Bool {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ScrollAnimationOptions_Boolean") }
    }
}
public open class Union_Dimension_Array_Dimension {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_Array_Dimension") }
    }
    private var value1: Option<ArrayList<Dimension>> = None<ArrayList<Dimension>>
    init(param: ArrayList<Dimension>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<Dimension> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_Array_Dimension") }
    }
}
public type OnScrollEdgeCallback = (side: Edge) -> Unit
public type OnScrollFrameBeginCallback = (offset: Float64, state: ScrollState) -> OnScrollFrameBeginHandlerResult
public type ScrollOnScrollCallback = (xOffset: Float64, yOffset: Float64, scrollState: ScrollState) -> Unit
public type ScrollOnWillScrollCallback = (xOffset: Float64, yOffset: Float64, scrollState: ScrollState, scrollSource: ScrollSource) -> OffsetResult
public open class GridDirection {
    public static var ROW: GridDirection = GridDirection(0)
    public static var COLUMN: GridDirection = GridDirection(1)
    public static var ROW_REVERSE: GridDirection = GridDirection(2)
    public static var COLUMN_REVERSE: GridDirection = GridDirection(3)
    public var value: Int32
    GridDirection(arg0: Int32) {
        value = arg0
    }
}
public open class GridItemAlignment {
    public static var DEFAULT: GridItemAlignment = GridItemAlignment(0)
    public static var STRETCH: GridItemAlignment = GridItemAlignment(1)
    public var value: Int32
    GridItemAlignment(arg0: Int32) {
        value = arg0
    }
}
public type OnGridScrollIndexCallback = (first: Float64, last: Float64) -> Unit
public open class GridItemStyle {
    public static var NONE: GridItemStyle = GridItemStyle(0)
    public static var PLAIN: GridItemStyle = GridItemStyle(1)
    public var value: Int32
    GridItemStyle(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Number_GridColColumnOption {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_GridColColumnOption") }
    }
    private var value1: Option<GridColColumnOption> = None<GridColColumnOption>
    init(param: GridColColumnOption) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): GridColColumnOption {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_GridColColumnOption") }
    }
}
public open class SizeType {
    public static var AUTO: SizeType = SizeType(0)
    public static var XS: SizeType = SizeType(1)
    public static var SM: SizeType = SizeType(2)
    public static var MD: SizeType = SizeType(3)
    public static var LG: SizeType = SizeType(4)
    public var value: Int32
    SizeType(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Length_GridRowSizeOption {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_GridRowSizeOption") }
    }
    private var value1: Option<GridRowSizeOption> = None<GridRowSizeOption>
    init(param: GridRowSizeOption) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): GridRowSizeOption {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_GridRowSizeOption") }
    }
}
public open class BreakpointsReference {
    public static var WINDOW_SIZE: BreakpointsReference = BreakpointsReference(0)
    public static var COMPONENT_SIZE: BreakpointsReference = BreakpointsReference(1)
    public var value: Int32
    BreakpointsReference(arg0: Int32) {
        value = arg0
    }
}
public open class GridRowDirection {
    public static var ROW: GridRowDirection = GridRowDirection(0)
    public static var ROW_REVERSE: GridRowDirection = GridRowDirection(1)
    public var value: Int32
    GridRowDirection(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Length_GutterOption {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_GutterOption") }
    }
    private var value1: Option<GutterOption> = None<GutterOption>
    init(param: GutterOption) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): GutterOption {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_GutterOption") }
    }
}
public open class Union_Number_GridRowColumnOption {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_GridRowColumnOption") }
    }
    private var value1: Option<GridRowColumnOption> = None<GridRowColumnOption>
    init(param: GridRowColumnOption) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): GridRowColumnOption {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_GridRowColumnOption") }
    }
}
public open class Union_Color_Number_String_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Color_Number_String_Resource") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Color_Number_String_Resource") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Color_Number_String_Resource") }
    }
    private var value3: Option<Resource> = None<Resource>
    init(param: Resource) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Resource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Color_Number_String_Resource") }
    }
}
public type DrawableDescriptor = Any
public type DrawingColorFilter = Any
public type ResolutionQuality = Any
public type DrawingLattice = Any
public type ImageMatrix = Any
public type BusinessError = Any
public open class ImageRenderMode {
    public static var ORIGINAL: ImageRenderMode = ImageRenderMode(0)
    public static var TEMPLATE: ImageRenderMode = ImageRenderMode(1)
    public var value: Int32
    ImageRenderMode(arg0: Int32) {
        value = arg0
    }
}
public open class ImageContent {
    public static var EMPTY: ImageContent = ImageContent(0)
    public var value: Int32
    ImageContent(arg0: Int32) {
        value = arg0
    }
}
public open class DynamicRangeMode {
    public static var HIGH: DynamicRangeMode = DynamicRangeMode(0)
    public static var CONSTRAINT: DynamicRangeMode = DynamicRangeMode(1)
    public static var STANDARD: DynamicRangeMode = DynamicRangeMode(2)
    public var value: Int32
    DynamicRangeMode(arg0: Int32) {
        value = arg0
    }
}
public open class ImageInterpolation {
    public static var NONE: ImageInterpolation = ImageInterpolation(0)
    public static var LOW: ImageInterpolation = ImageInterpolation(1)
    public static var MEDIUM: ImageInterpolation = ImageInterpolation(2)
    public static var HIGH: ImageInterpolation = ImageInterpolation(3)
    public var value: Int32
    ImageInterpolation(arg0: Int32) {
        value = arg0
    }
}
public open class ImageRotateOrientation {
    public static var AUTO: ImageRotateOrientation = ImageRotateOrientation(0)
    public static var UP: ImageRotateOrientation = ImageRotateOrientation(1)
    public static var RIGHT: ImageRotateOrientation = ImageRotateOrientation(2)
    public static var DOWN: ImageRotateOrientation = ImageRotateOrientation(3)
    public static var LEFT: ImageRotateOrientation = ImageRotateOrientation(4)
    public static var UP_MIRRORED: ImageRotateOrientation = ImageRotateOrientation(5)
    public static var RIGHT_MIRRORED: ImageRotateOrientation = ImageRotateOrientation(6)
    public static var DOWN_MIRRORED: ImageRotateOrientation = ImageRotateOrientation(7)
    public static var LEFT_MIRRORED: ImageRotateOrientation = ImageRotateOrientation(8)
    public var value: Int32
    ImageRotateOrientation(arg0: Int32) {
        value = arg0
    }
}
public open class Union_PixelMap_ResourceStr_DrawableDescriptor {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PixelMap {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor") }
    }
    private var value1: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceStr {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor") }
    }
    private var value2: Option<DrawableDescriptor> = None<DrawableDescriptor>
    init(param: DrawableDescriptor) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): DrawableDescriptor {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor") }
    }
}
public open class Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PixelMap {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent") }
    }
    private var value1: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceStr {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent") }
    }
    private var value2: Option<DrawableDescriptor> = None<DrawableDescriptor>
    init(param: DrawableDescriptor) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): DrawableDescriptor {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent") }
    }
    private var value3: Option<ImageContent> = None<ImageContent>
    init(param: ImageContent) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ImageContent {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent") }
    }
}
public open class Union_String_Resource_PixelMap {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_PixelMap") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_PixelMap") }
    }
    private var value2: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): PixelMap {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_PixelMap") }
    }
}
public open class Union_ResourceColor_ColorContent_ColorMetrics {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_ColorContent_ColorMetrics") }
    }
    private var value1: Option<ColorContent> = None<ColorContent>
    init(param: ColorContent) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ColorContent {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_ColorContent_ColorMetrics") }
    }
    private var value2: Option<ColorMetrics> = None<ColorMetrics>
    init(param: ColorMetrics) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): ColorMetrics {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_ColorContent_ColorMetrics") }
    }
}
public open class Union_ColorFilter_DrawingColorFilter {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ColorFilter> = None<ColorFilter>
    init(param: ColorFilter) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ColorFilter {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ColorFilter_DrawingColorFilter") }
    }
    private var value1: Option<DrawingColorFilter> = None<DrawingColorFilter>
    init(param: DrawingColorFilter) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DrawingColorFilter {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ColorFilter_DrawingColorFilter") }
    }
}
public type ImageErrorCallback = (error: ImageError) -> Unit
public type ImageOnCompleteCallback = (loadEvent: ?ImageCompleteEvent) -> Unit
public open class ImageAnalyzerType {
    public static var SUBJECT: ImageAnalyzerType = ImageAnalyzerType(0)
    public static var TEXT: ImageAnalyzerType = ImageAnalyzerType(1)
    public static var OBJECT_LOOKUP: ImageAnalyzerType = ImageAnalyzerType(2)
    public var value: Int32
    ImageAnalyzerType(arg0: Int32) {
        value = arg0
    }
}
public type ImageCompleteCallback = (result: ImageLoadResult) -> Unit
public open class Union_SwiperAnimationMode_Boolean {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<SwiperAnimationMode> = None<SwiperAnimationMode>
    init(param: SwiperAnimationMode) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): SwiperAnimationMode {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_SwiperAnimationMode_Boolean") }
    }
    private var value1: Option<Bool> = None<Bool>
    init(param: Bool) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Bool {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_SwiperAnimationMode_Boolean") }
    }
}
public open class SwiperDisplayMode {
    public static var LEGACY_STRETCH: SwiperDisplayMode = SwiperDisplayMode(0)
    public static var LEGACY_AUTO_LINEAR: SwiperDisplayMode = SwiperDisplayMode(1)
    public static var STRETCH: SwiperDisplayMode = SwiperDisplayMode(2)
    public static var AUTO_LINEAR: SwiperDisplayMode = SwiperDisplayMode(3)
    public var value: Int32
    SwiperDisplayMode(arg0: Int32) {
        value = arg0
    }
}
public open class SwiperNestedScrollMode {
    public static var SELF_ONLY: SwiperNestedScrollMode = SwiperNestedScrollMode(0)
    public static var SELF_FIRST: SwiperNestedScrollMode = SwiperNestedScrollMode(1)
    public var value: Int32
    SwiperNestedScrollMode(arg0: Int32) {
        value = arg0
    }
}
public open class SwiperAnimationMode {
    public static var NO_ANIMATION: SwiperAnimationMode = SwiperAnimationMode(0)
    public static var DEFAULT_ANIMATION: SwiperAnimationMode = SwiperAnimationMode(1)
    public static var FAST_ANIMATION: SwiperAnimationMode = SwiperAnimationMode(2)
    public var value: Int32
    SwiperAnimationMode(arg0: Int32) {
        value = arg0
    }
}
public type OnSwiperAnimationStartCallback = (index: Float64, targetIndex: Float64, extraInfo: SwiperAnimationEvent) -> Unit
public type OnSwiperAnimationEndCallback = (index: Float64, extraInfo: SwiperAnimationEvent) -> Unit
public type OnSwiperGestureSwipeCallback = (index: Float64, extraInfo: SwiperAnimationEvent) -> Unit
public open class Type_SwiperAttribute_indicator_indicator {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<IndicatorComponentController> = None<IndicatorComponentController>
    init(param: IndicatorComponentController) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): IndicatorComponentController {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_SwiperAttribute_indicator_indicator") }
    }
    private var value1: Option<DotIndicator> = None<DotIndicator>
    init(param: DotIndicator) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DotIndicator {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_SwiperAttribute_indicator_indicator") }
    }
    private var value2: Option<DigitIndicator> = None<DigitIndicator>
    init(param: DigitIndicator) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): DigitIndicator {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_SwiperAttribute_indicator_indicator") }
    }
    private var value3: Option<Bool> = None<Bool>
    init(param: Bool) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Bool {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Type_SwiperAttribute_indicator_indicator") }
    }
}
public open class Union_ArrowStyle_Boolean {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrowStyle> = None<ArrowStyle>
    init(param: ArrowStyle) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrowStyle {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ArrowStyle_Boolean") }
    }
    private var value1: Option<Bool> = None<Bool>
    init(param: Bool) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Bool {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ArrowStyle_Boolean") }
    }
}
public open class Union_Number_String_SwiperAutoFill {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_SwiperAutoFill") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_SwiperAutoFill") }
    }
    private var value2: Option<SwiperAutoFill> = None<SwiperAutoFill>
    init(param: SwiperAutoFill) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): SwiperAutoFill {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_SwiperAutoFill") }
    }
}
public type ContentDidScrollCallback = (selectedIndex: Float64, index: Float64, position: Float64, mainAxisLength: Float64) -> Unit
public type ContentWillScrollCallback = (result: SwiperContentWillScrollResult) -> Bool
public open class Union_DotIndicator_DigitIndicator {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<DotIndicator> = None<DotIndicator>
    init(param: DotIndicator) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): DotIndicator {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_DotIndicator_DigitIndicator") }
    }
    private var value1: Option<DigitIndicator> = None<DigitIndicator>
    init(param: DigitIndicator) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DigitIndicator {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_DotIndicator_DigitIndicator") }
    }
}
public type RestrictedWorker = Any
public type ErrorCallback = Any
public type Want = Any
public open class DataOperationType {
    public static var ADD: DataOperationType = DataOperationType(0)
    public static var DELETE: DataOperationType = DataOperationType(1)
    public static var EXCHANGE: DataOperationType = DataOperationType(2)
    public static var MOVE: DataOperationType = DataOperationType(3)
    public static var CHANGE: DataOperationType = DataOperationType(4)
    public static var RELOAD: DataOperationType = DataOperationType(5)
    public var value: Int32
    DataOperationType(arg0: Int32) {
        value = arg0
    }
}
public open class Union_String_Array_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Array_String") }
    }
    private var value1: Option<ArrayList<String>> = None<ArrayList<String>>
    init(param: ArrayList<String>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<String> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Array_String") }
    }
}
public open class DataOperation {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<DataAddOperation> = None<DataAddOperation>
    init(param: DataAddOperation) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): DataAddOperation {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union DataOperation") }
    }
    private var value1: Option<DataDeleteOperation> = None<DataDeleteOperation>
    init(param: DataDeleteOperation) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DataDeleteOperation {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union DataOperation") }
    }
    private var value2: Option<DataChangeOperation> = None<DataChangeOperation>
    init(param: DataChangeOperation) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): DataChangeOperation {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union DataOperation") }
    }
    private var value3: Option<DataMoveOperation> = None<DataMoveOperation>
    init(param: DataMoveOperation) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): DataMoveOperation {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union DataOperation") }
    }
    private var value4: Option<DataExchangeOperation> = None<DataExchangeOperation>
    init(param: DataExchangeOperation) {
        value4 = param
        selector = 4
    }
    public open func getValue4(): DataExchangeOperation {
        if (let Some(value4) <- value4) {
            return value4
        } else { throw Exception("Wrong selector value inside Union DataOperation") }
    }
    private var value5: Option<DataReloadOperation> = None<DataReloadOperation>
    init(param: DataReloadOperation) {
        value5 = param
        selector = 5
    }
    public open func getValue5(): DataReloadOperation {
        if (let Some(value5) <- value5) {
            return value5
        } else { throw Exception("Wrong selector value inside Union DataOperation") }
    }
}
public type OnLinearIndicatorChangeCallback = (index: Float64, progress: Float64) -> Unit
public open class Sticky {
    public static var NONE: Sticky = Sticky(0)
    public static var NORMAL: Sticky = Sticky(1)
    public static var OPACITY: Sticky = Sticky(2)
    public var value: Int32
    Sticky(arg0: Int32) {
        value = arg0
    }
}
public open class EditMode {
    public static var NONE: EditMode = EditMode(0)
    public static var DELETABLE: EditMode = EditMode(1)
    public static var MOVABLE: EditMode = EditMode(2)
    public var value: Int32
    EditMode(arg0: Int32) {
        value = arg0
    }
}
public open class SwipeEdgeEffect {
    public static var SPRING: SwipeEdgeEffect = SwipeEdgeEffect(0)
    public static var NONE: SwipeEdgeEffect = SwipeEdgeEffect(1)
    public var value: Int32
    SwipeEdgeEffect(arg0: Int32) {
        value = arg0
    }
}
public open class SwipeActionState {
    public static var COLLAPSED: SwipeActionState = SwipeActionState(0)
    public static var EXPANDED: SwipeActionState = SwipeActionState(1)
    public static var ACTIONING: SwipeActionState = SwipeActionState(2)
    public var value: Int32
    SwipeActionState(arg0: Int32) {
        value = arg0
    }
}
public open class Union_CustomBuilder_SwipeActionItem {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): CustomBuilder {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_SwipeActionItem") }
    }
    private var value1: Option<SwipeActionItem> = None<SwipeActionItem>
    init(param: SwipeActionItem) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): SwipeActionItem {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_CustomBuilder_SwipeActionItem") }
    }
}
public open class ListItemStyle {
    public static var NONE: ListItemStyle = ListItemStyle(0)
    public static var CARD: ListItemStyle = ListItemStyle(1)
    public var value: Int32
    ListItemStyle(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Boolean_EditMode {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_EditMode") }
    }
    private var value1: Option<EditMode> = None<EditMode>
    init(param: EditMode) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EditMode {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_EditMode") }
    }
}
public open class ListItemGroupStyle {
    public static var NONE: ListItemGroupStyle = ListItemGroupStyle(0)
    public static var CARD: ListItemGroupStyle = ListItemGroupStyle(1)
    public var value: Int32
    ListItemGroupStyle(arg0: Int32) {
        value = arg0
    }
}
public open class LoadingProgressStyle {
    public static var DEFAULT: LoadingProgressStyle = LoadingProgressStyle(0)
    public static var CIRCULAR: LoadingProgressStyle = LoadingProgressStyle(1)
    public static var ORBITAL: LoadingProgressStyle = LoadingProgressStyle(2)
    public var value: Int32
    LoadingProgressStyle(arg0: Int32) {
        value = arg0
    }
}
public open class LocationIconStyle {
    public static var FULL_FILLED: LocationIconStyle = LocationIconStyle(0)
    public static var LINES: LocationIconStyle = LocationIconStyle(1)
    public var value: Int32
    LocationIconStyle(arg0: Int32) {
        value = arg0
    }
}
public open class LocationDescription {
    public static var CURRENT_LOCATION: LocationDescription = LocationDescription(0)
    public static var ADD_LOCATION: LocationDescription = LocationDescription(1)
    public static var SELECT_LOCATION: LocationDescription = LocationDescription(2)
    public static var SHARE_LOCATION: LocationDescription = LocationDescription(3)
    public static var SEND_LOCATION: LocationDescription = LocationDescription(4)
    public static var LOCATING: LocationDescription = LocationDescription(5)
    public static var LOCATION: LocationDescription = LocationDescription(6)
    public static var SEND_CURRENT_LOCATION: LocationDescription = LocationDescription(7)
    public static var RELOCATION: LocationDescription = LocationDescription(8)
    public static var PUNCH_IN: LocationDescription = LocationDescription(9)
    public static var CURRENT_POSITION: LocationDescription = LocationDescription(10)
    public var value: Int32
    LocationDescription(arg0: Int32) {
        value = arg0
    }
}
public open class LocationButtonOnClickResult {
    public static var SUCCESS: LocationButtonOnClickResult = LocationButtonOnClickResult(0)
    public static var TEMPORARY_AUTHORIZATION_FAILED: LocationButtonOnClickResult = LocationButtonOnClickResult(1)
    public var value: Int32
    LocationButtonOnClickResult(arg0: Int32) {
        value = arg0
    }
}
public type LocationButtonCallback = (event: ClickEvent, result: LocationButtonOnClickResult, error: ?BusinessError) -> Unit
public open class Union_PixelMap_ResourceStr_DrawableDescriptor_ASTCResource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PixelMap {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor_ASTCResource") }
    }
    private var value1: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceStr {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor_ASTCResource") }
    }
    private var value2: Option<DrawableDescriptor> = None<DrawableDescriptor>
    init(param: DrawableDescriptor) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): DrawableDescriptor {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor_ASTCResource") }
    }
    private var value3: Option<ASTCResource> = None<ASTCResource>
    init(param: ASTCResource) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ASTCResource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr_DrawableDescriptor_ASTCResource") }
    }
}
public open class Type_MediaCachedImageInterface_callable1_src {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PixelMap {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_MediaCachedImageInterface_callable1_src") }
    }
    private var value1: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceStr {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_MediaCachedImageInterface_callable1_src") }
    }
    private var value2: Option<DrawableDescriptor> = None<DrawableDescriptor>
    init(param: DrawableDescriptor) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): DrawableDescriptor {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_MediaCachedImageInterface_callable1_src") }
    }
    private var value3: Option<ASTCResource> = None<ASTCResource>
    init(param: ASTCResource) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ASTCResource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Type_MediaCachedImageInterface_callable1_src") }
    }
}
public open class SubMenuExpandingMode {
    public static var SIDE_EXPAND: SubMenuExpandingMode = SubMenuExpandingMode(0)
    public static var EMBEDDED_EXPAND: SubMenuExpandingMode = SubMenuExpandingMode(1)
    public static var STACK_EXPAND: SubMenuExpandingMode = SubMenuExpandingMode(2)
    public var value: Int32
    SubMenuExpandingMode(arg0: Int32) {
        value = arg0
    }
}
public open class Union_MenuItemOptions_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<MenuItemOptions> = None<MenuItemOptions>
    init(param: MenuItemOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): MenuItemOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_MenuItemOptions_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_MenuItemOptions_CustomBuilder") }
    }
}
public open class Union_Boolean_ResourceStr_SymbolGlyphModifier {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_ResourceStr_SymbolGlyphModifier") }
    }
    private var value1: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceStr {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_ResourceStr_SymbolGlyphModifier") }
    }
    private var value2: Option<SymbolGlyphModifier> = None<SymbolGlyphModifier>
    init(param: SymbolGlyphModifier) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): SymbolGlyphModifier {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_ResourceStr_SymbolGlyphModifier") }
    }
}
public open class Union_ResourceStr_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_CustomBuilder") }
    }
}
public type SystemBarStyle = Any
public open class Union_TitleHeight_Length {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<TitleHeight> = None<TitleHeight>
    init(param: TitleHeight) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): TitleHeight {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_TitleHeight_Length") }
    }
    private var value1: Option<Length> = None<Length>
    init(param: Length) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Length {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_TitleHeight_Length") }
    }
}
public open class NavigationMode {
    public static var STACK: NavigationMode = NavigationMode(0)
    public static var SPLIT: NavigationMode = NavigationMode(1)
    public static var AUTO: NavigationMode = NavigationMode(2)
    public var value: Int32
    NavigationMode(arg0: Int32) {
        value = arg0
    }
}
public open class NavBarPosition {
    public static var START: NavBarPosition = NavBarPosition(0)
    public static var END: NavBarPosition = NavBarPosition(1)
    public var value: Int32
    NavBarPosition(arg0: Int32) {
        value = arg0
    }
}
public open class NavigationTitleMode {
    public static var FREE: NavigationTitleMode = NavigationTitleMode(0)
    public static var FULL: NavigationTitleMode = NavigationTitleMode(1)
    public static var MINI: NavigationTitleMode = NavigationTitleMode(2)
    public var value: Int32
    NavigationTitleMode(arg0: Int32) {
        value = arg0
    }
}
public open class LaunchMode {
    public static var STANDARD: LaunchMode = LaunchMode(0)
    public static var MOVE_TO_TOP_SINGLETON: LaunchMode = LaunchMode(1)
    public static var POP_TO_SINGLETON: LaunchMode = LaunchMode(2)
    public static var NEW_INSTANCE: LaunchMode = LaunchMode(3)
    public var value: Int32
    LaunchMode(arg0: Int32) {
        value = arg0
    }
}
public type NavBar = String
public open class Union_NavDestinationContext_NavBar {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<NavDestinationContext> = None<NavDestinationContext>
    init(param: NavDestinationContext) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): NavDestinationContext {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_NavDestinationContext_NavBar") }
    }
    private var value1: Option<NavBar> = None<NavBar>
    init(param: NavBar) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): NavBar {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_NavDestinationContext_NavBar") }
    }
}
public type InterceptionShowCallback = (from_: Union_NavDestinationContext_NavBar, to: Union_NavDestinationContext_NavBar, operation: NavigationOperation, isAnimated: Bool) -> Unit
public type InterceptionModeCallback = (mode: NavigationMode) -> Unit
public open class ToolbarItemStatus {
    public static var NORMAL: ToolbarItemStatus = ToolbarItemStatus(0)
    public static var DISABLED: ToolbarItemStatus = ToolbarItemStatus(1)
    public static var ACTIVE: ToolbarItemStatus = ToolbarItemStatus(2)
    public var value: Int32
    ToolbarItemStatus(arg0: Int32) {
        value = arg0
    }
}
public open class NavigationOperation {
    public static var PUSH: NavigationOperation = NavigationOperation(1)
    public static var POP: NavigationOperation = NavigationOperation(2)
    public static var REPLACE: NavigationOperation = NavigationOperation(3)
    public var value: Int32
    NavigationOperation(arg0: Int32) {
        value = arg0
    }
}
public open class BarStyle {
    public static var STANDARD: BarStyle = BarStyle(0)
    public static var STACK: BarStyle = BarStyle(1)
    public static var SAFE_AREA_PADDING: BarStyle = BarStyle(2)
    public var value: Int32
    BarStyle(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Length_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_Bindable") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_Bindable") }
    }
}
public open class Union_String_PixelMap_Resource_SymbolGlyphModifier {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource_SymbolGlyphModifier") }
    }
    private var value1: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PixelMap {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource_SymbolGlyphModifier") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource_SymbolGlyphModifier") }
    }
    private var value3: Option<SymbolGlyphModifier> = None<SymbolGlyphModifier>
    init(param: SymbolGlyphModifier) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): SymbolGlyphModifier {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource_SymbolGlyphModifier") }
    }
}
public open class Type_NavigationAttribute_title_value {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_NavigationAttribute_title_value") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_NavigationAttribute_title_value") }
    }
    private var value2: Option<NavigationCommonTitle> = None<NavigationCommonTitle>
    init(param: NavigationCommonTitle) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): NavigationCommonTitle {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_NavigationAttribute_title_value") }
    }
    private var value3: Option<NavigationCustomTitle> = None<NavigationCustomTitle>
    init(param: NavigationCustomTitle) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): NavigationCustomTitle {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Type_NavigationAttribute_title_value") }
    }
}
public open class Union_Array_NavigationMenuItem_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<NavigationMenuItem>> = None<ArrayList<NavigationMenuItem>>
    init(param: ArrayList<NavigationMenuItem>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<NavigationMenuItem> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Array_NavigationMenuItem_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Array_NavigationMenuItem_CustomBuilder") }
    }
}
public open class Union_Array_ToolbarItem_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<ToolbarItem>> = None<ArrayList<ToolbarItem>>
    init(param: ArrayList<ToolbarItem>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<ToolbarItem> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Array_ToolbarItem_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Array_ToolbarItem_CustomBuilder") }
    }
}
public type UpdateTransitionCallback = (progress: Float64) -> Unit
public type Orientation = Any
public open class NavigationSystemTransitionType {
    public static var DEFAULT: NavigationSystemTransitionType = NavigationSystemTransitionType(0)
    public static var NONE: NavigationSystemTransitionType = NavigationSystemTransitionType(1)
    public static var TITLE: NavigationSystemTransitionType = NavigationSystemTransitionType(2)
    public static var CONTENT: NavigationSystemTransitionType = NavigationSystemTransitionType(3)
    public static var FADE: NavigationSystemTransitionType = NavigationSystemTransitionType(4)
    public static var EXPLODE: NavigationSystemTransitionType = NavigationSystemTransitionType(5)
    public static var SLIDE_RIGHT: NavigationSystemTransitionType = NavigationSystemTransitionType(6)
    public static var SLIDE_BOTTOM: NavigationSystemTransitionType = NavigationSystemTransitionType(7)
    public var value: Int32
    NavigationSystemTransitionType(arg0: Int32) {
        value = arg0
    }
}
public open class NavDestinationMode {
    public static var STANDARD: NavDestinationMode = NavDestinationMode(0)
    public static var DIALOG: NavDestinationMode = NavDestinationMode(1)
    public var value: Int32
    NavDestinationMode(arg0: Int32) {
        value = arg0
    }
}
public open class NavDestinationActiveReason {
    public static var TRANSITION: NavDestinationActiveReason = NavDestinationActiveReason(0)
    public static var CONTENT_COVER: NavDestinationActiveReason = NavDestinationActiveReason(1)
    public static var SHEET: NavDestinationActiveReason = NavDestinationActiveReason(2)
    public static var DIALOG: NavDestinationActiveReason = NavDestinationActiveReason(3)
    public static var OVERLAY: NavDestinationActiveReason = NavDestinationActiveReason(4)
    public static var APP_STATE: NavDestinationActiveReason = NavDestinationActiveReason(5)
    public var value: Int32
    NavDestinationActiveReason(arg0: Int32) {
        value = arg0
    }
}
public open class Type_NavDestinationAttribute_title_value {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_NavDestinationAttribute_title_value") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_NavDestinationAttribute_title_value") }
    }
    private var value2: Option<NavDestinationCommonTitle> = None<NavDestinationCommonTitle>
    init(param: NavDestinationCommonTitle) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): NavDestinationCommonTitle {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_NavDestinationAttribute_title_value") }
    }
    private var value3: Option<NavDestinationCustomTitle> = None<NavDestinationCustomTitle>
    init(param: NavDestinationCustomTitle) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): NavDestinationCustomTitle {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Type_NavDestinationAttribute_title_value") }
    }
    private var value4: Option<Resource> = None<Resource>
    init(param: Resource) {
        value4 = param
        selector = 4
    }
    public open func getValue4(): Resource {
        if (let Some(value4) <- value4) {
            return value4
        } else { throw Exception("Wrong selector value inside Union Type_NavDestinationAttribute_title_value") }
    }
}
public open class Union_ResourceStr_PixelMap_SymbolGlyphModifier {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_PixelMap_SymbolGlyphModifier") }
    }
    private var value1: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PixelMap {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_PixelMap_SymbolGlyphModifier") }
    }
    private var value2: Option<SymbolGlyphModifier> = None<SymbolGlyphModifier>
    init(param: SymbolGlyphModifier) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): SymbolGlyphModifier {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_PixelMap_SymbolGlyphModifier") }
    }
}
public type NavDestinationTransitionDelegate = (operation: NavigationOperation, isEnter: Bool) -> Option<ArrayList<NavDestinationTransition>>
public open class NavRouteMode {
    public static var PUSH_WITH_RECREATE: NavRouteMode = NavRouteMode(0)
    public static var PUSH: NavRouteMode = NavRouteMode(1)
    public static var REPLACE: NavRouteMode = NavRouteMode(2)
    public var value: Int32
    NavRouteMode(arg0: Int32) {
        value = arg0
    }
}
public open class NavigationType {
    public static var PUSH: NavigationType = NavigationType(0)
    public static var BACK: NavigationType = NavigationType(1)
    public static var REPLACE: NavigationType = NavigationType(2)
    public var value: Int32
    NavigationType(arg0: Int32) {
        value = arg0
    }
}
public open class RouteType {
    public static var NONE: RouteType = RouteType(0)
    public static var PUSH: RouteType = RouteType(1)
    public static var POP: RouteType = RouteType(2)
    public var value: Int32
    RouteType(arg0: Int32) {
        value = arg0
    }
}
public open class SlideEffect {
    public static var LEFT: SlideEffect = SlideEffect(0)
    public static var RIGHT: SlideEffect = SlideEffect(1)
    public static var TOP: SlideEffect = SlideEffect(2)
    public static var BOTTOM: SlideEffect = SlideEffect(3)
    public static var START: SlideEffect = SlideEffect(5)
    public static var END: SlideEffect = SlideEffect(6)
    public var value: Int32
    SlideEffect(arg0: Int32) {
        value = arg0
    }
}
public type PageTransitionCallback = (type_: RouteType, progress: Float64) -> Unit
public open class PanelMode {
    public static var MINI: PanelMode = PanelMode(0)
    public static var HALF: PanelMode = PanelMode(1)
    public static var FULL: PanelMode = PanelMode(2)
    public var value: Int32
    PanelMode(arg0: Int32) {
        value = arg0
    }
}
public open class PanelType {
    public static var MINIBAR: PanelType = PanelType(0)
    public static var FOLDABLE: PanelType = PanelType(1)
    public static var TEMPORARY: PanelType = PanelType(2)
    public static var CUSTOM: PanelType = PanelType(3)
    public var value: Int32
    PanelType(arg0: Int32) {
        value = arg0
    }
}
public open class PanelHeight {
    public static var WRAP_CONTENT: PanelHeight = PanelHeight(0)
    public var value: Int32
    PanelHeight(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Dimension_PanelHeight {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_PanelHeight") }
    }
    private var value1: Option<PanelHeight> = None<PanelHeight>
    init(param: PanelHeight) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PanelHeight {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_PanelHeight") }
    }
}
public open class ParticleConfigs {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PointParticleParameters> = None<PointParticleParameters>
    init(param: PointParticleParameters) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PointParticleParameters {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union ParticleConfigs") }
    }
    private var value1: Option<ImageParticleParameters> = None<ImageParticleParameters>
    init(param: ImageParticleParameters) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ImageParticleParameters {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union ParticleConfigs") }
    }
}
public open class Union_ParticleTuple_Array_ParticlePropertyAnimation {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ParticleTuple<Float64, Float64>> = None<ParticleTuple<Float64, Float64>>
    init(param: ParticleTuple<Float64, Float64>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ParticleTuple<Float64, Float64> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ParticleTuple_Array_ParticlePropertyAnimation") }
    }
    private var value1: Option<ArrayList<ParticlePropertyAnimation<Float64>>> = None<ArrayList<ParticlePropertyAnimation<Float64>>>
    init(param: ArrayList<ParticlePropertyAnimation<Float64>>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<ParticlePropertyAnimation<Float64>> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ParticleTuple_Array_ParticlePropertyAnimation") }
    }
}
public type ParticlePropertyUpdaterConfigs = Option<Union_ParticleTuple_Array_ParticlePropertyAnimation>
public open class Union_ParticleColorOptions_Array_ParticlePropertyAnimation {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ParticleColorOptions> = None<ParticleColorOptions>
    init(param: ParticleColorOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ParticleColorOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ParticleColorOptions_Array_ParticlePropertyAnimation") }
    }
    private var value1: Option<ArrayList<ParticlePropertyAnimation<ResourceColor>>> = None<ArrayList<ParticlePropertyAnimation<ResourceColor>>>
    init(param: ArrayList<ParticlePropertyAnimation<ResourceColor>>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<ParticlePropertyAnimation<ResourceColor>> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ParticleColorOptions_Array_ParticlePropertyAnimation") }
    }
}
public type ParticleColorPropertyUpdaterConfigs = Option<Union_ParticleColorOptions_Array_ParticlePropertyAnimation>
public open class ParticleType {
    public static var POINT: ParticleType = ParticleType(0)
    public static var IMAGE: ParticleType = ParticleType(1)
    public var value: Int32
    ParticleType(arg0: Int32) {
        value = arg0
    }
}
public open class ParticleEmitterShape {
    public static var RECTANGLE: ParticleEmitterShape = ParticleEmitterShape(0)
    public static var CIRCLE: ParticleEmitterShape = ParticleEmitterShape(1)
    public static var ELLIPSE: ParticleEmitterShape = ParticleEmitterShape(2)
    public static var ANNULUS: ParticleEmitterShape = ParticleEmitterShape(3)
    public var value: Int32
    ParticleEmitterShape(arg0: Int32) {
        value = arg0
    }
}
public open class DistributionType {
    public static var UNIFORM: DistributionType = DistributionType(0)
    public static var GAUSSIAN: DistributionType = DistributionType(1)
    public var value: Int32
    DistributionType(arg0: Int32) {
        value = arg0
    }
}
public open class ParticleUpdater {
    public static var NONE: ParticleUpdater = ParticleUpdater(0)
    public static var RANDOM: ParticleUpdater = ParticleUpdater(1)
    public static var CURVE: ParticleUpdater = ParticleUpdater(2)
    public var value: Int32
    ParticleUpdater(arg0: Int32) {
        value = arg0
    }
}
public open class DisturbanceFieldShape {
    public static var RECT: DisturbanceFieldShape = DisturbanceFieldShape(0)
    public static var CIRCLE: DisturbanceFieldShape = DisturbanceFieldShape(1)
    public static var ELLIPSE: DisturbanceFieldShape = DisturbanceFieldShape(2)
    public var value: Int32
    DisturbanceFieldShape(arg0: Int32) {
        value = arg0
    }
}
public open class PasteIconStyle {
    public static var LINES: PasteIconStyle = PasteIconStyle(0)
    public var value: Int32
    PasteIconStyle(arg0: Int32) {
        value = arg0
    }
}
public open class PasteDescription {
    public static var PASTE: PasteDescription = PasteDescription(0)
    public var value: Int32
    PasteDescription(arg0: Int32) {
        value = arg0
    }
}
public open class PasteButtonOnClickResult {
    public static var SUCCESS: PasteButtonOnClickResult = PasteButtonOnClickResult(0)
    public static var TEMPORARY_AUTHORIZATION_FAILED: PasteButtonOnClickResult = PasteButtonOnClickResult(1)
    public var value: Int32
    PasteButtonOnClickResult(arg0: Int32) {
        value = arg0
    }
}
public type PasteButtonCallback = (event: ClickEvent, result: PasteButtonOnClickResult, error: ?BusinessError) -> Unit
public open class PatternLockChallengeResult {
    public static var CORRECT: PatternLockChallengeResult = PatternLockChallengeResult(1)
    public static var WRONG: PatternLockChallengeResult = PatternLockChallengeResult(2)
    public var value: Int32
    PatternLockChallengeResult(arg0: Int32) {
        value = arg0
    }
}
public type PluginErrorCallback = (info: PluginErrorData) -> Unit
public open class ProgressType {
    public static var LINEAR: ProgressType = ProgressType(0)
    public static var RING: ProgressType = ProgressType(1)
    public static var ECLIPSE: ProgressType = ProgressType(2)
    public static var SCALE_RING: ProgressType = ProgressType(3)
    public static var CAPSULE: ProgressType = ProgressType(4)
    public var value: Int32
    ProgressType(arg0: Int32) {
        value = arg0
    }
}
public open class ProgressStatus {
    public static var LOADING: ProgressStatus = ProgressStatus(0)
    public static var PROGRESSING: ProgressStatus = ProgressStatus(1)
    public var value: Int32
    ProgressStatus(arg0: Int32) {
        value = arg0
    }
}
public open class Union_PX_VP_LPX_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PX> = None<PX>
    init(param: PX) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PX {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_PX_VP_LPX_Resource") }
    }
    private var value1: Option<VP> = None<VP>
    init(param: VP) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): VP {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_PX_VP_LPX_Resource") }
    }
    private var value2: Option<LPX> = None<LPX>
    init(param: LPX) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LPX {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_PX_VP_LPX_Resource") }
    }
    private var value3: Option<Resource> = None<Resource>
    init(param: Resource) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Resource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_PX_VP_LPX_Resource") }
    }
}
public open class ProgressStyle {
    public static var LINEAR: ProgressStyle = ProgressStyle(0)
    public static var RING: ProgressStyle = ProgressStyle(1)
    public static var ECLIPSE: ProgressStyle = ProgressStyle(2)
    public static var SCALE_RING: ProgressStyle = ProgressStyle(3)
    public static var CAPSULE: ProgressStyle = ProgressStyle(4)
    public var value: Int32
    ProgressStyle(arg0: Int32) {
        value = arg0
    }
}
public open class Union_LinearStyleOptions_RingStyleOptions_CapsuleStyleOptions_ProgressStyleOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<LinearStyleOptions> = None<LinearStyleOptions>
    init(param: LinearStyleOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): LinearStyleOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_LinearStyleOptions_RingStyleOptions_CapsuleStyleOptions_ProgressStyleOptions") }
    }
    private var value1: Option<RingStyleOptions> = None<RingStyleOptions>
    init(param: RingStyleOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RingStyleOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_LinearStyleOptions_RingStyleOptions_CapsuleStyleOptions_ProgressStyleOptions") }
    }
    private var value2: Option<CapsuleStyleOptions> = None<CapsuleStyleOptions>
    init(param: CapsuleStyleOptions) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): CapsuleStyleOptions {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_LinearStyleOptions_RingStyleOptions_CapsuleStyleOptions_ProgressStyleOptions") }
    }
    private var value3: Option<ProgressStyleOptions> = None<ProgressStyleOptions>
    init(param: ProgressStyleOptions) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ProgressStyleOptions {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_LinearStyleOptions_RingStyleOptions_CapsuleStyleOptions_ProgressStyleOptions") }
    }
}
public open class Type_ProgressAttribute_style_value {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<LinearStyleOptions> = None<LinearStyleOptions>
    init(param: LinearStyleOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): LinearStyleOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_ProgressAttribute_style_value") }
    }
    private var value1: Option<RingStyleOptions> = None<RingStyleOptions>
    init(param: RingStyleOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RingStyleOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_ProgressAttribute_style_value") }
    }
    private var value2: Option<CapsuleStyleOptions> = None<CapsuleStyleOptions>
    init(param: CapsuleStyleOptions) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): CapsuleStyleOptions {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_ProgressAttribute_style_value") }
    }
    private var value3: Option<ProgressStyleOptions> = None<ProgressStyleOptions>
    init(param: ProgressStyleOptions) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ProgressStyleOptions {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Type_ProgressAttribute_style_value") }
    }
}
public open class RadioIndicatorType {
    public static var TICK: RadioIndicatorType = RadioIndicatorType(0)
    public static var DOT: RadioIndicatorType = RadioIndicatorType(1)
    public static var CUSTOM: RadioIndicatorType = RadioIndicatorType(2)
    public var value: Int32
    RadioIndicatorType(arg0: Int32) {
        value = arg0
    }
}
public type OnRadioChangeCallback = (isChecked: Bool) -> Unit
public type OnRatingChangeCallback = (rating: Float64) -> Unit
public open class Union_Number_String_Array_Union_Number_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Union_Number_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Union_Number_String") }
    }
    private var value2: Option<ArrayList<Union_Number_String>> = None<ArrayList<Union_Number_String>>
    init(param: ArrayList<Union_Number_String>) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): ArrayList<Union_Number_String> {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Union_Number_String") }
    }
}
public open class Union_RectOptions_RoundedRectOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<RectOptions> = None<RectOptions>
    init(param: RectOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): RectOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_RectOptions_RoundedRectOptions") }
    }
    private var value1: Option<RoundedRectOptions> = None<RoundedRectOptions>
    init(param: RoundedRectOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RoundedRectOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_RectOptions_RoundedRectOptions") }
    }
}
public open class RefreshStatus {
    public static var INACTIVE: RefreshStatus = RefreshStatus(0)
    public static var DRAG: RefreshStatus = RefreshStatus(1)
    public static var OVER_DRAG: RefreshStatus = RefreshStatus(2)
    public static var REFRESH: RefreshStatus = RefreshStatus(3)
    public static var DONE: RefreshStatus = RefreshStatus(4)
    public var value: Int32
    RefreshStatus(arg0: Int32) {
        value = arg0
    }
}
public open class BarrierDirection {
    public static var LEFT: BarrierDirection = BarrierDirection(0)
    public static var RIGHT: BarrierDirection = BarrierDirection(1)
    public static var TOP: BarrierDirection = BarrierDirection(2)
    public static var BOTTOM: BarrierDirection = BarrierDirection(3)
    public var value: Int32
    BarrierDirection(arg0: Int32) {
        value = arg0
    }
}
public open class LocalizedBarrierDirection {
    public static var START: LocalizedBarrierDirection = LocalizedBarrierDirection(0)
    public static var END: LocalizedBarrierDirection = LocalizedBarrierDirection(1)
    public static var TOP: LocalizedBarrierDirection = LocalizedBarrierDirection(2)
    public static var BOTTOM: LocalizedBarrierDirection = LocalizedBarrierDirection(3)
    public var value: Int32
    LocalizedBarrierDirection(arg0: Int32) {
        value = arg0
    }
}
public open class RepeatArray {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<T>> = None<ArrayList<T>>
    init(param: ArrayList<T>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<T> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union RepeatArray") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union RepeatArray") }
    }
    private var value2: Option<Any> = None<Any>
    init(param: Any) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Any {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union RepeatArray") }
    }
}
public open class SymbolRenderingStrategy {
    public static var SINGLE: SymbolRenderingStrategy = SymbolRenderingStrategy(0)
    public static var MULTIPLE_COLOR: SymbolRenderingStrategy = SymbolRenderingStrategy(1)
    public static var MULTIPLE_OPACITY: SymbolRenderingStrategy = SymbolRenderingStrategy(2)
    public var value: Int32
    SymbolRenderingStrategy(arg0: Int32) {
        value = arg0
    }
}
public open class SymbolEffectStrategy {
    public static var NONE: SymbolEffectStrategy = SymbolEffectStrategy(0)
    public static var SCALE: SymbolEffectStrategy = SymbolEffectStrategy(1)
    public static var HIERARCHICAL: SymbolEffectStrategy = SymbolEffectStrategy(2)
    public var value: Int32
    SymbolEffectStrategy(arg0: Int32) {
        value = arg0
    }
}
public open class EffectDirection {
    public static var DOWN: EffectDirection = EffectDirection(0)
    public static var UP: EffectDirection = EffectDirection(1)
    public var value: Int32
    EffectDirection(arg0: Int32) {
        value = arg0
    }
}
public open class EffectScope {
    public static var LAYER: EffectScope = EffectScope(0)
    public static var WHOLE: EffectScope = EffectScope(1)
    public var value: Int32
    EffectScope(arg0: Int32) {
        value = arg0
    }
}
public open class EffectFillStyle {
    public static var CUMULATIVE: EffectFillStyle = EffectFillStyle(0)
    public static var ITERATIVE: EffectFillStyle = EffectFillStyle(1)
    public var value: Int32
    EffectFillStyle(arg0: Int32) {
        value = arg0
    }
}
public open class RichEditorDeleteDirection {
    public static var BACKWARD: RichEditorDeleteDirection = RichEditorDeleteDirection(0)
    public static var FORWARD: RichEditorDeleteDirection = RichEditorDeleteDirection(1)
    public var value: Int32
    RichEditorDeleteDirection(arg0: Int32) {
        value = arg0
    }
}
public open class RichEditorSpanType {
    public static var TEXT: RichEditorSpanType = RichEditorSpanType(0)
    public static var IMAGE: RichEditorSpanType = RichEditorSpanType(1)
    public static var MIXED: RichEditorSpanType = RichEditorSpanType(2)
    public static var BUILDER: RichEditorSpanType = RichEditorSpanType(3)
    public static var DEFAULT: RichEditorSpanType = RichEditorSpanType(4)
    public var value: Int32
    RichEditorSpanType(arg0: Int32) {
        value = arg0
    }
}
public open class UndoStyle {
    public static var CLEAR_STYLE: UndoStyle = UndoStyle(0)
    public static var KEEP_STYLE: UndoStyle = UndoStyle(1)
    public var value: Int32
    UndoStyle(arg0: Int32) {
        value = arg0
    }
}
public open class RichEditorResponseType {
    public static var RIGHT_CLICK: RichEditorResponseType = RichEditorResponseType(0)
    public static var LONG_PRESS: RichEditorResponseType = RichEditorResponseType(1)
    public static var SELECT: RichEditorResponseType = RichEditorResponseType(2)
    public static var DEFAULT: RichEditorResponseType = RichEditorResponseType(3)
    public var value: Int32
    RichEditorResponseType(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Length_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_Number") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_Number") }
    }
}
public open class Union_Dimension_LeadingMarginPlaceholder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_LeadingMarginPlaceholder") }
    }
    private var value1: Option<LeadingMarginPlaceholder> = None<LeadingMarginPlaceholder>
    init(param: LeadingMarginPlaceholder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LeadingMarginPlaceholder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_LeadingMarginPlaceholder") }
    }
}
public open class Union_Dimension_Margin {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_Margin") }
    }
    private var value1: Option<Margin> = None<Margin>
    init(param: Margin) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Margin {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_Margin") }
    }
}
public open class Union_PixelMap_ResourceStr {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): PixelMap {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr") }
    }
    private var value1: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceStr {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_PixelMap_ResourceStr") }
    }
}
public open class Union_RichEditorTextSpanResult_RichEditorImageSpanResult {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<RichEditorTextSpanResult> = None<RichEditorTextSpanResult>
    init(param: RichEditorTextSpanResult) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): RichEditorTextSpanResult {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_RichEditorTextSpanResult_RichEditorImageSpanResult") }
    }
    private var value1: Option<RichEditorImageSpanResult> = None<RichEditorImageSpanResult>
    init(param: RichEditorImageSpanResult) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RichEditorImageSpanResult {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_RichEditorTextSpanResult_RichEditorImageSpanResult") }
    }
}
public open class Type_RichEditorController_updateSpanStyle_value {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<RichEditorUpdateTextSpanStyleOptions> = None<RichEditorUpdateTextSpanStyleOptions>
    init(param: RichEditorUpdateTextSpanStyleOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): RichEditorUpdateTextSpanStyleOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_RichEditorController_updateSpanStyle_value") }
    }
    private var value1: Option<RichEditorUpdateImageSpanStyleOptions> = None<RichEditorUpdateImageSpanStyleOptions>
    init(param: RichEditorUpdateImageSpanStyleOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RichEditorUpdateImageSpanStyleOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_RichEditorController_updateSpanStyle_value") }
    }
    private var value2: Option<RichEditorUpdateSymbolSpanStyleOptions> = None<RichEditorUpdateSymbolSpanStyleOptions>
    init(param: RichEditorUpdateSymbolSpanStyleOptions) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): RichEditorUpdateSymbolSpanStyleOptions {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_RichEditorController_updateSpanStyle_value") }
    }
}
public open class Union_RichEditorImageSpanResult_RichEditorTextSpanResult {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<RichEditorImageSpanResult> = None<RichEditorImageSpanResult>
    init(param: RichEditorImageSpanResult) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): RichEditorImageSpanResult {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_RichEditorImageSpanResult_RichEditorTextSpanResult") }
    }
    private var value1: Option<RichEditorTextSpanResult> = None<RichEditorTextSpanResult>
    init(param: RichEditorTextSpanResult) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RichEditorTextSpanResult {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_RichEditorImageSpanResult_RichEditorTextSpanResult") }
    }
}
public open class RichEditorSpan {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<RichEditorImageSpanResult> = None<RichEditorImageSpanResult>
    init(param: RichEditorImageSpanResult) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): RichEditorImageSpanResult {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union RichEditorSpan") }
    }
    private var value1: Option<RichEditorTextSpanResult> = None<RichEditorTextSpanResult>
    init(param: RichEditorTextSpanResult) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RichEditorTextSpanResult {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union RichEditorSpan") }
    }
}
public open class Union_ResponseType_RichEditorResponseType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResponseType> = None<ResponseType>
    init(param: ResponseType) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResponseType {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResponseType_RichEditorResponseType") }
    }
    private var value1: Option<RichEditorResponseType> = None<RichEditorResponseType>
    init(param: RichEditorResponseType) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RichEditorResponseType {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResponseType_RichEditorResponseType") }
    }
}
public type SubmitCallback = (enterKey: EnterKeyType, event: SubmitEvent) -> Unit
public type MenuOnAppearCallback = (start: Float64, end: Float64) -> Unit
public type MenuCallback = (start: Float64, end: Float64) -> Unit
public type PasteEventCallback = (event: ?PasteEvent) -> Unit
public type OnHoverCallback = (status: Bool, event: HoverEvent) -> Unit
public open class Union_RowOptions_RowOptionsV2 {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<RowOptions> = None<RowOptions>
    init(param: RowOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): RowOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_RowOptions_RowOptionsV2") }
    }
    private var value1: Option<RowOptionsV2> = None<RowOptionsV2>
    init(param: RowOptionsV2) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): RowOptionsV2 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_RowOptions_RowOptionsV2") }
    }
}
public open class SaveIconStyle {
    public static var FULL_FILLED: SaveIconStyle = SaveIconStyle(0)
    public static var LINES: SaveIconStyle = SaveIconStyle(1)
    public static var PICTURE: SaveIconStyle = SaveIconStyle(2)
    public var value: Int32
    SaveIconStyle(arg0: Int32) {
        value = arg0
    }
}
public open class SaveDescription {
    public static var DOWNLOAD: SaveDescription = SaveDescription(0)
    public static var DOWNLOAD_FILE: SaveDescription = SaveDescription(1)
    public static var SAVE: SaveDescription = SaveDescription(2)
    public static var SAVE_IMAGE: SaveDescription = SaveDescription(3)
    public static var SAVE_FILE: SaveDescription = SaveDescription(4)
    public static var DOWNLOAD_AND_SHARE: SaveDescription = SaveDescription(5)
    public static var RECEIVE: SaveDescription = SaveDescription(6)
    public static var CONTINUE_TO_RECEIVE: SaveDescription = SaveDescription(7)
    public static var SAVE_TO_GALLERY: SaveDescription = SaveDescription(8)
    public static var EXPORT_TO_GALLERY: SaveDescription = SaveDescription(9)
    public static var QUICK_SAVE_TO_GALLERY: SaveDescription = SaveDescription(10)
    public static var RESAVE_TO_GALLERY: SaveDescription = SaveDescription(11)
    public static var SAVE_ALL: SaveDescription = SaveDescription(12)
    public var value: Int32
    SaveDescription(arg0: Int32) {
        value = arg0
    }
}
public open class SaveButtonOnClickResult {
    public static var SUCCESS: SaveButtonOnClickResult = SaveButtonOnClickResult(0)
    public static var TEMPORARY_AUTHORIZATION_FAILED: SaveButtonOnClickResult = SaveButtonOnClickResult(1)
    public var value: Int32
    SaveButtonOnClickResult(arg0: Int32) {
        value = arg0
    }
}
public type SaveButtonCallback = (event: ClickEvent, result: SaveButtonOnClickResult, error: ?BusinessError) -> Unit
public open class Union_Dimension_SizeOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_SizeOptions") }
    }
    private var value1: Option<SizeOptions> = None<SizeOptions>
    init(param: SizeOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): SizeOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_SizeOptions") }
    }
}
public open class SaveButtonTipPosition {
    public static var ABOVE_BOTTOM: SaveButtonTipPosition = SaveButtonTipPosition(0)
    public static var BELOW_TOP: SaveButtonTipPosition = SaveButtonTipPosition(1)
    public var value: Int32
    SaveButtonTipPosition(arg0: Int32) {
        value = arg0
    }
}
public open class ScrollBarDirection {
    public static var VERTICAL: ScrollBarDirection = ScrollBarDirection(0)
    public static var HORIZONTAL: ScrollBarDirection = ScrollBarDirection(1)
    public var value: Int32
    ScrollBarDirection(arg0: Int32) {
        value = arg0
    }
}
public open class CancelButtonStyle {
    public static var CONSTANT: CancelButtonStyle = CancelButtonStyle(0)
    public static var INVISIBLE: CancelButtonStyle = CancelButtonStyle(1)
    public static var INPUT: CancelButtonStyle = CancelButtonStyle(2)
    public var value: Int32
    CancelButtonStyle(arg0: Int32) {
        value = arg0
    }
}
public open class SearchType {
    public static var NORMAL: SearchType = SearchType(0)
    public static var NUMBER: SearchType = SearchType(2)
    public static var PHONE_NUMBER: SearchType = SearchType(3)
    public static var EMAIL: SearchType = SearchType(5)
    public static var NUMBER_DECIMAL: SearchType = SearchType(12)
    public static var URL: SearchType = SearchType(13)
    public static var ONE_TIME_CODE: SearchType = SearchType(14)
    public var value: Int32
    SearchType(arg0: Int32) {
        value = arg0
    }
}
public open class Union_String_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Bindable") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Bindable") }
    }
}
public type SearchSubmitCallback = (searchContent: String, event: ?SubmitEvent) -> Unit
public open class Union_IconOptions_SymbolGlyphModifier {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<IconOptions> = None<IconOptions>
    init(param: IconOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): IconOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_IconOptions_SymbolGlyphModifier") }
    }
    private var value1: Option<SymbolGlyphModifier> = None<SymbolGlyphModifier>
    init(param: SymbolGlyphModifier) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): SymbolGlyphModifier {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_IconOptions_SymbolGlyphModifier") }
    }
}
public open class Union_CancelButtonOptions_CancelButtonSymbolOptions {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<CancelButtonOptions> = None<CancelButtonOptions>
    init(param: CancelButtonOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): CancelButtonOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_CancelButtonOptions_CancelButtonSymbolOptions") }
    }
    private var value1: Option<CancelButtonSymbolOptions> = None<CancelButtonSymbolOptions>
    init(param: CancelButtonSymbolOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CancelButtonSymbolOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_CancelButtonOptions_CancelButtonSymbolOptions") }
    }
}
public open class Union_Callback_String_Void_SearchSubmitCallback {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<((breakpoints: String) -> Unit)> = None<((breakpoints: String) -> Unit)>
    init(param: ((breakpoints: String) -> Unit)) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ((breakpoints: String) -> Unit) {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Callback_String_Void_SearchSubmitCallback") }
    }
    private var value1: Option<SearchSubmitCallback> = None<SearchSubmitCallback>
    init(param: SearchSubmitCallback) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): SearchSubmitCallback {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Callback_String_Void_SearchSubmitCallback") }
    }
}
public open class SecurityComponentLayoutDirection {
    public static var HORIZONTAL: SecurityComponentLayoutDirection = SecurityComponentLayoutDirection(0)
    public static var VERTICAL: SecurityComponentLayoutDirection = SecurityComponentLayoutDirection(1)
    public var value: Int32
    SecurityComponentLayoutDirection(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Number_FontWeight_String_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String_Resource") }
    }
    private var value1: Option<FontWeight> = None<FontWeight>
    init(param: FontWeight) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): FontWeight {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String_Resource") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String_Resource") }
    }
    private var value3: Option<Resource> = None<Resource>
    init(param: Resource) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Resource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String_Resource") }
    }
}
public open class Union_Padding_Dimension {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Padding> = None<Padding>
    init(param: Padding) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Padding {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension") }
    }
    private var value1: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Dimension {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension") }
    }
}
public open class ArrowPosition {
    public static var END: ArrowPosition = ArrowPosition(0)
    public static var START: ArrowPosition = ArrowPosition(1)
    public var value: Int32
    ArrowPosition(arg0: Int32) {
        value = arg0
    }
}
public open class MenuAlignType {
    public static var START: MenuAlignType = MenuAlignType(0)
    public static var CENTER: MenuAlignType = MenuAlignType(1)
    public static var END: MenuAlignType = MenuAlignType(2)
    public var value: Int32
    MenuAlignType(arg0: Int32) {
        value = arg0
    }
}
public open class AvoidanceMode {
    public static var COVER_TARGET: AvoidanceMode = AvoidanceMode(0)
    public static var AVOID_AROUND_TARGET: AvoidanceMode = AvoidanceMode(1)
    public var value: Int32
    AvoidanceMode(arg0: Int32) {
        value = arg0
    }
}
public type OnSelectCallback = (index: Float64, selectStr: String) -> Unit
public open class Union_Number_Resource_Bindable_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Resource_Bindable_Bindable") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Resource_Bindable_Bindable") }
    }
    private var value2: Option<Any> = None<Any>
    init(param: Any) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Any {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_Resource_Bindable_Bindable") }
    }
    private var value3: Option<Any> = None<Any>
    init(param: Any) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Any {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Number_Resource_Bindable_Bindable") }
    }
}
public open class Union_ResourceStr_Bindable_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Bindable_Bindable") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Bindable_Bindable") }
    }
    private var value2: Option<Any> = None<Any>
    init(param: Any) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Any {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Bindable_Bindable") }
    }
}
public open class Union_Dimension_OptionWidthMode {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_OptionWidthMode") }
    }
    private var value1: Option<OptionWidthMode> = None<OptionWidthMode>
    init(param: OptionWidthMode) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): OptionWidthMode {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_OptionWidthMode") }
    }
}
public open class SideBarContainerType {
    public static var EMBED: SideBarContainerType = SideBarContainerType(0)
    public static var OVERLAY: SideBarContainerType = SideBarContainerType(1)
    public static var AUTO: SideBarContainerType = SideBarContainerType(2)
    public var value: Int32
    SideBarContainerType(arg0: Int32) {
        value = arg0
    }
}
public open class SideBarPosition {
    public static var START: SideBarPosition = SideBarPosition(0)
    public static var END: SideBarPosition = SideBarPosition(1)
    public var value: Int32
    SideBarPosition(arg0: Int32) {
        value = arg0
    }
}
public open class Union_String_PixelMap_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource") }
    }
    private var value1: Option<PixelMap> = None<PixelMap>
    init(param: PixelMap) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): PixelMap {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource") }
    }
}
public open class SliderStyle {
    public static var OUT_SET: SliderStyle = SliderStyle(0)
    public static var IN_SET: SliderStyle = SliderStyle(1)
    public static var NONE: SliderStyle = SliderStyle(2)
    public var value: Int32
    SliderStyle(arg0: Int32) {
        value = arg0
    }
}
public open class SliderChangeMode {
    public static var BEGIN: SliderChangeMode = SliderChangeMode(0)
    public static var MOVING: SliderChangeMode = SliderChangeMode(1)
    public static var END: SliderChangeMode = SliderChangeMode(2)
    public static var CLICK: SliderChangeMode = SliderChangeMode(3)
    public var value: Int32
    SliderChangeMode(arg0: Int32) {
        value = arg0
    }
}
public open class SliderInteraction {
    public static var SLIDE_AND_CLICK: SliderInteraction = SliderInteraction(0)
    public static var SLIDE_ONLY: SliderInteraction = SliderInteraction(1)
    public static var SLIDE_AND_CLICK_UP: SliderInteraction = SliderInteraction(2)
    public var value: Int32
    SliderInteraction(arg0: Int32) {
        value = arg0
    }
}
public open class SliderBlockType {
    public static var DEFAULT: SliderBlockType = SliderBlockType(0)
    public static var IMAGE: SliderBlockType = SliderBlockType(1)
    public static var SHAPE: SliderBlockType = SliderBlockType(2)
    public var value: Int32
    SliderBlockType(arg0: Int32) {
        value = arg0
    }
}
public type SliderTriggerChangeCallback = (value: Float64, mode: SliderChangeMode) -> Unit
public open class ColorMode {
    public static var LIGHT: ColorMode = ColorMode(0)
    public static var DARK: ColorMode = ColorMode(1)
    public var value: Int32
    ColorMode(arg0: Int32) {
        value = arg0
    }
}
public open class LayoutDirection {
    public static var LTR: LayoutDirection = LayoutDirection(0)
    public static var RTL: LayoutDirection = LayoutDirection(1)
    public static var AUTO: LayoutDirection = LayoutDirection(2)
    public var value: Int32
    LayoutDirection(arg0: Int32) {
        value = arg0
    }
}
public open class ItemState {
    public static var NORMAL: ItemState = ItemState(0)
    public static var DISABLED: ItemState = ItemState(1)
    public static var WAITING: ItemState = ItemState(2)
    public static var SKIP: ItemState = ItemState(3)
    public var value: Int32
    ItemState(arg0: Int32) {
        value = arg0
    }
}
public type StyledStringMarshallingValue = UserDataSpan
public type StyledStringMarshallCallback = (marshallableVal: StyledStringMarshallingValue) -> Array<UInt8>
public type StyledStringUnmarshallCallback = (buf: Array<UInt8>) -> StyledStringMarshallingValue
public open class Union_String_ImageAttachment_CustomSpan {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_ImageAttachment_CustomSpan") }
    }
    private var value1: Option<ImageAttachment> = None<ImageAttachment>
    init(param: ImageAttachment) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ImageAttachment {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_ImageAttachment_CustomSpan") }
    }
    private var value2: Option<CustomSpan> = None<CustomSpan>
    init(param: CustomSpan) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): CustomSpan {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_ImageAttachment_CustomSpan") }
    }
}
public open class StyledStringValue {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<TextStyle_styled_string> = None<TextStyle_styled_string>
    init(param: TextStyle_styled_string) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): TextStyle_styled_string {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value1: Option<DecorationStyle> = None<DecorationStyle>
    init(param: DecorationStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DecorationStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value2: Option<BaselineOffsetStyle> = None<BaselineOffsetStyle>
    init(param: BaselineOffsetStyle) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): BaselineOffsetStyle {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value3: Option<LetterSpacingStyle> = None<LetterSpacingStyle>
    init(param: LetterSpacingStyle) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): LetterSpacingStyle {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value4: Option<TextShadowStyle> = None<TextShadowStyle>
    init(param: TextShadowStyle) {
        value4 = param
        selector = 4
    }
    public open func getValue4(): TextShadowStyle {
        if (let Some(value4) <- value4) {
            return value4
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value5: Option<GestureStyle> = None<GestureStyle>
    init(param: GestureStyle) {
        value5 = param
        selector = 5
    }
    public open func getValue5(): GestureStyle {
        if (let Some(value5) <- value5) {
            return value5
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value6: Option<ImageAttachment> = None<ImageAttachment>
    init(param: ImageAttachment) {
        value6 = param
        selector = 6
    }
    public open func getValue6(): ImageAttachment {
        if (let Some(value6) <- value6) {
            return value6
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value7: Option<ParagraphStyle> = None<ParagraphStyle>
    init(param: ParagraphStyle) {
        value7 = param
        selector = 7
    }
    public open func getValue7(): ParagraphStyle {
        if (let Some(value7) <- value7) {
            return value7
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value8: Option<LineHeightStyle> = None<LineHeightStyle>
    init(param: LineHeightStyle) {
        value8 = param
        selector = 8
    }
    public open func getValue8(): LineHeightStyle {
        if (let Some(value8) <- value8) {
            return value8
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value9: Option<UrlStyle> = None<UrlStyle>
    init(param: UrlStyle) {
        value9 = param
        selector = 9
    }
    public open func getValue9(): UrlStyle {
        if (let Some(value9) <- value9) {
            return value9
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value10: Option<CustomSpan> = None<CustomSpan>
    init(param: CustomSpan) {
        value10 = param
        selector = 10
    }
    public open func getValue10(): CustomSpan {
        if (let Some(value10) <- value10) {
            return value10
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value11: Option<UserDataSpan> = None<UserDataSpan>
    init(param: UserDataSpan) {
        value11 = param
        selector = 11
    }
    public open func getValue11(): UserDataSpan {
        if (let Some(value11) <- value11) {
            return value11
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value12: Option<BackgroundColorStyle> = None<BackgroundColorStyle>
    init(param: BackgroundColorStyle) {
        value12 = param
        selector = 12
    }
    public open func getValue12(): BackgroundColorStyle {
        if (let Some(value12) <- value12) {
            return value12
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
}
public open class Union_Number_LeadingMarginPlaceholder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_LeadingMarginPlaceholder") }
    }
    private var value1: Option<LeadingMarginPlaceholder> = None<LeadingMarginPlaceholder>
    init(param: LeadingMarginPlaceholder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LeadingMarginPlaceholder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_LeadingMarginPlaceholder") }
    }
}
public open class Union_LengthMetrics_LeadingMarginPlaceholder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<LengthMetrics> = None<LengthMetrics>
    init(param: LengthMetrics) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): LengthMetrics {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_LeadingMarginPlaceholder") }
    }
    private var value1: Option<LeadingMarginPlaceholder> = None<LeadingMarginPlaceholder>
    init(param: LeadingMarginPlaceholder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LeadingMarginPlaceholder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_LeadingMarginPlaceholder") }
    }
}
public open class StyledStringKey {
    public static var FONT: StyledStringKey = StyledStringKey(0)
    public static var DECORATION: StyledStringKey = StyledStringKey(1)
    public static var BASELINE_OFFSET: StyledStringKey = StyledStringKey(2)
    public static var LETTER_SPACING: StyledStringKey = StyledStringKey(3)
    public static var TEXT_SHADOW: StyledStringKey = StyledStringKey(4)
    public static var LINE_HEIGHT: StyledStringKey = StyledStringKey(5)
    public static var BACKGROUND_COLOR: StyledStringKey = StyledStringKey(6)
    public static var URL: StyledStringKey = StyledStringKey(7)
    public static var GESTURE: StyledStringKey = StyledStringKey(100)
    public static var PARAGRAPH_STYLE: StyledStringKey = StyledStringKey(200)
    public static var IMAGE: StyledStringKey = StyledStringKey(300)
    public static var CUSTOM_SPAN: StyledStringKey = StyledStringKey(400)
    public static var USER_DATA: StyledStringKey = StyledStringKey(500)
    public var value: Int32
    StyledStringKey(arg0: Int32) {
        value = arg0
    }
}
public open class ColorFilterType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ColorFilter> = None<ColorFilter>
    init(param: ColorFilter) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ColorFilter {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union ColorFilterType") }
    }
    private var value1: Option<DrawingColorFilter> = None<DrawingColorFilter>
    init(param: DrawingColorFilter) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DrawingColorFilter {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union ColorFilterType") }
    }
}
public open class AttachmentType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ImageAttachmentInterface> = None<ImageAttachmentInterface>
    init(param: ImageAttachmentInterface) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ImageAttachmentInterface {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union AttachmentType") }
    }
    private var value1: Option<ResourceImageAttachmentOptions> = None<ResourceImageAttachmentOptions>
    init(param: ResourceImageAttachmentOptions) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceImageAttachmentOptions {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union AttachmentType") }
    }
}
public open class Union_ImageAttachmentInterface_Opt_AttachmentType {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ImageAttachmentInterface> = None<ImageAttachmentInterface>
    init(param: ImageAttachmentInterface) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ImageAttachmentInterface {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ImageAttachmentInterface_Opt_AttachmentType") }
    }
    private var value1: Option<AttachmentType> = None<Option<AttachmentType>>
    init(param: Option<AttachmentType>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Option<AttachmentType> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ImageAttachmentInterface_Opt_AttachmentType") }
    }
}
public open class Union_LengthMetrics_Margin {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<LengthMetrics> = None<LengthMetrics>
    init(param: LengthMetrics) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): LengthMetrics {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_Margin") }
    }
    private var value1: Option<Margin> = None<Margin>
    init(param: Margin) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Margin {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_Margin") }
    }
}
public open class Union_LengthMetrics_Padding {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<LengthMetrics> = None<LengthMetrics>
    init(param: LengthMetrics) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): LengthMetrics {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_Padding") }
    }
    private var value1: Option<Padding> = None<Padding>
    init(param: Padding) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Padding {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_Padding") }
    }
}
public open class Union_LengthMetrics_BorderRadiuses {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<LengthMetrics> = None<LengthMetrics>
    init(param: LengthMetrics) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): LengthMetrics {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_BorderRadiuses") }
    }
    private var value1: Option<BorderRadiuses> = None<BorderRadiuses>
    init(param: BorderRadiuses) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BorderRadiuses {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_LengthMetrics_BorderRadiuses") }
    }
}
public open class SelectedMode {
    public static var INDICATOR: SelectedMode = SelectedMode(0)
    public static var BOARD: SelectedMode = SelectedMode(1)
    public var value: Int32
    SelectedMode(arg0: Int32) {
        value = arg0
    }
}
public open class LayoutMode {
    public static var AUTO: LayoutMode = LayoutMode(0)
    public static var VERTICAL: LayoutMode = LayoutMode(1)
    public static var HORIZONTAL: LayoutMode = LayoutMode(2)
    public var value: Int32
    LayoutMode(arg0: Int32) {
        value = arg0
    }
}
public open class Union_ResourceStr_ComponentContent {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_ComponentContent") }
    }
    private var value1: Option<ComponentContent> = None<ComponentContent>
    init(param: ComponentContent) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ComponentContent {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_ComponentContent") }
    }
}
public open class Union_ResourceStr_TabBarSymbol {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_TabBarSymbol") }
    }
    private var value1: Option<TabBarSymbol> = None<TabBarSymbol>
    init(param: TabBarSymbol) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): TabBarSymbol {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_TabBarSymbol") }
    }
}
public open class Union_Padding_Dimension_LocalizedPadding {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Padding> = None<Padding>
    init(param: Padding) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Padding {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension_LocalizedPadding") }
    }
    private var value1: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Dimension {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension_LocalizedPadding") }
    }
    private var value2: Option<LocalizedPadding> = None<LocalizedPadding>
    init(param: LocalizedPadding) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedPadding {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension_LocalizedPadding") }
    }
}
public open class Type_TabContentAttribute_tabBar_content {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ComponentContent> = None<ComponentContent>
    init(param: ComponentContent) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ComponentContent {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_TabContentAttribute_tabBar_content") }
    }
    private var value1: Option<SubTabBarStyle> = None<SubTabBarStyle>
    init(param: SubTabBarStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): SubTabBarStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_TabContentAttribute_tabBar_content") }
    }
    private var value2: Option<BottomTabBarStyle> = None<BottomTabBarStyle>
    init(param: BottomTabBarStyle) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): BottomTabBarStyle {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_TabContentAttribute_tabBar_content") }
    }
    private var value3: Option<String> = None<String>
    init(param: String) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): String {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Type_TabContentAttribute_tabBar_content") }
    }
    private var value4: Option<Resource> = None<Resource>
    init(param: Resource) {
        value4 = param
        selector = 4
    }
    public open func getValue4(): Resource {
        if (let Some(value4) <- value4) {
            return value4
        } else { throw Exception("Wrong selector value inside Union Type_TabContentAttribute_tabBar_content") }
    }
    private var value5: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value5 = param
        selector = 5
    }
    public open func getValue5(): CustomBuilder {
        if (let Some(value5) <- value5) {
            return value5
        } else { throw Exception("Wrong selector value inside Union Type_TabContentAttribute_tabBar_content") }
    }
    private var value6: Option<TabBarOptions> = None<TabBarOptions>
    init(param: TabBarOptions) {
        value6 = param
        selector = 6
    }
    public open func getValue6(): TabBarOptions {
        if (let Some(value6) <- value6) {
            return value6
        } else { throw Exception("Wrong selector value inside Union Type_TabContentAttribute_tabBar_content") }
    }
}
public type CommonModifier = Any
public open class BarMode {
    public static var SCROLLABLE: BarMode = BarMode(0)
    public static var FIXED: BarMode = BarMode(1)
    public var value: Int32
    BarMode(arg0: Int32) {
        value = arg0
    }
}
public open class AnimationMode {
    public static var CONTENT_FIRST: AnimationMode = AnimationMode(0)
    public static var ACTION_FIRST: AnimationMode = AnimationMode(1)
    public static var NO_ANIMATION: AnimationMode = AnimationMode(2)
    public static var CONTENT_FIRST_WITH_JUMP: AnimationMode = AnimationMode(3)
    public static var ACTION_FIRST_WITH_JUMP: AnimationMode = AnimationMode(4)
    public var value: Int32
    AnimationMode(arg0: Int32) {
        value = arg0
    }
}
public open class BarPosition {
    public static var START: BarPosition = BarPosition(0)
    public static var END: BarPosition = BarPosition(1)
    public var value: Int32
    BarPosition(arg0: Int32) {
        value = arg0
    }
}
public open class LayoutStyle {
    public static var ALWAYS_CENTER: LayoutStyle = LayoutStyle(0)
    public static var ALWAYS_AVERAGE_SPLIT: LayoutStyle = LayoutStyle(1)
    public static var SPACE_BETWEEN_OR_CENTER: LayoutStyle = LayoutStyle(2)
    public var value: Int32
    LayoutStyle(arg0: Int32) {
        value = arg0
    }
}
public open class TabsCacheMode {
    public static var CACHE_BOTH_SIDE: TabsCacheMode = TabsCacheMode(0)
    public static var CACHE_LATEST_SWITCHED: TabsCacheMode = TabsCacheMode(1)
    public var value: Int32
    TabsCacheMode(arg0: Int32) {
        value = arg0
    }
}
public type OnTabsAnimationStartCallback = (index: Float64, targetIndex: Float64, extraInfo: TabsAnimationEvent) -> Unit
public type OnTabsAnimationEndCallback = (index: Float64, extraInfo: TabsAnimationEvent) -> Unit
public type OnTabsGestureSwipeCallback = (index: Float64, extraInfo: TabsAnimationEvent) -> Unit
public type TabsCustomContentTransitionCallback = (from_: Float64, to: Float64) -> Option<TabContentAnimatedTransition>
public type OnTabsContentWillChangeCallback = (currentIndex: Float64, comingIndex: Float64) -> Bool
public open class TextSpanType {
    public static var TEXT: TextSpanType = TextSpanType(0)
    public static var IMAGE: TextSpanType = TextSpanType(1)
    public static var MIXED: TextSpanType = TextSpanType(2)
    public static var DEFAULT: TextSpanType = TextSpanType(3)
    public var value: Int32
    TextSpanType(arg0: Int32) {
        value = arg0
    }
}
public open class TextResponseType {
    public static var RIGHT_CLICK: TextResponseType = TextResponseType(0)
    public static var LONG_PRESS: TextResponseType = TextResponseType(1)
    public static var SELECT: TextResponseType = TextResponseType(2)
    public static var DEFAULT: TextResponseType = TextResponseType(3)
    public var value: Int32
    TextResponseType(arg0: Int32) {
        value = arg0
    }
}
public open class MarqueeState {
    public static var START: MarqueeState = MarqueeState(0)
    public static var BOUNCE: MarqueeState = MarqueeState(1)
    public static var FINISH: MarqueeState = MarqueeState(2)
    public var value: Int32
    MarqueeState(arg0: Int32) {
        value = arg0
    }
}
public open class MarqueeStartPolicy {
    public static var DEFAULT: MarqueeStartPolicy = MarqueeStartPolicy(0)
    public static var ON_FOCUS: MarqueeStartPolicy = MarqueeStartPolicy(1)
    public var value: Int32
    MarqueeStartPolicy(arg0: Int32) {
        value = arg0
    }
}
public open class Union_ResourceStr_Bindable_Bindable_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Bindable_Bindable_Bindable") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Bindable_Bindable_Bindable") }
    }
    private var value2: Option<Any> = None<Any>
    init(param: Any) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Any {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Bindable_Bindable_Bindable") }
    }
    private var value3: Option<Any> = None<Any>
    init(param: Any) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Any {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Bindable_Bindable_Bindable") }
    }
}
public open class TextAreaType {
    public static var NORMAL: TextAreaType = TextAreaType(0)
    public static var NUMBER: TextAreaType = TextAreaType(2)
    public static var PHONE_NUMBER: TextAreaType = TextAreaType(3)
    public static var EMAIL: TextAreaType = TextAreaType(5)
    public static var NUMBER_DECIMAL: TextAreaType = TextAreaType(12)
    public static var URL: TextAreaType = TextAreaType(13)
    public static var ONE_TIME_CODE: TextAreaType = TextAreaType(14)
    public var value: Int32
    TextAreaType(arg0: Int32) {
        value = arg0
    }
}
public type TextAreaSubmitCallback = (enterKeyType: EnterKeyType, event: ?SubmitEvent) -> Unit
public open class Union_Callback_EnterKeyType_Void_TextAreaSubmitCallback {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<((enterKey: EnterKeyType) -> Unit)> = None<((enterKey: EnterKeyType) -> Unit)>
    init(param: ((enterKey: EnterKeyType) -> Unit)) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ((enterKey: EnterKeyType) -> Unit) {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Callback_EnterKeyType_Void_TextAreaSubmitCallback") }
    }
    private var value1: Option<TextAreaSubmitCallback> = None<TextAreaSubmitCallback>
    init(param: TextAreaSubmitCallback) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): TextAreaSubmitCallback {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Callback_EnterKeyType_Void_TextAreaSubmitCallback") }
    }
}
public open class TextDataDetectorType {
    public static var PHONE_NUMBER: TextDataDetectorType = TextDataDetectorType(0)
    public static var URL: TextDataDetectorType = TextDataDetectorType(1)
    public static var EMAIL: TextDataDetectorType = TextDataDetectorType(2)
    public static var ADDRESS: TextDataDetectorType = TextDataDetectorType(3)
    public static var DATE_TIME: TextDataDetectorType = TextDataDetectorType(4)
    public var value: Int32
    TextDataDetectorType(arg0: Int32) {
        value = arg0
    }
}
public open class TextDeleteDirection {
    public static var BACKWARD: TextDeleteDirection = TextDeleteDirection(0)
    public static var FORWARD: TextDeleteDirection = TextDeleteDirection(1)
    public var value: Int32
    TextDeleteDirection(arg0: Int32) {
        value = arg0
    }
}
public open class SuperscriptStyle {
    public static var NORMAL: SuperscriptStyle = SuperscriptStyle(0)
    public static var SUPERSCRIPT: SuperscriptStyle = SuperscriptStyle(1)
    public static var SUBSCRIPT: SuperscriptStyle = SuperscriptStyle(2)
    public var value: Int32
    SuperscriptStyle(arg0: Int32) {
        value = arg0
    }
}
public open class MenuType {
    public static var SELECTION_MENU: MenuType = MenuType(0)
    public static var PREVIEW_MENU: MenuType = MenuType(1)
    public var value: Int32
    MenuType(arg0: Int32) {
        value = arg0
    }
}
public open class AutoCapitalizationMode {
    public static var NONE: AutoCapitalizationMode = AutoCapitalizationMode(0)
    public static var WORDS: AutoCapitalizationMode = AutoCapitalizationMode(1)
    public static var SENTENCES: AutoCapitalizationMode = AutoCapitalizationMode(2)
    public static var ALL_CHARACTERS: AutoCapitalizationMode = AutoCapitalizationMode(3)
    public var value: Int32
    AutoCapitalizationMode(arg0: Int32) {
        value = arg0
    }
}
public type OnDidChangeCallback = (rangeBefore: TextRange, rangeAfter: TextRange) -> Unit
public type EditableTextOnChangeCallback = (value: String, previewText: ?PreviewText, options: ?TextChangeOptions) -> Unit
public type Affinity = Any
public type LineMetrics = Any
public type RectWidthStyle = Any
public type RectHeightStyle = Any
public type TextBox = Any
public type OnPrepareMenuCallback = (menuItems: ArrayList<TextMenuItem>) -> ArrayList<TextMenuItem>
public type OnCreateMenuCallback = (menuItems: ArrayList<TextMenuItem>) -> ArrayList<TextMenuItem>
public type OnMenuItemClickCallback = (menuItem: TextMenuItem, range: TextRange) -> Bool
public open class TextMenuShowMode {
    public static var DEFAULT: TextMenuShowMode = TextMenuShowMode(0)
    public static var PREFER_WINDOW: TextMenuShowMode = TextMenuShowMode(1)
    public var value: Int32
    TextMenuShowMode(arg0: Int32) {
        value = arg0
    }
}
public open class KeyboardAppearance {
    public static var NONE_IMMERSIVE: KeyboardAppearance = KeyboardAppearance(0)
    public static var IMMERSIVE: KeyboardAppearance = KeyboardAppearance(1)
    public static var LIGHT_IMMERSIVE: KeyboardAppearance = KeyboardAppearance(2)
    public static var DARK_IMMERSIVE: KeyboardAppearance = KeyboardAppearance(3)
    public var value: Int32
    KeyboardAppearance(arg0: Int32) {
        value = arg0
    }
}
public open class FlipDirection {
    public static var DOWN: FlipDirection = FlipDirection(0)
    public static var UP: FlipDirection = FlipDirection(1)
    public var value: Int32
    FlipDirection(arg0: Int32) {
        value = arg0
    }
}
public open class TextChangeReason {
    public static var UNKNOWN: TextChangeReason = TextChangeReason(0)
    public static var INPUT: TextChangeReason = TextChangeReason(1)
    public static var PASTE: TextChangeReason = TextChangeReason(2)
    public static var CUT: TextChangeReason = TextChangeReason(3)
    public static var DRAG: TextChangeReason = TextChangeReason(4)
    public static var AUTO_FILL: TextChangeReason = TextChangeReason(5)
    public static var AI_WRITE: TextChangeReason = TextChangeReason(6)
    public static var REDO: TextChangeReason = TextChangeReason(7)
    public static var UNDO: TextChangeReason = TextChangeReason(8)
    public static var CONTROLLER: TextChangeReason = TextChangeReason(9)
    public static var ACCESSIBILITY: TextChangeReason = TextChangeReason(10)
    public static var COLLABORATION: TextChangeReason = TextChangeReason(11)
    public static var STYLUS: TextChangeReason = TextChangeReason(12)
    public var value: Int32
    TextChangeReason(arg0: Int32) {
        value = arg0
    }
}
public open class TextVerticalAlign {
    public static var BASELINE: TextVerticalAlign = TextVerticalAlign(0)
    public static var BOTTOM: TextVerticalAlign = TextVerticalAlign(1)
    public static var CENTER: TextVerticalAlign = TextVerticalAlign(2)
    public static var TOP: TextVerticalAlign = TextVerticalAlign(3)
    public var value: Int32
    TextVerticalAlign(arg0: Int32) {
        value = arg0
    }
}
public open class MaxLinesMode {
    public static var CLIP: MaxLinesMode = MaxLinesMode(0)
    public static var SCROLL: MaxLinesMode = MaxLinesMode(1)
    public var value: Int32
    MaxLinesMode(arg0: Int32) {
        value = arg0
    }
}
public open class KeyboardGradientMode {
    public static var NONE: KeyboardGradientMode = KeyboardGradientMode(0)
    public static var LINEAR_GRADIENT: KeyboardGradientMode = KeyboardGradientMode(1)
    public var value: Int32
    KeyboardGradientMode(arg0: Int32) {
        value = arg0
    }
}
public open class KeyboardFluidLightMode {
    public static var NONE: KeyboardFluidLightMode = KeyboardFluidLightMode(0)
    public static var BACKGROUND_FLUID_LIGHT: KeyboardFluidLightMode = KeyboardFluidLightMode(1)
    public var value: Int32
    KeyboardFluidLightMode(arg0: Int32) {
        value = arg0
    }
}
public open class InputType {
    public static var NORMAL: InputType = InputType(0)
    public static var NUMBER: InputType = InputType(1)
    public static var PHONE_NUMBER: InputType = InputType(2)
    public static var EMAIL: InputType = InputType(3)
    public static var PASSWORD: InputType = InputType(4)
    public static var NUMBER_PASSWORD: InputType = InputType(8)
    public static var SCREEN_LOCK_PASSWORD: InputType = InputType(9)
    public static var USER_NAME: InputType = InputType(10)
    public static var NEW_PASSWORD: InputType = InputType(11)
    public static var NUMBER_DECIMAL: InputType = InputType(12)
    public static var URL: InputType = InputType(13)
    public static var ONE_TIME_CODE: InputType = InputType(14)
    public var value: Int32
    InputType(arg0: Int32) {
        value = arg0
    }
}
public open class ContentType {
    public static var USER_NAME: ContentType = ContentType(0)
    public static var PASSWORD: ContentType = ContentType(1)
    public static var NEW_PASSWORD: ContentType = ContentType(2)
    public static var FULL_STREET_ADDRESS: ContentType = ContentType(3)
    public static var HOUSE_NUMBER: ContentType = ContentType(4)
    public static var DISTRICT_ADDRESS: ContentType = ContentType(5)
    public static var CITY_ADDRESS: ContentType = ContentType(6)
    public static var PROVINCE_ADDRESS: ContentType = ContentType(7)
    public static var COUNTRY_ADDRESS: ContentType = ContentType(8)
    public static var PERSON_FULL_NAME: ContentType = ContentType(9)
    public static var PERSON_LAST_NAME: ContentType = ContentType(10)
    public static var PERSON_FIRST_NAME: ContentType = ContentType(11)
    public static var PHONE_NUMBER: ContentType = ContentType(12)
    public static var PHONE_COUNTRY_CODE: ContentType = ContentType(13)
    public static var FULL_PHONE_NUMBER: ContentType = ContentType(14)
    public static var EMAIL_ADDRESS: ContentType = ContentType(15)
    public static var BANK_CARD_NUMBER: ContentType = ContentType(16)
    public static var ID_CARD_NUMBER: ContentType = ContentType(17)
    public static var NICKNAME: ContentType = ContentType(23)
    public static var DETAIL_INFO_WITHOUT_STREET: ContentType = ContentType(24)
    public static var FORMAT_ADDRESS: ContentType = ContentType(25)
    public static var PASSPORT_NUMBER: ContentType = ContentType(26)
    public static var VALIDITY: ContentType = ContentType(27)
    public static var ISSUE_AT: ContentType = ContentType(28)
    public static var ORGANIZATION: ContentType = ContentType(29)
    public static var TAX_ID: ContentType = ContentType(30)
    public static var ADDRESS_CITY_AND_STATE: ContentType = ContentType(31)
    public static var FLIGHT_NUMBER: ContentType = ContentType(32)
    public static var LICENSE_NUMBER: ContentType = ContentType(33)
    public static var LICENSE_FILE_NUMBER: ContentType = ContentType(34)
    public static var LICENSE_PLATE: ContentType = ContentType(35)
    public static var ENGINE_NUMBER: ContentType = ContentType(36)
    public static var LICENSE_CHASSIS_NUMBER: ContentType = ContentType(37)
    public var value: Int32
    ContentType(arg0: Int32) {
        value = arg0
    }
}
public open class EnterKeyType {
    public static var GO: EnterKeyType = EnterKeyType(2)
    public static var SEARCH: EnterKeyType = EnterKeyType(3)
    public static var SEND: EnterKeyType = EnterKeyType(4)
    public static var NEXT: EnterKeyType = EnterKeyType(5)
    public static var DONE: EnterKeyType = EnterKeyType(6)
    public static var PREVIOUS: EnterKeyType = EnterKeyType(7)
    public static var NEW_LINE: EnterKeyType = EnterKeyType(8)
    public var value: Int32
    EnterKeyType(arg0: Int32) {
        value = arg0
    }
}
public open class TextInputStyle {
    public static var DEFAULT: TextInputStyle = TextInputStyle(0)
    public static var INLINE: TextInputStyle = TextInputStyle(1)
    public var value: Int32
    TextInputStyle(arg0: Int32) {
        value = arg0
    }
}
public type OnSubmitCallback = (enterKey: EnterKeyType, event: SubmitEvent) -> Unit
public type OnTextSelectionChangeCallback = (selectionStart: Float64, selectionEnd: Float64) -> Unit
public type OnContentScrollCallback = (totalOffsetX: Float64, totalOffsetY: Float64) -> Unit
public type OnPasteCallback = (content: String, event: PasteEvent) -> Unit
public open class Union_TextInputStyle_TextContentStyle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<TextInputStyle> = None<TextInputStyle>
    init(param: TextInputStyle) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): TextInputStyle {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_TextInputStyle_TextContentStyle") }
    }
    private var value1: Option<TextContentStyle> = None<TextContentStyle>
    init(param: TextContentStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): TextContentStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_TextInputStyle_TextContentStyle") }
    }
}
public open class Union_ResourceColor_UnderlineColor {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_UnderlineColor") }
    }
    private var value1: Option<UnderlineColor> = None<UnderlineColor>
    init(param: UnderlineColor) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): UnderlineColor {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_UnderlineColor") }
    }
}
public open class Type_TextPickerOptions_range {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<String>> = None<ArrayList<String>>
    init(param: ArrayList<String>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<String> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Type_TextPickerOptions_range") }
    }
    private var value1: Option<ArrayList<ArrayList<String>>> = None<ArrayList<ArrayList<String>>>
    init(param: ArrayList<ArrayList<String>>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<ArrayList<String>> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Type_TextPickerOptions_range") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Type_TextPickerOptions_range") }
    }
    private var value3: Option<ArrayList<TextPickerRangeContent>> = None<ArrayList<TextPickerRangeContent>>
    init(param: ArrayList<TextPickerRangeContent>) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ArrayList<TextPickerRangeContent> {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Type_TextPickerOptions_range") }
    }
    private var value4: Option<ArrayList<TextCascadePickerRangeContent>> = None<ArrayList<TextCascadePickerRangeContent>>
    init(param: ArrayList<TextCascadePickerRangeContent>) {
        value4 = param
        selector = 4
    }
    public open func getValue4(): ArrayList<TextCascadePickerRangeContent> {
        if (let Some(value4) <- value4) {
            return value4
        } else { throw Exception("Wrong selector value inside Union Type_TextPickerOptions_range") }
    }
}
public open class Union_ResourceStr_Array_ResourceStr_Bindable_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Array_ResourceStr_Bindable_Bindable") }
    }
    private var value1: Option<ArrayList<ResourceStr>> = None<ArrayList<ResourceStr>>
    init(param: ArrayList<ResourceStr>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<ResourceStr> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Array_ResourceStr_Bindable_Bindable") }
    }
    private var value2: Option<Any> = None<Any>
    init(param: Any) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Any {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Array_ResourceStr_Bindable_Bindable") }
    }
    private var value3: Option<Any> = None<Any>
    init(param: Any) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Any {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_Array_ResourceStr_Bindable_Bindable") }
    }
}
public open class Union_Number_Array_Number_Bindable_Bindable {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number_Bindable_Bindable") }
    }
    private var value1: Option<ArrayList<Float64>> = None<ArrayList<Float64>>
    init(param: ArrayList<Float64>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<Float64> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number_Bindable_Bindable") }
    }
    private var value2: Option<Any> = None<Any>
    init(param: Any) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Any {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number_Bindable_Bindable") }
    }
    private var value3: Option<Any> = None<Any>
    init(param: Any) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Any {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number_Bindable_Bindable") }
    }
}
public type TextPickerScrollStopCallback = (value: Union_String_Array_String, index: Union_Number_Array_Number) -> Unit
public type OnTextPickerChangeCallback = (selectItem: Union_String_Array_String, index: Union_Number_Array_Number) -> Unit
public type TextPickerEnterSelectedAreaCallback = (value: Union_String_Array_String, index: Union_Number_Array_Number) -> Unit
public open class TimePickerFormat {
    public static var HOUR_MINUTE: TimePickerFormat = TimePickerFormat(0)
    public static var HOUR_MINUTE_SECOND: TimePickerFormat = TimePickerFormat(1)
    public var value: Int32
    TimePickerFormat(arg0: Int32) {
        value = arg0
    }
}
public type DateTimeOptions = Any
public type OnTimePickerChangeCallback = (result: TimePickerResult) -> Unit
public open class ToggleType {
    public static var CHECKBOX: ToggleType = ToggleType(0)
    public static var SWITCH: ToggleType = ToggleType(1)
    public static var BUTTON: ToggleType = ToggleType(2)
    public var value: Int32
    ToggleType(arg0: Int32) {
        value = arg0
    }
}
public open class ToolBarItemPlacement {
    public static var TOP_BAR_LEADING: ToolBarItemPlacement = ToolBarItemPlacement(0)
    public static var TOP_BAR_TRAILING: ToolBarItemPlacement = ToolBarItemPlacement(1)
    public var value: Int32
    ToolBarItemPlacement(arg0: Int32) {
        value = arg0
    }
}
public open class DpiFollowStrategy {
    public static var FOLLOW_HOST_DPI: DpiFollowStrategy = DpiFollowStrategy(0)
    public static var FOLLOW_UI_EXTENSION_ABILITY_DPI: DpiFollowStrategy = DpiFollowStrategy(1)
    public var value: Int32
    DpiFollowStrategy(arg0: Int32) {
        value = arg0
    }
}
public open class WindowModeFollowStrategy {
    public static var FOLLOW_HOST_WINDOW_MODE: WindowModeFollowStrategy = WindowModeFollowStrategy(0)
    public static var FOLLOW_UI_EXTENSION_ABILITY_WINDOW_MODE: WindowModeFollowStrategy = WindowModeFollowStrategy(1)
    public var value: Int32
    WindowModeFollowStrategy(arg0: Int32) {
        value = arg0
    }
}
public type ReceiveCallback = ((parameter: HashMap<String, Any>) -> Unit)
public open class SeekMode {
    public static var PREVIOUS_KEYFRAME: SeekMode = SeekMode(0)
    public static var NEXT_KEYFRAME: SeekMode = SeekMode(1)
    public static var CLOSEST_KEYFRAME: SeekMode = SeekMode(2)
    public static var ACCURATE: SeekMode = SeekMode(3)
    public var value: Int32
    SeekMode(arg0: Int32) {
        value = arg0
    }
}
public open class PlaybackSpeed {
    public static var SPEED_FORWARD_0_75_X: PlaybackSpeed = PlaybackSpeed(0)
    public static var SPEED_FORWARD_1_00_X: PlaybackSpeed = PlaybackSpeed(1)
    public static var SPEED_FORWARD_1_25_X: PlaybackSpeed = PlaybackSpeed(2)
    public static var SPEED_FORWARD_1_75_X: PlaybackSpeed = PlaybackSpeed(3)
    public static var SPEED_FORWARD_2_00_X: PlaybackSpeed = PlaybackSpeed(4)
    public var value: Int32
    PlaybackSpeed(arg0: Int32) {
        value = arg0
    }
}
public open class Union_Number_String_PlaybackSpeed {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_PlaybackSpeed") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_PlaybackSpeed") }
    }
    private var value2: Option<PlaybackSpeed> = None<PlaybackSpeed>
    init(param: PlaybackSpeed) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): PlaybackSpeed {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_PlaybackSpeed") }
    }
}
public open class Union_VoidCallback_ {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<VoidCallback> = None<VoidCallback>
    init(param: VoidCallback) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): VoidCallback {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_VoidCallback_") }
    }
    private var value1: Option<Any> = None<Any>
    init(param: Any) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Any {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_VoidCallback_") }
    }
}
public type GetItemMainSizeByIndex = (index: Float64) -> Float64
public open class Union_Margin_Dimension {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Margin> = None<Margin>
    init(param: Margin) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Margin {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Margin_Dimension") }
    }
    private var value1: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Dimension {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Margin_Dimension") }
    }
}
public open class WaterFlowLayoutMode {
    public static var ALWAYS_TOP_DOWN: WaterFlowLayoutMode = WaterFlowLayoutMode(0)
    public static var SLIDING_WINDOW: WaterFlowLayoutMode = WaterFlowLayoutMode(1)
    public var value: Int32
    WaterFlowLayoutMode(arg0: Int32) {
        value = arg0
    }
}
public type OnWaterFlowScrollIndexCallback = (first: Float64, last: Float64) -> Unit
public type WebviewController = Any
public type OnNavigationEntryCommittedCallback = (loadCommittedDetails: LoadCommittedDetails) -> Unit
public type OnSslErrorEventCallback = (sslErrorEvent: SslErrorEvent) -> Unit
public type OnLargestContentfulPaintCallback = (largestContentfulPaint: LargestContentfulPaint) -> Unit
public type OnFirstMeaningfulPaintCallback = (firstMeaningfulPaint: FirstMeaningfulPaint) -> Unit
public type OnOverrideUrlLoadingCallback = (webResourceRequest: WebResourceRequest) -> Bool
public type OnIntelligentTrackingPreventionCallback = (details: IntelligentTrackingPreventionDetails) -> Unit
public type OnNativeEmbedVisibilityChangeCallback = (nativeEmbedVisibilityInfo: NativeEmbedVisibilityInfo) -> Unit
public type OnRenderProcessNotRespondingCallback = (data: RenderProcessNotRespondingData) -> Unit
public type OnRenderProcessRespondingCallback = () -> Unit
public type OnViewportFitChangedCallback = (viewportFit: ViewportFit) -> Unit
public type OnAdsBlockedCallback = (details: AdsBlockedDetails) -> Unit
public type WebKeyboardCallback = (keyboardCallbackInfo: WebKeyboardCallbackInfo) -> WebKeyboardOptions
public open class MessageLevel {
    public static var DEBUG: MessageLevel = MessageLevel(0)
    public static var ERROR: MessageLevel = MessageLevel(1)
    public static var INFO: MessageLevel = MessageLevel(2)
    public static var LOG: MessageLevel = MessageLevel(3)
    public static var WARN: MessageLevel = MessageLevel(4)
    public var value: Int32
    MessageLevel(arg0: Int32) {
        value = arg0
    }
}
public open class MixedMode {
    public static var ALL: MixedMode = MixedMode(0)
    public static var COMPATIBLE: MixedMode = MixedMode(1)
    public static var NONE: MixedMode = MixedMode(2)
    public var value: Int32
    MixedMode(arg0: Int32) {
        value = arg0
    }
}
public type OnSafeBrowsingCheckResultCallback = (threatType: ThreatType) -> Unit
public open class HitTestType {
    public static var EDIT_TEXT: HitTestType = HitTestType(0)
    public static var EMAIL: HitTestType = HitTestType(1)
    public static var HTTP_ANCHOR: HitTestType = HitTestType(2)
    public static var HTTP_ANCHOR_IMG: HitTestType = HitTestType(3)
    public static var IMG: HitTestType = HitTestType(4)
    public static var MAP: HitTestType = HitTestType(5)
    public static var PHONE: HitTestType = HitTestType(6)
    public static var UNKNOWN: HitTestType = HitTestType(7)
    public var value: Int32
    HitTestType(arg0: Int32) {
        value = arg0
    }
}
public open class CacheMode {
    public static var DEFAULT: CacheMode = CacheMode(0)
    public static var NONE: CacheMode = CacheMode(1)
    public static var ONLINE: CacheMode = CacheMode(2)
    public static var ONLY: CacheMode = CacheMode(3)
    public var value: Int32
    CacheMode(arg0: Int32) {
        value = arg0
    }
}
public open class OverScrollMode {
    public static var NEVER: OverScrollMode = OverScrollMode(0)
    public static var ALWAYS: OverScrollMode = OverScrollMode(1)
    public var value: Int32
    OverScrollMode(arg0: Int32) {
        value = arg0
    }
}
public open class BlurOnKeyboardHideMode {
    public static var SILENT: BlurOnKeyboardHideMode = BlurOnKeyboardHideMode(0)
    public static var BLUR: BlurOnKeyboardHideMode = BlurOnKeyboardHideMode(1)
    public var value: Int32
    BlurOnKeyboardHideMode(arg0: Int32) {
        value = arg0
    }
}
public open class WebDarkMode {
    public static var OFF: WebDarkMode = WebDarkMode(0)
    public static var ON: WebDarkMode = WebDarkMode(1)
    public static var AUTO: WebDarkMode = WebDarkMode(2)
    public var value: Int32
    WebDarkMode(arg0: Int32) {
        value = arg0
    }
}
public open class WebCaptureMode {
    public static var HOME_SCREEN: WebCaptureMode = WebCaptureMode(0)
    public var value: Int32
    WebCaptureMode(arg0: Int32) {
        value = arg0
    }
}
public open class ThreatType {
    public static var THREAT_ILLEGAL: ThreatType = ThreatType(0)
    public static var THREAT_FRAUD: ThreatType = ThreatType(1)
    public static var THREAT_RISK: ThreatType = ThreatType(2)
    public static var THREAT_WARNING: ThreatType = ThreatType(3)
    public var value: Int32
    ThreatType(arg0: Int32) {
        value = arg0
    }
}
public type OnFullScreenEnterCallback = (event: FullScreenEnterEvent) -> Unit
public type MouseInfoCallback = (event: NativeEmbedMouseInfo) -> Unit
public open class RenderExitReason {
    public static var PROCESS_ABNORMAL_TERMINATION: RenderExitReason = RenderExitReason(0)
    public static var PROCESS_WAS_KILLED: RenderExitReason = RenderExitReason(1)
    public static var PROCESS_CRASHED: RenderExitReason = RenderExitReason(2)
    public static var PROCESS_OOM: RenderExitReason = RenderExitReason(3)
    public static var PROCESS_EXIT_UNKNOWN: RenderExitReason = RenderExitReason(4)
    public var value: Int32
    RenderExitReason(arg0: Int32) {
        value = arg0
    }
}
public type OnContextMenuHideCallback = () -> Unit
public open class SslError {
    public static var INVALID: SslError = SslError(0)
    public static var HOST_MISMATCH: SslError = SslError(1)
    public static var DATE_INVALID: SslError = SslError(2)
    public static var UNTRUSTED: SslError = SslError(3)
    public var value: Int32
    SslError(arg0: Int32) {
        value = arg0
    }
}
public open class FileSelectorMode {
    public static var FILE_OPEN_MODE: FileSelectorMode = FileSelectorMode(0)
    public static var FILE_OPEN_MULTIPLE_MODE: FileSelectorMode = FileSelectorMode(1)
    public static var FILE_OPEN_FOLDER_MODE: FileSelectorMode = FileSelectorMode(2)
    public static var FILE_SAVE_MODE: FileSelectorMode = FileSelectorMode(3)
    public var value: Int32
    FileSelectorMode(arg0: Int32) {
        value = arg0
    }
}
public open class WebLayoutMode {
    public static var NONE: WebLayoutMode = WebLayoutMode(0)
    public static var FIT_CONTENT: WebLayoutMode = WebLayoutMode(1)
    public var value: Int32
    WebLayoutMode(arg0: Int32) {
        value = arg0
    }
}
public open class RenderProcessNotRespondingReason {
    public static var INPUT_TIMEOUT: RenderProcessNotRespondingReason = RenderProcessNotRespondingReason(0)
    public static var NAVIGATION_COMMIT_TIMEOUT: RenderProcessNotRespondingReason = RenderProcessNotRespondingReason(1)
    public var value: Int32
    RenderProcessNotRespondingReason(arg0: Int32) {
        value = arg0
    }
}
public open class ProtectedResourceType {
    public static var MIDI_SYSEX: ProtectedResourceType = ProtectedResourceType(0)
    public static var VIDEO_CAPTURE: ProtectedResourceType = ProtectedResourceType(1)
    public static var AUDIO_CAPTURE: ProtectedResourceType = ProtectedResourceType(2)
    public static var SENSOR: ProtectedResourceType = ProtectedResourceType(3)
    public var value: Int32
    ProtectedResourceType(arg0: Int32) {
        value = arg0
    }
}
public open class ContextMenuSourceType {
    public static var NONE: ContextMenuSourceType = ContextMenuSourceType(0)
    public static var MOUSE: ContextMenuSourceType = ContextMenuSourceType(1)
    public static var LONG_PRESS: ContextMenuSourceType = ContextMenuSourceType(2)
    public var value: Int32
    ContextMenuSourceType(arg0: Int32) {
        value = arg0
    }
}
public open class ContextMenuMediaType {
    public static var NONE: ContextMenuMediaType = ContextMenuMediaType(0)
    public static var IMAGE: ContextMenuMediaType = ContextMenuMediaType(1)
    public static var VIDEO: ContextMenuMediaType = ContextMenuMediaType(2)
    public static var AUDIO: ContextMenuMediaType = ContextMenuMediaType(3)
    public var value: Int32
    ContextMenuMediaType(arg0: Int32) {
        value = arg0
    }
}
public open class ContextMenuInputFieldType {
    public static var NONE: ContextMenuInputFieldType = ContextMenuInputFieldType(0)
    public static var PLAIN_TEXT: ContextMenuInputFieldType = ContextMenuInputFieldType(1)
    public static var PASSWORD: ContextMenuInputFieldType = ContextMenuInputFieldType(2)
    public static var NUMBER: ContextMenuInputFieldType = ContextMenuInputFieldType(3)
    public static var TELEPHONE: ContextMenuInputFieldType = ContextMenuInputFieldType(4)
    public static var OTHER: ContextMenuInputFieldType = ContextMenuInputFieldType(5)
    public var value: Int32
    ContextMenuInputFieldType(arg0: Int32) {
        value = arg0
    }
}
public open class NativeEmbedStatus {
    public static var CREATE: NativeEmbedStatus = NativeEmbedStatus(0)
    public static var UPDATE: NativeEmbedStatus = NativeEmbedStatus(1)
    public static var DESTROY: NativeEmbedStatus = NativeEmbedStatus(2)
    public static var ENTER_BFCACHE: NativeEmbedStatus = NativeEmbedStatus(3)
    public static var LEAVE_BFCACHE: NativeEmbedStatus = NativeEmbedStatus(4)
    public var value: Int32
    NativeEmbedStatus(arg0: Int32) {
        value = arg0
    }
}
public open class ContextMenuEditStateFlags {
    public static var NONE: ContextMenuEditStateFlags = ContextMenuEditStateFlags(0)
    public static var CAN_CUT: ContextMenuEditStateFlags = ContextMenuEditStateFlags(1)
    public static var CAN_COPY: ContextMenuEditStateFlags = ContextMenuEditStateFlags(2)
    public static var CAN_PASTE: ContextMenuEditStateFlags = ContextMenuEditStateFlags(4)
    public static var CAN_SELECT_ALL: ContextMenuEditStateFlags = ContextMenuEditStateFlags(8)
    public var value: Int32
    ContextMenuEditStateFlags(arg0: Int32) {
        value = arg0
    }
}
public open class WebNavigationType {
    public static var UNKNOWN: WebNavigationType = WebNavigationType(0)
    public static var MAIN_FRAME_NEW_ENTRY: WebNavigationType = WebNavigationType(1)
    public static var MAIN_FRAME_EXISTING_ENTRY: WebNavigationType = WebNavigationType(2)
    public static var NAVIGATION_TYPE_NEW_SUBFRAME: WebNavigationType = WebNavigationType(4)
    public static var NAVIGATION_TYPE_AUTO_SUBFRAME: WebNavigationType = WebNavigationType(5)
    public var value: Int32
    WebNavigationType(arg0: Int32) {
        value = arg0
    }
}
public open class RenderMode {
    public static var ASYNC_RENDER: RenderMode = RenderMode(0)
    public static var SYNC_RENDER: RenderMode = RenderMode(1)
    public var value: Int32
    RenderMode(arg0: Int32) {
        value = arg0
    }
}
public open class ViewportFit {
    public static var AUTO: ViewportFit = ViewportFit(0)
    public static var CONTAINS: ViewportFit = ViewportFit(1)
    public static var COVER: ViewportFit = ViewportFit(2)
    public var value: Int32
    ViewportFit(arg0: Int32) {
        value = arg0
    }
}
public open class Union_String_Number_Buffer_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Buffer_Resource") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Buffer_Resource") }
    }
    private var value2: Option<Array<UInt8>> = None<Array<UInt8>>
    init(param: Array<UInt8>) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Array<UInt8> {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Buffer_Resource") }
    }
    private var value3: Option<Resource> = None<Resource>
    init(param: Resource) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Resource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Buffer_Resource") }
    }
}
public open class Union_String_Number_Resource_Buffer {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Resource_Buffer") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Resource_Buffer") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Resource_Buffer") }
    }
    private var value3: Option<Array<UInt8>> = None<Array<UInt8>>
    init(param: Array<UInt8>) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Array<UInt8> {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Resource_Buffer") }
    }
}
public open class Union_WebController_WebviewController {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<WebController> = None<WebController>
    init(param: WebController) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): WebController {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_WebController_WebviewController") }
    }
    private var value1: Option<WebviewController> = None<WebviewController>
    init(param: WebviewController) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): WebviewController {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_WebController_WebviewController") }
    }
}
public open class WebKeyboardAvoidMode {
    public static var RESIZE_VISUAL: WebKeyboardAvoidMode = WebKeyboardAvoidMode(0)
    public static var RESIZE_CONTENT: WebKeyboardAvoidMode = WebKeyboardAvoidMode(1)
    public static var OVERLAYS_CONTENT: WebKeyboardAvoidMode = WebKeyboardAvoidMode(2)
    public var value: Int32
    WebKeyboardAvoidMode(arg0: Int32) {
        value = arg0
    }
}
public open class WebElementType {
    public static var IMAGE: WebElementType = WebElementType(1)
    public static var LINK: WebElementType = WebElementType(2)
    public var value: Int32
    WebElementType(arg0: Int32) {
        value = arg0
    }
}
public open class WebResponseType {
    public static var LONG_PRESS: WebResponseType = WebResponseType(1)
    public var value: Int32
    WebResponseType(arg0: Int32) {
        value = arg0
    }
}
public open class WebBypassVsyncCondition {
    public static var NONE: WebBypassVsyncCondition = WebBypassVsyncCondition(0)
    public static var SCROLLBY_FROM_ZERO_OFFSET: WebBypassVsyncCondition = WebBypassVsyncCondition(1)
    public var value: Int32
    WebBypassVsyncCondition(arg0: Int32) {
        value = arg0
    }
}
public open class AudioSessionType {
    public static var AMBIENT: AudioSessionType = AudioSessionType(3)
    public var value: Int32
    AudioSessionType(arg0: Int32) {
        value = arg0
    }
}
public open class Union_String_WebResourceRequest {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_WebResourceRequest") }
    }
    private var value1: Option<WebResourceRequest> = None<WebResourceRequest>
    init(param: WebResourceRequest) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): WebResourceRequest {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_WebResourceRequest") }
    }
}
public open class Union_NestedScrollOptions_NestedScrollOptionsExt {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<NestedScrollOptions> = None<NestedScrollOptions>
    init(param: NestedScrollOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): NestedScrollOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_NestedScrollOptions_NestedScrollOptionsExt") }
    }
    private var value1: Option<NestedScrollOptionsExt> = None<NestedScrollOptionsExt>
    init(param: NestedScrollOptionsExt) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): NestedScrollOptionsExt {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_NestedScrollOptions_NestedScrollOptionsExt") }
    }
}
public open class GestureFocusMode {
    public static var DEFAULT: GestureFocusMode = GestureFocusMode(0)
    public static var GESTURE_TAP_AND_LONG_PRESS: GestureFocusMode = GestureFocusMode(1)
    public var value: Int32
    GestureFocusMode(arg0: Int32) {
        value = arg0
    }
}
public type CustomTheme = Any
public type WithThemeInterface = (options: WithThemeOptions) -> WithThemeAttribute
public type OnNativeLoadCallback = (event: ?Any) -> Unit
