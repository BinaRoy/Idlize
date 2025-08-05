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
public interface ImageFrameInfoInterfaces <:  {
    public mut open prop src: Union_String_Resource_PixelMap
    public mut open prop width: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    public mut open prop top: Option<Union_Number_String>
    public mut open prop left: Option<Union_Number_String>
    public mut open prop duration: Option<Float64>
}
public open class ImageFrameInfo <: ImageFrameInfoInterfaces {
    private var src_container: Union_String_Resource_PixelMap
    public mut open prop src: Union_String_Resource_PixelMap
    {
        get() {
            return src_container
        }
        set(src) {
            src_container = src
        }
    }
    private var width_container: Option<Union_Number_String>
    public mut open prop width: Option<Union_Number_String>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var top_container: Option<Union_Number_String>
    public mut open prop top: Option<Union_Number_String>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var left_container: Option<Union_Number_String>
    public mut open prop left: Option<Union_Number_String>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    private var duration_container: Option<Float64>
    public mut open prop duration: Option<Float64>
    {
        get() {
            return duration_container
        }
        set(duration) {
            duration_container = duration
        }
    }
    ImageFrameInfo(src: Union_String_Resource_PixelMap, width: Option<Union_Number_String>, height: Option<Union_Number_String>, top: Option<Union_Number_String>, left: Option<Union_Number_String>, duration: Option<Float64>) {
        this.src_container = src
        this.width_container = width
        this.height_container = height
        this.top_container = top
        this.left_container = left
        this.duration_container = duration
    }
}
public open class ImageFrameInfo_serializer {
    public static func write(buffer: SerializerBase, value: ImageFrameInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSrc = value.src
        if (valueHolderForSrc.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForSrcForIdx0 = valueHolderForSrc.getValue0()
            valueSerializer.writeString(valueHolderForSrcForIdx0);
        } else if (valueHolderForSrc.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForSrcForIdx1 = valueHolderForSrc.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForSrcForIdx1);
        } else if (valueHolderForSrc.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForSrcForIdx2 = valueHolderForSrc.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForSrcForIdx2);
        }
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx0);
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForWidthTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            if (valueHolderForHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx0);
            } else if (valueHolderForHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForHeightTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            if (valueHolderForTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTopTmpValueForIdx0 = valueHolderForTopTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForTopTmpValueForIdx0);
            } else if (valueHolderForTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTopTmpValueForIdx1 = valueHolderForTopTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForTopTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLeft = value.left
        if (valueHolderForLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeftTmpValue = valueHolderForLeft
            if (valueHolderForLeftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLeftTmpValueForIdx0 = valueHolderForLeftTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForLeftTmpValueForIdx0);
            } else if (valueHolderForLeftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLeftTmpValueForIdx1 = valueHolderForLeftTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForLeftTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDuration = value.duration
        if (valueHolderForDuration.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDurationTmpValue = valueHolderForDuration
            valueSerializer.writeNumber(valueHolderForDurationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ImageFrameInfo {
        var valueDeserializer: DeserializerBase = buffer
        let srcTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var srcTmpBuf: Union_String_Resource_PixelMap 
        if (srcTmpBufUnionSelector == Int8(0)) {
            srcTmpBuf = Union_String_Resource_PixelMap(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (srcTmpBufUnionSelector == Int8(1)) {
            srcTmpBuf = Union_String_Resource_PixelMap(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (srcTmpBufUnionSelector == Int8(2)) {
            srcTmpBuf = Union_String_Resource_PixelMap(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for srcTmpBuf has to be chosen through deserialisation.")
        }
        let srcTmpResult: Union_String_Resource_PixelMap = match (srcTmpBuf as Union_String_Resource_PixelMap) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBuf_: Union_Number_String 
            if (widthTmpBuf_UnionSelector == Int8(0)) {
                widthTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(1)) {
                widthTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Union_Number_String> = widthTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            let heightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var heightTmpBuf_: Union_Number_String 
            if (heightTmpBuf_UnionSelector == Int8(0)) {
                heightTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBuf_UnionSelector == Int8(1)) {
                heightTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for heightTmpBuf_ has to be chosen through deserialisation.")
            }
            heightTmpBuf = match (heightTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Union_Number_String> = heightTmpBuf
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            let topTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var topTmpBuf_: Union_Number_String 
            if (topTmpBuf_UnionSelector == Int8(0)) {
                topTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(1)) {
                topTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for topTmpBuf_ has to be chosen through deserialisation.")
            }
            topTmpBuf = match (topTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topTmpResult: Option<Union_Number_String> = topTmpBuf
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            let leftTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var leftTmpBuf_: Union_Number_String 
            if (leftTmpBuf_UnionSelector == Int8(0)) {
                leftTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leftTmpBuf_UnionSelector == Int8(1)) {
                leftTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for leftTmpBuf_ has to be chosen through deserialisation.")
            }
            leftTmpBuf = match (leftTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let leftTmpResult: Option<Union_Number_String> = leftTmpBuf
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let durationTmpResult: Option<Float64> = durationTmpBuf
        var value: ImageFrameInfo = ImageFrameInfo(srcTmpResult, widthTmpResult, heightTmpResult, topTmpResult, leftTmpResult, durationTmpResult)
        return value
    }
}
