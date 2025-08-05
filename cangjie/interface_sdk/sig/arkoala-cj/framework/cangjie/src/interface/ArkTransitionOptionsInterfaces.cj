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
public interface TransitionOptionsInterfaces <:  {
    public mut open prop type_: Option<TransitionType>
    public mut open prop opacity: Option<Float64>
    public mut open prop translate: Option<TranslateOptions>
    public mut open prop scale: Option<ScaleOptions>
    public mut open prop rotate: Option<RotateOptions>
}
public open class TransitionOptions <: TransitionOptionsInterfaces {
    private var type_container: Option<TransitionType>
    public mut open prop type_: Option<TransitionType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var opacity_container: Option<Float64>
    public mut open prop opacity: Option<Float64>
    {
        get() {
            return opacity_container
        }
        set(opacity) {
            opacity_container = opacity
        }
    }
    private var translate_container: Option<TranslateOptions>
    public mut open prop translate: Option<TranslateOptions>
    {
        get() {
            return translate_container
        }
        set(translate) {
            translate_container = translate
        }
    }
    private var scale_container: Option<ScaleOptions>
    public mut open prop scale: Option<ScaleOptions>
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var rotate_container: Option<RotateOptions>
    public mut open prop rotate: Option<RotateOptions>
    {
        get() {
            return rotate_container
        }
        set(rotate) {
            rotate_container = rotate
        }
    }
    TransitionOptions(type_: Option<TransitionType>, opacity: Option<Float64>, translate: Option<TranslateOptions>, scale: Option<ScaleOptions>, rotate: Option<RotateOptions>) {
        this.type_container = type_
        this.opacity_container = opacity
        this.translate_container = translate
        this.scale_container = scale
        this.rotate_container = rotate
    }
}
public open class TransitionOptions_serializer {
    public static func write(buffer: SerializerBase, value: TransitionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOpacity = value.opacity
        if (valueHolderForOpacity.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOpacityTmpValue = valueHolderForOpacity
            valueSerializer.writeNumber(valueHolderForOpacityTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTranslate = value.translate
        if (valueHolderForTranslate.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTranslateTmpValue = valueHolderForTranslate
            TranslateOptions_serializer.write(valueSerializer, valueHolderForTranslateTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScale = value.scale
        if (valueHolderForScale.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScaleTmpValue = valueHolderForScale
            ScaleOptions_serializer.write(valueSerializer, valueHolderForScaleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRotate = value.rotate
        if (valueHolderForRotate.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRotateTmpValue = valueHolderForRotate
            RotateOptions_serializer.write(valueSerializer, valueHolderForRotateTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TransitionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<TransitionType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = TransitionType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<TransitionType> = typeTmpBuf
        let opacityTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var opacityTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(opacityTmpBuf_runtimeType))) {
            opacityTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let opacityTmpResult: Option<Float64> = opacityTmpBuf
        let translateTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var translateTmpBuf: Option<TranslateOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(translateTmpBuf_runtimeType))) {
            translateTmpBuf = TranslateOptions_serializer.read(valueDeserializer)
        }
        let translateTmpResult: Option<TranslateOptions> = translateTmpBuf
        let scaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleTmpBuf: Option<ScaleOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleTmpBuf_runtimeType))) {
            scaleTmpBuf = ScaleOptions_serializer.read(valueDeserializer)
        }
        let scaleTmpResult: Option<ScaleOptions> = scaleTmpBuf
        let rotateTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rotateTmpBuf: Option<RotateOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rotateTmpBuf_runtimeType))) {
            rotateTmpBuf = RotateOptions_serializer.read(valueDeserializer)
        }
        let rotateTmpResult: Option<RotateOptions> = rotateTmpBuf
        var value: TransitionOptions = TransitionOptions(typeTmpResult, opacityTmpResult, translateTmpResult, scaleTmpResult, rotateTmpResult)
        return value
    }
}
