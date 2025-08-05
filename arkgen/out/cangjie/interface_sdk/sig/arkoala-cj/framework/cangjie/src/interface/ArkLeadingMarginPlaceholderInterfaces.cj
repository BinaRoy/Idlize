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
public interface LeadingMarginPlaceholderInterfaces <:  {
    public mut open prop pixelMap: PixelMap
    public mut open prop size: Tuple_Dimension_Dimension
}
public open class LeadingMarginPlaceholder <: LeadingMarginPlaceholderInterfaces {
    private var pixelMap_container: PixelMap
    public mut open prop pixelMap: PixelMap
    {
        get() {
            return pixelMap_container
        }
        set(pixelMap) {
            pixelMap_container = pixelMap
        }
    }
    private var size_container: Tuple_Dimension_Dimension
    public mut open prop size: Tuple_Dimension_Dimension
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    LeadingMarginPlaceholder(pixelMap: PixelMap, size: Tuple_Dimension_Dimension) {
        this.pixelMap_container = pixelMap
        this.size_container = size
    }
}
public open class LeadingMarginPlaceholder_serializer {
    public static func write(buffer: SerializerBase, value: LeadingMarginPlaceholder): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPixelMap = value.pixelMap
        valueSerializer.writeCustomObject("Any", valueHolderForPixelMap);
        let valueHolderForSize = value.size
        let valueHolderForSize_0 = valueHolderForSize.value0
        if (valueHolderForSize_0.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForSize_0ForIdx0 = valueHolderForSize_0.getValue0()
            valueSerializer.writeString(valueHolderForSize_0ForIdx0);
        } else if (valueHolderForSize_0.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForSize_0ForIdx1 = valueHolderForSize_0.getValue1()
            valueSerializer.writeNumber(valueHolderForSize_0ForIdx1);
        } else if (valueHolderForSize_0.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForSize_0ForIdx2 = valueHolderForSize_0.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForSize_0ForIdx2);
        }
        let valueHolderForSize_1 = valueHolderForSize.value1
        if (valueHolderForSize_1.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForSize_1ForIdx0 = valueHolderForSize_1.getValue0()
            valueSerializer.writeString(valueHolderForSize_1ForIdx0);
        } else if (valueHolderForSize_1.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForSize_1ForIdx1 = valueHolderForSize_1.getValue1()
            valueSerializer.writeNumber(valueHolderForSize_1ForIdx1);
        } else if (valueHolderForSize_1.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForSize_1ForIdx2 = valueHolderForSize_1.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForSize_1ForIdx2);
        }
    }
    public static func read(buffer: DeserializerBase): LeadingMarginPlaceholder {
        var valueDeserializer: DeserializerBase = buffer
        let pixelMapTmpResult: PixelMap = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let sizeTmpBufValue0TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var sizeTmpBufValue0TempBuf: Dimension 
        if (sizeTmpBufValue0TempBufUnionSelector == Int8(0)) {
            sizeTmpBufValue0TempBuf = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (sizeTmpBufValue0TempBufUnionSelector == Int8(1)) {
            sizeTmpBufValue0TempBuf = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (sizeTmpBufValue0TempBufUnionSelector == Int8(2)) {
            sizeTmpBufValue0TempBuf = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for sizeTmpBufValue0TempBuf has to be chosen through deserialisation.")
        }
        let sizeTmpBufValue0: Dimension = match (sizeTmpBufValue0TempBuf as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let sizeTmpBufValue1TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var sizeTmpBufValue1TempBuf: Dimension 
        if (sizeTmpBufValue1TempBufUnionSelector == Int8(0)) {
            sizeTmpBufValue1TempBuf = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (sizeTmpBufValue1TempBufUnionSelector == Int8(1)) {
            sizeTmpBufValue1TempBuf = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (sizeTmpBufValue1TempBufUnionSelector == Int8(2)) {
            sizeTmpBufValue1TempBuf = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for sizeTmpBufValue1TempBuf has to be chosen through deserialisation.")
        }
        let sizeTmpBufValue1: Dimension = match (sizeTmpBufValue1TempBuf as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let sizeTmpResult: Tuple_Dimension_Dimension = Tuple_Dimension_Dimension(sizeTmpBuf_value0, sizeTmpBuf_value1)
        var value: LeadingMarginPlaceholder = LeadingMarginPlaceholder(pixelMapTmpResult, sizeTmpResult)
        return value
    }
}
