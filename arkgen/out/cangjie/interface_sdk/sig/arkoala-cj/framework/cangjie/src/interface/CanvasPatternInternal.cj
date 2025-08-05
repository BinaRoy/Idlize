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
public interface CanvasPattern {
    public open func setTransform(transform: Option<Matrix2D>): Unit
}
public open class CanvasPatternInternal <: MaterializedBase & CanvasPattern {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    CanvasPatternInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, CanvasPatternInternal.getFinalizer())
    }
    CanvasPatternInternal() {
        super(CanvasPatternInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._CanvasPattern_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._CanvasPattern_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): CanvasPatternInternal {
        return CanvasPatternInternal(ptr)
    }
    public open func setTransform(transform: Option<Matrix2D>): Unit {
        let transform_casted: Option<Matrix2D> = if (let Some(transform) <- transform) {transform} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTransform_serialize(transform_casted)
        return
    }
    private func setTransform_serialize(transform: Option<Matrix2D>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (transform.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let transformTmpValue = transform
            Matrix2D_serializer.write(thisSerializer, transformTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasPattern_setTransform(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class CanvasPattern_serializer {
    public static func write(buffer: SerializerBase, value: CanvasPattern): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): CanvasPattern {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return CanvasPatternInternal.fromPtr(ptr)
    }
}
