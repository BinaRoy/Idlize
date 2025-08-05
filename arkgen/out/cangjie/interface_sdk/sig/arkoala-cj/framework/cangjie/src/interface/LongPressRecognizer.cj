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
public open class LongPressRecognizerInternal {
    public static func fromPtr(ptr: UInt64): LongPressRecognizer {
        return LongPressRecognizer(ptr)
    }
}
public open class LongPressRecognizer <: GestureRecognizer & MaterializedBase {
    LongPressRecognizer(peerPtr: UInt64) {
        super(peerPtr)
    }
    LongPressRecognizer() {
        super(LongPressRecognizer.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._LongPressRecognizer_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._LongPressRecognizer_getFinalizer()
    }
    public open func isRepeat(): Bool {
        return this.isRepeat_serialize()
    }
    public open func getDuration(): Float64 {
        return this.getDuration_serialize()
    }
    private func isRepeat_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._LongPressRecognizer_isRepeat(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getDuration_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._LongPressRecognizer_getDuration(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class LongPressRecognizer_serializer {
    public static func write(buffer: SerializerBase, value: LongPressRecognizer): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): LongPressRecognizer {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return LongPressRecognizerInternal.fromPtr(ptr)
    }
}
