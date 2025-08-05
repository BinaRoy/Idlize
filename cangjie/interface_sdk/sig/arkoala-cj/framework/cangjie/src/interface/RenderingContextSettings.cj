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
public open class RenderingContextSettingsInternal {
    public static func fromPtr(ptr: UInt64): RenderingContextSettings {
        return RenderingContextSettings(false, ptr)
    }
}
public open class RenderingContextSettings <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop antialias: Option<Bool>
    {
        get() {
            return this.getAntialias()
        }
        set(antialias) {
            let antialias_NonNull = match (antialias as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setAntialias(antialias_NonNull)
        }
    }
    RenderingContextSettings(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, RenderingContextSettings.getFinalizer())
    }
    init () {
        RenderingContextSettings(Option.None)
    }
    RenderingContextSettings(antialias: Option<Bool>) {
        super(false, RenderingContextSettings.construct(antialias))
    }
    static func construct(antialias: Option<Bool>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (antialias.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let antialiasTmpValue = antialias
            thisSerializer.writeBoolean(antialiasTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RenderingContextSettings_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RenderingContextSettings_getFinalizer()
    }
    private func getAntialias(): Option<Bool> {
        return this.getAntialias_serialize()
    }
    private func setAntialias(antialias: Option<Bool>): Unit {
        let antialias_casted: Option<Bool> = if (let Some(antialias) <- antialias) {antialias} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setAntialias_serialize(antialias_casted)
        return
    }
    private func getAntialias_serialize(): Option<Bool> {
        let retval = ArkUIGeneratedNativeModule._RenderingContextSettings_getAntialias(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = retvalDeserializer.readBoolean()
        }
        let returnResult: Option<Bool> = buffer
        return returnResult
    }
    private func setAntialias_serialize(antialias: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (antialias.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let antialiasTmpValue = antialias
            thisSerializer.writeBoolean(antialiasTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RenderingContextSettings_setAntialias(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class RenderingContextSettings_serializer {
    public static func write(buffer: SerializerBase, value: RenderingContextSettings): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RenderingContextSettings {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RenderingContextSettingsInternal.fromPtr(ptr)
    }
}
