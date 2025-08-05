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
public interface UIScrollableCommonEvent {
    public open func setOnReachStart(callback_: Option<(() -> Unit)>): Unit
    public open func setOnReachEnd(callback_: Option<(() -> Unit)>): Unit
    public open func setOnScrollStart(callback_: Option<(() -> Unit)>): Unit
    public open func setOnScrollStop(callback_: Option<(() -> Unit)>): Unit
    public open func setOnScrollFrameBegin(callback_: Option<OnScrollFrameBeginCallback>): Unit
}
public open class UIScrollableCommonEventInternal <: UICommonEventInternal & MaterializedBase & UIScrollableCommonEvent {
    UIScrollableCommonEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    UIScrollableCommonEventInternal() {
        super(UIScrollableCommonEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._UIScrollableCommonEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._UIScrollableCommonEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): UIScrollableCommonEventInternal {
        return UIScrollableCommonEventInternal(ptr)
    }
    public open func setOnReachStart(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnReachStart_serialize(callback__casted)
        return
    }
    public open func setOnReachEnd(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnReachEnd_serialize(callback__casted)
        return
    }
    public open func setOnScrollStart(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnScrollStart_serialize(callback__casted)
        return
    }
    public open func setOnScrollStop(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnScrollStop_serialize(callback__casted)
        return
    }
    public open func setOnScrollFrameBegin(callback_: Option<OnScrollFrameBeginCallback>): Unit {
        let callback__casted: Option<OnScrollFrameBeginCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnScrollFrameBegin_serialize(callback__casted)
        return
    }
    private func setOnReachStart_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIScrollableCommonEvent_setOnReachStart(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnReachEnd_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIScrollableCommonEvent_setOnReachEnd(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnScrollStart_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIScrollableCommonEvent_setOnScrollStart(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnScrollStop_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIScrollableCommonEvent_setOnScrollStop(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnScrollFrameBegin_serialize(callback_: Option<OnScrollFrameBeginCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIScrollableCommonEvent_setOnScrollFrameBegin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class UIScrollableCommonEvent_serializer {
    public static func write(buffer: SerializerBase, value: UIScrollableCommonEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): UIScrollableCommonEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return UIScrollableCommonEventInternal.fromPtr(ptr)
    }
}
