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
public open class CustomSpanInternal {
    public static func fromPtr(ptr: UInt64): CustomSpan {
        return CustomSpan(ptr)
    }
}
public open class CustomSpan <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop onMeasure: ((measureInfo: CustomSpanMeasureInfo) -> CustomSpanMetrics)
    {
        get() {
            return this.getOnMeasure()
        }
        set(onMeasure) {
            this.setOnMeasure(onMeasure)
        }
    }
    public mut open prop onDraw: ((context: DrawContext, drawInfo: CustomSpanDrawInfo) -> Unit)
    {
        get() {
            return this.getOnDraw()
        }
        set(onDraw) {
            this.setOnDraw(onDraw)
        }
    }
    CustomSpan(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, CustomSpan.getFinalizer())
    }
    CustomSpan() {
        super(CustomSpan.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._CustomSpan_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._CustomSpan_getFinalizer()
    }
    public open func invalidate(): Unit {
        let thisPeer = this
        thisPeer.invalidate_serialize()
        return
    }
    private func getOnMeasure(): ((measureInfo: CustomSpanMeasureInfo) -> CustomSpanMetrics) {
        return this.getOnMeasure_serialize()
    }
    private func setOnMeasure(onMeasure: ((measureInfo: CustomSpanMeasureInfo) -> CustomSpanMetrics)): Unit {
        let onMeasure_casted: ((measureInfo: CustomSpanMeasureInfo) -> CustomSpanMetrics) = onMeasure
        let thisPeer = this
        thisPeer.setOnMeasure_serialize(onMeasure_casted)
        return
    }
    private func getOnDraw(): ((context: DrawContext, drawInfo: CustomSpanDrawInfo) -> Unit) {
        return this.getOnDraw_serialize()
    }
    private func setOnDraw(onDraw: ((context: DrawContext, drawInfo: CustomSpanDrawInfo) -> Unit)): Unit {
        let onDraw_casted: ((context: DrawContext, drawInfo: CustomSpanDrawInfo) -> Unit) = onDraw
        let thisPeer = this
        thisPeer.setOnDraw_serialize(onDraw_casted)
        return
    }
    private func invalidate_serialize(): Unit {
        ArkUIGeneratedNativeModule._CustomSpan_invalidate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getOnMeasure_serialize(): ((measureInfo: CustomSpanMeasureInfo) -> CustomSpanMetrics) {
        let retval = ArkUIGeneratedNativeModule._CustomSpan_getOnMeasure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setOnMeasure_serialize(onMeasure: ((measureInfo: CustomSpanMeasureInfo) -> CustomSpanMetrics)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(onMeasure);
        ArkUIGeneratedNativeModule._CustomSpan_setOnMeasure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnDraw_serialize(): ((context: DrawContext, drawInfo: CustomSpanDrawInfo) -> Unit) {
        let retval = ArkUIGeneratedNativeModule._CustomSpan_getOnDraw(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setOnDraw_serialize(onDraw: ((context: DrawContext, drawInfo: CustomSpanDrawInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(onDraw);
        ArkUIGeneratedNativeModule._CustomSpan_setOnDraw(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class CustomSpan_serializer {
    public static func write(buffer: SerializerBase, value: CustomSpan): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): CustomSpan {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return CustomSpanInternal.fromPtr(ptr)
    }
}
