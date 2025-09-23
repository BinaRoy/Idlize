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

public interface ClickEvent {
    public open mut prop displayX: Float64
    public open mut prop displayY: Float64
    public open mut prop windowX: Float64
    public open mut prop windowY: Float64
    public open mut prop screenX: Float64
    public open mut prop screenY: Float64
    public open mut prop x: Float64
    public open mut prop y: Float64
    public open mut prop preventDefault: (() -> Unit)
}
public open class ClickEventInternal <: BaseEventInternal & MaterializedBase & ClickEvent {
    public open mut prop displayX: Float64
    {
        get() {
            return this.getDisplayX()
        }
        set(displayX) {
            this.setDisplayX(displayX)
        }
    }
    public open mut prop displayY: Float64
    {
        get() {
            return this.getDisplayY()
        }
        set(displayY) {
            this.setDisplayY(displayY)
        }
    }
    public open mut prop windowX: Float64
    {
        get() {
            return this.getWindowX()
        }
        set(windowX) {
            this.setWindowX(windowX)
        }
    }
    public open mut prop windowY: Float64
    {
        get() {
            return this.getWindowY()
        }
        set(windowY) {
            this.setWindowY(windowY)
        }
    }
    public open mut prop screenX: Float64
    {
        get() {
            return this.getScreenX()
        }
        set(screenX) {
            this.setScreenX(screenX)
        }
    }
    public open mut prop screenY: Float64
    {
        get() {
            return this.getScreenY()
        }
        set(screenY) {
            this.setScreenY(screenY)
        }
    }
    public open mut prop x: Float64
    {
        get() {
            return this.getX()
        }
        set(x) {
            this.setX(x)
        }
    }
    public open mut prop y: Float64
    {
        get() {
            return this.getY()
        }
        set(y) {
            this.setY(y)
        }
    }
    public open mut prop preventDefault: (() -> Unit)
    {
        get() {
            return this.getPreventDefault()
        }
        set(preventDefault) {
            this.setPreventDefault(preventDefault)
        }
    }
    init(peerPtr: UInt64) {
        super(peerPtr)
    }
    init() {
        this(ClickEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ClickEvent_getFinalizer()
    }
    public  static func fromPtr(ptr: UInt64): ClickEventInternal {
        return ClickEventInternal(ptr)
    }
    private  func getDisplayX(): Float64 {
        return this.getDisplayX_serialize()
    }
    private  func setDisplayX(displayX: Float64): Unit {
        let displayX_casted: Float64 = displayX
        let thisPeer = this
        thisPeer.setDisplayX_serialize(displayX_casted)
        return
    }
    private  func getDisplayY(): Float64 {
        return this.getDisplayY_serialize()
    }
    private  func setDisplayY(displayY: Float64): Unit {
        let displayY_casted: Float64 = displayY
        let thisPeer = this
        thisPeer.setDisplayY_serialize(displayY_casted)
        return
    }
    private  func getWindowX(): Float64 {
        return this.getWindowX_serialize()
    }
    private  func setWindowX(windowX: Float64): Unit {
        let windowX_casted: Float64 = windowX
        let thisPeer = this
        thisPeer.setWindowX_serialize(windowX_casted)
        return
    }
    private  func getWindowY(): Float64 {
        return this.getWindowY_serialize()
    }
    private  func setWindowY(windowY: Float64): Unit {
        let windowY_casted: Float64 = windowY
        let thisPeer = this
        thisPeer.setWindowY_serialize(windowY_casted)
        return
    }
    private  func getScreenX(): Float64 {
        return this.getScreenX_serialize()
    }
    private  func setScreenX(screenX: Float64): Unit {
        let screenX_casted: Float64 = screenX
        let thisPeer = this
        thisPeer.setScreenX_serialize(screenX_casted)
        return
    }
    private  func getScreenY(): Float64 {
        return this.getScreenY_serialize()
    }
    private  func setScreenY(screenY: Float64): Unit {
        let screenY_casted: Float64 = screenY
        let thisPeer = this
        thisPeer.setScreenY_serialize(screenY_casted)
        return
    }
    private  func getX(): Float64 {
        return this.getX_serialize()
    }
    private  func setX(x: Float64): Unit {
        let x_casted: Float64 = x
        let thisPeer = this
        thisPeer.setX_serialize(x_casted)
        return
    }
    private  func getY(): Float64 {
        return this.getY_serialize()
    }
    private  func setY(y: Float64): Unit {
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.setY_serialize(y_casted)
        return
    }
    private  func getPreventDefault(): (() -> Unit) {
        return this.getPreventDefault_serialize()
    }
    private  func setPreventDefault(preventDefault: (() -> Unit)): Unit {
        let preventDefault_casted: (() -> Unit) = preventDefault
        let thisPeer = this
        thisPeer.setPreventDefault_serialize(preventDefault_casted)
        return
    }
    private  func getDisplayX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setDisplayX_serialize(displayX: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, displayX)
    }
    private  func getDisplayY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setDisplayY_serialize(displayY: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, displayY)
    }
    private  func getWindowX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setWindowX_serialize(windowX: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, windowX)
    }
    private  func getWindowY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setWindowY_serialize(windowY: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, windowY)
    }
    private  func getScreenX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getScreenX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setScreenX_serialize(screenX: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setScreenX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, screenX)
    }
    private  func getScreenY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getScreenY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setScreenY_serialize(screenY: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setScreenY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, screenY)
    }
    private  func getX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setX_serialize(x: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x)
    }
    private  func getY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private  func setY_serialize(y: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, y)
    }
    private  func getPreventDefault_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getPreventDefault(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private  func setPreventDefault_serialize(preventDefault: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(preventDefault)
        ArkUIGeneratedNativeModule._ClickEvent_setPreventDefault(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
}
public class ClickEvent_serializer {
    public  static func write(buffer: SerializerBase, value: ClickEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value))
    }
    public  static func read(buffer: DeserializerBase): ClickEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ClickEventInternal.fromPtr(ptr)
    }
}
