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
public interface HoverEvent {
    public mut open prop x: Option<Float64>
    public mut open prop y: Option<Float64>
    public mut open prop windowX: Option<Float64>
    public mut open prop windowY: Option<Float64>
    public mut open prop displayX: Option<Float64>
    public mut open prop displayY: Option<Float64>
    public mut open prop globalDisplayX: Option<Float64>
    public mut open prop globalDisplayY: Option<Float64>
    public mut open prop stopPropagation: (() -> Unit)
}
public open class HoverEventInternal <: BaseEventInternal & MaterializedBase & HoverEvent {
    public mut open prop x: Option<Float64>
    {
        get() {
            return this.getX()
        }
        set(x) {
            let x_NonNull = match (x as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setX(x_NonNull)
        }
    }
    public mut open prop y: Option<Float64>
    {
        get() {
            return this.getY()
        }
        set(y) {
            let y_NonNull = match (y as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setY(y_NonNull)
        }
    }
    public mut open prop windowX: Option<Float64>
    {
        get() {
            return this.getWindowX()
        }
        set(windowX) {
            let windowX_NonNull = match (windowX as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setWindowX(windowX_NonNull)
        }
    }
    public mut open prop windowY: Option<Float64>
    {
        get() {
            return this.getWindowY()
        }
        set(windowY) {
            let windowY_NonNull = match (windowY as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setWindowY(windowY_NonNull)
        }
    }
    public mut open prop displayX: Option<Float64>
    {
        get() {
            return this.getDisplayX()
        }
        set(displayX) {
            let displayX_NonNull = match (displayX as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setDisplayX(displayX_NonNull)
        }
    }
    public mut open prop displayY: Option<Float64>
    {
        get() {
            return this.getDisplayY()
        }
        set(displayY) {
            let displayY_NonNull = match (displayY as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setDisplayY(displayY_NonNull)
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
    public mut open prop stopPropagation: (() -> Unit)
    {
        get() {
            return this.getStopPropagation()
        }
        set(stopPropagation) {
            this.setStopPropagation(stopPropagation)
        }
    }
    HoverEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    HoverEventInternal() {
        super(HoverEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._HoverEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): HoverEventInternal {
        return HoverEventInternal(ptr)
    }
    private func getX(): Option<Float64> {
        return this.getX_serialize()
    }
    private func setX(x: Option<Float64>): Unit {
        let x_casted: Option<Float64> = if (let Some(x) <- x) {x} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setX_serialize(x_casted)
        return
    }
    private func getY(): Option<Float64> {
        return this.getY_serialize()
    }
    private func setY(y: Option<Float64>): Unit {
        let y_casted: Option<Float64> = if (let Some(y) <- y) {y} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setY_serialize(y_casted)
        return
    }
    private func getWindowX(): Option<Float64> {
        return this.getWindowX_serialize()
    }
    private func setWindowX(windowX: Option<Float64>): Unit {
        let windowX_casted: Option<Float64> = if (let Some(windowX) <- windowX) {windowX} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setWindowX_serialize(windowX_casted)
        return
    }
    private func getWindowY(): Option<Float64> {
        return this.getWindowY_serialize()
    }
    private func setWindowY(windowY: Option<Float64>): Unit {
        let windowY_casted: Option<Float64> = if (let Some(windowY) <- windowY) {windowY} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setWindowY_serialize(windowY_casted)
        return
    }
    private func getDisplayX(): Option<Float64> {
        return this.getDisplayX_serialize()
    }
    private func setDisplayX(displayX: Option<Float64>): Unit {
        let displayX_casted: Option<Float64> = if (let Some(displayX) <- displayX) {displayX} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setDisplayX_serialize(displayX_casted)
        return
    }
    private func getDisplayY(): Option<Float64> {
        return this.getDisplayY_serialize()
    }
    private func setDisplayY(displayY: Option<Float64>): Unit {
        let displayY_casted: Option<Float64> = if (let Some(displayY) <- displayY) {displayY} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setDisplayY_serialize(displayY_casted)
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
    private func getStopPropagation(): (() -> Unit) {
        return this.getStopPropagation_serialize()
    }
    private func setStopPropagation(stopPropagation: (() -> Unit)): Unit {
        let stopPropagation_casted: (() -> Unit) = stopPropagation
        let thisPeer = this
        thisPeer.setStopPropagation_serialize(stopPropagation_casted)
        return
    }
    private func getX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setX_serialize(x: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (x.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let xTmpValue = x
            thisSerializer.writeNumber(xTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._HoverEvent_setX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setY_serialize(y: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (y.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let yTmpValue = y
            thisSerializer.writeNumber(yTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._HoverEvent_setY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getWindowX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setWindowX_serialize(windowX: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (windowX.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let windowXTmpValue = windowX
            thisSerializer.writeNumber(windowXTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._HoverEvent_setWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getWindowY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setWindowY_serialize(windowY: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (windowY.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let windowYTmpValue = windowY
            thisSerializer.writeNumber(windowYTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._HoverEvent_setWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getDisplayX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setDisplayX_serialize(displayX: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (displayX.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let displayXTmpValue = displayX
            thisSerializer.writeNumber(displayXTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._HoverEvent_setDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getDisplayY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setDisplayY_serialize(displayY: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (displayY.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let displayYTmpValue = displayY
            thisSerializer.writeNumber(displayYTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._HoverEvent_setDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getGlobalDisplayX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getGlobalDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
        ArkUIGeneratedNativeModule._HoverEvent_setGlobalDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getGlobalDisplayY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getGlobalDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
        ArkUIGeneratedNativeModule._HoverEvent_setGlobalDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getStopPropagation_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._HoverEvent_getStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setStopPropagation_serialize(stopPropagation: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(stopPropagation);
        ArkUIGeneratedNativeModule._HoverEvent_setStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class HoverEvent_serializer {
    public static func write(buffer: SerializerBase, value: HoverEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): HoverEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return HoverEventInternal.fromPtr(ptr)
    }
}
