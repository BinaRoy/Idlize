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
public interface RotateOptionsInterfaces <:  {
    public mut open prop x: Option<Float64>
    public mut open prop y: Option<Float64>
    public mut open prop z: Option<Float64>
    public mut open prop centerX: Option<Union_Number_String>
    public mut open prop centerY: Option<Union_Number_String>
    public mut open prop centerZ: Option<Float64>
    public mut open prop perspective: Option<Float64>
    public mut open prop angle: Union_Number_String
}
public open class RotateOptions <: RotateOptionsInterfaces {
    private var x_container: Option<Float64>
    public mut open prop x: Option<Float64>
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Option<Float64>
    public mut open prop y: Option<Float64>
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var z_container: Option<Float64>
    public mut open prop z: Option<Float64>
    {
        get() {
            return z_container
        }
        set(z) {
            z_container = z
        }
    }
    private var centerX_container: Option<Union_Number_String>
    public mut open prop centerX: Option<Union_Number_String>
    {
        get() {
            return centerX_container
        }
        set(centerX) {
            centerX_container = centerX
        }
    }
    private var centerY_container: Option<Union_Number_String>
    public mut open prop centerY: Option<Union_Number_String>
    {
        get() {
            return centerY_container
        }
        set(centerY) {
            centerY_container = centerY
        }
    }
    private var centerZ_container: Option<Float64>
    public mut open prop centerZ: Option<Float64>
    {
        get() {
            return centerZ_container
        }
        set(centerZ) {
            centerZ_container = centerZ
        }
    }
    private var perspective_container: Option<Float64>
    public mut open prop perspective: Option<Float64>
    {
        get() {
            return perspective_container
        }
        set(perspective) {
            perspective_container = perspective
        }
    }
    private var angle_container: Union_Number_String
    public mut open prop angle: Union_Number_String
    {
        get() {
            return angle_container
        }
        set(angle) {
            angle_container = angle
        }
    }
    RotateOptions(x: Option<Float64>, y: Option<Float64>, z: Option<Float64>, centerX: Option<Union_Number_String>, centerY: Option<Union_Number_String>, centerZ: Option<Float64>, perspective: Option<Float64>, angle: Union_Number_String) {
        this.x_container = x
        this.y_container = y
        this.z_container = z
        this.centerX_container = centerX
        this.centerY_container = centerY
        this.centerZ_container = centerZ
        this.perspective_container = perspective
        this.angle_container = angle
    }
}
public open class RotateOptions_serializer {
    public static func write(buffer: SerializerBase, value: RotateOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        if (valueHolderForX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXTmpValue = valueHolderForX
            valueSerializer.writeNumber(valueHolderForXTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForY = value.y
        if (valueHolderForY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForYTmpValue = valueHolderForY
            valueSerializer.writeNumber(valueHolderForYTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForZ = value.z
        if (valueHolderForZ.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForZTmpValue = valueHolderForZ
            valueSerializer.writeNumber(valueHolderForZTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCenterX = value.centerX
        if (valueHolderForCenterX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCenterXTmpValue = valueHolderForCenterX
            if (valueHolderForCenterXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForCenterXTmpValueForIdx0 = valueHolderForCenterXTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForCenterXTmpValueForIdx0);
            } else if (valueHolderForCenterXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForCenterXTmpValueForIdx1 = valueHolderForCenterXTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForCenterXTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCenterY = value.centerY
        if (valueHolderForCenterY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCenterYTmpValue = valueHolderForCenterY
            if (valueHolderForCenterYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForCenterYTmpValueForIdx0 = valueHolderForCenterYTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForCenterYTmpValueForIdx0);
            } else if (valueHolderForCenterYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForCenterYTmpValueForIdx1 = valueHolderForCenterYTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForCenterYTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCenterZ = value.centerZ
        if (valueHolderForCenterZ.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCenterZTmpValue = valueHolderForCenterZ
            valueSerializer.writeNumber(valueHolderForCenterZTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPerspective = value.perspective
        if (valueHolderForPerspective.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPerspectiveTmpValue = valueHolderForPerspective
            valueSerializer.writeNumber(valueHolderForPerspectiveTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAngle = value.angle
        if (valueHolderForAngle.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForAngleForIdx0 = valueHolderForAngle.getValue0()
            valueSerializer.writeNumber(valueHolderForAngleForIdx0);
        } else if (valueHolderForAngle.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForAngleForIdx1 = valueHolderForAngle.getValue1()
            valueSerializer.writeString(valueHolderForAngleForIdx1);
        }
    }
    public static func read(buffer: DeserializerBase): RotateOptions {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xTmpBuf_runtimeType))) {
            xTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xTmpResult: Option<Float64> = xTmpBuf
        let yTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yTmpBuf_runtimeType))) {
            yTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let yTmpResult: Option<Float64> = yTmpBuf
        let zTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var zTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(zTmpBuf_runtimeType))) {
            zTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let zTmpResult: Option<Float64> = zTmpBuf
        let centerXTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var centerXTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(centerXTmpBuf_runtimeType))) {
            let centerXTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var centerXTmpBuf_: Union_Number_String 
            if (centerXTmpBuf_UnionSelector == Int8(0)) {
                centerXTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (centerXTmpBuf_UnionSelector == Int8(1)) {
                centerXTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for centerXTmpBuf_ has to be chosen through deserialisation.")
            }
            centerXTmpBuf = match (centerXTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let centerXTmpResult: Option<Union_Number_String> = centerXTmpBuf
        let centerYTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var centerYTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(centerYTmpBuf_runtimeType))) {
            let centerYTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var centerYTmpBuf_: Union_Number_String 
            if (centerYTmpBuf_UnionSelector == Int8(0)) {
                centerYTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (centerYTmpBuf_UnionSelector == Int8(1)) {
                centerYTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for centerYTmpBuf_ has to be chosen through deserialisation.")
            }
            centerYTmpBuf = match (centerYTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let centerYTmpResult: Option<Union_Number_String> = centerYTmpBuf
        let centerZTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var centerZTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(centerZTmpBuf_runtimeType))) {
            centerZTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let centerZTmpResult: Option<Float64> = centerZTmpBuf
        let perspectiveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var perspectiveTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(perspectiveTmpBuf_runtimeType))) {
            perspectiveTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let perspectiveTmpResult: Option<Float64> = perspectiveTmpBuf
        let angleTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var angleTmpBuf: Union_Number_String 
        if (angleTmpBufUnionSelector == Int8(0)) {
            angleTmpBuf = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (angleTmpBufUnionSelector == Int8(1)) {
            angleTmpBuf = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for angleTmpBuf has to be chosen through deserialisation.")
        }
        let angleTmpResult: Union_Number_String = match (angleTmpBuf as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: RotateOptions = RotateOptions(xTmpResult, yTmpResult, zTmpResult, centerXTmpResult, centerYTmpResult, centerZTmpResult, perspectiveTmpResult, angleTmpResult)
        return value
    }
}
