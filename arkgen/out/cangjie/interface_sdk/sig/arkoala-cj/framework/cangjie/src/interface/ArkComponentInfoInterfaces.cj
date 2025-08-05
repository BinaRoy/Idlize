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
public interface ComponentInfoInterfaces <:  {
    public mut open prop size: Size
    public mut open prop localOffset: Offset_componentutils
    public mut open prop windowOffset: Offset_componentutils
    public mut open prop screenOffset: Offset_componentutils
    public mut open prop translate: TranslateResult
    public mut open prop scale: ScaleResult
    public mut open prop rotate: RotateResult
    public mut open prop transform: Matrix4Result
}
public open class ComponentInfo <: ComponentInfoInterfaces {
    private var size_container: Size
    public mut open prop size: Size
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    private var localOffset_container: Offset_componentutils
    public mut open prop localOffset: Offset_componentutils
    {
        get() {
            return localOffset_container
        }
        set(localOffset) {
            localOffset_container = localOffset
        }
    }
    private var windowOffset_container: Offset_componentutils
    public mut open prop windowOffset: Offset_componentutils
    {
        get() {
            return windowOffset_container
        }
        set(windowOffset) {
            windowOffset_container = windowOffset
        }
    }
    private var screenOffset_container: Offset_componentutils
    public mut open prop screenOffset: Offset_componentutils
    {
        get() {
            return screenOffset_container
        }
        set(screenOffset) {
            screenOffset_container = screenOffset
        }
    }
    private var translate_container: TranslateResult
    public mut open prop translate: TranslateResult
    {
        get() {
            return translate_container
        }
        set(translate) {
            translate_container = translate
        }
    }
    private var scale_container: ScaleResult
    public mut open prop scale: ScaleResult
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var rotate_container: RotateResult
    public mut open prop rotate: RotateResult
    {
        get() {
            return rotate_container
        }
        set(rotate) {
            rotate_container = rotate
        }
    }
    private var transform_container: Matrix4Result
    public mut open prop transform: Matrix4Result
    {
        get() {
            return transform_container
        }
        set(transform) {
            transform_container = transform
        }
    }
    ComponentInfo(size: Size, localOffset: Offset_componentutils, windowOffset: Offset_componentutils, screenOffset: Offset_componentutils, translate: TranslateResult, scale: ScaleResult, rotate: RotateResult, transform: Matrix4Result) {
        this.size_container = size
        this.localOffset_container = localOffset
        this.windowOffset_container = windowOffset
        this.screenOffset_container = screenOffset
        this.translate_container = translate
        this.scale_container = scale
        this.rotate_container = rotate
        this.transform_container = transform
    }
}
public open class ComponentInfo_serializer {
    public static func write(buffer: SerializerBase, value: ComponentInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSize = value.size
        Size_serializer.write(valueSerializer, valueHolderForSize);
        let valueHolderForLocalOffset = value.localOffset
        Offset_componentutils_serializer.write(valueSerializer, valueHolderForLocalOffset);
        let valueHolderForWindowOffset = value.windowOffset
        Offset_componentutils_serializer.write(valueSerializer, valueHolderForWindowOffset);
        let valueHolderForScreenOffset = value.screenOffset
        Offset_componentutils_serializer.write(valueSerializer, valueHolderForScreenOffset);
        let valueHolderForTranslate = value.translate
        TranslateResult_serializer.write(valueSerializer, valueHolderForTranslate);
        let valueHolderForScale = value.scale
        ScaleResult_serializer.write(valueSerializer, valueHolderForScale);
        let valueHolderForRotate = value.rotate
        RotateResult_serializer.write(valueSerializer, valueHolderForRotate);
        let valueHolderForTransform = value.transform
        let valueHolderForTransform_0 = valueHolderForTransform.value0
        valueSerializer.writeNumber(valueHolderForTransform_0);
        let valueHolderForTransform_1 = valueHolderForTransform.value1
        valueSerializer.writeNumber(valueHolderForTransform_1);
        let valueHolderForTransform_2 = valueHolderForTransform.value2
        valueSerializer.writeNumber(valueHolderForTransform_2);
        let valueHolderForTransform_3 = valueHolderForTransform.value3
        valueSerializer.writeNumber(valueHolderForTransform_3);
        let valueHolderForTransform_4 = valueHolderForTransform.value4
        valueSerializer.writeNumber(valueHolderForTransform_4);
        let valueHolderForTransform_5 = valueHolderForTransform.value5
        valueSerializer.writeNumber(valueHolderForTransform_5);
        let valueHolderForTransform_6 = valueHolderForTransform.value6
        valueSerializer.writeNumber(valueHolderForTransform_6);
        let valueHolderForTransform_7 = valueHolderForTransform.value7
        valueSerializer.writeNumber(valueHolderForTransform_7);
        let valueHolderForTransform_8 = valueHolderForTransform.value8
        valueSerializer.writeNumber(valueHolderForTransform_8);
        let valueHolderForTransform_9 = valueHolderForTransform.value9
        valueSerializer.writeNumber(valueHolderForTransform_9);
        let valueHolderForTransform_10 = valueHolderForTransform.value10
        valueSerializer.writeNumber(valueHolderForTransform_10);
        let valueHolderForTransform_11 = valueHolderForTransform.value11
        valueSerializer.writeNumber(valueHolderForTransform_11);
        let valueHolderForTransform_12 = valueHolderForTransform.value12
        valueSerializer.writeNumber(valueHolderForTransform_12);
        let valueHolderForTransform_13 = valueHolderForTransform.value13
        valueSerializer.writeNumber(valueHolderForTransform_13);
        let valueHolderForTransform_14 = valueHolderForTransform.value14
        valueSerializer.writeNumber(valueHolderForTransform_14);
        let valueHolderForTransform_15 = valueHolderForTransform.value15
        valueSerializer.writeNumber(valueHolderForTransform_15);
    }
    public static func read(buffer: DeserializerBase): ComponentInfo {
        var valueDeserializer: DeserializerBase = buffer
        let sizeTmpResult: Size = Size_serializer.read(valueDeserializer)
        let localOffsetTmpResult: Offset_componentutils = Offset_componentutils_serializer.read(valueDeserializer)
        let windowOffsetTmpResult: Offset_componentutils = Offset_componentutils_serializer.read(valueDeserializer)
        let screenOffsetTmpResult: Offset_componentutils = Offset_componentutils_serializer.read(valueDeserializer)
        let translateTmpResult: TranslateResult = TranslateResult_serializer.read(valueDeserializer)
        let scaleTmpResult: ScaleResult = ScaleResult_serializer.read(valueDeserializer)
        let rotateTmpResult: RotateResult = RotateResult_serializer.read(valueDeserializer)
        let transformTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue2: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue3: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue4: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue5: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue6: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue7: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue8: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue9: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue10: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue11: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue12: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue13: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue14: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpBufValue15: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let transformTmpResult: Matrix4Result = Matrix4Result(transformTmpBuf_value0, transformTmpBuf_value1, transformTmpBuf_value2, transformTmpBuf_value3, transformTmpBuf_value4, transformTmpBuf_value5, transformTmpBuf_value6, transformTmpBuf_value7, transformTmpBuf_value8, transformTmpBuf_value9, transformTmpBuf_value10, transformTmpBuf_value11, transformTmpBuf_value12, transformTmpBuf_value13, transformTmpBuf_value14, transformTmpBuf_value15)
        var value: ComponentInfo = ComponentInfo(sizeTmpResult, localOffsetTmpResult, windowOffsetTmpResult, screenOffsetTmpResult, translateTmpResult, scaleTmpResult, rotateTmpResult, transformTmpResult)
        return value
    }
}
