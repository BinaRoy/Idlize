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
public interface SliderBlockStyleInterfaces <:  {
    public mut open prop type_: SliderBlockType
    public mut open prop image: Option<ResourceStr>
    public mut open prop shape: Option<String>
}
public open class SliderBlockStyle <: SliderBlockStyleInterfaces {
    private var type_container: SliderBlockType
    public mut open prop type_: SliderBlockType
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var image_container: Option<ResourceStr>
    public mut open prop image: Option<ResourceStr>
    {
        get() {
            return image_container
        }
        set(image) {
            image_container = image
        }
    }
    private var shape_container: Option<String>
    public mut open prop shape: Option<String>
    {
        get() {
            return shape_container
        }
        set(shape) {
            shape_container = shape
        }
    }
    SliderBlockStyle(type_: SliderBlockType, image: Option<ResourceStr>, shape: Option<String>) {
        this.type_container = type_
        this.image_container = image
        this.shape_container = shape
    }
}
public open class SliderBlockStyle_serializer {
    public static func write(buffer: SerializerBase, value: SliderBlockStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        valueSerializer.writeInt32(valueHolderForType.value);
        let valueHolderForImage = value.image
        if (valueHolderForImage.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForImageTmpValue = valueHolderForImage
            if (valueHolderForImageTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForImageTmpValueForIdx0 = valueHolderForImageTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForImageTmpValueForIdx0);
            } else if (valueHolderForImageTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForImageTmpValueForIdx1 = valueHolderForImageTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForImageTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShape = value.shape
        if (valueHolderForShape.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShapeTmpValue = valueHolderForShape
            valueSerializer.writeString(valueHolderForShapeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SliderBlockStyle {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpResult: SliderBlockType = SliderBlockType(valueDeserializer.readInt32())
        let imageTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var imageTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(imageTmpBuf_runtimeType))) {
            let imageTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var imageTmpBuf_: ResourceStr 
            if (imageTmpBuf_UnionSelector == Int8(0)) {
                imageTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (imageTmpBuf_UnionSelector == Int8(1)) {
                imageTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for imageTmpBuf_ has to be chosen through deserialisation.")
            }
            imageTmpBuf = match (imageTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let imageTmpResult: Option<ResourceStr> = imageTmpBuf
        let shapeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var shapeTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(shapeTmpBuf_runtimeType))) {
            shapeTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let shapeTmpResult: Option<String> = shapeTmpBuf
        var value: SliderBlockStyle = SliderBlockStyle(typeTmpResult, imageTmpResult, shapeTmpResult)
        return value
    }
}
