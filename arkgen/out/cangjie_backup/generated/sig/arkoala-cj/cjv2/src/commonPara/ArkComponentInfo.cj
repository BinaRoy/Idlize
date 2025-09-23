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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class ComponentInfo {
    public var size: Option<Any>
    public var localOffset: Option<Offset_componentutils>
    public var windowOffset: Option<Offset_componentutils>
    public var screenOffset: Option<Offset_componentutils>
    public var translate: Option<TranslateResult>
    public var scale: Option<ScaleResult>
    public var rotate: Option<RotateResult>
    public var transform: Option<Matrix4Result>
    init(size: Option<Any>, localOffset: Option<Offset_componentutils>, windowOffset: Option<Offset_componentutils>, screenOffset: Option<Offset_componentutils>, translate: Option<TranslateResult>, scale: Option<ScaleResult>, rotate: Option<RotateResult>, transform: Option<Matrix4Result>) {
        this.size = size
        this.localOffset = localOffset
        this.windowOffset = windowOffset
        this.screenOffset = screenOffset
        this.translate = translate
        this.scale = scale
        this.rotate = rotate
        this.transform = transform
    }
}
public class ComponentInfo_serializer {
    public  static func write(buffer: SerializerBase, value: ComponentInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSize = value.size
        if (let Some(valueHolderForSize) <- valueHolderForSize) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSizeTmpValue = valueHolderForSize
            valueSerializer.writeCustomObject("Any", valueHolderForSizeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForLocalOffset = value.localOffset
        if (let Some(valueHolderForLocalOffset) <- valueHolderForLocalOffset) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForLocalOffsetTmpValue = valueHolderForLocalOffset
            Offset_componentutils_serializer.write(valueSerializer, valueHolderForLocalOffsetTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForWindowOffset = value.windowOffset
        if (let Some(valueHolderForWindowOffset) <- valueHolderForWindowOffset) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForWindowOffsetTmpValue = valueHolderForWindowOffset
            Offset_componentutils_serializer.write(valueSerializer, valueHolderForWindowOffsetTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForScreenOffset = value.screenOffset
        if (let Some(valueHolderForScreenOffset) <- valueHolderForScreenOffset) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForScreenOffsetTmpValue = valueHolderForScreenOffset
            Offset_componentutils_serializer.write(valueSerializer, valueHolderForScreenOffsetTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForTranslate = value.translate
        if (let Some(valueHolderForTranslate) <- valueHolderForTranslate) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTranslateTmpValue = valueHolderForTranslate
            TranslateResult_serializer.write(valueSerializer, valueHolderForTranslateTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForScale = value.scale
        if (let Some(valueHolderForScale) <- valueHolderForScale) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForScaleTmpValue = valueHolderForScale
            ScaleResult_serializer.write(valueSerializer, valueHolderForScaleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForRotate = value.rotate
        if (let Some(valueHolderForRotate) <- valueHolderForRotate) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForRotateTmpValue = valueHolderForRotate
            RotateResult_serializer.write(valueSerializer, valueHolderForRotateTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForTransform = value.transform
        if (let Some(valueHolderForTransform) <- valueHolderForTransform) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTransformTmpValue = valueHolderForTransform
            let valueHolderForTransformTmpValue_0 = valueHolderForTransformTmpValue.value0
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_0)
            let valueHolderForTransformTmpValue_1 = valueHolderForTransformTmpValue.value1
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_1)
            let valueHolderForTransformTmpValue_2 = valueHolderForTransformTmpValue.value2
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_2)
            let valueHolderForTransformTmpValue_3 = valueHolderForTransformTmpValue.value3
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_3)
            let valueHolderForTransformTmpValue_4 = valueHolderForTransformTmpValue.value4
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_4)
            let valueHolderForTransformTmpValue_5 = valueHolderForTransformTmpValue.value5
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_5)
            let valueHolderForTransformTmpValue_6 = valueHolderForTransformTmpValue.value6
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_6)
            let valueHolderForTransformTmpValue_7 = valueHolderForTransformTmpValue.value7
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_7)
            let valueHolderForTransformTmpValue_8 = valueHolderForTransformTmpValue.value8
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_8)
            let valueHolderForTransformTmpValue_9 = valueHolderForTransformTmpValue.value9
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_9)
            let valueHolderForTransformTmpValue_10 = valueHolderForTransformTmpValue.value10
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_10)
            let valueHolderForTransformTmpValue_11 = valueHolderForTransformTmpValue.value11
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_11)
            let valueHolderForTransformTmpValue_12 = valueHolderForTransformTmpValue.value12
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_12)
            let valueHolderForTransformTmpValue_13 = valueHolderForTransformTmpValue.value13
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_13)
            let valueHolderForTransformTmpValue_14 = valueHolderForTransformTmpValue.value14
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_14)
            let valueHolderForTransformTmpValue_15 = valueHolderForTransformTmpValue.value15
            valueSerializer.writeNumber(valueHolderForTransformTmpValue_15)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): ComponentInfo {
        var valueDeserializer: DeserializerBase = buffer
        let sizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sizeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sizeTmpBuf_runtimeType))) {
            sizeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sizeTmpResult: Option<Any> = sizeTmpBuf
        let localOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var localOffsetTmpBuf: Option<Offset_componentutils> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(localOffsetTmpBuf_runtimeType))) {
            localOffsetTmpBuf = Offset_componentutils_serializer.read(valueDeserializer)
        }
        let localOffsetTmpResult: Option<Offset_componentutils> = localOffsetTmpBuf
        let windowOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var windowOffsetTmpBuf: Option<Offset_componentutils> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(windowOffsetTmpBuf_runtimeType))) {
            windowOffsetTmpBuf = Offset_componentutils_serializer.read(valueDeserializer)
        }
        let windowOffsetTmpResult: Option<Offset_componentutils> = windowOffsetTmpBuf
        let screenOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var screenOffsetTmpBuf: Option<Offset_componentutils> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(screenOffsetTmpBuf_runtimeType))) {
            screenOffsetTmpBuf = Offset_componentutils_serializer.read(valueDeserializer)
        }
        let screenOffsetTmpResult: Option<Offset_componentutils> = screenOffsetTmpBuf
        let translateTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var translateTmpBuf: Option<TranslateResult> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(translateTmpBuf_runtimeType))) {
            translateTmpBuf = TranslateResult_serializer.read(valueDeserializer)
        }
        let translateTmpResult: Option<TranslateResult> = translateTmpBuf
        let scaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleTmpBuf: Option<ScaleResult> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleTmpBuf_runtimeType))) {
            scaleTmpBuf = ScaleResult_serializer.read(valueDeserializer)
        }
        let scaleTmpResult: Option<ScaleResult> = scaleTmpBuf
        let rotateTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rotateTmpBuf: Option<RotateResult> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rotateTmpBuf_runtimeType))) {
            rotateTmpBuf = RotateResult_serializer.read(valueDeserializer)
        }
        let rotateTmpResult: Option<RotateResult> = rotateTmpBuf
        let transformTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var transformTmpBuf: Option<Matrix4Result> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(transformTmpBuf_runtimeType))) {
            let transformTmpBuf_Value0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value2: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value3: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value4: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value5: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value6: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value7: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value8: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value9: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value10: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value11: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value12: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value13: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value14: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let transformTmpBuf_Value15: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            transformTmpBuf = Matrix4Result(transformTmpBuf_Value0, transformTmpBuf_Value1, transformTmpBuf_Value2, transformTmpBuf_Value3, transformTmpBuf_Value4, transformTmpBuf_Value5, transformTmpBuf_Value6, transformTmpBuf_Value7, transformTmpBuf_Value8, transformTmpBuf_Value9, transformTmpBuf_Value10, transformTmpBuf_Value11, transformTmpBuf_Value12, transformTmpBuf_Value13, transformTmpBuf_Value14, transformTmpBuf_Value15)
        }
        let transformTmpResult: Option<Matrix4Result> = transformTmpBuf
        var value: ComponentInfo = ComponentInfo(sizeTmpResult, localOffsetTmpResult, windowOffsetTmpResult, screenOffsetTmpResult, translateTmpResult, scaleTmpResult, rotateTmpResult, transformTmpResult)
        return value
    }
}
