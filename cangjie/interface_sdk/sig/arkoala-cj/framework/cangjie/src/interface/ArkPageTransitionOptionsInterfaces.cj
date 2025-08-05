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
public interface PageTransitionOptionsInterfaces <:  {
    public mut open prop type_: Option<RouteType>
    public mut open prop duration: Option<Float64>
    public mut open prop curve: Option<Union_Curve_String_ICurve>
    public mut open prop delay: Option<Float64>
}
public open class PageTransitionOptions <: PageTransitionOptionsInterfaces {
    private var type_container: Option<RouteType>
    public mut open prop type_: Option<RouteType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
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
    private var curve_container: Option<Union_Curve_String_ICurve>
    public mut open prop curve: Option<Union_Curve_String_ICurve>
    {
        get() {
            return curve_container
        }
        set(curve) {
            curve_container = curve
        }
    }
    private var delay_container: Option<Float64>
    public mut open prop delay: Option<Float64>
    {
        get() {
            return delay_container
        }
        set(delay) {
            delay_container = delay
        }
    }
    PageTransitionOptions(type_: Option<RouteType>, duration: Option<Float64>, curve: Option<Union_Curve_String_ICurve>, delay: Option<Float64>) {
        this.type_container = type_
        this.duration_container = duration
        this.curve_container = curve
        this.delay_container = delay
    }
}
public open class PageTransitionOptions_serializer {
    public static func write(buffer: SerializerBase, value: PageTransitionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
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
                valueSerializer.writeString(valueHolderForCurveTmpValueForIdx1);
            } else if (valueHolderForCurveTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForCurveTmpValueForIdx2 = valueHolderForCurveTmpValue.getValue2()
                ICurve_serializer.write(valueSerializer, valueHolderForCurveTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDelay = value.delay
        if (valueHolderForDelay.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDelayTmpValue = valueHolderForDelay
            valueSerializer.writeNumber(valueHolderForDelayTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PageTransitionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<RouteType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = RouteType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<RouteType> = typeTmpBuf
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let durationTmpResult: Option<Float64> = durationTmpBuf
        let curveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var curveTmpBuf: Option<Union_Curve_String_ICurve> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(curveTmpBuf_runtimeType))) {
            let curveTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var curveTmpBuf_: Union_Curve_String_ICurve 
            if (curveTmpBuf_UnionSelector == Int8(0)) {
                curveTmpBuf_ = Union_Curve_String_ICurve(Curve(valueDeserializer.readInt32()))
            } else if (curveTmpBuf_UnionSelector == Int8(1)) {
                curveTmpBuf_ = Union_Curve_String_ICurve(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (curveTmpBuf_UnionSelector == Int8(2)) {
                curveTmpBuf_ = Union_Curve_String_ICurve(match (ICurve_serializer.read(valueDeserializer) as ICurve) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for curveTmpBuf_ has to be chosen through deserialisation.")
            }
            curveTmpBuf = match (curveTmpBuf_ as Union_Curve_String_ICurve) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let curveTmpResult: Option<Union_Curve_String_ICurve> = curveTmpBuf
        let delayTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var delayTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(delayTmpBuf_runtimeType))) {
            delayTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let delayTmpResult: Option<Float64> = delayTmpBuf
        var value: PageTransitionOptions = PageTransitionOptions(typeTmpResult, durationTmpResult, curveTmpResult, delayTmpResult)
        return value
    }
}
