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
public interface TodayStyleInterfaces <:  {
    public mut open prop focusedDayColor: Option<ResourceColor>
    public mut open prop focusedLunarColor: Option<ResourceColor>
    public mut open prop focusedAreaBackgroundColor: Option<ResourceColor>
    public mut open prop focusedAreaRadius: Option<Float64>
}
public open class TodayStyle <: TodayStyleInterfaces {
    private var focusedDayColor_container: Option<ResourceColor>
    public mut open prop focusedDayColor: Option<ResourceColor>
    {
        get() {
            return focusedDayColor_container
        }
        set(focusedDayColor) {
            focusedDayColor_container = focusedDayColor
        }
    }
    private var focusedLunarColor_container: Option<ResourceColor>
    public mut open prop focusedLunarColor: Option<ResourceColor>
    {
        get() {
            return focusedLunarColor_container
        }
        set(focusedLunarColor) {
            focusedLunarColor_container = focusedLunarColor
        }
    }
    private var focusedAreaBackgroundColor_container: Option<ResourceColor>
    public mut open prop focusedAreaBackgroundColor: Option<ResourceColor>
    {
        get() {
            return focusedAreaBackgroundColor_container
        }
        set(focusedAreaBackgroundColor) {
            focusedAreaBackgroundColor_container = focusedAreaBackgroundColor
        }
    }
    private var focusedAreaRadius_container: Option<Float64>
    public mut open prop focusedAreaRadius: Option<Float64>
    {
        get() {
            return focusedAreaRadius_container
        }
        set(focusedAreaRadius) {
            focusedAreaRadius_container = focusedAreaRadius
        }
    }
    TodayStyle(focusedDayColor: Option<ResourceColor>, focusedLunarColor: Option<ResourceColor>, focusedAreaBackgroundColor: Option<ResourceColor>, focusedAreaRadius: Option<Float64>) {
        this.focusedDayColor_container = focusedDayColor
        this.focusedLunarColor_container = focusedLunarColor
        this.focusedAreaBackgroundColor_container = focusedAreaBackgroundColor
        this.focusedAreaRadius_container = focusedAreaRadius
    }
}
public open class TodayStyle_serializer {
    public static func write(buffer: SerializerBase, value: TodayStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFocusedDayColor = value.focusedDayColor
        if (valueHolderForFocusedDayColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFocusedDayColorTmpValue = valueHolderForFocusedDayColor
            if (valueHolderForFocusedDayColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFocusedDayColorTmpValueForIdx0 = valueHolderForFocusedDayColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForFocusedDayColorTmpValueForIdx0.value);
            } else if (valueHolderForFocusedDayColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFocusedDayColorTmpValueForIdx1 = valueHolderForFocusedDayColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForFocusedDayColorTmpValueForIdx1);
            } else if (valueHolderForFocusedDayColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFocusedDayColorTmpValueForIdx2 = valueHolderForFocusedDayColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForFocusedDayColorTmpValueForIdx2);
            } else if (valueHolderForFocusedDayColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForFocusedDayColorTmpValueForIdx3 = valueHolderForFocusedDayColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForFocusedDayColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFocusedLunarColor = value.focusedLunarColor
        if (valueHolderForFocusedLunarColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFocusedLunarColorTmpValue = valueHolderForFocusedLunarColor
            if (valueHolderForFocusedLunarColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFocusedLunarColorTmpValueForIdx0 = valueHolderForFocusedLunarColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForFocusedLunarColorTmpValueForIdx0.value);
            } else if (valueHolderForFocusedLunarColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFocusedLunarColorTmpValueForIdx1 = valueHolderForFocusedLunarColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForFocusedLunarColorTmpValueForIdx1);
            } else if (valueHolderForFocusedLunarColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFocusedLunarColorTmpValueForIdx2 = valueHolderForFocusedLunarColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForFocusedLunarColorTmpValueForIdx2);
            } else if (valueHolderForFocusedLunarColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForFocusedLunarColorTmpValueForIdx3 = valueHolderForFocusedLunarColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForFocusedLunarColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFocusedAreaBackgroundColor = value.focusedAreaBackgroundColor
        if (valueHolderForFocusedAreaBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFocusedAreaBackgroundColorTmpValue = valueHolderForFocusedAreaBackgroundColor
            if (valueHolderForFocusedAreaBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFocusedAreaBackgroundColorTmpValueForIdx0 = valueHolderForFocusedAreaBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForFocusedAreaBackgroundColorTmpValueForIdx0.value);
            } else if (valueHolderForFocusedAreaBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFocusedAreaBackgroundColorTmpValueForIdx1 = valueHolderForFocusedAreaBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForFocusedAreaBackgroundColorTmpValueForIdx1);
            } else if (valueHolderForFocusedAreaBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFocusedAreaBackgroundColorTmpValueForIdx2 = valueHolderForFocusedAreaBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForFocusedAreaBackgroundColorTmpValueForIdx2);
            } else if (valueHolderForFocusedAreaBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForFocusedAreaBackgroundColorTmpValueForIdx3 = valueHolderForFocusedAreaBackgroundColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForFocusedAreaBackgroundColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFocusedAreaRadius = value.focusedAreaRadius
        if (valueHolderForFocusedAreaRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFocusedAreaRadiusTmpValue = valueHolderForFocusedAreaRadius
            valueSerializer.writeNumber(valueHolderForFocusedAreaRadiusTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TodayStyle {
        var valueDeserializer: DeserializerBase = buffer
        let focusedDayColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var focusedDayColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(focusedDayColorTmpBuf_runtimeType))) {
            let focusedDayColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var focusedDayColorTmpBuf_: ResourceColor 
            if (focusedDayColorTmpBuf_UnionSelector == Int8(0)) {
                focusedDayColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (focusedDayColorTmpBuf_UnionSelector == Int8(1)) {
                focusedDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (focusedDayColorTmpBuf_UnionSelector == Int8(2)) {
                focusedDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (focusedDayColorTmpBuf_UnionSelector == Int8(3)) {
                focusedDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for focusedDayColorTmpBuf_ has to be chosen through deserialisation.")
            }
            focusedDayColorTmpBuf = match (focusedDayColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let focusedDayColorTmpResult: Option<ResourceColor> = focusedDayColorTmpBuf
        let focusedLunarColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var focusedLunarColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(focusedLunarColorTmpBuf_runtimeType))) {
            let focusedLunarColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var focusedLunarColorTmpBuf_: ResourceColor 
            if (focusedLunarColorTmpBuf_UnionSelector == Int8(0)) {
                focusedLunarColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (focusedLunarColorTmpBuf_UnionSelector == Int8(1)) {
                focusedLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (focusedLunarColorTmpBuf_UnionSelector == Int8(2)) {
                focusedLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (focusedLunarColorTmpBuf_UnionSelector == Int8(3)) {
                focusedLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for focusedLunarColorTmpBuf_ has to be chosen through deserialisation.")
            }
            focusedLunarColorTmpBuf = match (focusedLunarColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let focusedLunarColorTmpResult: Option<ResourceColor> = focusedLunarColorTmpBuf
        let focusedAreaBackgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var focusedAreaBackgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(focusedAreaBackgroundColorTmpBuf_runtimeType))) {
            let focusedAreaBackgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var focusedAreaBackgroundColorTmpBuf_: ResourceColor 
            if (focusedAreaBackgroundColorTmpBuf_UnionSelector == Int8(0)) {
                focusedAreaBackgroundColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (focusedAreaBackgroundColorTmpBuf_UnionSelector == Int8(1)) {
                focusedAreaBackgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (focusedAreaBackgroundColorTmpBuf_UnionSelector == Int8(2)) {
                focusedAreaBackgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (focusedAreaBackgroundColorTmpBuf_UnionSelector == Int8(3)) {
                focusedAreaBackgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for focusedAreaBackgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            focusedAreaBackgroundColorTmpBuf = match (focusedAreaBackgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let focusedAreaBackgroundColorTmpResult: Option<ResourceColor> = focusedAreaBackgroundColorTmpBuf
        let focusedAreaRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var focusedAreaRadiusTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(focusedAreaRadiusTmpBuf_runtimeType))) {
            focusedAreaRadiusTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let focusedAreaRadiusTmpResult: Option<Float64> = focusedAreaRadiusTmpBuf
        var value: TodayStyle = TodayStyle(focusedDayColorTmpResult, focusedLunarColorTmpResult, focusedAreaBackgroundColorTmpResult, focusedAreaRadiusTmpResult)
        return value
    }
}
