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
public interface ToggleOptionsInterfaces <:  {
    public mut open prop type_: ToggleType
    public mut open prop isOn: Option<Union_Boolean_Bindable>
}
public open class ToggleOptions <: ToggleOptionsInterfaces {
    private var type_container: ToggleType
    public mut open prop type_: ToggleType
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var isOn_container: Option<Union_Boolean_Bindable>
    public mut open prop isOn: Option<Union_Boolean_Bindable>
    {
        get() {
            return isOn_container
        }
        set(isOn) {
            isOn_container = isOn
        }
    }
    ToggleOptions(type_: ToggleType, isOn: Option<Union_Boolean_Bindable>) {
        this.type_container = type_
        this.isOn_container = isOn
    }
}
public open class ToggleOptions_serializer {
    public static func write(buffer: SerializerBase, value: ToggleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        valueSerializer.writeInt32(valueHolderForType.value);
        let valueHolderForIsOn = value.isOn
        if (valueHolderForIsOn.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsOnTmpValue = valueHolderForIsOn
            if (valueHolderForIsOnTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForIsOnTmpValueForIdx0 = valueHolderForIsOnTmpValue.getValue0()
                valueSerializer.writeBoolean(valueHolderForIsOnTmpValueForIdx0);
            } else if (valueHolderForIsOnTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForIsOnTmpValueForIdx1 = valueHolderForIsOnTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForIsOnTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ToggleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpResult: ToggleType = ToggleType(valueDeserializer.readInt32())
        let isOnTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isOnTmpBuf: Option<Union_Boolean_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isOnTmpBuf_runtimeType))) {
            let isOnTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var isOnTmpBuf_: Union_Boolean_Bindable 
            if (isOnTmpBuf_UnionSelector == Int8(0)) {
                isOnTmpBuf_ = Union_Boolean_Bindable(valueDeserializer.readBoolean())
            } else if (isOnTmpBuf_UnionSelector == Int8(1)) {
                isOnTmpBuf_ = Union_Boolean_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for isOnTmpBuf_ has to be chosen through deserialisation.")
            }
            isOnTmpBuf = match (isOnTmpBuf_ as Union_Boolean_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let isOnTmpResult: Option<Union_Boolean_Bindable> = isOnTmpBuf
        var value: ToggleOptions = ToggleOptions(typeTmpResult, isOnTmpResult)
        return value
    }
}
