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
public open class DecorationStyleInternal {
    public static func fromPtr(ptr: UInt64): DecorationStyle {
        return DecorationStyle(false, false, ptr)
    }
}
public open class DecorationStyle <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop type_: TextDecorationType
    public open prop color: Option<ResourceColor>
    public open prop style: Option<TextDecorationStyle>
    public open prop thicknessScale: Option<Float64>
    public open prop options: Option<DecorationOptions>
    DecorationStyle(_0: Bool, _1: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, DecorationStyle.getFinalizer())
        type_ = this.getType()
        color = this.getColor()
        style = this.getStyle()
        thicknessScale = this.getThicknessScale()
        options = this.getOptions()
    }
    DecorationStyle(value: DecorationStyleInterface) {
        super(false, false, DecorationStyle.construct0(value))
    }
    init (value: DecorationStyleInterface) {
        DecorationStyle(value, Option.None)
    }
    DecorationStyle(value: DecorationStyleInterface, options: Option<DecorationOptions>) {
        super(false, false, DecorationStyle.construct1(value, options))
    }
    static func construct0(value: DecorationStyleInterface): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        DecorationStyleInterface_serializer.write(thisSerializer, value);
        let retval = ArkUIGeneratedNativeModule._DecorationStyle_construct0(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct1(value: DecorationStyleInterface, options: Option<DecorationOptions>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        DecorationStyleInterface_serializer.write(thisSerializer, value);
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            DecorationOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._DecorationStyle_construct1(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._DecorationStyle_getFinalizer()
    }
    private func getType(): TextDecorationType {
        return this.getType_serialize()
    }
    private func getColor(): Option<ResourceColor> {
        return this.getColor_serialize()
    }
    private func getStyle(): Option<TextDecorationStyle> {
        return this.getStyle_serialize()
    }
    private func getThicknessScale(): Option<Float64> {
        return this.getThicknessScale_serialize()
    }
    private func getOptions(): Option<DecorationOptions> {
        return this.getOptions_serialize()
    }
    private func getType_serialize(): TextDecorationType {
        let retval = ArkUIGeneratedNativeModule._DecorationStyle_getType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return TextDecorationType(retval)
    }
    private func getColor_serialize(): Option<ResourceColor> {
        let retval = ArkUIGeneratedNativeModule._DecorationStyle_getColor(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
    private func getStyle_serialize(): Option<TextDecorationStyle> {
        let retval = ArkUIGeneratedNativeModule._DecorationStyle_getStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<TextDecorationStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = TextDecorationStyle(retvalDeserializer.readInt32())
        }
        let returnResult: Option<TextDecorationStyle> = buffer
        return returnResult
    }
    private func getThicknessScale_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._DecorationStyle_getThicknessScale(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func getOptions_serialize(): Option<DecorationOptions> {
        let retval = ArkUIGeneratedNativeModule._DecorationStyle_getOptions(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<DecorationOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = DecorationOptions_serializer.read(retvalDeserializer)
        }
        let returnResult: Option<DecorationOptions> = buffer
        return returnResult
    }
}
public open class DecorationStyle_serializer {
    public static func write(buffer: SerializerBase, value: DecorationStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): DecorationStyle {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return DecorationStyleInternal.fromPtr(ptr)
    }
}
