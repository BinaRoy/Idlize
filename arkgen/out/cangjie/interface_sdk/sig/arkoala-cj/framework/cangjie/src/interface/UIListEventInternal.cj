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
public interface UIListEvent {
    public open func setOnWillScroll(callback_: Option<OnWillScrollCallback>): Unit
    public open func setOnDidScroll(callback_: Option<OnScrollCallback>): Unit
    public open func setOnScrollIndex(callback_: Option<OnListScrollIndexCallback>): Unit
    public open func setOnScrollVisibleContentChange(callback_: Option<OnScrollVisibleContentChangeCallback>): Unit
}
public open class UIListEventInternal <: UIScrollableCommonEventInternal & MaterializedBase & UIListEvent {
    UIListEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    UIListEventInternal() {
        super(UIListEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._UIListEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._UIListEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): UIListEventInternal {
        return UIListEventInternal(ptr)
    }
    public open func setOnWillScroll(callback_: Option<OnWillScrollCallback>): Unit {
        let callback__casted: Option<OnWillScrollCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnWillScroll_serialize(callback__casted)
        return
    }
    public open func setOnDidScroll(callback_: Option<OnScrollCallback>): Unit {
        let callback__casted: Option<OnScrollCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnDidScroll_serialize(callback__casted)
        return
    }
    public open func setOnScrollIndex(callback_: Option<OnListScrollIndexCallback>): Unit {
        let callback__casted: Option<OnListScrollIndexCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnScrollIndex_serialize(callback__casted)
        return
    }
    public open func setOnScrollVisibleContentChange(callback_: Option<OnScrollVisibleContentChangeCallback>): Unit {
        let callback__casted: Option<OnScrollVisibleContentChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnScrollVisibleContentChange_serialize(callback__casted)
        return
    }
    private func setOnWillScroll_serialize(callback_: Option<OnWillScrollCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            OnWillScrollCallback_serializer.write(thisSerializer, callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIListEvent_setOnWillScroll(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnDidScroll_serialize(callback_: Option<OnScrollCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIListEvent_setOnDidScroll(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnScrollIndex_serialize(callback_: Option<OnListScrollIndexCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIListEvent_setOnScrollIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnScrollVisibleContentChange_serialize(callback_: Option<OnScrollVisibleContentChangeCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIListEvent_setOnScrollVisibleContentChange(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class UIListEvent_serializer {
    public static func write(buffer: SerializerBase, value: UIListEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): UIListEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return UIListEventInternal.fromPtr(ptr)
    }
}
