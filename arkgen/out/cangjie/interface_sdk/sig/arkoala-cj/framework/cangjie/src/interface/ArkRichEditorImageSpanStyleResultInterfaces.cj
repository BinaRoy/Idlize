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
public interface RichEditorImageSpanStyleResultInterfaces <:  {
    public mut open prop size: Tuple_Number_Number
    public mut open prop verticalAlign: ImageSpanAlignment
    public mut open prop objectFit: ImageFit
    public mut open prop layoutStyle: Option<RichEditorLayoutStyle>
}
public open class RichEditorImageSpanStyleResult <: RichEditorImageSpanStyleResultInterfaces {
    private var size_container: Tuple_Number_Number
    public mut open prop size: Tuple_Number_Number
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    private var verticalAlign_container: ImageSpanAlignment
    public mut open prop verticalAlign: ImageSpanAlignment
    {
        get() {
            return verticalAlign_container
        }
        set(verticalAlign) {
            verticalAlign_container = verticalAlign
        }
    }
    private var objectFit_container: ImageFit
    public mut open prop objectFit: ImageFit
    {
        get() {
            return objectFit_container
        }
        set(objectFit) {
            objectFit_container = objectFit
        }
    }
    private var layoutStyle_container: Option<RichEditorLayoutStyle>
    public mut open prop layoutStyle: Option<RichEditorLayoutStyle>
    {
        get() {
            return layoutStyle_container
        }
        set(layoutStyle) {
            layoutStyle_container = layoutStyle
        }
    }
    RichEditorImageSpanStyleResult(size: Tuple_Number_Number, verticalAlign: ImageSpanAlignment, objectFit: ImageFit, layoutStyle: Option<RichEditorLayoutStyle>) {
        this.size_container = size
        this.verticalAlign_container = verticalAlign
        this.objectFit_container = objectFit
        this.layoutStyle_container = layoutStyle
    }
}
public open class RichEditorImageSpanStyleResult_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorImageSpanStyleResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSize = value.size
        let valueHolderForSize_0 = valueHolderForSize.value0
        valueSerializer.writeNumber(valueHolderForSize_0);
        let valueHolderForSize_1 = valueHolderForSize.value1
        valueSerializer.writeNumber(valueHolderForSize_1);
        let valueHolderForVerticalAlign = value.verticalAlign
        valueSerializer.writeInt32(valueHolderForVerticalAlign.value);
        let valueHolderForObjectFit = value.objectFit
        valueSerializer.writeInt32(valueHolderForObjectFit.value);
        let valueHolderForLayoutStyle = value.layoutStyle
        if (valueHolderForLayoutStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLayoutStyleTmpValue = valueHolderForLayoutStyle
            RichEditorLayoutStyle_serializer.write(valueSerializer, valueHolderForLayoutStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorImageSpanStyleResult {
        var valueDeserializer: DeserializerBase = buffer
        let sizeTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let sizeTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let sizeTmpResult: Tuple_Number_Number = Tuple_Number_Number(sizeTmpBuf_value0, sizeTmpBuf_value1)
        let verticalAlignTmpResult: ImageSpanAlignment = ImageSpanAlignment(valueDeserializer.readInt32())
        let objectFitTmpResult: ImageFit = ImageFit(valueDeserializer.readInt32())
        let layoutStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var layoutStyleTmpBuf: Option<RichEditorLayoutStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(layoutStyleTmpBuf_runtimeType))) {
            layoutStyleTmpBuf = RichEditorLayoutStyle_serializer.read(valueDeserializer)
        }
        let layoutStyleTmpResult: Option<RichEditorLayoutStyle> = layoutStyleTmpBuf
        var value: RichEditorImageSpanStyleResult = RichEditorImageSpanStyleResult(sizeTmpResult, verticalAlignTmpResult, objectFitTmpResult, layoutStyleTmpResult)
        return value
    }
}
