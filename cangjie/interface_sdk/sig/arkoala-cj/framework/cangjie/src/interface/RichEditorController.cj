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
public open class RichEditorControllerInternal {
    public static func fromPtr(ptr: UInt64): RichEditorController {
        return RichEditorController(ptr)
    }
}
public open class RichEditorController <: RichEditorBaseController & MaterializedBase {
    RichEditorController(peerPtr: UInt64) {
        super(peerPtr)
    }
    RichEditorController() {
        super(RichEditorController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._RichEditorController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RichEditorController_getFinalizer()
    }
    public open func addTextSpan(content: ResourceStr, options: Option<RichEditorTextSpanOptions>): Float64 {
        let content_casted: ResourceStr = content
        let options_casted: Option<RichEditorTextSpanOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        return this.addTextSpan_serialize(content_casted, options_casted)
    }
    public open func addImageSpan(value: Union_PixelMap_ResourceStr, options: Option<RichEditorImageSpanOptions>): Float64 {
        let value_casted: Union_PixelMap_ResourceStr = value
        let options_casted: Option<RichEditorImageSpanOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        return this.addImageSpan_serialize(value_casted, options_casted)
    }
    public open func addBuilderSpan(value: CustomBuilder, options: Option<RichEditorBuilderSpanOptions>): Float64 {
        let value_casted: CustomBuilder = value
        let options_casted: Option<RichEditorBuilderSpanOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        return this.addBuilderSpan_serialize(value_casted, options_casted)
    }
    public open func addSymbolSpan(value: Resource, options: Option<RichEditorSymbolSpanOptions>): Float64 {
        let value_casted: Resource = value
        let options_casted: Option<RichEditorSymbolSpanOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        return this.addSymbolSpan_serialize(value_casted, options_casted)
    }
    public open func updateSpanStyle(value: Type_RichEditorController_updateSpanStyle_value): Unit {
        let value_casted: Type_RichEditorController_updateSpanStyle_value = value
        let thisPeer = this
        thisPeer.updateSpanStyle_serialize(value_casted)
        return
    }
    public open func updateParagraphStyle(value: RichEditorParagraphStyleOptions): Unit {
        let value_casted: RichEditorParagraphStyleOptions = value
        let thisPeer = this
        thisPeer.updateParagraphStyle_serialize(value_casted)
        return
    }
    public open func deleteSpans(value: Option<RichEditorRange>): Unit {
        let value_casted: Option<RichEditorRange> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.deleteSpans_serialize(value_casted)
        return
    }
    public open func getSpans(value: Option<RichEditorRange>): ArrayList<Union_RichEditorImageSpanResult_RichEditorTextSpanResult> {
        let value_casted: Option<RichEditorRange> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return this.getSpans_serialize(value_casted)
    }
    public open func getParagraphs(value: Option<RichEditorRange>): ArrayList<RichEditorParagraphResult> {
        let value_casted: Option<RichEditorRange> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return this.getParagraphs_serialize(value_casted)
    }
    public open func getSelection(): RichEditorSelection {
        return this.getSelection_serialize()
    }
    public open func fromStyledString(value: StyledString): ArrayList<RichEditorSpan> {
        let value_casted: StyledString = value
        return this.fromStyledString_serialize(value_casted)
    }
    public open func toStyledString(value: RichEditorRange): StyledString {
        let value_casted: RichEditorRange = value
        return this.toStyledString_serialize(value_casted)
    }
    private func addTextSpan_serialize(content: ResourceStr, options: Option<RichEditorTextSpanOptions>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (content.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let contentForIdx0 = content.getValue0()
            thisSerializer.writeString(contentForIdx0);
        } else if (content.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let contentForIdx1 = content.getValue1()
            thisSerializer.writeCustomObject("Any", contentForIdx1);
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            RichEditorTextSpanOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RichEditorController_addTextSpan(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func addImageSpan_serialize(value: Union_PixelMap_ResourceStr, options: Option<RichEditorImageSpanOptions>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeCustomObject("Any", valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            if (valueForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx1ForIdx0 = valueForIdx1.getValue0()
                thisSerializer.writeString(valueForIdx1ForIdx0);
            } else if (valueForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx1ForIdx1 = valueForIdx1.getValue1()
                thisSerializer.writeCustomObject("Any", valueForIdx1ForIdx1);
            }
        }
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            RichEditorImageSpanOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RichEditorController_addImageSpan(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func addBuilderSpan_serialize(value: CustomBuilder, options: Option<RichEditorBuilderSpanOptions>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(value));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            RichEditorBuilderSpanOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RichEditorController_addBuilderSpan(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func addSymbolSpan_serialize(value: Resource, options: Option<RichEditorSymbolSpanOptions>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", value);
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            RichEditorSymbolSpanOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RichEditorController_addSymbolSpan(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func updateSpanStyle_serialize(value: Type_RichEditorController_updateSpanStyle_value): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            RichEditorUpdateTextSpanStyleOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            RichEditorUpdateImageSpanStyleOptions_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            RichEditorUpdateSymbolSpanStyleOptions_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._RichEditorController_updateSpanStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func updateParagraphStyle_serialize(value: RichEditorParagraphStyleOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RichEditorParagraphStyleOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._RichEditorController_updateParagraphStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func deleteSpans_serialize(value: Option<RichEditorRange>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            RichEditorRange_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RichEditorController_deleteSpans(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getSpans_serialize(value: Option<RichEditorRange>): ArrayList<Union_RichEditorImageSpanResult_RichEditorTextSpanResult> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            RichEditorRange_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RichEditorController_getSpans(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<Union_RichEditorImageSpanResult_RichEditorTextSpanResult> = ArrayList<Union_RichEditorImageSpanResult_RichEditorTextSpanResult>(Int64(bufferLength))
        buffer = ArrayList<Union_RichEditorImageSpanResult_RichEditorTextSpanResult>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            let bufferTempBufUnionSelector: Int8 = retvalDeserializer.readInt8()
            var bufferTempBuf: Union_RichEditorImageSpanResult_RichEditorTextSpanResult 
            if (bufferTempBufUnionSelector == Int8(0)) {
                bufferTempBuf = Union_RichEditorImageSpanResult_RichEditorTextSpanResult(RichEditorImageSpanResult_serializer.read(retvalDeserializer))
            } else if (bufferTempBufUnionSelector == Int8(1)) {
                bufferTempBuf = Union_RichEditorImageSpanResult_RichEditorTextSpanResult(RichEditorTextSpanResult_serializer.read(retvalDeserializer))
            } else {
                throw Exception("One of the branches for bufferTempBuf has to be chosen through deserialisation.")
            }
            buffer[Int64(bufferBufCounterI)] = match (bufferTempBuf as Union_RichEditorImageSpanResult_RichEditorTextSpanResult) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<Union_RichEditorImageSpanResult_RichEditorTextSpanResult> = buffer
        return returnResult
    }
    private func getParagraphs_serialize(value: Option<RichEditorRange>): ArrayList<RichEditorParagraphResult> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            RichEditorRange_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RichEditorController_getParagraphs(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<RichEditorParagraphResult> = ArrayList<RichEditorParagraphResult>(Int64(bufferLength))
        buffer = ArrayList<RichEditorParagraphResult>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = RichEditorParagraphResult_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<RichEditorParagraphResult> = buffer
        return returnResult
    }
    private func getSelection_serialize(): RichEditorSelection {
        let retval = ArkUIGeneratedNativeModule._RichEditorController_getSelection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: RichEditorSelection = RichEditorSelection_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func fromStyledString_serialize(value: StyledString): ArrayList<RichEditorSpan> {
        let retval = ArkUIGeneratedNativeModule._RichEditorController_fromStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(value))
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<RichEditorSpan> = ArrayList<RichEditorSpan>(Int64(bufferLength))
        buffer = ArrayList<RichEditorSpan>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            let bufferTempBufUnionSelector: Int8 = retvalDeserializer.readInt8()
            var bufferTempBuf: RichEditorSpan 
            if (bufferTempBufUnionSelector == Int8(0)) {
                bufferTempBuf = RichEditorSpan(RichEditorImageSpanResult_serializer.read(retvalDeserializer))
            } else if (bufferTempBufUnionSelector == Int8(1)) {
                bufferTempBuf = RichEditorSpan(RichEditorTextSpanResult_serializer.read(retvalDeserializer))
            } else {
                throw Exception("One of the branches for bufferTempBuf has to be chosen through deserialisation.")
            }
            buffer[Int64(bufferBufCounterI)] = match (bufferTempBuf as RichEditorSpan) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<RichEditorSpan> = buffer
        return returnResult
    }
    private func toStyledString_serialize(value: RichEditorRange): StyledString {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RichEditorRange_serializer.write(thisSerializer, value);
        let retval = ArkUIGeneratedNativeModule._RichEditorController_toStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: StyledString = StyledStringInternal.fromPtr(retval)
        return obj
    }
}
public open class RichEditorController_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RichEditorController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RichEditorControllerInternal.fromPtr(ptr)
    }
}
