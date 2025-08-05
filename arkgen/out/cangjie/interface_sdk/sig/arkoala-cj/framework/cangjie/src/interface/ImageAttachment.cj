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
public open class ImageAttachmentInternal {
    public static func fromPtr(ptr: UInt64): ImageAttachment {
        return ImageAttachment(false, ptr)
    }
}
public open class ImageAttachment <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop value: PixelMap
    public open prop size: Option<SizeOptions>
    public open prop verticalAlign: Option<ImageSpanAlignment>
    public open prop objectFit: Option<ImageFit>
    public open prop layoutStyle: Option<ImageAttachmentLayoutStyle>
    public open prop colorFilter: Option<ColorFilterType>
    ImageAttachment(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ImageAttachment.getFinalizer())
        value = this.getValue()
        size = this.getSize()
        verticalAlign = this.getVerticalAlign()
        objectFit = this.getObjectFit()
        layoutStyle = this.getLayoutStyle()
        colorFilter = this.getColorFilter()
    }
    ImageAttachment(value: ImageAttachmentInterface) {
        super(false, ImageAttachment.construct0(value))
    }
    ImageAttachment(attachment: Option<AttachmentType>) {
        super(false, ImageAttachment.construct1(attachment))
    }
    ImageAttachment(value: Union_ImageAttachmentInterface_Opt_AttachmentType) {
        super(false, ImageAttachment.construct2(value))
    }
    static func construct0(value: ImageAttachmentInterface): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ImageAttachmentInterface_serializer.write(thisSerializer, value);
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_construct0(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct1(attachment: Option<AttachmentType>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (attachment.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let attachmentTmpValue = attachment
            if (attachmentTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let attachmentTmpValueForIdx0 = attachmentTmpValue.getValue0()
                ImageAttachmentInterface_serializer.write(thisSerializer, attachmentTmpValueForIdx0);
            } else if (attachmentTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let attachmentTmpValueForIdx1 = attachmentTmpValue.getValue1()
                ResourceImageAttachmentOptions_serializer.write(thisSerializer, attachmentTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_construct1(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct2(value: Union_ImageAttachmentInterface_Opt_AttachmentType): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            ImageAttachmentInterface_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            if (valueForIdx1.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueForIdx1TmpValue = valueForIdx1
                if (valueForIdx1TmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueForIdx1TmpValueForIdx0 = valueForIdx1TmpValue.getValue0()
                    ImageAttachmentInterface_serializer.write(thisSerializer, valueForIdx1TmpValueForIdx0);
                } else if (valueForIdx1TmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueForIdx1TmpValueForIdx1 = valueForIdx1TmpValue.getValue1()
                    ResourceImageAttachmentOptions_serializer.write(thisSerializer, valueForIdx1TmpValueForIdx1);
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        }
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_construct2(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ImageAttachment_getFinalizer()
    }
    private func getValue(): PixelMap {
        return this.getValue_serialize()
    }
    private func getSize(): Option<SizeOptions> {
        return this.getSize_serialize()
    }
    private func getVerticalAlign(): Option<ImageSpanAlignment> {
        return this.getVerticalAlign_serialize()
    }
    private func getObjectFit(): Option<ImageFit> {
        return this.getObjectFit_serialize()
    }
    private func getLayoutStyle(): Option<ImageAttachmentLayoutStyle> {
        return this.getLayoutStyle_serialize()
    }
    private func getColorFilter(): Option<ColorFilterType> {
        return this.getColorFilter_serialize()
    }
    private func getValue_serialize(): PixelMap {
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_getValue(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func getSize_serialize(): Option<SizeOptions> {
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_getSize(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<SizeOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = SizeOptions_serializer.read(retvalDeserializer)
        }
        let returnResult: Option<SizeOptions> = buffer
        return returnResult
    }
    private func getVerticalAlign_serialize(): Option<ImageSpanAlignment> {
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_getVerticalAlign(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ImageSpanAlignment> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = ImageSpanAlignment(retvalDeserializer.readInt32())
        }
        let returnResult: Option<ImageSpanAlignment> = buffer
        return returnResult
    }
    private func getObjectFit_serialize(): Option<ImageFit> {
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_getObjectFit(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ImageFit> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = ImageFit(retvalDeserializer.readInt32())
        }
        let returnResult: Option<ImageFit> = buffer
        return returnResult
    }
    private func getLayoutStyle_serialize(): Option<ImageAttachmentLayoutStyle> {
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_getLayoutStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ImageAttachmentLayoutStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = ImageAttachmentLayoutStyle_serializer.read(retvalDeserializer)
        }
        let returnResult: Option<ImageAttachmentLayoutStyle> = buffer
        return returnResult
    }
    private func getColorFilter_serialize(): Option<ColorFilterType> {
        let retval = ArkUIGeneratedNativeModule._ImageAttachment_getColorFilter(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ColorFilterType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_UnionSelector: Int8 = retvalDeserializer.readInt8()
            var buffer_: ColorFilterType 
            if (buffer_UnionSelector == Int8(0)) {
                buffer_ = ColorFilterType(match (ColorFilter_serializer.read(retvalDeserializer) as ColorFilter) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (buffer_UnionSelector == Int8(1)) {
                buffer_ = ColorFilterType(match (retvalDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for buffer_ has to be chosen through deserialisation.")
            }
            buffer = match (buffer_ as ColorFilterType) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<ColorFilterType> = buffer
        return returnResult
    }
}
public open class ImageAttachment_serializer {
    public static func write(buffer: SerializerBase, value: ImageAttachment): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ImageAttachment {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ImageAttachmentInternal.fromPtr(ptr)
    }
}
