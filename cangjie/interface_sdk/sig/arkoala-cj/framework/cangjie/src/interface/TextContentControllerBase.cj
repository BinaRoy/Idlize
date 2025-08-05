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
public open class TextContentControllerBaseInternal {
    public static func fromPtr(ptr: UInt64): TextContentControllerBase {
        return TextContentControllerBase(ptr)
    }
}
public open class TextContentControllerBase <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    TextContentControllerBase(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TextContentControllerBase.getFinalizer())
    }
    TextContentControllerBase() {
        super(TextContentControllerBase.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TextContentControllerBase_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextContentControllerBase_getFinalizer()
    }
    public open func getCaretOffset(): CaretOffset {
        return this.getCaretOffset_serialize()
    }
    public open func getTextContentRect(): RectResult {
        return this.getTextContentRect_serialize()
    }
    public open func getTextContentLineCount(): Float64 {
        return this.getTextContentLineCount_serialize()
    }
    public open func addText(text: String, textOperationOptions: Option<TextContentControllerOptions>): Float64 {
        let text_casted: String = text
        let textOperationOptions_casted: Option<TextContentControllerOptions> = if (let Some(textOperationOptions) <- textOperationOptions) {textOperationOptions} else { throw Exception("Type has to be not None")}
        return this.addText_serialize(text_casted, textOperationOptions_casted)
    }
    public open func deleteText(range: Option<TextRange>): Unit {
        let range_casted: Option<TextRange> = if (let Some(range) <- range) {range} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.deleteText_serialize(range_casted)
        return
    }
    public open func getSelection(): TextRange {
        return this.getSelection_serialize()
    }
    public open func clearPreviewText(): Unit {
        let thisPeer = this
        thisPeer.clearPreviewText_serialize()
        return
    }
    public open func getText(range: Option<TextRange>): String {
        let range_casted: Option<TextRange> = if (let Some(range) <- range) {range} else { throw Exception("Type has to be not None")}
        return this.getText_serialize(range_casted)
    }
    private func getCaretOffset_serialize(): CaretOffset {
        let retval = ArkUIGeneratedNativeModule._TextContentControllerBase_getCaretOffset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: CaretOffset = CaretOffset_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getTextContentRect_serialize(): RectResult {
        let retval = ArkUIGeneratedNativeModule._TextContentControllerBase_getTextContentRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: RectResult = RectResult_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getTextContentLineCount_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._TextContentControllerBase_getTextContentLineCount(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func addText_serialize(text: String, textOperationOptions: Option<TextContentControllerOptions>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (textOperationOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let textOperationOptionsTmpValue = textOperationOptions
            TextContentControllerOptions_serializer.write(thisSerializer, textOperationOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextContentControllerBase_addText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, text, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func deleteText_serialize(range: Option<TextRange>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (range.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rangeTmpValue = range
            TextRange_serializer.write(thisSerializer, rangeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextContentControllerBase_deleteText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getSelection_serialize(): TextRange {
        let retval = ArkUIGeneratedNativeModule._TextContentControllerBase_getSelection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: TextRange = TextRange_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func clearPreviewText_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextContentControllerBase_clearPreviewText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getText_serialize(range: Option<TextRange>): String {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (range.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rangeTmpValue = range
            TextRange_serializer.write(thisSerializer, rangeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextContentControllerBase_getText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
}
public open class TextContentControllerBase_serializer {
    public static func write(buffer: SerializerBase, value: TextContentControllerBase): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextContentControllerBase {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextContentControllerBaseInternal.fromPtr(ptr)
    }
}
