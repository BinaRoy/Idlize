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
public interface RotateAngleOptionsInterfaces <:  {
    public mut open prop angleX: Option<Union_Number_String>
    public mut open prop angleY: Option<Union_Number_String>
    public mut open prop angleZ: Option<Union_Number_String>
    public mut open prop centerX: Option<Union_Number_String>
    public mut open prop centerY: Option<Union_Number_String>
    public mut open prop centerZ: Option<Float64>
    public mut open prop perspective: Option<Float64>
}
public open class RotateAngleOptions <: RotateAngleOptionsInterfaces {
    private var angleX_container: Option<Union_Number_String>
    public mut open prop angleX: Option<Union_Number_String>
    {
        get() {
            return angleX_container
        }
        set(angleX) {
            angleX_container = angleX
        }
    }
    private var angleY_container: Option<Union_Number_String>
    public mut open prop angleY: Option<Union_Number_String>
    {
        get() {
            return angleY_container
        }
        set(angleY) {
            angleY_container = angleY
        }
    }
    private var angleZ_container: Option<Union_Number_String>
    public mut open prop angleZ: Option<Union_Number_String>
    {
        get() {
            return angleZ_container
        }
        set(angleZ) {
            angleZ_container = angleZ
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
    RotateAngleOptions(angleX: Option<Union_Number_String>, angleY: Option<Union_Number_String>, angleZ: Option<Union_Number_String>, centerX: Option<Union_Number_String>, centerY: Option<Union_Number_String>, centerZ: Option<Float64>, perspective: Option<Float64>) {
        this.angleX_container = angleX
        this.angleY_container = angleY
        this.angleZ_container = angleZ
        this.centerX_container = centerX
        this.centerY_container = centerY
        this.centerZ_container = centerZ
        this.perspective_container = perspective
    }
}
public open class RotateAngleOptions_serializer {
    public static func write(buffer: SerializerBase, value: RotateAngleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAngleX = value.angleX
        if (valueHolderForAngleX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAngleXTmpValue = valueHolderForAngleX
            if (valueHolderForAngleXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForAngleXTmpValueForIdx0 = valueHolderForAngleXTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForAngleXTmpValueForIdx0);
            } else if (valueHolderForAngleXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForAngleXTmpValueForIdx1 = valueHolderForAngleXTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForAngleXTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAngleY = value.angleY
        if (valueHolderForAngleY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAngleYTmpValue = valueHolderForAngleY
            if (valueHolderForAngleYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForAngleYTmpValueForIdx0 = valueHolderForAngleYTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForAngleYTmpValueForIdx0);
            } else if (valueHolderForAngleYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForAngleYTmpValueForIdx1 = valueHolderForAngleYTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForAngleYTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAngleZ = value.angleZ
        if (valueHolderForAngleZ.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAngleZTmpValue = valueHolderForAngleZ
            if (valueHolderForAngleZTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForAngleZTmpValueForIdx0 = valueHolderForAngleZTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForAngleZTmpValueForIdx0);
            } else if (valueHolderForAngleZTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForAngleZTmpValueForIdx1 = valueHolderForAngleZTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForAngleZTmpValueForIdx1);
            }
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
    }
    public static func read(buffer: DeserializerBase): RotateAngleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let angleXTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var angleXTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(angleXTmpBuf_runtimeType))) {
            let angleXTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var angleXTmpBuf_: Union_Number_String 
            if (angleXTmpBuf_UnionSelector == Int8(0)) {
                angleXTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (angleXTmpBuf_UnionSelector == Int8(1)) {
                angleXTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for angleXTmpBuf_ has to be chosen through deserialisation.")
            }
            angleXTmpBuf = match (angleXTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let angleXTmpResult: Option<Union_Number_String> = angleXTmpBuf
        let angleYTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var angleYTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(angleYTmpBuf_runtimeType))) {
            let angleYTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var angleYTmpBuf_: Union_Number_String 
            if (angleYTmpBuf_UnionSelector == Int8(0)) {
                angleYTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (angleYTmpBuf_UnionSelector == Int8(1)) {
                angleYTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for angleYTmpBuf_ has to be chosen through deserialisation.")
            }
            angleYTmpBuf = match (angleYTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let angleYTmpResult: Option<Union_Number_String> = angleYTmpBuf
        let angleZTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var angleZTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(angleZTmpBuf_runtimeType))) {
            let angleZTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var angleZTmpBuf_: Union_Number_String 
            if (angleZTmpBuf_UnionSelector == Int8(0)) {
                angleZTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (angleZTmpBuf_UnionSelector == Int8(1)) {
                angleZTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for angleZTmpBuf_ has to be chosen through deserialisation.")
            }
            angleZTmpBuf = match (angleZTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let angleZTmpResult: Option<Union_Number_String> = angleZTmpBuf
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
        var value: RotateAngleOptions = RotateAngleOptions(angleXTmpResult, angleYTmpResult, angleZTmpResult, centerXTmpResult, centerYTmpResult, centerZTmpResult, perspectiveTmpResult)
        return value
    }
}
