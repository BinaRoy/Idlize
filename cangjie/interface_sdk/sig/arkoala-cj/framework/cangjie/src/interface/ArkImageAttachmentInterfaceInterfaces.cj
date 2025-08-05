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
public interface ImageAttachmentInterfaceInterfaces <:  {
    public mut open prop value: PixelMap
    public mut open prop size: Option<SizeOptions>
    public mut open prop verticalAlign: Option<ImageSpanAlignment>
    public mut open prop objectFit: Option<ImageFit>
    public mut open prop layoutStyle: Option<ImageAttachmentLayoutStyle>
    public mut open prop colorFilter: Option<ColorFilterType>
}
public open class ImageAttachmentInterface <: ImageAttachmentInterfaceInterfaces {
    private var value_container: PixelMap
    public mut open prop value: PixelMap
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var size_container: Option<SizeOptions>
    public mut open prop size: Option<SizeOptions>
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    private var verticalAlign_container: Option<ImageSpanAlignment>
    public mut open prop verticalAlign: Option<ImageSpanAlignment>
    {
        get() {
            return verticalAlign_container
        }
        set(verticalAlign) {
            verticalAlign_container = verticalAlign
        }
    }
    private var objectFit_container: Option<ImageFit>
    public mut open prop objectFit: Option<ImageFit>
    {
        get() {
            return objectFit_container
        }
        set(objectFit) {
            objectFit_container = objectFit
        }
    }
    private var layoutStyle_container: Option<ImageAttachmentLayoutStyle>
    public mut open prop layoutStyle: Option<ImageAttachmentLayoutStyle>
    {
        get() {
            return layoutStyle_container
        }
        set(layoutStyle) {
            layoutStyle_container = layoutStyle
        }
    }
    private var colorFilter_container: Option<ColorFilterType>
    public mut open prop colorFilter: Option<ColorFilterType>
    {
        get() {
            return colorFilter_container
        }
        set(colorFilter) {
            colorFilter_container = colorFilter
        }
    }
    ImageAttachmentInterface(value: PixelMap, size: Option<SizeOptions>, verticalAlign: Option<ImageSpanAlignment>, objectFit: Option<ImageFit>, layoutStyle: Option<ImageAttachmentLayoutStyle>, colorFilter: Option<ColorFilterType>) {
        this.value_container = value
        this.size_container = size
        this.verticalAlign_container = verticalAlign
        this.objectFit_container = objectFit
        this.layoutStyle_container = layoutStyle
        this.colorFilter_container = colorFilter
    }
}
public open class ImageAttachmentInterface_serializer {
    public static func write(buffer: SerializerBase, value: ImageAttachmentInterface): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValue = value.value
        valueSerializer.writeCustomObject("Any", valueHolderForValue);
        let valueHolderForSize = value.size
        if (valueHolderForSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSizeTmpValue = valueHolderForSize
            SizeOptions_serializer.write(valueSerializer, valueHolderForSizeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForVerticalAlign = value.verticalAlign
        if (valueHolderForVerticalAlign.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForVerticalAlignTmpValue = valueHolderForVerticalAlign
            valueSerializer.writeInt32(valueHolderForVerticalAlignTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForObjectFit = value.objectFit
        if (valueHolderForObjectFit.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForObjectFitTmpValue = valueHolderForObjectFit
            valueSerializer.writeInt32(valueHolderForObjectFitTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLayoutStyle = value.layoutStyle
        if (valueHolderForLayoutStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLayoutStyleTmpValue = valueHolderForLayoutStyle
            ImageAttachmentLayoutStyle_serializer.write(valueSerializer, valueHolderForLayoutStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColorFilter = value.colorFilter
        if (valueHolderForColorFilter.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorFilterTmpValue = valueHolderForColorFilter
            if (valueHolderForColorFilterTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColorFilterTmpValueForIdx0 = valueHolderForColorFilterTmpValue.getValue0()
                ColorFilter_serializer.write(valueSerializer, valueHolderForColorFilterTmpValueForIdx0);
            } else if (valueHolderForColorFilterTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorFilterTmpValueForIdx1 = valueHolderForColorFilterTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForColorFilterTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ImageAttachmentInterface {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpResult: PixelMap = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let sizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sizeTmpBuf: Option<SizeOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sizeTmpBuf_runtimeType))) {
            sizeTmpBuf = SizeOptions_serializer.read(valueDeserializer)
        }
        let sizeTmpResult: Option<SizeOptions> = sizeTmpBuf
        let verticalAlignTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var verticalAlignTmpBuf: Option<ImageSpanAlignment> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(verticalAlignTmpBuf_runtimeType))) {
            verticalAlignTmpBuf = ImageSpanAlignment(valueDeserializer.readInt32())
        }
        let verticalAlignTmpResult: Option<ImageSpanAlignment> = verticalAlignTmpBuf
        let objectFitTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var objectFitTmpBuf: Option<ImageFit> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(objectFitTmpBuf_runtimeType))) {
            objectFitTmpBuf = ImageFit(valueDeserializer.readInt32())
        }
        let objectFitTmpResult: Option<ImageFit> = objectFitTmpBuf
        let layoutStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var layoutStyleTmpBuf: Option<ImageAttachmentLayoutStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(layoutStyleTmpBuf_runtimeType))) {
            layoutStyleTmpBuf = ImageAttachmentLayoutStyle_serializer.read(valueDeserializer)
        }
        let layoutStyleTmpResult: Option<ImageAttachmentLayoutStyle> = layoutStyleTmpBuf
        let colorFilterTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorFilterTmpBuf: Option<ColorFilterType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorFilterTmpBuf_runtimeType))) {
            let colorFilterTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var colorFilterTmpBuf_: ColorFilterType 
            if (colorFilterTmpBuf_UnionSelector == Int8(0)) {
                colorFilterTmpBuf_ = ColorFilterType(match (ColorFilter_serializer.read(valueDeserializer) as ColorFilter) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorFilterTmpBuf_UnionSelector == Int8(1)) {
                colorFilterTmpBuf_ = ColorFilterType(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for colorFilterTmpBuf_ has to be chosen through deserialisation.")
            }
            colorFilterTmpBuf = match (colorFilterTmpBuf_ as ColorFilterType) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorFilterTmpResult: Option<ColorFilterType> = colorFilterTmpBuf
        var value: ImageAttachmentInterface = ImageAttachmentInterface(valueTmpResult, sizeTmpResult, verticalAlignTmpResult, objectFitTmpResult, layoutStyleTmpResult, colorFilterTmpResult)
        return value
    }
}
