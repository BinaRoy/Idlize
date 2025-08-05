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
public interface NativeEmbedInfoInterfaces <:  {
    public mut open prop id: Option<String>
    public mut open prop type_: Option<String>
    public mut open prop src: Option<String>
    public mut open prop position: Option<Position>
    public mut open prop width: Option<Int32>
    public mut open prop height: Option<Int32>
    public mut open prop url: Option<String>
    public mut open prop tag: Option<String>
    public mut open prop params: Option<HashMap<String, String>>
}
public open class NativeEmbedInfo <: NativeEmbedInfoInterfaces {
    private var id_container: Option<String>
    public mut open prop id: Option<String>
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var type_container: Option<String>
    public mut open prop type_: Option<String>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var src_container: Option<String>
    public mut open prop src: Option<String>
    {
        get() {
            return src_container
        }
        set(src) {
            src_container = src
        }
    }
    private var position_container: Option<Position>
    public mut open prop position: Option<Position>
    {
        get() {
            return position_container
        }
        set(position) {
            position_container = position
        }
    }
    private var width_container: Option<Int32>
    public mut open prop width: Option<Int32>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Int32>
    public mut open prop height: Option<Int32>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var url_container: Option<String>
    public mut open prop url: Option<String>
    {
        get() {
            return url_container
        }
        set(url) {
            url_container = url
        }
    }
    private var tag_container: Option<String>
    public mut open prop tag: Option<String>
    {
        get() {
            return tag_container
        }
        set(tag) {
            tag_container = tag
        }
    }
    private var params_container: Option<HashMap<String, String>>
    public mut open prop params: Option<HashMap<String, String>>
    {
        get() {
            return params_container
        }
        set(params) {
            params_container = params
        }
    }
    NativeEmbedInfo(id: Option<String>, type_: Option<String>, src: Option<String>, position: Option<Position>, width: Option<Int32>, height: Option<Int32>, url: Option<String>, tag: Option<String>, params: Option<HashMap<String, String>>) {
        this.id_container = id
        this.type_container = type_
        this.src_container = src
        this.position_container = position
        this.width_container = width
        this.height_container = height
        this.url_container = url
        this.tag_container = tag
        this.params_container = params
    }
}
public open class NativeEmbedInfo_serializer {
    public static func write(buffer: SerializerBase, value: NativeEmbedInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForId = value.id
        if (valueHolderForId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIdTmpValue = valueHolderForId
            valueSerializer.writeString(valueHolderForIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeString(valueHolderForTypeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSrc = value.src
        if (valueHolderForSrc.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSrcTmpValue = valueHolderForSrc
            valueSerializer.writeString(valueHolderForSrcTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPosition = value.position
        if (valueHolderForPosition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPositionTmpValue = valueHolderForPosition
            Position_serializer.write(valueSerializer, valueHolderForPositionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            valueSerializer.writeInt32(valueHolderForWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            valueSerializer.writeInt32(valueHolderForHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUrl = value.url
        if (valueHolderForUrl.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUrlTmpValue = valueHolderForUrl
            valueSerializer.writeString(valueHolderForUrlTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTag = value.tag
        if (valueHolderForTag.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTagTmpValue = valueHolderForTag
            valueSerializer.writeString(valueHolderForTagTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForParams = value.params
        if (valueHolderForParams.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParamsTmpValue = valueHolderForParams
            valueSerializer.writeInt32(Int32(valueHolderForParamsTmpValue.size));
            for ((valueHolderForParamsTmpValueKeyVar, valueHolderForParamsTmpValueValueVar) in valueHolderForParamsTmpValue) {
                valueSerializer.writeString(valueHolderForParamsTmpValueKeyVar);
                valueSerializer.writeString(valueHolderForParamsTmpValueValueVar);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NativeEmbedInfo {
        var valueDeserializer: DeserializerBase = buffer
        let idTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var idTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(idTmpBuf_runtimeType))) {
            idTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let idTmpResult: Option<String> = idTmpBuf
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let typeTmpResult: Option<String> = typeTmpBuf
        let srcTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var srcTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(srcTmpBuf_runtimeType))) {
            srcTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let srcTmpResult: Option<String> = srcTmpBuf
        let positionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var positionTmpBuf: Option<Position> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(positionTmpBuf_runtimeType))) {
            positionTmpBuf = Position_serializer.read(valueDeserializer)
        }
        let positionTmpResult: Option<Position> = positionTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Int32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            widthTmpBuf = valueDeserializer.readInt32()
        }
        let widthTmpResult: Option<Int32> = widthTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Int32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            heightTmpBuf = valueDeserializer.readInt32()
        }
        let heightTmpResult: Option<Int32> = heightTmpBuf
        let urlTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var urlTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(urlTmpBuf_runtimeType))) {
            urlTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let urlTmpResult: Option<String> = urlTmpBuf
        let tagTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var tagTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(tagTmpBuf_runtimeType))) {
            tagTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let tagTmpResult: Option<String> = tagTmpBuf
        let paramsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paramsTmpBuf: Option<HashMap<String, String>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paramsTmpBuf_runtimeType))) {
            let paramsTmpBuf_SizeVar: Int32 = valueDeserializer.readInt32()
            var paramsTmpBuf_: HashMap<String, String> = HashMap<String, String>()
            // TODO: TS map resize;
            for (paramsTmpBuf_IVar in 0..paramsTmpBuf_SizeVar) {
                let paramsTmpBuf_KeyVar: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                let paramsTmpBuf_ValueVar: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                paramsTmpBuf_.add(paramsTmpBuf_KeyVar, paramsTmpBuf_ValueVar);
            }
            paramsTmpBuf = paramsTmpBuf_
        }
        let paramsTmpResult: Option<HashMap<String, String>> = paramsTmpBuf
        var value: NativeEmbedInfo = NativeEmbedInfo(idTmpResult, typeTmpResult, srcTmpResult, positionTmpResult, widthTmpResult, heightTmpResult, urlTmpResult, tagTmpResult, paramsTmpResult)
        return value
    }
}
