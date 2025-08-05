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
public interface ScrollAnimationOptionsInterfaces <:  {
    public mut open prop duration: Option<Float64>
    public mut open prop curve: Option<Union_Curve_ICurve>
    public mut open prop canOverScroll: Option<Bool>
}
public open class ScrollAnimationOptions <: ScrollAnimationOptionsInterfaces {
    private var duration_container: Option<Float64>
    public mut open prop duration: Option<Float64>
    {
        get() {
            return duration_container
        }
        set(duration) {
            duration_container = duration
        }
    }
    private var curve_container: Option<Union_Curve_ICurve>
    public mut open prop curve: Option<Union_Curve_ICurve>
    {
        get() {
            return curve_container
        }
        set(curve) {
            curve_container = curve
        }
    }
    private var canOverScroll_container: Option<Bool>
    public mut open prop canOverScroll: Option<Bool>
    {
        get() {
            return canOverScroll_container
        }
        set(canOverScroll) {
            canOverScroll_container = canOverScroll
        }
    }
    ScrollAnimationOptions(duration: Option<Float64>, curve: Option<Union_Curve_ICurve>, canOverScroll: Option<Bool>) {
        this.duration_container = duration
        this.curve_container = curve
        this.canOverScroll_container = canOverScroll
    }
}
public open class ScrollAnimationOptions_serializer {
    public static func write(buffer: SerializerBase, value: ScrollAnimationOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDuration = value.duration
        if (valueHolderForDuration.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDurationTmpValue = valueHolderForDuration
            valueSerializer.writeNumber(valueHolderForDurationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCurve = value.curve
        if (valueHolderForCurve.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCurveTmpValue = valueHolderForCurve
            if (valueHolderForCurveTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForCurveTmpValueForIdx0 = valueHolderForCurveTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForCurveTmpValueForIdx0.value);
            } else if (valueHolderForCurveTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForCurveTmpValueForIdx1 = valueHolderForCurveTmpValue.getValue1()
                ICurve_serializer.write(valueSerializer, valueHolderForCurveTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCanOverScroll = value.canOverScroll
        if (valueHolderForCanOverScroll.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCanOverScrollTmpValue = valueHolderForCanOverScroll
            valueSerializer.writeBoolean(valueHolderForCanOverScrollTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ScrollAnimationOptions {
        var valueDeserializer: DeserializerBase = buffer
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let durationTmpResult: Option<Float64> = durationTmpBuf
        let curveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var curveTmpBuf: Option<Union_Curve_ICurve> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(curveTmpBuf_runtimeType))) {
            let curveTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var curveTmpBuf_: Union_Curve_ICurve 
            if (curveTmpBuf_UnionSelector == Int8(0)) {
                curveTmpBuf_ = Union_Curve_ICurve(Curve(valueDeserializer.readInt32()))
            } else if (curveTmpBuf_UnionSelector == Int8(1)) {
                curveTmpBuf_ = Union_Curve_ICurve(match (ICurve_serializer.read(valueDeserializer) as ICurve) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for curveTmpBuf_ has to be chosen through deserialisation.")
            }
            curveTmpBuf = match (curveTmpBuf_ as Union_Curve_ICurve) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let curveTmpResult: Option<Union_Curve_ICurve> = curveTmpBuf
        let canOverScrollTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var canOverScrollTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(canOverScrollTmpBuf_runtimeType))) {
            canOverScrollTmpBuf = valueDeserializer.readBoolean()
        }
        let canOverScrollTmpResult: Option<Bool> = canOverScrollTmpBuf
        var value: ScrollAnimationOptions = ScrollAnimationOptions(durationTmpResult, curveTmpResult, canOverScrollTmpResult)
        return value
    }
}
