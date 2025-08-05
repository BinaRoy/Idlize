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
public open class DisableSymbolEffectInternal {
    public static func fromPtr(ptr: UInt64): DisableSymbolEffect {
        return DisableSymbolEffect(false, ptr)
    }
}
public open class DisableSymbolEffect <: MaterializedBase & SymbolEffectInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop scope: Option<EffectScope>
    {
        get() {
            return this.getScope()
        }
        set(scope) {
            let scope_NonNull = match (scope as EffectScope) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setScope(scope_NonNull)
        }
    }
    DisableSymbolEffect(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, DisableSymbolEffect.getFinalizer())
    }
    init () {
        DisableSymbolEffect(Option.None)
    }
    DisableSymbolEffect(scope: Option<EffectScope>) {
        super(false, DisableSymbolEffect.construct(scope))
    }
    static func construct(scope: Option<EffectScope>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scope.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let scopeTmpValue = scope
            thisSerializer.writeInt32(scopeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._DisableSymbolEffect_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._DisableSymbolEffect_getFinalizer()
    }
    private func getScope(): Option<EffectScope> {
        return this.getScope_serialize()
    }
    private func setScope(scope: Option<EffectScope>): Unit {
        let scope_casted: Option<EffectScope> = if (let Some(scope) <- scope) {scope} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setScope_serialize(scope_casted)
        return
    }
    private func getScope_serialize(): Option<EffectScope> {
        let retval = ArkUIGeneratedNativeModule._DisableSymbolEffect_getScope(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<EffectScope> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = EffectScope(retvalDeserializer.readInt32())
        }
        let returnResult: Option<EffectScope> = buffer
        return returnResult
    }
    private func setScope_serialize(scope: Option<EffectScope>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scope.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let scopeTmpValue = scope
            thisSerializer.writeInt32(scopeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._DisableSymbolEffect_setScope(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class DisableSymbolEffect_serializer {
    public static func write(buffer: SerializerBase, value: DisableSymbolEffect): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): DisableSymbolEffect {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return DisableSymbolEffectInternal.fromPtr(ptr)
    }
}
