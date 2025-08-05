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
public interface UICommonEvent {
    public open func setOnClick(callback_: Option<((event: ClickEvent) -> Unit)>): Unit
    public open func setOnTouch(callback_: Option<((event: TouchEvent) -> Unit)>): Unit
    public open func setOnAppear(callback_: Option<(() -> Unit)>): Unit
    public open func setOnDisappear(callback_: Option<(() -> Unit)>): Unit
    public open func setOnKeyEvent(callback_: Option<((event: KeyEvent) -> Unit)>): Unit
    public open func setOnFocus(callback_: Option<(() -> Unit)>): Unit
    public open func setOnBlur(callback_: Option<(() -> Unit)>): Unit
    public open func setOnHover(callback_: Option<HoverCallback>): Unit
    public open func setOnMouse(callback_: Option<((event: MouseEvent) -> Unit)>): Unit
    public open func setOnSizeChange(callback_: Option<SizeChangeCallback>): Unit
    public open func setOnVisibleAreaApproximateChange(options: VisibleAreaEventOptions, event: Option<VisibleAreaChangeCallback>): Unit
}
public open class UICommonEventInternal <: MaterializedBase & UICommonEvent {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    UICommonEventInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, UICommonEventInternal.getFinalizer())
    }
    UICommonEventInternal() {
        super(UICommonEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._UICommonEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._UICommonEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): UICommonEventInternal {
        return UICommonEventInternal(ptr)
    }
    public open func setOnClick(callback_: Option<((event: ClickEvent) -> Unit)>): Unit {
        let callback__casted: Option<((event: ClickEvent) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnClick_serialize(callback__casted)
        return
    }
    public open func setOnTouch(callback_: Option<((event: TouchEvent) -> Unit)>): Unit {
        let callback__casted: Option<((event: TouchEvent) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnTouch_serialize(callback__casted)
        return
    }
    public open func setOnAppear(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnAppear_serialize(callback__casted)
        return
    }
    public open func setOnDisappear(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnDisappear_serialize(callback__casted)
        return
    }
    public open func setOnKeyEvent(callback_: Option<((event: KeyEvent) -> Unit)>): Unit {
        let callback__casted: Option<((event: KeyEvent) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnKeyEvent_serialize(callback__casted)
        return
    }
    public open func setOnFocus(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnFocus_serialize(callback__casted)
        return
    }
    public open func setOnBlur(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnBlur_serialize(callback__casted)
        return
    }
    public open func setOnHover(callback_: Option<HoverCallback>): Unit {
        let callback__casted: Option<HoverCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnHover_serialize(callback__casted)
        return
    }
    public open func setOnMouse(callback_: Option<((event: MouseEvent) -> Unit)>): Unit {
        let callback__casted: Option<((event: MouseEvent) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnMouse_serialize(callback__casted)
        return
    }
    public open func setOnSizeChange(callback_: Option<SizeChangeCallback>): Unit {
        let callback__casted: Option<SizeChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnSizeChange_serialize(callback__casted)
        return
    }
    public open func setOnVisibleAreaApproximateChange(options: VisibleAreaEventOptions, event: Option<VisibleAreaChangeCallback>): Unit {
        let options_casted: VisibleAreaEventOptions = options
        let event_casted: Option<VisibleAreaChangeCallback> = if (let Some(event) <- event) {event} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnVisibleAreaApproximateChange_serialize(options_casted, event_casted)
        return
    }
    private func setOnClick_serialize(callback_: Option<((event: ClickEvent) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnClick(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnTouch_serialize(callback_: Option<((event: TouchEvent) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnTouch(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnAppear_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnAppear(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnDisappear_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnDisappear(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnKeyEvent_serialize(callback_: Option<((event: KeyEvent) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnKeyEvent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnFocus_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnFocus(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnBlur_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnBlur(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnHover_serialize(callback_: Option<HoverCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnHover(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnMouse_serialize(callback_: Option<((event: MouseEvent) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnMouse(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnSizeChange_serialize(callback_: Option<SizeChangeCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnSizeChange(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnVisibleAreaApproximateChange_serialize(options: VisibleAreaEventOptions, event: Option<VisibleAreaChangeCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        VisibleAreaEventOptions_serializer.write(thisSerializer, options);
        if (event.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let eventTmpValue = event
            thisSerializer.holdAndWriteCallback(eventTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnVisibleAreaApproximateChange(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class UICommonEvent_serializer {
    public static func write(buffer: SerializerBase, value: UICommonEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): UICommonEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return UICommonEventInternal.fromPtr(ptr)
    }
}
