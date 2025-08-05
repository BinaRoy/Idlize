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
public interface TouchObjectInterfaces <:  {
    public mut open prop type_: TouchType
    public mut open prop id: Float64
    public mut open prop globalDisplayX: Option<Float64>
    public mut open prop globalDisplayY: Option<Float64>
    public mut open prop displayX: Float64
    public mut open prop displayY: Float64
    public mut open prop windowX: Float64
    public mut open prop windowY: Float64
    public mut open prop screenX: Float64
    public mut open prop screenY: Float64
    public mut open prop x: Float64
    public mut open prop y: Float64
    public mut open prop hand: Option<InteractionHand>
    public mut open prop pressedTime: Option<Float64>
    public mut open prop pressure: Option<Float64>
    public mut open prop width: Option<Float64>
    public mut open prop height: Option<Float64>
}
public open class TouchObject <: TouchObjectInterfaces {
    private var type_container: TouchType
    public mut open prop type_: TouchType
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var id_container: Float64
    public mut open prop id: Float64
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var globalDisplayX_container: Option<Float64>
    public mut open prop globalDisplayX: Option<Float64>
    {
        get() {
            return globalDisplayX_container
        }
        set(globalDisplayX) {
            globalDisplayX_container = globalDisplayX
        }
    }
    private var globalDisplayY_container: Option<Float64>
    public mut open prop globalDisplayY: Option<Float64>
    {
        get() {
            return globalDisplayY_container
        }
        set(globalDisplayY) {
            globalDisplayY_container = globalDisplayY
        }
    }
    private var displayX_container: Float64
    public mut open prop displayX: Float64
    {
        get() {
            return displayX_container
        }
        set(displayX) {
            displayX_container = displayX
        }
    }
    private var displayY_container: Float64
    public mut open prop displayY: Float64
    {
        get() {
            return displayY_container
        }
        set(displayY) {
            displayY_container = displayY
        }
    }
    private var windowX_container: Float64
    public mut open prop windowX: Float64
    {
        get() {
            return windowX_container
        }
        set(windowX) {
            windowX_container = windowX
        }
    }
    private var windowY_container: Float64
    public mut open prop windowY: Float64
    {
        get() {
            return windowY_container
        }
        set(windowY) {
            windowY_container = windowY
        }
    }
    private var screenX_container: Float64
    public mut open prop screenX: Float64
    {
        get() {
            return screenX_container
        }
        set(screenX) {
            screenX_container = screenX
        }
    }
    private var screenY_container: Float64
    public mut open prop screenY: Float64
    {
        get() {
            return screenY_container
        }
        set(screenY) {
            screenY_container = screenY
        }
    }
    private var x_container: Float64
    public mut open prop x: Float64
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Float64
    public mut open prop y: Float64
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var hand_container: Option<InteractionHand>
    public mut open prop hand: Option<InteractionHand>
    {
        get() {
            return hand_container
        }
        set(hand) {
            hand_container = hand
        }
    }
    private var pressedTime_container: Option<Float64>
    public mut open prop pressedTime: Option<Float64>
    {
        get() {
            return pressedTime_container
        }
        set(pressedTime) {
            pressedTime_container = pressedTime
        }
    }
    private var pressure_container: Option<Float64>
    public mut open prop pressure: Option<Float64>
    {
        get() {
            return pressure_container
        }
        set(pressure) {
            pressure_container = pressure
        }
    }
    private var width_container: Option<Float64>
    public mut open prop width: Option<Float64>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Float64>
    public mut open prop height: Option<Float64>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    TouchObject(type_: TouchType, id: Float64, globalDisplayX: Option<Float64>, globalDisplayY: Option<Float64>, displayX: Float64, displayY: Float64, windowX: Float64, windowY: Float64, screenX: Float64, screenY: Float64, x: Float64, y: Float64, hand: Option<InteractionHand>, pressedTime: Option<Float64>, pressure: Option<Float64>, width: Option<Float64>, height: Option<Float64>) {
        this.type_container = type_
        this.id_container = id
        this.globalDisplayX_container = globalDisplayX
        this.globalDisplayY_container = globalDisplayY
        this.displayX_container = displayX
        this.displayY_container = displayY
        this.windowX_container = windowX
        this.windowY_container = windowY
        this.screenX_container = screenX
        this.screenY_container = screenY
        this.x_container = x
        this.y_container = y
        this.hand_container = hand
        this.pressedTime_container = pressedTime
        this.pressure_container = pressure
        this.width_container = width
        this.height_container = height
    }
}
public open class TouchObject_serializer {
    public static func write(buffer: SerializerBase, value: TouchObject): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        valueSerializer.writeInt32(valueHolderForType.value);
        let valueHolderForId = value.id
        valueSerializer.writeNumber(valueHolderForId);
        let valueHolderForGlobalDisplayX = value.globalDisplayX
        if (valueHolderForGlobalDisplayX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGlobalDisplayXTmpValue = valueHolderForGlobalDisplayX
            valueSerializer.writeNumber(valueHolderForGlobalDisplayXTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForGlobalDisplayY = value.globalDisplayY
        if (valueHolderForGlobalDisplayY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGlobalDisplayYTmpValue = valueHolderForGlobalDisplayY
            valueSerializer.writeNumber(valueHolderForGlobalDisplayYTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDisplayX = value.displayX
        valueSerializer.writeNumber(valueHolderForDisplayX);
        let valueHolderForDisplayY = value.displayY
        valueSerializer.writeNumber(valueHolderForDisplayY);
        let valueHolderForWindowX = value.windowX
        valueSerializer.writeNumber(valueHolderForWindowX);
        let valueHolderForWindowY = value.windowY
        valueSerializer.writeNumber(valueHolderForWindowY);
        let valueHolderForScreenX = value.screenX
        valueSerializer.writeNumber(valueHolderForScreenX);
        let valueHolderForScreenY = value.screenY
        valueSerializer.writeNumber(valueHolderForScreenY);
        let valueHolderForX = value.x
        valueSerializer.writeNumber(valueHolderForX);
        let valueHolderForY = value.y
        valueSerializer.writeNumber(valueHolderForY);
        let valueHolderForHand = value.hand
        if (valueHolderForHand.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHandTmpValue = valueHolderForHand
            valueSerializer.writeInt32(valueHolderForHandTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPressedTime = value.pressedTime
        if (valueHolderForPressedTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPressedTimeTmpValue = valueHolderForPressedTime
            valueSerializer.writeNumber(valueHolderForPressedTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPressure = value.pressure
        if (valueHolderForPressure.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPressureTmpValue = valueHolderForPressure
            valueSerializer.writeNumber(valueHolderForPressureTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            valueSerializer.writeNumber(valueHolderForWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            valueSerializer.writeNumber(valueHolderForHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TouchObject {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpResult: TouchType = TouchType(valueDeserializer.readInt32())
        let idTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let globalDisplayXTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var globalDisplayXTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(globalDisplayXTmpBuf_runtimeType))) {
            globalDisplayXTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let globalDisplayXTmpResult: Option<Float64> = globalDisplayXTmpBuf
        let globalDisplayYTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var globalDisplayYTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(globalDisplayYTmpBuf_runtimeType))) {
            globalDisplayYTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let globalDisplayYTmpResult: Option<Float64> = globalDisplayYTmpBuf
        let displayXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let displayYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let windowXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let windowYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let screenXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let screenYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let xTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let handTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var handTmpBuf: Option<InteractionHand> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(handTmpBuf_runtimeType))) {
            handTmpBuf = InteractionHand(valueDeserializer.readInt32())
        }
        let handTmpResult: Option<InteractionHand> = handTmpBuf
        let pressedTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var pressedTimeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(pressedTimeTmpBuf_runtimeType))) {
            pressedTimeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let pressedTimeTmpResult: Option<Float64> = pressedTimeTmpBuf
        let pressureTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var pressureTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(pressureTmpBuf_runtimeType))) {
            pressureTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let pressureTmpResult: Option<Float64> = pressureTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            widthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Float64> = widthTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            heightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Float64> = heightTmpBuf
        var value: TouchObject = TouchObject(typeTmpResult, idTmpResult, globalDisplayXTmpResult, globalDisplayYTmpResult, displayXTmpResult, displayYTmpResult, windowXTmpResult, windowYTmpResult, screenXTmpResult, screenYTmpResult, xTmpResult, yTmpResult, handTmpResult, pressedTimeTmpResult, pressureTmpResult, widthTmpResult, heightTmpResult)
        return value
    }
}
