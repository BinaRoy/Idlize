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
public open class TextStyle_styled_stringInternal {
    public static func fromPtr(ptr: UInt64): TextStyle_styled_string {
        return TextStyle_styled_string(false, ptr)
    }
}
public open class TextStyle_styled_string <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop fontColor: Option<ResourceColor>
    public open prop fontFamily: Option<String>
    public open prop fontSize: Option<Float64>
    public open prop fontWeight: Option<Float64>
    public open prop fontStyle: Option<FontStyle>
    public open prop strokeWidth: Option<Float64>
    public open prop strokeColor: Option<ResourceColor>
    public open prop superscript: Option<SuperscriptStyle>
    TextStyle_styled_string(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TextStyle_styled_string.getFinalizer())
        fontColor = this.getFontColor()
        fontFamily = this.getFontFamily()
        fontSize = this.getFontSize()
        fontWeight = this.getFontWeight()
        fontStyle = this.getFontStyle()
        strokeWidth = this.getStrokeWidth()
        strokeColor = this.getStrokeColor()
        superscript = this.getSuperscript()
    }
    init () {
        TextStyle_styled_string(Option.None)
    }
    TextStyle_styled_string(value: Option<TextStyleInterface>) {
        super(false, TextStyle_styled_string.construct(value))
    }
    static func construct(value: Option<TextStyleInterface>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            TextStyleInterface_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextStyle_styled_string_getFinalizer()
    }
    private func getFontColor(): Option<ResourceColor> {
        return this.getFontColor_serialize()
    }
    private func getFontFamily(): Option<String> {
        return this.getFontFamily_serialize()
    }
    private func getFontSize(): Option<Float64> {
        return this.getFontSize_serialize()
    }
    private func getFontWeight(): Option<Float64> {
        return this.getFontWeight_serialize()
    }
    private func getFontStyle(): Option<FontStyle> {
        return this.getFontStyle_serialize()
    }
    private func getStrokeWidth(): Option<Float64> {
        return this.getStrokeWidth_serialize()
    }
    private func getStrokeColor(): Option<ResourceColor> {
        return this.getStrokeColor_serialize()
    }
    private func getSuperscript(): Option<SuperscriptStyle> {
        return this.getSuperscript_serialize()
    }
    private func getFontColor_serialize(): Option<ResourceColor> {
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_getFontColor(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_UnionSelector: Int8 = retvalDeserializer.readInt8()
            var buffer_: ResourceColor 
            if (buffer_UnionSelector == Int8(0)) {
                buffer_ = ResourceColor(Color(retvalDeserializer.readInt32()))
            } else if (buffer_UnionSelector == Int8(1)) {
                buffer_ = ResourceColor(match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(2)) {
                buffer_ = ResourceColor(match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(3)) {
                buffer_ = ResourceColor(match (retvalDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for buffer_ has to be chosen through deserialisation.")
            }
            buffer = match (buffer_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<ResourceColor> = buffer
        return returnResult
    }
    private func getFontFamily_serialize(): Option<String> {
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_getFontFamily(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<String> = buffer
        return returnResult
    }
    private func getFontSize_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_getFontSize(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func getFontWeight_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_getFontWeight(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func getFontStyle_serialize(): Option<FontStyle> {
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_getFontStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<FontStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = FontStyle(retvalDeserializer.readInt32())
        }
        let returnResult: Option<FontStyle> = buffer
        return returnResult
    }
    private func getStrokeWidth_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_getStrokeWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func getStrokeColor_serialize(): Option<ResourceColor> {
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_getStrokeColor(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_UnionSelector: Int8 = retvalDeserializer.readInt8()
            var buffer_: ResourceColor 
            if (buffer_UnionSelector == Int8(0)) {
                buffer_ = ResourceColor(Color(retvalDeserializer.readInt32()))
            } else if (buffer_UnionSelector == Int8(1)) {
                buffer_ = ResourceColor(match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(2)) {
                buffer_ = ResourceColor(match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(3)) {
                buffer_ = ResourceColor(match (retvalDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for buffer_ has to be chosen through deserialisation.")
            }
            buffer = match (buffer_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<ResourceColor> = buffer
        return returnResult
    }
    private func getSuperscript_serialize(): Option<SuperscriptStyle> {
        let retval = ArkUIGeneratedNativeModule._TextStyle_styled_string_getSuperscript(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<SuperscriptStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = SuperscriptStyle(retvalDeserializer.readInt32())
        }
        let returnResult: Option<SuperscriptStyle> = buffer
        return returnResult
    }
}
public open class TextStyle_styled_string_serializer {
    public static func write(buffer: SerializerBase, value: TextStyle_styled_string): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextStyle_styled_string {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextStyle_styled_stringInternal.fromPtr(ptr)
    }
}
