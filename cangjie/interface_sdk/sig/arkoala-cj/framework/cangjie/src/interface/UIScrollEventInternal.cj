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
public interface UIScrollEvent {
    public open func setOnWillScroll(callback_: Option<ScrollOnWillScrollCallback>): Unit
    public open func setOnDidScroll(callback_: Option<ScrollOnScrollCallback>): Unit
}
public open class UIScrollEventInternal <: UIScrollableCommonEventInternal & MaterializedBase & UIScrollEvent {
    UIScrollEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    UIScrollEventInternal() {
        super(UIScrollEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._UIScrollEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._UIScrollEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): UIScrollEventInternal {
        return UIScrollEventInternal(ptr)
    }
    public open func setOnWillScroll(callback_: Option<ScrollOnWillScrollCallback>): Unit {
        let callback__casted: Option<ScrollOnWillScrollCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnWillScroll_serialize(callback__casted)
        return
    }
    public open func setOnDidScroll(callback_: Option<ScrollOnScrollCallback>): Unit {
        let callback__casted: Option<ScrollOnScrollCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnDidScroll_serialize(callback__casted)
        return
    }
    private func setOnWillScroll_serialize(callback_: Option<ScrollOnWillScrollCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIScrollEvent_setOnWillScroll(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOnDidScroll_serialize(callback_: Option<ScrollOnScrollCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIScrollEvent_setOnDidScroll(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class UIScrollEvent_serializer {
    public static func write(buffer: SerializerBase, value: UIScrollEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): UIScrollEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return UIScrollEventInternal.fromPtr(ptr)
    }
}
