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
public interface NonCurrentDayStyleInterfaces <:  {
    public mut open prop nonCurrentMonthDayColor: Option<ResourceColor>
    public mut open prop nonCurrentMonthLunarColor: Option<ResourceColor>
    public mut open prop nonCurrentMonthWorkDayMarkColor: Option<ResourceColor>
    public mut open prop nonCurrentMonthOffDayMarkColor: Option<ResourceColor>
}
public open class NonCurrentDayStyle <: NonCurrentDayStyleInterfaces {
    private var nonCurrentMonthDayColor_container: Option<ResourceColor>
    public mut open prop nonCurrentMonthDayColor: Option<ResourceColor>
    {
        get() {
            return nonCurrentMonthDayColor_container
        }
        set(nonCurrentMonthDayColor) {
            nonCurrentMonthDayColor_container = nonCurrentMonthDayColor
        }
    }
    private var nonCurrentMonthLunarColor_container: Option<ResourceColor>
    public mut open prop nonCurrentMonthLunarColor: Option<ResourceColor>
    {
        get() {
            return nonCurrentMonthLunarColor_container
        }
        set(nonCurrentMonthLunarColor) {
            nonCurrentMonthLunarColor_container = nonCurrentMonthLunarColor
        }
    }
    private var nonCurrentMonthWorkDayMarkColor_container: Option<ResourceColor>
    public mut open prop nonCurrentMonthWorkDayMarkColor: Option<ResourceColor>
    {
        get() {
            return nonCurrentMonthWorkDayMarkColor_container
        }
        set(nonCurrentMonthWorkDayMarkColor) {
            nonCurrentMonthWorkDayMarkColor_container = nonCurrentMonthWorkDayMarkColor
        }
    }
    private var nonCurrentMonthOffDayMarkColor_container: Option<ResourceColor>
    public mut open prop nonCurrentMonthOffDayMarkColor: Option<ResourceColor>
    {
        get() {
            return nonCurrentMonthOffDayMarkColor_container
        }
        set(nonCurrentMonthOffDayMarkColor) {
            nonCurrentMonthOffDayMarkColor_container = nonCurrentMonthOffDayMarkColor
        }
    }
    NonCurrentDayStyle(nonCurrentMonthDayColor: Option<ResourceColor>, nonCurrentMonthLunarColor: Option<ResourceColor>, nonCurrentMonthWorkDayMarkColor: Option<ResourceColor>, nonCurrentMonthOffDayMarkColor: Option<ResourceColor>) {
        this.nonCurrentMonthDayColor_container = nonCurrentMonthDayColor
        this.nonCurrentMonthLunarColor_container = nonCurrentMonthLunarColor
        this.nonCurrentMonthWorkDayMarkColor_container = nonCurrentMonthWorkDayMarkColor
        this.nonCurrentMonthOffDayMarkColor_container = nonCurrentMonthOffDayMarkColor
    }
}
public open class NonCurrentDayStyle_serializer {
    public static func write(buffer: SerializerBase, value: NonCurrentDayStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForNonCurrentMonthDayColor = value.nonCurrentMonthDayColor
        if (valueHolderForNonCurrentMonthDayColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNonCurrentMonthDayColorTmpValue = valueHolderForNonCurrentMonthDayColor
            if (valueHolderForNonCurrentMonthDayColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForNonCurrentMonthDayColorTmpValueForIdx0 = valueHolderForNonCurrentMonthDayColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForNonCurrentMonthDayColorTmpValueForIdx0.value);
            } else if (valueHolderForNonCurrentMonthDayColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForNonCurrentMonthDayColorTmpValueForIdx1 = valueHolderForNonCurrentMonthDayColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForNonCurrentMonthDayColorTmpValueForIdx1);
            } else if (valueHolderForNonCurrentMonthDayColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForNonCurrentMonthDayColorTmpValueForIdx2 = valueHolderForNonCurrentMonthDayColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForNonCurrentMonthDayColorTmpValueForIdx2);
            } else if (valueHolderForNonCurrentMonthDayColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForNonCurrentMonthDayColorTmpValueForIdx3 = valueHolderForNonCurrentMonthDayColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForNonCurrentMonthDayColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForNonCurrentMonthLunarColor = value.nonCurrentMonthLunarColor
        if (valueHolderForNonCurrentMonthLunarColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNonCurrentMonthLunarColorTmpValue = valueHolderForNonCurrentMonthLunarColor
            if (valueHolderForNonCurrentMonthLunarColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForNonCurrentMonthLunarColorTmpValueForIdx0 = valueHolderForNonCurrentMonthLunarColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForNonCurrentMonthLunarColorTmpValueForIdx0.value);
            } else if (valueHolderForNonCurrentMonthLunarColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForNonCurrentMonthLunarColorTmpValueForIdx1 = valueHolderForNonCurrentMonthLunarColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForNonCurrentMonthLunarColorTmpValueForIdx1);
            } else if (valueHolderForNonCurrentMonthLunarColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForNonCurrentMonthLunarColorTmpValueForIdx2 = valueHolderForNonCurrentMonthLunarColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForNonCurrentMonthLunarColorTmpValueForIdx2);
            } else if (valueHolderForNonCurrentMonthLunarColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForNonCurrentMonthLunarColorTmpValueForIdx3 = valueHolderForNonCurrentMonthLunarColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForNonCurrentMonthLunarColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForNonCurrentMonthWorkDayMarkColor = value.nonCurrentMonthWorkDayMarkColor
        if (valueHolderForNonCurrentMonthWorkDayMarkColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue = valueHolderForNonCurrentMonthWorkDayMarkColor
            if (valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForNonCurrentMonthWorkDayMarkColorTmpValueForIdx0 = valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForNonCurrentMonthWorkDayMarkColorTmpValueForIdx0.value);
            } else if (valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForNonCurrentMonthWorkDayMarkColorTmpValueForIdx1 = valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForNonCurrentMonthWorkDayMarkColorTmpValueForIdx1);
            } else if (valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForNonCurrentMonthWorkDayMarkColorTmpValueForIdx2 = valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForNonCurrentMonthWorkDayMarkColorTmpValueForIdx2);
            } else if (valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForNonCurrentMonthWorkDayMarkColorTmpValueForIdx3 = valueHolderForNonCurrentMonthWorkDayMarkColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForNonCurrentMonthWorkDayMarkColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForNonCurrentMonthOffDayMarkColor = value.nonCurrentMonthOffDayMarkColor
        if (valueHolderForNonCurrentMonthOffDayMarkColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNonCurrentMonthOffDayMarkColorTmpValue = valueHolderForNonCurrentMonthOffDayMarkColor
            if (valueHolderForNonCurrentMonthOffDayMarkColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForNonCurrentMonthOffDayMarkColorTmpValueForIdx0 = valueHolderForNonCurrentMonthOffDayMarkColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForNonCurrentMonthOffDayMarkColorTmpValueForIdx0.value);
            } else if (valueHolderForNonCurrentMonthOffDayMarkColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForNonCurrentMonthOffDayMarkColorTmpValueForIdx1 = valueHolderForNonCurrentMonthOffDayMarkColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForNonCurrentMonthOffDayMarkColorTmpValueForIdx1);
            } else if (valueHolderForNonCurrentMonthOffDayMarkColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForNonCurrentMonthOffDayMarkColorTmpValueForIdx2 = valueHolderForNonCurrentMonthOffDayMarkColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForNonCurrentMonthOffDayMarkColorTmpValueForIdx2);
            } else if (valueHolderForNonCurrentMonthOffDayMarkColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForNonCurrentMonthOffDayMarkColorTmpValueForIdx3 = valueHolderForNonCurrentMonthOffDayMarkColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForNonCurrentMonthOffDayMarkColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NonCurrentDayStyle {
        var valueDeserializer: DeserializerBase = buffer
        let nonCurrentMonthDayColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var nonCurrentMonthDayColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(nonCurrentMonthDayColorTmpBuf_runtimeType))) {
            let nonCurrentMonthDayColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var nonCurrentMonthDayColorTmpBuf_: ResourceColor 
            if (nonCurrentMonthDayColorTmpBuf_UnionSelector == Int8(0)) {
                nonCurrentMonthDayColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (nonCurrentMonthDayColorTmpBuf_UnionSelector == Int8(1)) {
                nonCurrentMonthDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (nonCurrentMonthDayColorTmpBuf_UnionSelector == Int8(2)) {
                nonCurrentMonthDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (nonCurrentMonthDayColorTmpBuf_UnionSelector == Int8(3)) {
                nonCurrentMonthDayColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for nonCurrentMonthDayColorTmpBuf_ has to be chosen through deserialisation.")
            }
            nonCurrentMonthDayColorTmpBuf = match (nonCurrentMonthDayColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let nonCurrentMonthDayColorTmpResult: Option<ResourceColor> = nonCurrentMonthDayColorTmpBuf
        let nonCurrentMonthLunarColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var nonCurrentMonthLunarColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(nonCurrentMonthLunarColorTmpBuf_runtimeType))) {
            let nonCurrentMonthLunarColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var nonCurrentMonthLunarColorTmpBuf_: ResourceColor 
            if (nonCurrentMonthLunarColorTmpBuf_UnionSelector == Int8(0)) {
                nonCurrentMonthLunarColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (nonCurrentMonthLunarColorTmpBuf_UnionSelector == Int8(1)) {
                nonCurrentMonthLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (nonCurrentMonthLunarColorTmpBuf_UnionSelector == Int8(2)) {
                nonCurrentMonthLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (nonCurrentMonthLunarColorTmpBuf_UnionSelector == Int8(3)) {
                nonCurrentMonthLunarColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for nonCurrentMonthLunarColorTmpBuf_ has to be chosen through deserialisation.")
            }
            nonCurrentMonthLunarColorTmpBuf = match (nonCurrentMonthLunarColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let nonCurrentMonthLunarColorTmpResult: Option<ResourceColor> = nonCurrentMonthLunarColorTmpBuf
        let nonCurrentMonthWorkDayMarkColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var nonCurrentMonthWorkDayMarkColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(nonCurrentMonthWorkDayMarkColorTmpBuf_runtimeType))) {
            let nonCurrentMonthWorkDayMarkColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var nonCurrentMonthWorkDayMarkColorTmpBuf_: ResourceColor 
            if (nonCurrentMonthWorkDayMarkColorTmpBuf_UnionSelector == Int8(0)) {
                nonCurrentMonthWorkDayMarkColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (nonCurrentMonthWorkDayMarkColorTmpBuf_UnionSelector == Int8(1)) {
                nonCurrentMonthWorkDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (nonCurrentMonthWorkDayMarkColorTmpBuf_UnionSelector == Int8(2)) {
                nonCurrentMonthWorkDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (nonCurrentMonthWorkDayMarkColorTmpBuf_UnionSelector == Int8(3)) {
                nonCurrentMonthWorkDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for nonCurrentMonthWorkDayMarkColorTmpBuf_ has to be chosen through deserialisation.")
            }
            nonCurrentMonthWorkDayMarkColorTmpBuf = match (nonCurrentMonthWorkDayMarkColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let nonCurrentMonthWorkDayMarkColorTmpResult: Option<ResourceColor> = nonCurrentMonthWorkDayMarkColorTmpBuf
        let nonCurrentMonthOffDayMarkColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var nonCurrentMonthOffDayMarkColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(nonCurrentMonthOffDayMarkColorTmpBuf_runtimeType))) {
            let nonCurrentMonthOffDayMarkColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var nonCurrentMonthOffDayMarkColorTmpBuf_: ResourceColor 
            if (nonCurrentMonthOffDayMarkColorTmpBuf_UnionSelector == Int8(0)) {
                nonCurrentMonthOffDayMarkColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (nonCurrentMonthOffDayMarkColorTmpBuf_UnionSelector == Int8(1)) {
                nonCurrentMonthOffDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (nonCurrentMonthOffDayMarkColorTmpBuf_UnionSelector == Int8(2)) {
                nonCurrentMonthOffDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (nonCurrentMonthOffDayMarkColorTmpBuf_UnionSelector == Int8(3)) {
                nonCurrentMonthOffDayMarkColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for nonCurrentMonthOffDayMarkColorTmpBuf_ has to be chosen through deserialisation.")
            }
            nonCurrentMonthOffDayMarkColorTmpBuf = match (nonCurrentMonthOffDayMarkColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let nonCurrentMonthOffDayMarkColorTmpResult: Option<ResourceColor> = nonCurrentMonthOffDayMarkColorTmpBuf
        var value: NonCurrentDayStyle = NonCurrentDayStyle(nonCurrentMonthDayColorTmpResult, nonCurrentMonthLunarColorTmpResult, nonCurrentMonthWorkDayMarkColorTmpResult, nonCurrentMonthOffDayMarkColorTmpResult)
        return value
    }
}
