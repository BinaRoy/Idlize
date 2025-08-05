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
public open class StyledStringInternal {
    public static func fromPtr(ptr: UInt64): StyledString {
        return StyledString(false, false, ptr)
    }
}
public open class StyledString <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop length: Float64
    StyledString(_0: Bool, _1: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, StyledString.getFinalizer())
        length = this.getLength()
    }
    init (value: Union_String_ImageAttachment_CustomSpan) {
        StyledString(value, Option.None)
    }
    StyledString(value: Union_String_ImageAttachment_CustomSpan, styles: Option<ArrayList<StyleOptions>>) {
        super(false, false, StyledString.construct(value, styles))
    }
    static func construct(value: Union_String_ImageAttachment_CustomSpan, styles: Option<ArrayList<StyleOptions>>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            ImageAttachment_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            CustomSpan_serializer.write(thisSerializer, valueForIdx2);
        }
        if (styles.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let stylesTmpValue = styles
            thisSerializer.writeInt32(Int32(stylesTmpValue.size));
            for (stylesTmpValueCounterI in 0..stylesTmpValue.size) {
                let stylesTmpValueTmpElement: StyleOptions = stylesTmpValue[Int64(stylesTmpValueCounterI)]
                StyleOptions_serializer.write(thisSerializer, stylesTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._StyledString_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._StyledString_getFinalizer()
    }
    static private func fromHtml_serialize(html: String): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let retval = thisSerializer.holdAndWriteCallbackForPromise<StyledString>().promise
        ArkUIGeneratedNativeModule._StyledString_fromHtml(html, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    static private func toHtml_serialize(styledString: StyledString): String {
        let retval = ArkUIGeneratedNativeModule._StyledString_toHtml(MaterializedBase.toPeerPtr(styledString))
        return retval
    }
    static private func marshalling0_serialize(styledString: StyledString, callback_: StyledStringMarshallCallback): Array<UInt8> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        let retval = ArkUIGeneratedNativeModule._StyledString_marshalling0(MaterializedBase.toPeerPtr(styledString), thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return DeserializerBase(retval, Int32(retval.size)).readBuffer()
    }
    static private func marshalling1_serialize(styledString: StyledString): Array<UInt8> {
        let retval = ArkUIGeneratedNativeModule._StyledString_marshalling1(MaterializedBase.toPeerPtr(styledString))
        return DeserializerBase(retval, Int32(retval.size)).readBuffer()
    }
    static private func unmarshalling0_serialize(buffer: Array<UInt8>, callback_: StyledStringUnmarshallCallback): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeBuffer(buffer);
        thisSerializer.holdAndWriteCallback(callback_);
        let retval = thisSerializer.holdAndWriteCallbackForPromise<StyledString>().promise
        ArkUIGeneratedNativeModule._StyledString_unmarshalling0(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    static private func unmarshalling1_serialize(buffer: Array<UInt8>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeBuffer(buffer);
        let retval = thisSerializer.holdAndWriteCallbackForPromise<StyledString>().promise
        ArkUIGeneratedNativeModule._StyledString_unmarshalling1(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    public open func getString(): String {
        return this.getString_serialize()
    }
    public open func getStyles(start: Float64, length: Float64, styledKey: Option<StyledStringKey>): ArrayList<SpanStyle> {
        let start_casted: Float64 = start
        let length_casted: Float64 = length
        let styledKey_casted: Option<StyledStringKey> = if (let Some(styledKey) <- styledKey) {styledKey} else { throw Exception("Type has to be not None")}
        return this.getStyles_serialize(start_casted, length_casted, styledKey_casted)
    }
    public open func equals(other: StyledString): Bool {
        let other_casted: StyledString = other
        return this.equals_serialize(other_casted)
    }
    public open func subStyledString(start: Float64, length: Option<Float64>): StyledString {
        let start_casted: Float64 = start
        let length_casted: Option<Float64> = if (let Some(length) <- length) {length} else { throw Exception("Type has to be not None")}
        return this.subStyledString_serialize(start_casted, length_casted)
    }
    static public func fromHtml(html: String): Any {
        let html_casted: String = html
        return StyledString.fromHtml_serialize(html_casted)
    }
    static public func toHtml(styledString: StyledString): String {
        let styledString_casted: StyledString = styledString
        return StyledString.toHtml_serialize(styledString_casted)
    }
    static public func marshalling(styledString: StyledString, callback_: StyledStringMarshallCallback): Array<UInt8> {
        let styledString_casted: StyledString = styledString
        let callback__casted: StyledStringMarshallCallback = callback_
        return StyledString.marshalling0_serialize(styledString_casted, callback__casted)
    }
    static public func marshalling(styledString: StyledString): Array<UInt8> {
        let styledString_casted: StyledString = styledString
        return StyledString.marshalling1_serialize(styledString_casted)
    }
    static public func unmarshalling(buffer: Array<UInt8>, callback_: StyledStringUnmarshallCallback): Any {
        let buffer_casted: Array<UInt8> = buffer
        let callback__casted: StyledStringUnmarshallCallback = callback_
        return StyledString.unmarshalling0_serialize(buffer_casted, callback__casted)
    }
    static public func unmarshalling(buffer: Array<UInt8>): Any {
        let buffer_casted: Array<UInt8> = buffer
        return StyledString.unmarshalling1_serialize(buffer_casted)
    }
    private func getLength(): Float64 {
        return this.getLength_serialize()
    }
    private func getString_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._StyledString_getString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getStyles_serialize(start: Float64, length: Float64, styledKey: Option<StyledStringKey>): ArrayList<SpanStyle> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (styledKey.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styledKeyTmpValue = styledKey
            thisSerializer.writeInt32(styledKeyTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._StyledString_getStyles(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, length, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<SpanStyle> = ArrayList<SpanStyle>(Int64(bufferLength))
        buffer = ArrayList<SpanStyle>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = SpanStyle_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<SpanStyle> = buffer
        return returnResult
    }
    private func equals_serialize(other: StyledString): Bool {
        let retval = ArkUIGeneratedNativeModule._StyledString_equals(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(other))
        return retval
    }
    private func subStyledString_serialize(start: Float64, length: Option<Float64>): StyledString {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (length.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let lengthTmpValue = length
            thisSerializer.writeNumber(lengthTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._StyledString_subStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: StyledString = StyledStringInternal.fromPtr(retval)
        return obj
    }
    private func getLength_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._StyledString_getLength(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class StyledString_serializer {
    public static func write(buffer: SerializerBase, value: StyledString): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): StyledString {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return StyledStringInternal.fromPtr(ptr)
    }
}
