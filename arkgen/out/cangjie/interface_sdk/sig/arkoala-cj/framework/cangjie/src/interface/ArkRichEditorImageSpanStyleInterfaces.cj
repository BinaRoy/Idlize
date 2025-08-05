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
public interface RichEditorImageSpanStyleInterfaces <:  {
    public mut open prop size: Option<Tuple_Dimension_Dimension>
    public mut open prop verticalAlign: Option<ImageSpanAlignment>
    public mut open prop objectFit: Option<ImageFit>
    public mut open prop layoutStyle: Option<RichEditorLayoutStyle>
}
public open class RichEditorImageSpanStyle <: RichEditorImageSpanStyleInterfaces {
    private var size_container: Option<Tuple_Dimension_Dimension>
    public mut open prop size: Option<Tuple_Dimension_Dimension>
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
    RichEditorImageSpanStyle(size: Option<Tuple_Dimension_Dimension>, verticalAlign: Option<ImageSpanAlignment>, objectFit: Option<ImageFit>, layoutStyle: Option<RichEditorLayoutStyle>) {
        this.size_container = size
        this.verticalAlign_container = verticalAlign
        this.objectFit_container = objectFit
        this.layoutStyle_container = layoutStyle
    }
}
public open class RichEditorImageSpanStyle_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorImageSpanStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSize = value.size
        if (valueHolderForSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSizeTmpValue = valueHolderForSize
            let valueHolderForSizeTmpValue_0 = valueHolderForSizeTmpValue.value0
            if (valueHolderForSizeTmpValue_0.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSizeTmpValue_0ForIdx0 = valueHolderForSizeTmpValue_0.getValue0()
                valueSerializer.writeString(valueHolderForSizeTmpValue_0ForIdx0);
            } else if (valueHolderForSizeTmpValue_0.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSizeTmpValue_0ForIdx1 = valueHolderForSizeTmpValue_0.getValue1()
                valueSerializer.writeNumber(valueHolderForSizeTmpValue_0ForIdx1);
            } else if (valueHolderForSizeTmpValue_0.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSizeTmpValue_0ForIdx2 = valueHolderForSizeTmpValue_0.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSizeTmpValue_0ForIdx2);
            }
            let valueHolderForSizeTmpValue_1 = valueHolderForSizeTmpValue.value1
            if (valueHolderForSizeTmpValue_1.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSizeTmpValue_1ForIdx0 = valueHolderForSizeTmpValue_1.getValue0()
                valueSerializer.writeString(valueHolderForSizeTmpValue_1ForIdx0);
            } else if (valueHolderForSizeTmpValue_1.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSizeTmpValue_1ForIdx1 = valueHolderForSizeTmpValue_1.getValue1()
                valueSerializer.writeNumber(valueHolderForSizeTmpValue_1ForIdx1);
            } else if (valueHolderForSizeTmpValue_1.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSizeTmpValue_1ForIdx2 = valueHolderForSizeTmpValue_1.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSizeTmpValue_1ForIdx2);
            }
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
            RichEditorLayoutStyle_serializer.write(valueSerializer, valueHolderForLayoutStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorImageSpanStyle {
        var valueDeserializer: DeserializerBase = buffer
        let sizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sizeTmpBuf: Option<Tuple_Dimension_Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sizeTmpBuf_runtimeType))) {
            let sizeTmpBuf_Value0TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var sizeTmpBuf_Value0TempBuf: Dimension 
            if (sizeTmpBuf_Value0TempBufUnionSelector == Int8(0)) {
                sizeTmpBuf_Value0TempBuf = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_Value0TempBufUnionSelector == Int8(1)) {
                sizeTmpBuf_Value0TempBuf = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_Value0TempBufUnionSelector == Int8(2)) {
                sizeTmpBuf_Value0TempBuf = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for sizeTmpBuf_Value0TempBuf has to be chosen through deserialisation.")
            }
            let sizeTmpBuf_Value0: Dimension = match (sizeTmpBuf_Value0TempBuf as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let sizeTmpBuf_Value1TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var sizeTmpBuf_Value1TempBuf: Dimension 
            if (sizeTmpBuf_Value1TempBufUnionSelector == Int8(0)) {
                sizeTmpBuf_Value1TempBuf = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_Value1TempBufUnionSelector == Int8(1)) {
                sizeTmpBuf_Value1TempBuf = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sizeTmpBuf_Value1TempBufUnionSelector == Int8(2)) {
                sizeTmpBuf_Value1TempBuf = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for sizeTmpBuf_Value1TempBuf has to be chosen through deserialisation.")
            }
            let sizeTmpBuf_Value1: Dimension = match (sizeTmpBuf_Value1TempBuf as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            sizeTmpBuf = Tuple_Dimension_Dimension(sizeTmpBuf__value0, sizeTmpBuf__value1)
        }
        let sizeTmpResult: Option<Tuple_Dimension_Dimension> = sizeTmpBuf
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
        var layoutStyleTmpBuf: Option<RichEditorLayoutStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(layoutStyleTmpBuf_runtimeType))) {
            layoutStyleTmpBuf = RichEditorLayoutStyle_serializer.read(valueDeserializer)
        }
        let layoutStyleTmpResult: Option<RichEditorLayoutStyle> = layoutStyleTmpBuf
        var value: RichEditorImageSpanStyle = RichEditorImageSpanStyle(sizeTmpResult, verticalAlignTmpResult, objectFitTmpResult, layoutStyleTmpResult)
        return value
    }
}
