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
public open class ScrollableTargetInfoInternal {
    public static func fromPtr(ptr: UInt64): ScrollableTargetInfo {
        return ScrollableTargetInfo(ptr)
    }
}
public open class ScrollableTargetInfo <: EventTargetInfo & MaterializedBase {
    ScrollableTargetInfo(peerPtr: UInt64) {
        super(peerPtr)
    }
    ScrollableTargetInfo() {
        super(ScrollableTargetInfo.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ScrollableTargetInfo_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ScrollableTargetInfo_getFinalizer()
    }
    public open func isBegin(): Bool {
        return this.isBegin_serialize()
    }
    public open func isEnd(): Bool {
        return this.isEnd_serialize()
    }
    private func isBegin_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._ScrollableTargetInfo_isBegin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func isEnd_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._ScrollableTargetInfo_isEnd(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class ScrollableTargetInfo_serializer {
    public static func write(buffer: SerializerBase, value: ScrollableTargetInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ScrollableTargetInfo {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ScrollableTargetInfoInternal.fromPtr(ptr)
    }
}
