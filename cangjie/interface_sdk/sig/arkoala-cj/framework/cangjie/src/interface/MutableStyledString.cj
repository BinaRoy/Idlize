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
public open class MutableStyledStringInternal {
    public static func fromPtr(ptr: UInt64): MutableStyledString {
        return MutableStyledString(false, false, ptr)
    }
}
public open class MutableStyledString <: StyledString & MaterializedBase {
    MutableStyledString(_0: Bool, _1: Bool, peerPtr: UInt64) {
        super(false, false, peerPtr)
    }
    init (value: Union_String_ImageAttachment_CustomSpan) {
        MutableStyledString(value, Option.None)
    }
    MutableStyledString(value: Union_String_ImageAttachment_CustomSpan, styles: Option<ArrayList<StyleOptions>>) {
        super(false, false, MutableStyledString.construct(value, styles))
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
        let retval = ArkUIGeneratedNativeModule._MutableStyledString_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._MutableStyledString_getFinalizer()
    }
    public open func replaceString(start: Float64, length: Float64, other: String): Unit {
        let start_casted: Float64 = start
        let length_casted: Float64 = length
        let other_casted: String = other
        let thisPeer = this
        thisPeer.replaceString_serialize(start_casted, length_casted, other_casted)
        return
    }
    public open func insertString(start: Float64, other: String): Unit {
        let start_casted: Float64 = start
        let other_casted: String = other
        let thisPeer = this
        thisPeer.insertString_serialize(start_casted, other_casted)
        return
    }
    public open func removeString(start: Float64, length: Float64): Unit {
        let start_casted: Float64 = start
        let length_casted: Float64 = length
        let thisPeer = this
        thisPeer.removeString_serialize(start_casted, length_casted)
        return
    }
    public open func replaceStyle(spanStyle: SpanStyle): Unit {
        let spanStyle_casted: SpanStyle = spanStyle
        let thisPeer = this
        thisPeer.replaceStyle_serialize(spanStyle_casted)
        return
    }
    public open func setStyle(spanStyle: SpanStyle): Unit {
        let spanStyle_casted: SpanStyle = spanStyle
        let thisPeer = this
        thisPeer.setStyle_serialize(spanStyle_casted)
        return
    }
    public open func removeStyle(start: Float64, length: Float64, styledKey: StyledStringKey): Unit {
        let start_casted: Float64 = start
        let length_casted: Float64 = length
        let styledKey_casted: StyledStringKey = styledKey
        let thisPeer = this
        thisPeer.removeStyle_serialize(start_casted, length_casted, styledKey_casted)
        return
    }
    public open func removeStyles(start: Float64, length: Float64): Unit {
        let start_casted: Float64 = start
        let length_casted: Float64 = length
        let thisPeer = this
        thisPeer.removeStyles_serialize(start_casted, length_casted)
        return
    }
    public open func clearStyles(): Unit {
        let thisPeer = this
        thisPeer.clearStyles_serialize()
        return
    }
    public open func replaceStyledString(start: Float64, length: Float64, other: StyledString): Unit {
        let start_casted: Float64 = start
        let length_casted: Float64 = length
        let other_casted: StyledString = other
        let thisPeer = this
        thisPeer.replaceStyledString_serialize(start_casted, length_casted, other_casted)
        return
    }
    public open func insertStyledString(start: Float64, other: StyledString): Unit {
        let start_casted: Float64 = start
        let other_casted: StyledString = other
        let thisPeer = this
        thisPeer.insertStyledString_serialize(start_casted, other_casted)
        return
    }
    public open func appendStyledString(other: StyledString): Unit {
        let other_casted: StyledString = other
        let thisPeer = this
        thisPeer.appendStyledString_serialize(other_casted)
        return
    }
    private func replaceString_serialize(start: Float64, length: Float64, other: String): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_replaceString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, length, other);
    }
    private func insertString_serialize(start: Float64, other: String): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_insertString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, other);
    }
    private func removeString_serialize(start: Float64, length: Float64): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_removeString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, length);
    }
    private func replaceStyle_serialize(spanStyle: SpanStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SpanStyle_serializer.write(thisSerializer, spanStyle);
        ArkUIGeneratedNativeModule._MutableStyledString_replaceStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setStyle_serialize(spanStyle: SpanStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SpanStyle_serializer.write(thisSerializer, spanStyle);
        ArkUIGeneratedNativeModule._MutableStyledString_setStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func removeStyle_serialize(start: Float64, length: Float64, styledKey: StyledStringKey): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_removeStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, length, styledKey.value);
    }
    private func removeStyles_serialize(start: Float64, length: Float64): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_removeStyles(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, length);
    }
    private func clearStyles_serialize(): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_clearStyles(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func replaceStyledString_serialize(start: Float64, length: Float64, other: StyledString): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_replaceStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, length, MaterializedBase.toPeerPtr(other));
    }
    private func insertStyledString_serialize(start: Float64, other: StyledString): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_insertStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, start, MaterializedBase.toPeerPtr(other));
    }
    private func appendStyledString_serialize(other: StyledString): Unit {
        ArkUIGeneratedNativeModule._MutableStyledString_appendStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(other));
    }
}
public open class MutableStyledString_serializer {
    public static func write(buffer: SerializerBase, value: MutableStyledString): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): MutableStyledString {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return MutableStyledStringInternal.fromPtr(ptr)
    }
}
