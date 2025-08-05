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
public interface MouseEvent {
    public mut open prop button: MouseButton
    public mut open prop action: MouseAction
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
    public mut open prop stopPropagation: (() -> Unit)
    public mut open prop rawDeltaX: Option<Float64>
    public mut open prop rawDeltaY: Option<Float64>
    public mut open prop pressedButtons: Option<ArrayList<MouseButton>>
}
public open class MouseEventInternal <: BaseEventInternal & MaterializedBase & MouseEvent {
    public mut open prop button: MouseButton
    {
        get() {
            return this.getButton()
        }
        set(button) {
            this.setButton(button)
        }
    }
    public mut open prop action: MouseAction
    {
        get() {
            return this.getAction()
        }
        set(action) {
            this.setAction(action)
        }
    }
    public mut open prop globalDisplayX: Option<Float64>
    {
        get() {
            return this.getGlobalDisplayX()
        }
        set(globalDisplayX) {
            let globalDisplayX_NonNull = match (globalDisplayX as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setGlobalDisplayX(globalDisplayX_NonNull)
        }
    }
    public mut open prop globalDisplayY: Option<Float64>
    {
        get() {
            return this.getGlobalDisplayY()
        }
        set(globalDisplayY) {
            let globalDisplayY_NonNull = match (globalDisplayY as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setGlobalDisplayY(globalDisplayY_NonNull)
        }
    }
    public mut open prop displayX: Float64
    {
        get() {
            return this.getDisplayX()
        }
        set(displayX) {
            this.setDisplayX(displayX)
        }
    }
    public mut open prop displayY: Float64
    {
        get() {
            return this.getDisplayY()
        }
        set(displayY) {
            this.setDisplayY(displayY)
        }
    }
    public mut open prop windowX: Float64
    {
        get() {
            return this.getWindowX()
        }
        set(windowX) {
            this.setWindowX(windowX)
        }
    }
    public mut open prop windowY: Float64
    {
        get() {
            return this.getWindowY()
        }
        set(windowY) {
            this.setWindowY(windowY)
        }
    }
    public mut open prop screenX: Float64
    {
        get() {
            return this.getScreenX()
        }
        set(screenX) {
            this.setScreenX(screenX)
        }
    }
    public mut open prop screenY: Float64
    {
        get() {
            return this.getScreenY()
        }
        set(screenY) {
            this.setScreenY(screenY)
        }
    }
    public mut open prop x: Float64
    {
        get() {
            return this.getX()
        }
        set(x) {
            this.setX(x)
        }
    }
    public mut open prop y: Float64
    {
        get() {
            return this.getY()
        }
        set(y) {
            this.setY(y)
        }
    }
    public mut open prop stopPropagation: (() -> Unit)
    {
        get() {
            return this.getStopPropagation()
        }
        set(stopPropagation) {
            this.setStopPropagation(stopPropagation)
        }
    }
    public mut open prop rawDeltaX: Option<Float64>
    {
        get() {
            return this.getRawDeltaX()
        }
        set(rawDeltaX) {
            let rawDeltaX_NonNull = match (rawDeltaX as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setRawDeltaX(rawDeltaX_NonNull)
        }
    }
    public mut open prop rawDeltaY: Option<Float64>
    {
        get() {
            return this.getRawDeltaY()
        }
        set(rawDeltaY) {
            let rawDeltaY_NonNull = match (rawDeltaY as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setRawDeltaY(rawDeltaY_NonNull)
        }
    }
    public mut open prop pressedButtons: Option<ArrayList<MouseButton>>
    {
        get() {
            return this.getPressedButtons()
        }
        set(pressedButtons) {
            let pressedButtons_NonNull = match (pressedButtons as ArrayList<MouseButton>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setPressedButtons(pressedButtons_NonNull)
        }
    }
    MouseEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    MouseEventInternal() {
        super(MouseEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._MouseEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): MouseEventInternal {
        return MouseEventInternal(ptr)
    }
    private func getButton(): MouseButton {
        return this.getButton_serialize()
    }
    private func setButton(button: MouseButton): Unit {
        let button_casted: MouseButton = button
        let thisPeer = this
        thisPeer.setButton_serialize(button_casted)
        return
    }
    private func getAction(): MouseAction {
        return this.getAction_serialize()
    }
    private func setAction(action: MouseAction): Unit {
        let action_casted: MouseAction = action
        let thisPeer = this
        thisPeer.setAction_serialize(action_casted)
        return
    }
    private func getGlobalDisplayX(): Option<Float64> {
        return this.getGlobalDisplayX_serialize()
    }
    private func setGlobalDisplayX(globalDisplayX: Option<Float64>): Unit {
        let globalDisplayX_casted: Option<Float64> = if (let Some(globalDisplayX) <- globalDisplayX) {globalDisplayX} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setGlobalDisplayX_serialize(globalDisplayX_casted)
        return
    }
    private func getGlobalDisplayY(): Option<Float64> {
        return this.getGlobalDisplayY_serialize()
    }
    private func setGlobalDisplayY(globalDisplayY: Option<Float64>): Unit {
        let globalDisplayY_casted: Option<Float64> = if (let Some(globalDisplayY) <- globalDisplayY) {globalDisplayY} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setGlobalDisplayY_serialize(globalDisplayY_casted)
        return
    }
    private func getDisplayX(): Float64 {
        return this.getDisplayX_serialize()
    }
    private func setDisplayX(displayX: Float64): Unit {
        let displayX_casted: Float64 = displayX
        let thisPeer = this
        thisPeer.setDisplayX_serialize(displayX_casted)
        return
    }
    private func getDisplayY(): Float64 {
        return this.getDisplayY_serialize()
    }
    private func setDisplayY(displayY: Float64): Unit {
        let displayY_casted: Float64 = displayY
        let thisPeer = this
        thisPeer.setDisplayY_serialize(displayY_casted)
        return
    }
    private func getWindowX(): Float64 {
        return this.getWindowX_serialize()
    }
    private func setWindowX(windowX: Float64): Unit {
        let windowX_casted: Float64 = windowX
        let thisPeer = this
        thisPeer.setWindowX_serialize(windowX_casted)
        return
    }
    private func getWindowY(): Float64 {
        return this.getWindowY_serialize()
    }
    private func setWindowY(windowY: Float64): Unit {
        let windowY_casted: Float64 = windowY
        let thisPeer = this
        thisPeer.setWindowY_serialize(windowY_casted)
        return
    }
    private func getScreenX(): Float64 {
        return this.getScreenX_serialize()
    }
    private func setScreenX(screenX: Float64): Unit {
        let screenX_casted: Float64 = screenX
        let thisPeer = this
        thisPeer.setScreenX_serialize(screenX_casted)
        return
    }
    private func getScreenY(): Float64 {
        return this.getScreenY_serialize()
    }
    private func setScreenY(screenY: Float64): Unit {
        let screenY_casted: Float64 = screenY
        let thisPeer = this
        thisPeer.setScreenY_serialize(screenY_casted)
        return
    }
    private func getX(): Float64 {
        return this.getX_serialize()
    }
    private func setX(x: Float64): Unit {
        let x_casted: Float64 = x
        let thisPeer = this
        thisPeer.setX_serialize(x_casted)
        return
    }
    private func getY(): Float64 {
        return this.getY_serialize()
    }
    private func setY(y: Float64): Unit {
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.setY_serialize(y_casted)
        return
    }
    private func getStopPropagation(): (() -> Unit) {
        return this.getStopPropagation_serialize()
    }
    private func setStopPropagation(stopPropagation: (() -> Unit)): Unit {
        let stopPropagation_casted: (() -> Unit) = stopPropagation
        let thisPeer = this
        thisPeer.setStopPropagation_serialize(stopPropagation_casted)
        return
    }
    private func getRawDeltaX(): Option<Float64> {
        return this.getRawDeltaX_serialize()
    }
    private func setRawDeltaX(rawDeltaX: Option<Float64>): Unit {
        let rawDeltaX_casted: Option<Float64> = if (let Some(rawDeltaX) <- rawDeltaX) {rawDeltaX} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setRawDeltaX_serialize(rawDeltaX_casted)
        return
    }
    private func getRawDeltaY(): Option<Float64> {
        return this.getRawDeltaY_serialize()
    }
    private func setRawDeltaY(rawDeltaY: Option<Float64>): Unit {
        let rawDeltaY_casted: Option<Float64> = if (let Some(rawDeltaY) <- rawDeltaY) {rawDeltaY} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setRawDeltaY_serialize(rawDeltaY_casted)
        return
    }
    private func getPressedButtons(): Option<ArrayList<MouseButton>> {
        return this.getPressedButtons_serialize()
    }
    private func setPressedButtons(pressedButtons: Option<ArrayList<MouseButton>>): Unit {
        let pressedButtons_casted: Option<ArrayList<MouseButton>> = if (let Some(pressedButtons) <- pressedButtons) {pressedButtons} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setPressedButtons_serialize(pressedButtons_casted)
        return
    }
    private func getButton_serialize(): MouseButton {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getButton(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return MouseButton(retval)
    }
    private func setButton_serialize(button: MouseButton): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setButton(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, button.value);
    }
    private func getAction_serialize(): MouseAction {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getAction(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return MouseAction(retval)
    }
    private func setAction_serialize(action: MouseAction): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setAction(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, action.value);
    }
    private func getGlobalDisplayX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getGlobalDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setGlobalDisplayX_serialize(globalDisplayX: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (globalDisplayX.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let globalDisplayXTmpValue = globalDisplayX
            thisSerializer.writeNumber(globalDisplayXTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._MouseEvent_setGlobalDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getGlobalDisplayY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getGlobalDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setGlobalDisplayY_serialize(globalDisplayY: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (globalDisplayY.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let globalDisplayYTmpValue = globalDisplayY
            thisSerializer.writeNumber(globalDisplayYTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._MouseEvent_setGlobalDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getDisplayX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setDisplayX_serialize(displayX: Float64): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, displayX);
    }
    private func getDisplayY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setDisplayY_serialize(displayY: Float64): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, displayY);
    }
    private func getWindowX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setWindowX_serialize(windowX: Float64): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, windowX);
    }
    private func getWindowY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setWindowY_serialize(windowY: Float64): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, windowY);
    }
    private func getScreenX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getScreenX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setScreenX_serialize(screenX: Float64): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setScreenX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, screenX);
    }
    private func getScreenY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getScreenY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setScreenY_serialize(screenY: Float64): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setScreenY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, screenY);
    }
    private func getX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setX_serialize(x: Float64): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x);
    }
    private func getY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setY_serialize(y: Float64): Unit {
        ArkUIGeneratedNativeModule._MouseEvent_setY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, y);
    }
    private func getStopPropagation_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setStopPropagation_serialize(stopPropagation: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(stopPropagation);
        ArkUIGeneratedNativeModule._MouseEvent_setStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getRawDeltaX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getRawDeltaX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setRawDeltaX_serialize(rawDeltaX: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (rawDeltaX.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rawDeltaXTmpValue = rawDeltaX
            thisSerializer.writeNumber(rawDeltaXTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._MouseEvent_setRawDeltaX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getRawDeltaY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getRawDeltaY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setRawDeltaY_serialize(rawDeltaY: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (rawDeltaY.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rawDeltaYTmpValue = rawDeltaY
            thisSerializer.writeNumber(rawDeltaYTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._MouseEvent_setRawDeltaY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getPressedButtons_serialize(): Option<ArrayList<MouseButton>> {
        let retval = ArkUIGeneratedNativeModule._MouseEvent_getPressedButtons(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ArrayList<MouseButton>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_Length: Int32 = retvalDeserializer.readInt32()
            var buffer_: ArrayList<MouseButton> = ArrayList<MouseButton>(Int64(buffer_Length))
            buffer_ = ArrayList<MouseButton>(Int64(buffer_Length))
            for (buffer_BufCounterI in 0..buffer_Length) {
                buffer_[Int64(buffer_BufCounterI)] = MouseButton(retvalDeserializer.readInt32())
            }
            buffer = buffer_
        }
        let returnResult: Option<ArrayList<MouseButton>> = buffer
        return returnResult
    }
    private func setPressedButtons_serialize(pressedButtons: Option<ArrayList<MouseButton>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (pressedButtons.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let pressedButtonsTmpValue = pressedButtons
            thisSerializer.writeInt32(Int32(pressedButtonsTmpValue.size));
            for (pressedButtonsTmpValueCounterI in 0..pressedButtonsTmpValue.size) {
                let pressedButtonsTmpValueTmpElement: MouseButton = pressedButtonsTmpValue[Int64(pressedButtonsTmpValueCounterI)]
                thisSerializer.writeInt32(pressedButtonsTmpValueTmpElement.value);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._MouseEvent_setPressedButtons(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class MouseEvent_serializer {
    public static func write(buffer: SerializerBase, value: MouseEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): MouseEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return MouseEventInternal.fromPtr(ptr)
    }
}
