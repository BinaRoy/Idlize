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
public interface IconOptionsInterfaces <:  {
    public mut open prop size: Option<Length>
    public mut open prop color: Option<ResourceColor>
    public mut open prop src: Option<ResourceStr>
}
public open class IconOptions <: IconOptionsInterfaces {
    private var size_container: Option<Length>
    public mut open prop size: Option<Length>
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    private var color_container: Option<ResourceColor>
    public mut open prop color: Option<ResourceColor>
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    private var src_container: Option<ResourceStr>
    public mut open prop src: Option<ResourceStr>
    {
        get() {
            return src_container
        }
        set(src) {
            src_container = src
        }
    }
    IconOptions(size: Option<Length>, color: Option<ResourceColor>, src: Option<ResourceStr>) {
        this.size_container = size
        this.color_container = color
        this.src_container = src
    }
}
public open class IconOptions_serializer {
    public static func write(buffer: SerializerBase, value: IconOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSize = value.size
        if (valueHolderForSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSizeTmpValue = valueHolderForSize
            if (valueHolderForSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSizeTmpValueForIdx0 = valueHolderForSizeTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSizeTmpValueForIdx0);
            } else if (valueHolderForSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSizeTmpValueForIdx1 = valueHolderForSizeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSizeTmpValueForIdx1);
            } else if (valueHolderForSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSizeTmpValueForIdx2 = valueHolderForSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSizeTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColor = value.color
        if (valueHolderForColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorTmpValue = valueHolderForColor
            if (valueHolderForColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColorTmpValueForIdx0 = valueHolderForColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx0.value);
            } else if (valueHolderForColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorTmpValueForIdx1 = valueHolderForColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForColorTmpValueForIdx1);
            } else if (valueHolderForColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorTmpValueForIdx2 = valueHolderForColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForColorTmpValueForIdx2);
            } else if (valueHolderForColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForColorTmpValueForIdx3 = valueHolderForColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSrc = value.src
        if (valueHolderForSrc.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSrcTmpValue = valueHolderForSrc
            if (valueHolderForSrcTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSrcTmpValueForIdx0 = valueHolderForSrcTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSrcTmpValueForIdx0);
            } else if (valueHolderForSrcTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSrcTmpValueForIdx1 = valueHolderForSrcTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSrcTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): IconOptions {
        var valueDeserializer: DeserializerBase = buffer
        let sizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sizeTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sizeTmpBuf_runtimeType))) {
            let sizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var sizeTmpBuf_: Length 
            if (sizeTmpBuf_UnionSelector == Int8(0)) {
                sizeTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_UnionSelector == Int8(1)) {
                sizeTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_UnionSelector == Int8(2)) {
                sizeTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for sizeTmpBuf_ has to be chosen through deserialisation.")
            }
            sizeTmpBuf = match (sizeTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sizeTmpResult: Option<Length> = sizeTmpBuf
        let colorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorTmpBuf_runtimeType))) {
            let colorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var colorTmpBuf_: ResourceColor 
            if (colorTmpBuf_UnionSelector == Int8(0)) {
                colorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (colorTmpBuf_UnionSelector == Int8(1)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(2)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBuf_UnionSelector == Int8(3)) {
                colorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for colorTmpBuf_ has to be chosen through deserialisation.")
            }
            colorTmpBuf = match (colorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorTmpResult: Option<ResourceColor> = colorTmpBuf
        let srcTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var srcTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(srcTmpBuf_runtimeType))) {
            let srcTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var srcTmpBuf_: ResourceStr 
            if (srcTmpBuf_UnionSelector == Int8(0)) {
                srcTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (srcTmpBuf_UnionSelector == Int8(1)) {
                srcTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for srcTmpBuf_ has to be chosen through deserialisation.")
            }
            srcTmpBuf = match (srcTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let srcTmpResult: Option<ResourceStr> = srcTmpBuf
        var value: IconOptions = IconOptions(sizeTmpResult, colorTmpResult, srcTmpResult)
        return value
    }
}
