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
public interface LinearStyleOptionsInterfaces <: ScanEffectOptionsInterfaces & CommonProgressStyleOptionsInterfaces {
    public mut open prop strokeWidth: Option<Length>
    public mut open prop strokeRadius: Option<Union_PX_VP_LPX_Resource>
}
public open class LinearStyleOptions <: LinearStyleOptionsInterfaces {
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
    private var strokeRadius_container: Option<Union_PX_VP_LPX_Resource>
    public mut open prop strokeRadius: Option<Union_PX_VP_LPX_Resource>
    {
        get() {
            return strokeRadius_container
        }
        set(strokeRadius) {
            strokeRadius_container = strokeRadius
        }
    }
    private var enableScanEffect_container: Option<Bool>
    public mut open prop enableScanEffect: Option<Bool>
    {
        get() {
            return enableScanEffect_container
        }
        set(enableScanEffect) {
            enableScanEffect_container = enableScanEffect
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
    LinearStyleOptions(strokeWidth: Option<Length>, strokeRadius: Option<Union_PX_VP_LPX_Resource>, enableScanEffect: Option<Bool>, enableSmoothEffect: Option<Bool>) {
        this.strokeWidth_container = strokeWidth
        this.strokeRadius_container = strokeRadius
        this.enableScanEffect_container = enableScanEffect
        this.enableSmoothEffect_container = enableSmoothEffect
    }
}
public open class LinearStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: LinearStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnableScanEffect = value.enableScanEffect
        if (valueHolderForEnableScanEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableScanEffectTmpValue = valueHolderForEnableScanEffect
            valueSerializer.writeBoolean(valueHolderForEnableScanEffectTmpValue);
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
        let valueHolderForStrokeRadius = value.strokeRadius
        if (valueHolderForStrokeRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeRadiusTmpValue = valueHolderForStrokeRadius
            if (valueHolderForStrokeRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStrokeRadiusTmpValueForIdx0 = valueHolderForStrokeRadiusTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForStrokeRadiusTmpValueForIdx0);
            } else if (valueHolderForStrokeRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStrokeRadiusTmpValueForIdx1 = valueHolderForStrokeRadiusTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStrokeRadiusTmpValueForIdx1);
            } else if (valueHolderForStrokeRadiusTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStrokeRadiusTmpValueForIdx2 = valueHolderForStrokeRadiusTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForStrokeRadiusTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LinearStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let enableScanEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableScanEffectTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableScanEffectTmpBuf_runtimeType))) {
            enableScanEffectTmpBuf = valueDeserializer.readBoolean()
        }
        let enableScanEffectTmpResult: Option<Bool> = enableScanEffectTmpBuf
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
        let strokeRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeRadiusTmpBuf: Option<Union_String_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeRadiusTmpBuf_runtimeType))) {
            let strokeRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var strokeRadiusTmpBuf_: Union_String_Number_Resource 
            if (strokeRadiusTmpBuf_UnionSelector == Int8(0)) {
                strokeRadiusTmpBuf_ = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeRadiusTmpBuf_UnionSelector == Int8(1)) {
                strokeRadiusTmpBuf_ = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeRadiusTmpBuf_UnionSelector == Int8(2)) {
                strokeRadiusTmpBuf_ = Union_String_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for strokeRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            strokeRadiusTmpBuf = match (strokeRadiusTmpBuf_ as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeRadiusTmpResult: Option<Union_PX_VP_LPX_Resource> = strokeRadiusTmpBuf
        var value: LinearStyleOptions = LinearStyleOptions(strokeWidthTmpResult, strokeRadiusTmpResult, enableScanEffectTmpResult, enableSmoothEffectTmpResult)
        return value
    }
}
