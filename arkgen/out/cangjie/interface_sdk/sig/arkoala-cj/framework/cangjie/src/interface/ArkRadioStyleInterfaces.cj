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
public interface RadioStyleInterfaces <:  {
    public mut open prop checkedBackgroundColor: Option<ResourceColor>
    public mut open prop uncheckedBorderColor: Option<ResourceColor>
    public mut open prop indicatorColor: Option<ResourceColor>
}
public open class RadioStyle <: RadioStyleInterfaces {
    private var checkedBackgroundColor_container: Option<ResourceColor>
    public mut open prop checkedBackgroundColor: Option<ResourceColor>
    {
        get() {
            return checkedBackgroundColor_container
        }
        set(checkedBackgroundColor) {
            checkedBackgroundColor_container = checkedBackgroundColor
        }
    }
    private var uncheckedBorderColor_container: Option<ResourceColor>
    public mut open prop uncheckedBorderColor: Option<ResourceColor>
    {
        get() {
            return uncheckedBorderColor_container
        }
        set(uncheckedBorderColor) {
            uncheckedBorderColor_container = uncheckedBorderColor
        }
    }
    private var indicatorColor_container: Option<ResourceColor>
    public mut open prop indicatorColor: Option<ResourceColor>
    {
        get() {
            return indicatorColor_container
        }
        set(indicatorColor) {
            indicatorColor_container = indicatorColor
        }
    }
    RadioStyle(checkedBackgroundColor: Option<ResourceColor>, uncheckedBorderColor: Option<ResourceColor>, indicatorColor: Option<ResourceColor>) {
        this.checkedBackgroundColor_container = checkedBackgroundColor
        this.uncheckedBorderColor_container = uncheckedBorderColor
        this.indicatorColor_container = indicatorColor
    }
}
public open class RadioStyle_serializer {
    public static func write(buffer: SerializerBase, value: RadioStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForCheckedBackgroundColor = value.checkedBackgroundColor
        if (valueHolderForCheckedBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCheckedBackgroundColorTmpValue = valueHolderForCheckedBackgroundColor
            if (valueHolderForCheckedBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForCheckedBackgroundColorTmpValueForIdx0 = valueHolderForCheckedBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForCheckedBackgroundColorTmpValueForIdx0.value);
            } else if (valueHolderForCheckedBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForCheckedBackgroundColorTmpValueForIdx1 = valueHolderForCheckedBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForCheckedBackgroundColorTmpValueForIdx1);
            } else if (valueHolderForCheckedBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForCheckedBackgroundColorTmpValueForIdx2 = valueHolderForCheckedBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForCheckedBackgroundColorTmpValueForIdx2);
            } else if (valueHolderForCheckedBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForCheckedBackgroundColorTmpValueForIdx3 = valueHolderForCheckedBackgroundColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForCheckedBackgroundColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUncheckedBorderColor = value.uncheckedBorderColor
        if (valueHolderForUncheckedBorderColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUncheckedBorderColorTmpValue = valueHolderForUncheckedBorderColor
            if (valueHolderForUncheckedBorderColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForUncheckedBorderColorTmpValueForIdx0 = valueHolderForUncheckedBorderColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForUncheckedBorderColorTmpValueForIdx0.value);
            } else if (valueHolderForUncheckedBorderColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForUncheckedBorderColorTmpValueForIdx1 = valueHolderForUncheckedBorderColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForUncheckedBorderColorTmpValueForIdx1);
            } else if (valueHolderForUncheckedBorderColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForUncheckedBorderColorTmpValueForIdx2 = valueHolderForUncheckedBorderColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForUncheckedBorderColorTmpValueForIdx2);
            } else if (valueHolderForUncheckedBorderColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForUncheckedBorderColorTmpValueForIdx3 = valueHolderForUncheckedBorderColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForUncheckedBorderColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIndicatorColor = value.indicatorColor
        if (valueHolderForIndicatorColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIndicatorColorTmpValue = valueHolderForIndicatorColor
            if (valueHolderForIndicatorColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForIndicatorColorTmpValueForIdx0 = valueHolderForIndicatorColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForIndicatorColorTmpValueForIdx0.value);
            } else if (valueHolderForIndicatorColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForIndicatorColorTmpValueForIdx1 = valueHolderForIndicatorColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForIndicatorColorTmpValueForIdx1);
            } else if (valueHolderForIndicatorColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForIndicatorColorTmpValueForIdx2 = valueHolderForIndicatorColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForIndicatorColorTmpValueForIdx2);
            } else if (valueHolderForIndicatorColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForIndicatorColorTmpValueForIdx3 = valueHolderForIndicatorColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForIndicatorColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RadioStyle {
        var valueDeserializer: DeserializerBase = buffer
        let checkedBackgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var checkedBackgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(checkedBackgroundColorTmpBuf_runtimeType))) {
            let checkedBackgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var checkedBackgroundColorTmpBuf_: ResourceColor 
            if (checkedBackgroundColorTmpBuf_UnionSelector == Int8(0)) {
                checkedBackgroundColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (checkedBackgroundColorTmpBuf_UnionSelector == Int8(1)) {
                checkedBackgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (checkedBackgroundColorTmpBuf_UnionSelector == Int8(2)) {
                checkedBackgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (checkedBackgroundColorTmpBuf_UnionSelector == Int8(3)) {
                checkedBackgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for checkedBackgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            checkedBackgroundColorTmpBuf = match (checkedBackgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let checkedBackgroundColorTmpResult: Option<ResourceColor> = checkedBackgroundColorTmpBuf
        let uncheckedBorderColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var uncheckedBorderColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(uncheckedBorderColorTmpBuf_runtimeType))) {
            let uncheckedBorderColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var uncheckedBorderColorTmpBuf_: ResourceColor 
            if (uncheckedBorderColorTmpBuf_UnionSelector == Int8(0)) {
                uncheckedBorderColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (uncheckedBorderColorTmpBuf_UnionSelector == Int8(1)) {
                uncheckedBorderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (uncheckedBorderColorTmpBuf_UnionSelector == Int8(2)) {
                uncheckedBorderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (uncheckedBorderColorTmpBuf_UnionSelector == Int8(3)) {
                uncheckedBorderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for uncheckedBorderColorTmpBuf_ has to be chosen through deserialisation.")
            }
            uncheckedBorderColorTmpBuf = match (uncheckedBorderColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let uncheckedBorderColorTmpResult: Option<ResourceColor> = uncheckedBorderColorTmpBuf
        let indicatorColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var indicatorColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(indicatorColorTmpBuf_runtimeType))) {
            let indicatorColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var indicatorColorTmpBuf_: ResourceColor 
            if (indicatorColorTmpBuf_UnionSelector == Int8(0)) {
                indicatorColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (indicatorColorTmpBuf_UnionSelector == Int8(1)) {
                indicatorColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (indicatorColorTmpBuf_UnionSelector == Int8(2)) {
                indicatorColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (indicatorColorTmpBuf_UnionSelector == Int8(3)) {
                indicatorColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for indicatorColorTmpBuf_ has to be chosen through deserialisation.")
            }
            indicatorColorTmpBuf = match (indicatorColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let indicatorColorTmpResult: Option<ResourceColor> = indicatorColorTmpBuf
        var value: RadioStyle = RadioStyle(checkedBackgroundColorTmpResult, uncheckedBorderColorTmpResult, indicatorColorTmpResult)
        return value
    }
}
