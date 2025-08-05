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
public open class TapRecognizerInternal {
    public static func fromPtr(ptr: UInt64): TapRecognizer {
        return TapRecognizer(ptr)
    }
}
public open class TapRecognizer <: GestureRecognizer & MaterializedBase {
    TapRecognizer(peerPtr: UInt64) {
        super(peerPtr)
    }
    TapRecognizer() {
        super(TapRecognizer.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TapRecognizer_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TapRecognizer_getFinalizer()
    }
    public open func getTapCount(): Float64 {
        return this.getTapCount_serialize()
    }
    private func getTapCount_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._TapRecognizer_getTapCount(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class TapRecognizer_serializer {
    public static func write(buffer: SerializerBase, value: TapRecognizer): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TapRecognizer {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TapRecognizerInternal.fromPtr(ptr)
    }
}
