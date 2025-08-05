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
public interface RingStyleOptionsInterfaces <: ScanEffectOptionsInterfaces & CommonProgressStyleOptionsInterfaces {
    public mut open prop strokeWidth: Option<Length>
    public mut open prop shadow: Option<Bool>
    public mut open prop status: Option<ProgressStatus>
}
public open class RingStyleOptions <: RingStyleOptionsInterfaces {
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
    private var shadow_container: Option<Bool>
    public mut open prop shadow: Option<Bool>
    {
        get() {
            return shadow_container
        }
        set(shadow) {
            shadow_container = shadow
        }
    }
    private var status_container: Option<ProgressStatus>
    public mut open prop status: Option<ProgressStatus>
    {
        get() {
            return status_container
        }
        set(status) {
            status_container = status
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
    RingStyleOptions(strokeWidth: Option<Length>, shadow: Option<Bool>, status: Option<ProgressStatus>, enableScanEffect: Option<Bool>, enableSmoothEffect: Option<Bool>) {
        this.strokeWidth_container = strokeWidth
        this.shadow_container = shadow
        this.status_container = status
        this.enableScanEffect_container = enableScanEffect
        this.enableSmoothEffect_container = enableSmoothEffect
    }
}
public open class RingStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: RingStyleOptions): Unit {
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
        let valueHolderForShadow = value.shadow
        if (valueHolderForShadow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShadowTmpValue = valueHolderForShadow
            valueSerializer.writeBoolean(valueHolderForShadowTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStatus = value.status
        if (valueHolderForStatus.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStatusTmpValue = valueHolderForStatus
            valueSerializer.writeInt32(valueHolderForStatusTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RingStyleOptions {
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
        let shadowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var shadowTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(shadowTmpBuf_runtimeType))) {
            shadowTmpBuf = valueDeserializer.readBoolean()
        }
        let shadowTmpResult: Option<Bool> = shadowTmpBuf
        let statusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var statusTmpBuf: Option<ProgressStatus> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(statusTmpBuf_runtimeType))) {
            statusTmpBuf = ProgressStatus(valueDeserializer.readInt32())
        }
        let statusTmpResult: Option<ProgressStatus> = statusTmpBuf
        var value: RingStyleOptions = RingStyleOptions(strokeWidthTmpResult, shadowTmpResult, statusTmpResult, enableScanEffectTmpResult, enableSmoothEffectTmpResult)
        return value
    }
}
