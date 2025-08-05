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
public open class PatternLockControllerInternal {
    public static func fromPtr(ptr: UInt64): PatternLockController {
        return PatternLockController(ptr)
    }
}
public open class PatternLockController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    PatternLockController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, PatternLockController.getFinalizer())
    }
    PatternLockController() {
        super(PatternLockController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._PatternLockController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PatternLockController_getFinalizer()
    }
    public open func reset(): Unit {
        let thisPeer = this
        thisPeer.reset_serialize()
        return
    }
    public open func setChallengeResult(result: PatternLockChallengeResult): Unit {
        let result_casted: PatternLockChallengeResult = result
        let thisPeer = this
        thisPeer.setChallengeResult_serialize(result_casted)
        return
    }
    private func reset_serialize(): Unit {
        ArkUIGeneratedNativeModule._PatternLockController_reset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func setChallengeResult_serialize(result: PatternLockChallengeResult): Unit {
        ArkUIGeneratedNativeModule._PatternLockController_setChallengeResult(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, result.value);
    }
}
public open class PatternLockController_serializer {
    public static func write(buffer: SerializerBase, value: PatternLockController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PatternLockController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PatternLockControllerInternal.fromPtr(ptr)
    }
}
