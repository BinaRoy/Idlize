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
public interface TextEditControllerEx {
    public open func isEditing(): Bool
    public open func stopEditing(): Unit
    public open func setCaretOffset(offset: Float64): Bool
    public open func getCaretOffset(): Float64
    public open func getPreviewText(): PreviewText
}
public open class TextEditControllerExInternal <: TextBaseControllerInternal & MaterializedBase & TextEditControllerEx {
    TextEditControllerExInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    TextEditControllerExInternal() {
        super(TextEditControllerExInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TextEditControllerEx_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextEditControllerEx_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): TextEditControllerExInternal {
        return TextEditControllerExInternal(ptr)
    }
    public open func isEditing(): Bool {
        return this.isEditing_serialize()
    }
    public open func stopEditing(): Unit {
        let thisPeer = this
        thisPeer.stopEditing_serialize()
        return
    }
    public open func setCaretOffset(offset: Float64): Bool {
        let offset_casted: Float64 = offset
        return this.setCaretOffset_serialize(offset_casted)
    }
    public open func getCaretOffset(): Float64 {
        return this.getCaretOffset_serialize()
    }
    public open func getPreviewText(): PreviewText {
        return this.getPreviewText_serialize()
    }
    private func isEditing_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._TextEditControllerEx_isEditing(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func stopEditing_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextEditControllerEx_stopEditing(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func setCaretOffset_serialize(offset: Float64): Bool {
        let retval = ArkUIGeneratedNativeModule._TextEditControllerEx_setCaretOffset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, offset)
        return retval
    }
    private func getCaretOffset_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._TextEditControllerEx_getCaretOffset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getPreviewText_serialize(): PreviewText {
        let retval = ArkUIGeneratedNativeModule._TextEditControllerEx_getPreviewText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: PreviewText = PreviewText_serializer.read(retvalDeserializer)
        return returnResult
    }
}
public open class TextEditControllerEx_serializer {
    public static func write(buffer: SerializerBase, value: TextEditControllerEx): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextEditControllerEx {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextEditControllerExInternal.fromPtr(ptr)
    }
}
