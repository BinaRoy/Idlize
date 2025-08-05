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
public open class HierarchicalSymbolEffectInternal {
    public static func fromPtr(ptr: UInt64): HierarchicalSymbolEffect {
        return HierarchicalSymbolEffect(false, ptr)
    }
}
public open class HierarchicalSymbolEffect <: MaterializedBase & SymbolEffectInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop fillStyle: Option<EffectFillStyle>
    {
        get() {
            return this.getFillStyle()
        }
        set(fillStyle) {
            let fillStyle_NonNull = match (fillStyle as EffectFillStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setFillStyle(fillStyle_NonNull)
        }
    }
    HierarchicalSymbolEffect(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, HierarchicalSymbolEffect.getFinalizer())
    }
    init () {
        HierarchicalSymbolEffect(Option.None)
    }
    HierarchicalSymbolEffect(fillStyle: Option<EffectFillStyle>) {
        super(false, HierarchicalSymbolEffect.construct(fillStyle))
    }
    static func construct(fillStyle: Option<EffectFillStyle>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fillStyle.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fillStyleTmpValue = fillStyle
            thisSerializer.writeInt32(fillStyleTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._HierarchicalSymbolEffect_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._HierarchicalSymbolEffect_getFinalizer()
    }
    private func getFillStyle(): Option<EffectFillStyle> {
        return this.getFillStyle_serialize()
    }
    private func setFillStyle(fillStyle: Option<EffectFillStyle>): Unit {
        let fillStyle_casted: Option<EffectFillStyle> = if (let Some(fillStyle) <- fillStyle) {fillStyle} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setFillStyle_serialize(fillStyle_casted)
        return
    }
    private func getFillStyle_serialize(): Option<EffectFillStyle> {
        let retval = ArkUIGeneratedNativeModule._HierarchicalSymbolEffect_getFillStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<EffectFillStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = EffectFillStyle(retvalDeserializer.readInt32())
        }
        let returnResult: Option<EffectFillStyle> = buffer
        return returnResult
    }
    private func setFillStyle_serialize(fillStyle: Option<EffectFillStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fillStyle.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fillStyleTmpValue = fillStyle
            thisSerializer.writeInt32(fillStyleTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._HierarchicalSymbolEffect_setFillStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class HierarchicalSymbolEffect_serializer {
    public static func write(buffer: SerializerBase, value: HierarchicalSymbolEffect): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): HierarchicalSymbolEffect {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return HierarchicalSymbolEffectInternal.fromPtr(ptr)
    }
}
