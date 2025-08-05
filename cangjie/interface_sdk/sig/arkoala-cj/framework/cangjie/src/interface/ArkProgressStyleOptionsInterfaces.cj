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
public interface ProgressStyleOptionsInterfaces <: CommonProgressStyleOptionsInterfaces {
    public mut open prop strokeWidth: Option<Length>
    public mut open prop scaleCount: Option<Float64>
    public mut open prop scaleWidth: Option<Length>
}
public open class ProgressStyleOptions <: ProgressStyleOptionsInterfaces {
    private var strokeWidth_container: Option<Length>
    public mut open prop strokeWidth: Option<Length>
    {
        get() {
            return strokeWidth_container
        }
        set(strokeWidth) {
            strokeWidth_container = strokeWidth
        }
    }
    private var scaleCount_container: Option<Float64>
    public mut open prop scaleCount: Option<Float64>
    {
        get() {
            return scaleCount_container
        }
        set(scaleCount) {
            scaleCount_container = scaleCount
        }
    }
    private var scaleWidth_container: Option<Length>
    public mut open prop scaleWidth: Option<Length>
    {
        get() {
            return scaleWidth_container
        }
        set(scaleWidth) {
            scaleWidth_container = scaleWidth
        }
    }
    private var enableSmoothEffect_container: Option<Bool>
    public mut open prop enableSmoothEffect: Option<Bool>
    {
        get() {
            return enableSmoothEffect_container
        }
        set(enableSmoothEffect) {
            enableSmoothEffect_container = enableSmoothEffect
        }
    }
    ProgressStyleOptions(strokeWidth: Option<Length>, scaleCount: Option<Float64>, scaleWidth: Option<Length>, enableSmoothEffect: Option<Bool>) {
        this.strokeWidth_container = strokeWidth
        this.scaleCount_container = scaleCount
        this.scaleWidth_container = scaleWidth
        this.enableSmoothEffect_container = enableSmoothEffect
    }
}
public open class ProgressStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: ProgressStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnableSmoothEffect = value.enableSmoothEffect
        if (valueHolderForEnableSmoothEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableSmoothEffectTmpValue = valueHolderForEnableSmoothEffect
            valueSerializer.writeBoolean(valueHolderForEnableSmoothEffectTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStrokeWidth = value.strokeWidth
        if (valueHolderForStrokeWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeWidthTmpValue = valueHolderForStrokeWidth
            if (valueHolderForStrokeWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStrokeWidthTmpValueForIdx0 = valueHolderForStrokeWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForStrokeWidthTmpValueForIdx0);
            } else if (valueHolderForStrokeWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStrokeWidthTmpValueForIdx1 = valueHolderForStrokeWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStrokeWidthTmpValueForIdx1);
            } else if (valueHolderForStrokeWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStrokeWidthTmpValueForIdx2 = valueHolderForStrokeWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForStrokeWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScaleCount = value.scaleCount
        if (valueHolderForScaleCount.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScaleCountTmpValue = valueHolderForScaleCount
            valueSerializer.writeNumber(valueHolderForScaleCountTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScaleWidth = value.scaleWidth
        if (valueHolderForScaleWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScaleWidthTmpValue = valueHolderForScaleWidth
            if (valueHolderForScaleWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForScaleWidthTmpValueForIdx0 = valueHolderForScaleWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForScaleWidthTmpValueForIdx0);
            } else if (valueHolderForScaleWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForScaleWidthTmpValueForIdx1 = valueHolderForScaleWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForScaleWidthTmpValueForIdx1);
            } else if (valueHolderForScaleWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForScaleWidthTmpValueForIdx2 = valueHolderForScaleWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForScaleWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ProgressStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let enableSmoothEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableSmoothEffectTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableSmoothEffectTmpBuf_runtimeType))) {
            enableSmoothEffectTmpBuf = valueDeserializer.readBoolean()
        }
        let enableSmoothEffectTmpResult: Option<Bool> = enableSmoothEffectTmpBuf
        let strokeWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeWidthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeWidthTmpBuf_runtimeType))) {
            let strokeWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var strokeWidthTmpBuf_: Length 
            if (strokeWidthTmpBuf_UnionSelector == Int8(0)) {
                strokeWidthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeWidthTmpBuf_UnionSelector == Int8(1)) {
                strokeWidthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeWidthTmpBuf_UnionSelector == Int8(2)) {
                strokeWidthTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for strokeWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            strokeWidthTmpBuf = match (strokeWidthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeWidthTmpResult: Option<Length> = strokeWidthTmpBuf
        let scaleCountTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleCountTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleCountTmpBuf_runtimeType))) {
            scaleCountTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scaleCountTmpResult: Option<Float64> = scaleCountTmpBuf
        let scaleWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleWidthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleWidthTmpBuf_runtimeType))) {
            let scaleWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var scaleWidthTmpBuf_: Length 
            if (scaleWidthTmpBuf_UnionSelector == Int8(0)) {
                scaleWidthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (scaleWidthTmpBuf_UnionSelector == Int8(1)) {
                scaleWidthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (scaleWidthTmpBuf_UnionSelector == Int8(2)) {
                scaleWidthTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for scaleWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            scaleWidthTmpBuf = match (scaleWidthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scaleWidthTmpResult: Option<Length> = scaleWidthTmpBuf
        var value: ProgressStyleOptions = ProgressStyleOptions(strokeWidthTmpResult, scaleCountTmpResult, scaleWidthTmpResult, enableSmoothEffectTmpResult)
        return value
    }
}
