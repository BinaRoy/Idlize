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
public interface LunarSwitchStyleInterfaces <:  {
    public mut open prop selectedColor: Option<ResourceColor>
    public mut open prop unselectedColor: Option<ResourceColor>
    public mut open prop strokeColor: Option<ResourceColor>
}
public open class LunarSwitchStyle <: LunarSwitchStyleInterfaces {
    private var selectedColor_container: Option<ResourceColor>
    public mut open prop selectedColor: Option<ResourceColor>
    {
        get() {
            return selectedColor_container
        }
        set(selectedColor) {
            selectedColor_container = selectedColor
        }
    }
    private var unselectedColor_container: Option<ResourceColor>
    public mut open prop unselectedColor: Option<ResourceColor>
    {
        get() {
            return unselectedColor_container
        }
        set(unselectedColor) {
            unselectedColor_container = unselectedColor
        }
    }
    private var strokeColor_container: Option<ResourceColor>
    public mut open prop strokeColor: Option<ResourceColor>
    {
        get() {
            return strokeColor_container
        }
        set(strokeColor) {
            strokeColor_container = strokeColor
        }
    }
    LunarSwitchStyle(selectedColor: Option<ResourceColor>, unselectedColor: Option<ResourceColor>, strokeColor: Option<ResourceColor>) {
        this.selectedColor_container = selectedColor
        this.unselectedColor_container = unselectedColor
        this.strokeColor_container = strokeColor
    }
}
public open class LunarSwitchStyle_serializer {
    public static func write(buffer: SerializerBase, value: LunarSwitchStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSelectedColor = value.selectedColor
        if (valueHolderForSelectedColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSelectedColorTmpValue = valueHolderForSelectedColor
            if (valueHolderForSelectedColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSelectedColorTmpValueForIdx0 = valueHolderForSelectedColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForSelectedColorTmpValueForIdx0.value);
            } else if (valueHolderForSelectedColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSelectedColorTmpValueForIdx1 = valueHolderForSelectedColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSelectedColorTmpValueForIdx1);
            } else if (valueHolderForSelectedColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSelectedColorTmpValueForIdx2 = valueHolderForSelectedColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForSelectedColorTmpValueForIdx2);
            } else if (valueHolderForSelectedColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForSelectedColorTmpValueForIdx3 = valueHolderForSelectedColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForSelectedColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUnselectedColor = value.unselectedColor
        if (valueHolderForUnselectedColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUnselectedColorTmpValue = valueHolderForUnselectedColor
            if (valueHolderForUnselectedColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForUnselectedColorTmpValueForIdx0 = valueHolderForUnselectedColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForUnselectedColorTmpValueForIdx0.value);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForUnselectedColorTmpValueForIdx1 = valueHolderForUnselectedColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForUnselectedColorTmpValueForIdx1);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForUnselectedColorTmpValueForIdx2 = valueHolderForUnselectedColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForUnselectedColorTmpValueForIdx2);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForUnselectedColorTmpValueForIdx3 = valueHolderForUnselectedColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForUnselectedColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStrokeColor = value.strokeColor
        if (valueHolderForStrokeColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStrokeColorTmpValue = valueHolderForStrokeColor
            if (valueHolderForStrokeColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStrokeColorTmpValueForIdx0 = valueHolderForStrokeColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForStrokeColorTmpValueForIdx0.value);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStrokeColorTmpValueForIdx1 = valueHolderForStrokeColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStrokeColorTmpValueForIdx1);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStrokeColorTmpValueForIdx2 = valueHolderForStrokeColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForStrokeColorTmpValueForIdx2);
            } else if (valueHolderForStrokeColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForStrokeColorTmpValueForIdx3 = valueHolderForStrokeColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForStrokeColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LunarSwitchStyle {
        var valueDeserializer: DeserializerBase = buffer
        let selectedColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var selectedColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(selectedColorTmpBuf_runtimeType))) {
            let selectedColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var selectedColorTmpBuf_: ResourceColor 
            if (selectedColorTmpBuf_UnionSelector == Int8(0)) {
                selectedColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (selectedColorTmpBuf_UnionSelector == Int8(1)) {
                selectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (selectedColorTmpBuf_UnionSelector == Int8(2)) {
                selectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (selectedColorTmpBuf_UnionSelector == Int8(3)) {
                selectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for selectedColorTmpBuf_ has to be chosen through deserialisation.")
            }
            selectedColorTmpBuf = match (selectedColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let selectedColorTmpResult: Option<ResourceColor> = selectedColorTmpBuf
        let unselectedColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var unselectedColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(unselectedColorTmpBuf_runtimeType))) {
            let unselectedColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var unselectedColorTmpBuf_: ResourceColor 
            if (unselectedColorTmpBuf_UnionSelector == Int8(0)) {
                unselectedColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(1)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(2)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(3)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for unselectedColorTmpBuf_ has to be chosen through deserialisation.")
            }
            unselectedColorTmpBuf = match (unselectedColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let unselectedColorTmpResult: Option<ResourceColor> = unselectedColorTmpBuf
        let strokeColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var strokeColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(strokeColorTmpBuf_runtimeType))) {
            let strokeColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var strokeColorTmpBuf_: ResourceColor 
            if (strokeColorTmpBuf_UnionSelector == Int8(0)) {
                strokeColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (strokeColorTmpBuf_UnionSelector == Int8(1)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeColorTmpBuf_UnionSelector == Int8(2)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (strokeColorTmpBuf_UnionSelector == Int8(3)) {
                strokeColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for strokeColorTmpBuf_ has to be chosen through deserialisation.")
            }
            strokeColorTmpBuf = match (strokeColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let strokeColorTmpResult: Option<ResourceColor> = strokeColorTmpBuf
        var value: LunarSwitchStyle = LunarSwitchStyle(selectedColorTmpResult, unselectedColorTmpResult, strokeColorTmpResult)
        return value
    }
}
