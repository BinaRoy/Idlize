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
public open class RichEditorBaseControllerInternal {
    public static func fromPtr(ptr: UInt64): RichEditorBaseController {
        return RichEditorBaseController(ptr)
    }
}
public open class RichEditorBaseController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    RichEditorBaseController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, RichEditorBaseController.getFinalizer())
    }
    RichEditorBaseController() {
        super(RichEditorBaseController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._RichEditorBaseController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RichEditorBaseController_getFinalizer()
    }
    public open func getCaretOffset(): Float64 {
        return this.getCaretOffset_serialize()
    }
    public open func setCaretOffset(offset: Float64): Bool {
        let offset_casted: Float64 = offset
        return this.setCaretOffset_serialize(offset_casted)
    }
    public open func closeSelectionMenu(): Unit {
        let thisPeer = this
        thisPeer.closeSelectionMenu_serialize()
        return
    }
    public open func getTypingStyle(): RichEditorTextStyle {
        return this.getTypingStyle_serialize()
    }
    public open func setTypingStyle(value: RichEditorTextStyle): Unit {
        let value_casted: RichEditorTextStyle = value
        let thisPeer = this
        thisPeer.setTypingStyle_serialize(value_casted)
        return
    }
    public open func setTypingParagraphStyle(style: RichEditorParagraphStyle): Unit {
        let style_casted: RichEditorParagraphStyle = style
        let thisPeer = this
        thisPeer.setTypingParagraphStyle_serialize(style_casted)
        return
    }
    public open func setSelection(selectionStart: Float64, selectionEnd: Float64, options: Option<SelectionOptions>): Unit {
        let selectionStart_casted: Float64 = selectionStart
        let selectionEnd_casted: Float64 = selectionEnd
        let options_casted: Option<SelectionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setSelection_serialize(selectionStart_casted, selectionEnd_casted, options_casted)
        return
    }
    public open func isEditing(): Bool {
        return this.isEditing_serialize()
    }
    public open func stopEditing(): Unit {
        let thisPeer = this
        thisPeer.stopEditing_serialize()
        return
    }
    public open func getLayoutManager(): LayoutManager {
        return this.getLayoutManager_serialize()
    }
    public open func getPreviewText(): PreviewText {
        return this.getPreviewText_serialize()
    }
    public open func getCaretRect(): Option<RectResult> {
        return this.getCaretRect_serialize()
    }
    private func getCaretOffset_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._RichEditorBaseController_getCaretOffset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setCaretOffset_serialize(offset: Float64): Bool {
        let retval = ArkUIGeneratedNativeModule._RichEditorBaseController_setCaretOffset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, offset)
        return retval
    }
    private func closeSelectionMenu_serialize(): Unit {
        ArkUIGeneratedNativeModule._RichEditorBaseController_closeSelectionMenu(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getTypingStyle_serialize(): RichEditorTextStyle {
        let retval = ArkUIGeneratedNativeModule._RichEditorBaseController_getTypingStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: RichEditorTextStyle = RichEditorTextStyle_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func setTypingStyle_serialize(value: RichEditorTextStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RichEditorTextStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._RichEditorBaseController_setTypingStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setTypingParagraphStyle_serialize(style: RichEditorParagraphStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RichEditorParagraphStyle_serializer.write(thisSerializer, style);
        ArkUIGeneratedNativeModule._RichEditorBaseController_setTypingParagraphStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setSelection_serialize(selectionStart: Float64, selectionEnd: Float64, options: Option<SelectionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SelectionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorBaseController_setSelection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, selectionStart, selectionEnd, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func isEditing_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._RichEditorBaseController_isEditing(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func stopEditing_serialize(): Unit {
        ArkUIGeneratedNativeModule._RichEditorBaseController_stopEditing(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getLayoutManager_serialize(): LayoutManager {
        let retval = ArkUIGeneratedNativeModule._RichEditorBaseController_getLayoutManager(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: LayoutManager = LayoutManagerInternal.fromPtr(retval)
        return obj
    }
    private func getPreviewText_serialize(): PreviewText {
        let retval = ArkUIGeneratedNativeModule._RichEditorBaseController_getPreviewText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: PreviewText = PreviewText_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getCaretRect_serialize(): Option<RectResult> {
        let retval = ArkUIGeneratedNativeModule._RichEditorBaseController_getCaretRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<RectResult> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = RectResult_serializer.read(retvalDeserializer)
        }
        let returnResult: Option<RectResult> = buffer
        return returnResult
    }
}
public open class RichEditorBaseController_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorBaseController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RichEditorBaseController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RichEditorBaseControllerInternal.fromPtr(ptr)
    }
}
