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
public open class DrawModifierInternal {
    public static func fromPtr(ptr: UInt64): DrawModifier {
        return DrawModifier(ptr)
    }
}
public open class DrawModifier <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop drawBehind: ((drawContext: DrawContext) -> Unit)
    {
        get() {
            return this.getDrawBehind()
        }
        set(drawBehind) {
            this.setDrawBehind(drawBehind)
        }
    }
    public mut open prop drawContent: ((drawContext: DrawContext) -> Unit)
    {
        get() {
            return this.getDrawContent()
        }
        set(drawContent) {
            this.setDrawContent(drawContent)
        }
    }
    public mut open prop drawFront: ((drawContext: DrawContext) -> Unit)
    {
        get() {
            return this.getDrawFront()
        }
        set(drawFront) {
            this.setDrawFront(drawFront)
        }
    }
    DrawModifier(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, DrawModifier.getFinalizer())
    }
    DrawModifier() {
        super(DrawModifier.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._DrawModifier_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._DrawModifier_getFinalizer()
    }
    public open func drawForeground(drawContext: DrawContext): Unit {
        let drawContext_casted: DrawContext = drawContext
        let thisPeer = this
        thisPeer.drawForeground_serialize(drawContext_casted)
        return
    }
    public open func invalidate(): Unit {
        let thisPeer = this
        thisPeer.invalidate_serialize()
        return
    }
    private func getDrawBehind(): ((drawContext: DrawContext) -> Unit) {
        return this.getDrawBehind_serialize()
    }
    private func setDrawBehind(drawBehind: ((drawContext: DrawContext) -> Unit)): Unit {
        let drawBehind_casted: ((drawContext: DrawContext) -> Unit) = drawBehind
        let thisPeer = this
        thisPeer.setDrawBehind_serialize(drawBehind_casted)
        return
    }
    private func getDrawContent(): ((drawContext: DrawContext) -> Unit) {
        return this.getDrawContent_serialize()
    }
    private func setDrawContent(drawContent: ((drawContext: DrawContext) -> Unit)): Unit {
        let drawContent_casted: ((drawContext: DrawContext) -> Unit) = drawContent
        let thisPeer = this
        thisPeer.setDrawContent_serialize(drawContent_casted)
        return
    }
    private func getDrawFront(): ((drawContext: DrawContext) -> Unit) {
        return this.getDrawFront_serialize()
    }
    private func setDrawFront(drawFront: ((drawContext: DrawContext) -> Unit)): Unit {
        let drawFront_casted: ((drawContext: DrawContext) -> Unit) = drawFront
        let thisPeer = this
        thisPeer.setDrawFront_serialize(drawFront_casted)
        return
    }
    private func drawForeground_serialize(drawContext: DrawContext): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", drawContext);
        ArkUIGeneratedNativeModule._DrawModifier_drawForeground(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func invalidate_serialize(): Unit {
        ArkUIGeneratedNativeModule._DrawModifier_invalidate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getDrawBehind_serialize(): ((drawContext: DrawContext) -> Unit) {
        let retval = ArkUIGeneratedNativeModule._DrawModifier_getDrawBehind(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setDrawBehind_serialize(drawBehind: ((drawContext: DrawContext) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(drawBehind);
        ArkUIGeneratedNativeModule._DrawModifier_setDrawBehind(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getDrawContent_serialize(): ((drawContext: DrawContext) -> Unit) {
        let retval = ArkUIGeneratedNativeModule._DrawModifier_getDrawContent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setDrawContent_serialize(drawContent: ((drawContext: DrawContext) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(drawContent);
        ArkUIGeneratedNativeModule._DrawModifier_setDrawContent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getDrawFront_serialize(): ((drawContext: DrawContext) -> Unit) {
        let retval = ArkUIGeneratedNativeModule._DrawModifier_getDrawFront(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setDrawFront_serialize(drawFront: ((drawContext: DrawContext) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(drawFront);
        ArkUIGeneratedNativeModule._DrawModifier_setDrawFront(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class DrawModifier_serializer {
    public static func write(buffer: SerializerBase, value: DrawModifier): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): DrawModifier {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return DrawModifierInternal.fromPtr(ptr)
    }
}
