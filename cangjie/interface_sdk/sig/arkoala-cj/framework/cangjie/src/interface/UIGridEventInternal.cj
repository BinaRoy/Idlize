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
public interface UIGridEvent {
    public open func setOnWillScroll(callback_: Option<OnWillScrollCallback>): Unit
    public open func setOnDidScroll(callback_: Option<OnScrollCallback>): Unit
    public open func setOnScrollIndex(callback_: Option<OnGridScrollIndexCallback>): Unit
}
public open class UIGridEventInternal <: UIScrollableCommonEventInternal & MaterializedBase & UIGridEvent {
    UIGridEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    UIGridEventInternal() {
        super(UIGridEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._UIGridEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._UIGridEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): UIGridEventInternal {
        return UIGridEventInternal(ptr)
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
    public open func setOnScrollIndex(callback_: Option<OnGridScrollIndexCallback>): Unit {
        let callback__casted: Option<OnGridScrollIndexCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnScrollIndex_serialize(callback__casted)
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
        ArkUIGeneratedNativeModule._UIGridEvent_setOnWillScroll(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._UIGridEvent_setOnDidScroll(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnScrollIndex_serialize(callback_: Option<OnGridScrollIndexCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIGridEvent_setOnScrollIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class UIGridEvent_serializer {
    public static func write(buffer: SerializerBase, value: UIGridEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): UIGridEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return UIGridEventInternal.fromPtr(ptr)
    }
}
