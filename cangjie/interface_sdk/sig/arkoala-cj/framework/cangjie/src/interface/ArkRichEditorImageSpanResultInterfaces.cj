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
public interface RichEditorImageSpanResultInterfaces <:  {
    public mut open prop spanPosition: RichEditorSpanPosition
    public mut open prop valuePixelMap: Option<PixelMap>
    public mut open prop valueResourceStr: Option<ResourceStr>
    public mut open prop imageStyle: RichEditorImageSpanStyleResult
    public mut open prop offsetInSpan: Tuple_Number_Number
}
public open class RichEditorImageSpanResult <: RichEditorImageSpanResultInterfaces {
    private var spanPosition_container: RichEditorSpanPosition
    public mut open prop spanPosition: RichEditorSpanPosition
    {
        get() {
            return spanPosition_container
        }
        set(spanPosition) {
            spanPosition_container = spanPosition
        }
    }
    private var valuePixelMap_container: Option<PixelMap>
    public mut open prop valuePixelMap: Option<PixelMap>
    {
        get() {
            return valuePixelMap_container
        }
        set(valuePixelMap) {
            valuePixelMap_container = valuePixelMap
        }
    }
    private var valueResourceStr_container: Option<ResourceStr>
    public mut open prop valueResourceStr: Option<ResourceStr>
    {
        get() {
            return valueResourceStr_container
        }
        set(valueResourceStr) {
            valueResourceStr_container = valueResourceStr
        }
    }
    private var imageStyle_container: RichEditorImageSpanStyleResult
    public mut open prop imageStyle: RichEditorImageSpanStyleResult
    {
        get() {
            return imageStyle_container
        }
        set(imageStyle) {
            imageStyle_container = imageStyle
        }
    }
    private var offsetInSpan_container: Tuple_Number_Number
    public mut open prop offsetInSpan: Tuple_Number_Number
    {
        get() {
            return offsetInSpan_container
        }
        set(offsetInSpan) {
            offsetInSpan_container = offsetInSpan
        }
    }
    RichEditorImageSpanResult(spanPosition: RichEditorSpanPosition, valuePixelMap: Option<PixelMap>, valueResourceStr: Option<ResourceStr>, imageStyle: RichEditorImageSpanStyleResult, offsetInSpan: Tuple_Number_Number) {
        this.spanPosition_container = spanPosition
        this.valuePixelMap_container = valuePixelMap
        this.valueResourceStr_container = valueResourceStr
        this.imageStyle_container = imageStyle
        this.offsetInSpan_container = offsetInSpan
    }
}
public open class RichEditorImageSpanResult_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorImageSpanResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSpanPosition = value.spanPosition
        RichEditorSpanPosition_serializer.write(valueSerializer, valueHolderForSpanPosition);
        let valueHolderForValuePixelMap = value.valuePixelMap
        if (valueHolderForValuePixelMap.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValuePixelMapTmpValue = valueHolderForValuePixelMap
            valueSerializer.writeCustomObject("Any", valueHolderForValuePixelMapTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForValueResourceStr = value.valueResourceStr
        if (valueHolderForValueResourceStr.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValueResourceStrTmpValue = valueHolderForValueResourceStr
            if (valueHolderForValueResourceStrTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForValueResourceStrTmpValueForIdx0 = valueHolderForValueResourceStrTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForValueResourceStrTmpValueForIdx0);
            } else if (valueHolderForValueResourceStrTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForValueResourceStrTmpValueForIdx1 = valueHolderForValueResourceStrTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForValueResourceStrTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForImageStyle = value.imageStyle
        RichEditorImageSpanStyleResult_serializer.write(valueSerializer, valueHolderForImageStyle);
        let valueHolderForOffsetInSpan = value.offsetInSpan
        let valueHolderForOffsetInSpan_0 = valueHolderForOffsetInSpan.value0
        valueSerializer.writeNumber(valueHolderForOffsetInSpan_0);
        let valueHolderForOffsetInSpan_1 = valueHolderForOffsetInSpan.value1
        valueSerializer.writeNumber(valueHolderForOffsetInSpan_1);
    }
    public static func read(buffer: DeserializerBase): RichEditorImageSpanResult {
        var valueDeserializer: DeserializerBase = buffer
        let spanPositionTmpResult: RichEditorSpanPosition = RichEditorSpanPosition_serializer.read(valueDeserializer)
        let valuePixelMapTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valuePixelMapTmpBuf: Option<PixelMap> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valuePixelMapTmpBuf_runtimeType))) {
            valuePixelMapTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valuePixelMapTmpResult: Option<PixelMap> = valuePixelMapTmpBuf
        let valueResourceStrTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueResourceStrTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueResourceStrTmpBuf_runtimeType))) {
            let valueResourceStrTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var valueResourceStrTmpBuf_: ResourceStr 
            if (valueResourceStrTmpBuf_UnionSelector == Int8(0)) {
                valueResourceStrTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (valueResourceStrTmpBuf_UnionSelector == Int8(1)) {
                valueResourceStrTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for valueResourceStrTmpBuf_ has to be chosen through deserialisation.")
            }
            valueResourceStrTmpBuf = match (valueResourceStrTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueResourceStrTmpResult: Option<ResourceStr> = valueResourceStrTmpBuf
        let imageStyleTmpResult: RichEditorImageSpanStyleResult = RichEditorImageSpanStyleResult_serializer.read(valueDeserializer)
        let offsetInSpanTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let offsetInSpanTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let offsetInSpanTmpResult: Tuple_Number_Number = Tuple_Number_Number(offsetInSpanTmpBuf_value0, offsetInSpanTmpBuf_value1)
        var value: RichEditorImageSpanResult = RichEditorImageSpanResult(spanPositionTmpResult, valuePixelMapTmpResult, valueResourceStrTmpResult, imageStyleTmpResult, offsetInSpanTmpResult)
        return value
    }
}
