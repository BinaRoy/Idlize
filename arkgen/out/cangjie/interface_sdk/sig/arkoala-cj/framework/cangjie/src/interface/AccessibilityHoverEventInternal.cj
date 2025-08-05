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
public interface AccessibilityHoverEvent {
    public mut open prop type_: AccessibilityHoverType
    public mut open prop x: Float64
    public mut open prop y: Float64
    public mut open prop displayX: Float64
    public mut open prop displayY: Float64
    public mut open prop windowX: Float64
    public mut open prop windowY: Float64
    public mut open prop globalDisplayX: Option<Float64>
    public mut open prop globalDisplayY: Option<Float64>
}
public open class AccessibilityHoverEventInternal <: BaseEventInternal & MaterializedBase & AccessibilityHoverEvent {
    public mut open prop type_: AccessibilityHoverType
    {
        get() {
            return this.getType()
        }
        set(type_) {
            this.setType(type_)
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
    AccessibilityHoverEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    AccessibilityHoverEventInternal() {
        super(AccessibilityHoverEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): AccessibilityHoverEventInternal {
        return AccessibilityHoverEventInternal(ptr)
    }
    private func getType(): AccessibilityHoverType {
        return this.getType_serialize()
    }
    private func setType(type_: AccessibilityHoverType): Unit {
        let type_casted: AccessibilityHoverType = type_
        let thisPeer = this
        thisPeer.setType_serialize(type_casted)
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
    private func getType_serialize(): AccessibilityHoverType {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return AccessibilityHoverType(retval)
    }
    private func setType_serialize(type_: AccessibilityHoverType): Unit {
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, type_.value);
    }
    private func getX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setX_serialize(x: Float64): Unit {
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x);
    }
    private func getY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setY_serialize(y: Float64): Unit {
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, y);
    }
    private func getDisplayX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setDisplayX_serialize(displayX: Float64): Unit {
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, displayX);
    }
    private func getDisplayY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setDisplayY_serialize(displayY: Float64): Unit {
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, displayY);
    }
    private func getWindowX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setWindowX_serialize(windowX: Float64): Unit {
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, windowX);
    }
    private func getWindowY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setWindowY_serialize(windowY: Float64): Unit {
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, windowY);
    }
    private func getGlobalDisplayX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getGlobalDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setGlobalDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getGlobalDisplayY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._AccessibilityHoverEvent_getGlobalDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
        ArkUIGeneratedNativeModule._AccessibilityHoverEvent_setGlobalDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class AccessibilityHoverEvent_serializer {
    public static func write(buffer: SerializerBase, value: AccessibilityHoverEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): AccessibilityHoverEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return AccessibilityHoverEventInternal.fromPtr(ptr)
    }
}
