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
public open class SwipeRecognizerInternal {
    public static func fromPtr(ptr: UInt64): SwipeRecognizer {
        return SwipeRecognizer(ptr)
    }
}
public open class SwipeRecognizer <: GestureRecognizer & MaterializedBase {
    SwipeRecognizer(peerPtr: UInt64) {
        super(peerPtr)
    }
    SwipeRecognizer() {
        super(SwipeRecognizer.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._SwipeRecognizer_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._SwipeRecognizer_getFinalizer()
    }
    public open func getVelocityThreshold(): Float64 {
        return this.getVelocityThreshold_serialize()
    }
    public open func getDirection(): SwipeDirection {
        return this.getDirection_serialize()
    }
    private func getVelocityThreshold_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._SwipeRecognizer_getVelocityThreshold(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getDirection_serialize(): SwipeDirection {
        let retval = ArkUIGeneratedNativeModule._SwipeRecognizer_getDirection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return SwipeDirection(retval)
    }
}
public open class SwipeRecognizer_serializer {
    public static func write(buffer: SerializerBase, value: SwipeRecognizer): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): SwipeRecognizer {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SwipeRecognizerInternal.fromPtr(ptr)
    }
}
