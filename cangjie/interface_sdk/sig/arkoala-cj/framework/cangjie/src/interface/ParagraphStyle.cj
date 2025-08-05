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
public open class ParagraphStyleInternal {
    public static func fromPtr(ptr: UInt64): ParagraphStyle {
        return ParagraphStyle(false, ptr)
    }
}
public open class ParagraphStyle <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop textAlign: Option<TextAlign>
    public open prop textVerticalAlign: Option<TextVerticalAlign>
    public open prop textIndent: Option<Float64>
    public open prop maxLines: Option<Float64>
    public open prop overflow: Option<TextOverflow>
    public open prop wordBreak: Option<WordBreak>
    public open prop leadingMargin: Option<Union_Number_LeadingMarginPlaceholder>
    public open prop paragraphSpacing: Option<Float64>
    ParagraphStyle(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ParagraphStyle.getFinalizer())
        textAlign = this.getTextAlign()
        textVerticalAlign = this.getTextVerticalAlign()
        textIndent = this.getTextIndent()
        maxLines = this.getMaxLines()
        overflow = this.getOverflow()
        wordBreak = this.getWordBreak()
        leadingMargin = this.getLeadingMargin()
        paragraphSpacing = this.getParagraphSpacing()
    }
    init () {
        ParagraphStyle(Option.None)
    }
    ParagraphStyle(value: Option<ParagraphStyleInterface>) {
        super(false, ParagraphStyle.construct(value))
    }
    static func construct(value: Option<ParagraphStyleInterface>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            ParagraphStyleInterface_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ParagraphStyle_getFinalizer()
    }
    private func getTextAlign(): Option<TextAlign> {
        return this.getTextAlign_serialize()
    }
    private func getTextVerticalAlign(): Option<TextVerticalAlign> {
        return this.getTextVerticalAlign_serialize()
    }
    private func getTextIndent(): Option<Float64> {
        return this.getTextIndent_serialize()
    }
    private func getMaxLines(): Option<Float64> {
        return this.getMaxLines_serialize()
    }
    private func getOverflow(): Option<TextOverflow> {
        return this.getOverflow_serialize()
    }
    private func getWordBreak(): Option<WordBreak> {
        return this.getWordBreak_serialize()
    }
    private func getLeadingMargin(): Option<Union_Number_LeadingMarginPlaceholder> {
        return this.getLeadingMargin_serialize()
    }
    private func getParagraphSpacing(): Option<Float64> {
        return this.getParagraphSpacing_serialize()
    }
    private func getTextAlign_serialize(): Option<TextAlign> {
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_getTextAlign(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<TextAlign> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = TextAlign(retvalDeserializer.readInt32())
        }
        let returnResult: Option<TextAlign> = buffer
        return returnResult
    }
    private func getTextVerticalAlign_serialize(): Option<TextVerticalAlign> {
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_getTextVerticalAlign(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<TextVerticalAlign> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = TextVerticalAlign(retvalDeserializer.readInt32())
        }
        let returnResult: Option<TextVerticalAlign> = buffer
        return returnResult
    }
    private func getTextIndent_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_getTextIndent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func getMaxLines_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_getMaxLines(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func getOverflow_serialize(): Option<TextOverflow> {
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_getOverflow(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<TextOverflow> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = TextOverflow(retvalDeserializer.readInt32())
        }
        let returnResult: Option<TextOverflow> = buffer
        return returnResult
    }
    private func getWordBreak_serialize(): Option<WordBreak> {
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_getWordBreak(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<WordBreak> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = WordBreak(retvalDeserializer.readInt32())
        }
        let returnResult: Option<WordBreak> = buffer
        return returnResult
    }
    private func getLeadingMargin_serialize(): Option<Union_Number_LeadingMarginPlaceholder> {
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_getLeadingMargin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Union_Number_LeadingMarginPlaceholder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_UnionSelector: Int8 = retvalDeserializer.readInt8()
            var buffer_: Union_Number_LeadingMarginPlaceholder 
            if (buffer_UnionSelector == Int8(0)) {
                buffer_ = Union_Number_LeadingMarginPlaceholder(match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(1)) {
                buffer_ = Union_Number_LeadingMarginPlaceholder(LeadingMarginPlaceholder_serializer.read(retvalDeserializer))
            } else {
                throw Exception("One of the branches for buffer_ has to be chosen through deserialisation.")
            }
            buffer = match (buffer_ as Union_Number_LeadingMarginPlaceholder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Union_Number_LeadingMarginPlaceholder> = buffer
        return returnResult
    }
    private func getParagraphSpacing_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._ParagraphStyle_getParagraphSpacing(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
}
public open class ParagraphStyle_serializer {
    public static func write(buffer: SerializerBase, value: ParagraphStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ParagraphStyle {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ParagraphStyleInternal.fromPtr(ptr)
    }
}
