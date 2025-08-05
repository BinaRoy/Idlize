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
public interface WorkStateStyleInterfaces <:  {
    public mut open prop workDayMarkColor: Option<ResourceColor>
    public mut open prop offDayMarkColor: Option<ResourceColor>
    public mut open prop workDayMarkSize: Option<Float64>
    public mut open prop offDayMarkSize: Option<Float64>
    public mut open prop workStateWidth: Option<Float64>
    public mut open prop workStateHorizontalMovingDistance: Option<Float64>
    public mut open prop workStateVerticalMovingDistance: Option<Float64>
}
public open class WorkStateStyle <: WorkStateStyleInterfaces {
    private var workDayMarkColor_container: Option<ResourceColor>
    public mut open prop workDayMarkColor: Option<ResourceColor>
    {
        get() {
            return workDayMarkColor_container
        }
        set(workDayMarkColor) {
            workDayMarkColor_container = workDayMarkColor
        }
    }
    private var offDayMarkColor_container: Option<ResourceColor>
    public mut open prop offDayMarkColor: Option<ResourceColor>
    {
        get() {
            return offDayMarkColor_container
        }
        set(offDayMarkColor) {
            offDayMarkColor_container = offDayMarkColor
        }
    }
    private var workDayMarkSize_container: Option<Float64>
    public mut open prop workDayMarkSize: Option<Float64>
    {
        get() {
            return workDayMarkSize_container
        }
        set(workDayMarkSize) {
            workDayMarkSize_container = workDayMarkSize
        }
    }
    private var offDayMarkSize_container: Option<Float64>
    public mut open prop offDayMarkSize: Option<Float64>
    {
        get() {
            return offDayMarkSize_container
        }
        set(offDayMarkSize) {
            offDayMarkSize_container = offDayMarkSize
        }
    }
    private var workStateWidth_container: Option<Float64>
    public mut open prop workStateWidth: Option<Float64>
    {
        get() {
            return workStateWidth_container
        }
        set(workStateWidth) {
            workStateWidth_container = workStateWidth
        }
    }
    private var workStateHorizontalMovingDistance_container: Option<Float64>
    public mut open prop workStateHorizontalMovingDistance: Option<Float64>
    {
        get() {
            return workStateHorizontalMovingDistance_container
        }
        set(workStateHorizontalMovingDistance) {
            workStateHorizontalMovingDistance_container = workStateHorizontalMovingDistance
        }
    }
    private var workStateVerticalMovingDistance_container: Option<Float64>
    public mut open prop workStateVerticalMovingDistance: Option<Float64>
    {
        get() {
            return workStateVerticalMovingDistance_container
        }
        set(workStateVerticalMovingDistance) {
            workStateVerticalMovingDistance_container = workStateVerticalMovingDistance
        }
    }
    WorkStateStyle(workDayMarkColor: Option<ResourceColor>, offDayMarkColor: Option<ResourceColor>, workDayMarkSize: Option<Float64>, offDayMarkSize: Option<Float64>, workStateWidth: Option<Float64>, workStateHorizontalMovingDistance: Option<Float64>, workStateVerticalMovingDistance: Option<Float64>) {
        this.workDayMarkColor_container = workDayMarkColor
        this.offDayMarkColor_container = offDayMarkColor
        this.workDayMarkSize_container = workDayMarkSize
        this.offDayMarkSize_container = offDayMarkSize
        this.workStateWidth_container = workStateWidth
        this.workStateHorizontalMovingDistance_container = workStateHorizontalMovingDistance
        this.workStateVerticalMovingDistance_container = workStateVerticalMovingDistance
    }
}
public open class WorkStateStyle_serializer {
    public static func write(buffer: SerializerBase, value: WorkStateStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWorkDayMarkColor = value.workDayMarkColor
        if (valueHolderForWorkDayMarkColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWorkDayMarkColorTmpValue = valueHolderForWorkDayMarkColor
            if (valueHolderForWorkDayMarkColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWorkDayMarkColorTmpValueForIdx0 = valueHolderForWorkDayMarkColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForWorkDayMarkColorTmpValueForIdx0.value);
            } else if (valueHolderForWorkDayMarkColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWorkDayMarkColorTmpValueForIdx1 = valueHolderForWorkDayMarkColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWorkDayMarkColorTmpValueForIdx1);
            } else if (valueHolderForWorkDayMarkColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWorkDayMarkColorTmpValueForIdx2 = valueHolderForWorkDayMarkColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForWorkDayMarkColorTmpValueForIdx2);
            } else if (valueHolderForWorkDayMarkColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForWorkDayMarkColorTmpValueForIdx3 = valueHolderForWorkDayMarkColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForWorkDayMarkColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffDayMarkColor = value.offDayMarkColor
        if (valueHolderForOffDayMarkColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffDayMarkColorTmpValue = valueHolderForOffDayMarkColor
            if (valueHolderForOffDayMarkColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffDayMarkColorTmpValueForIdx0 = valueHolderForOffDayMarkColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForOffDayMarkColorTmpValueForIdx0.value);
            } else if (valueHolderForOffDayMarkColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffDayMarkColorTmpValueForIdx1 = valueHolderForOffDayMarkColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForOffDayMarkColorTmpValueForIdx1);
            } else if (valueHolderForOffDayMarkColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForOffDayMarkColorTmpValueForIdx2 = valueHolderForOffDayMarkColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForOffDayMarkColorTmpValueForIdx2);
            } else if (valueHolderForOffDayMarkColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForOffDayMarkColorTmpValueForIdx3 = valueHolderForOffDayMarkColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForOffDayMarkColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWorkDayMarkSize = value.workDayMarkSize
        if (valueHolderForWorkDayMarkSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWorkDayMarkSizeTmpValue = valueHolderForWorkDayMarkSize
            valueSerializer.writeNumber(valueHolderForWorkDayMarkSizeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffDayMarkSize = value.offDayMarkSize
        if (valueHolderForOffDayMarkSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffDayMarkSizeTmpValue = valueHolderForOffDayMarkSize
            valueSerializer.writeNumber(valueHolderForOffDayMarkSizeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWorkStateWidth = value.workStateWidth
        if (valueHolderForWorkStateWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWorkStateWidthTmpValue = valueHolderForWorkStateWidth
            valueSerializer.writeNumber(valueHolderForWorkStateWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWorkStateHorizontalMovingDistance = value.workStateHorizontalMovingDistance
        if (valueHolderForWorkStateHorizontalMovingDistance.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWorkStateHorizontalMovingDistanceTmpValue = valueHolderForWorkStateHorizontalMovingDistance
            valueSerializer.writeNumber(valueHolderForWorkStateHorizontalMovingDistanceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWorkStateVerticalMovingDistance = value.workStateVerticalMovingDistance
        if (valueHolderForWorkStateVerticalMovingDistance.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWorkStateVerticalMovingDistanceTmpValue = valueHolderForWorkStateVerticalMovingDistance
            valueSerializer.writeNumber(valueHolderForWorkStateVerticalMovingDistanceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): WorkStateStyle {
        var valueDeserializer: DeserializerBase = buffer
        let workDayMarkColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var workDayMarkColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(workDayMarkColorTmpBuf_runtimeType))) {
            let workDayMarkColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var workDayMarkColorTmpBuf_: ResourceColor 
            if (workDayMarkColorTmpBuf_UnionSelector == Int8(0)) {
                workDayMarkColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (workDayMarkColorTmpBuf_UnionSelector == Int8(1)) {
                workDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (workDayMarkColorTmpBuf_UnionSelector == Int8(2)) {
                workDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (workDayMarkColorTmpBuf_UnionSelector == Int8(3)) {
                workDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for workDayMarkColorTmpBuf_ has to be chosen through deserialisation.")
            }
            workDayMarkColorTmpBuf = match (workDayMarkColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let workDayMarkColorTmpResult: Option<ResourceColor> = workDayMarkColorTmpBuf
        let offDayMarkColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offDayMarkColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offDayMarkColorTmpBuf_runtimeType))) {
            let offDayMarkColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var offDayMarkColorTmpBuf_: ResourceColor 
            if (offDayMarkColorTmpBuf_UnionSelector == Int8(0)) {
                offDayMarkColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (offDayMarkColorTmpBuf_UnionSelector == Int8(1)) {
                offDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offDayMarkColorTmpBuf_UnionSelector == Int8(2)) {
                offDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offDayMarkColorTmpBuf_UnionSelector == Int8(3)) {
                offDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for offDayMarkColorTmpBuf_ has to be chosen through deserialisation.")
            }
            offDayMarkColorTmpBuf = match (offDayMarkColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offDayMarkColorTmpResult: Option<ResourceColor> = offDayMarkColorTmpBuf
        let workDayMarkSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var workDayMarkSizeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(workDayMarkSizeTmpBuf_runtimeType))) {
            workDayMarkSizeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let workDayMarkSizeTmpResult: Option<Float64> = workDayMarkSizeTmpBuf
        let offDayMarkSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offDayMarkSizeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offDayMarkSizeTmpBuf_runtimeType))) {
            offDayMarkSizeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offDayMarkSizeTmpResult: Option<Float64> = offDayMarkSizeTmpBuf
        let workStateWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var workStateWidthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(workStateWidthTmpBuf_runtimeType))) {
            workStateWidthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let workStateWidthTmpResult: Option<Float64> = workStateWidthTmpBuf
        let workStateHorizontalMovingDistanceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var workStateHorizontalMovingDistanceTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(workStateHorizontalMovingDistanceTmpBuf_runtimeType))) {
            workStateHorizontalMovingDistanceTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let workStateHorizontalMovingDistanceTmpResult: Option<Float64> = workStateHorizontalMovingDistanceTmpBuf
        let workStateVerticalMovingDistanceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var workStateVerticalMovingDistanceTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(workStateVerticalMovingDistanceTmpBuf_runtimeType))) {
            workStateVerticalMovingDistanceTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let workStateVerticalMovingDistanceTmpResult: Option<Float64> = workStateVerticalMovingDistanceTmpBuf
        var value: WorkStateStyle = WorkStateStyle(workDayMarkColorTmpResult, offDayMarkColorTmpResult, workDayMarkSizeTmpResult, offDayMarkSizeTmpResult, workStateWidthTmpResult, workStateHorizontalMovingDistanceTmpResult, workStateVerticalMovingDistanceTmpResult)
        return value
    }
}
