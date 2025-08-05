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
public open class DrawingRenderingContextInternal {
    public static func fromPtr(ptr: UInt64): DrawingRenderingContext {
        return DrawingRenderingContext(false, ptr)
    }
}
public open class DrawingRenderingContext <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop size: Size
    public open prop canvas: DrawingCanvas
    DrawingRenderingContext(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, DrawingRenderingContext.getFinalizer())
        size = this.getSize()
        canvas = this.getCanvas()
    }
    init () {
        DrawingRenderingContext(Option.None)
    }
    DrawingRenderingContext(unit: Option<LengthMetricsUnit>) {
        super(false, DrawingRenderingContext.construct(unit))
    }
    static func construct(unit: Option<LengthMetricsUnit>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (unit.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let unitTmpValue = unit
            thisSerializer.writeCustomObject("Any", unitTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._DrawingRenderingContext_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._DrawingRenderingContext_getFinalizer()
    }
    public open func invalidate(): Unit {
        let thisPeer = this
        thisPeer.invalidate_serialize()
        return
    }
    private func getSize(): Size {
        return this.getSize_serialize()
    }
    private func getCanvas(): DrawingCanvas {
        return this.getCanvas_serialize()
    }
    private func invalidate_serialize(): Unit {
        ArkUIGeneratedNativeModule._DrawingRenderingContext_invalidate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getSize_serialize(): Size {
        let retval = ArkUIGeneratedNativeModule._DrawingRenderingContext_getSize(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: Size = Size_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getCanvas_serialize(): DrawingCanvas {
        let retval = ArkUIGeneratedNativeModule._DrawingRenderingContext_getCanvas(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
}
public open class DrawingRenderingContext_serializer {
    public static func write(buffer: SerializerBase, value: DrawingRenderingContext): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): DrawingRenderingContext {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return DrawingRenderingContextInternal.fromPtr(ptr)
    }
}
