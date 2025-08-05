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
public interface ButtonOptionsInterfaces <:  {
    public mut open prop type_: Option<ButtonType>
    public mut open prop stateEffect: Option<Bool>
    public mut open prop buttonStyle: Option<ButtonStyleMode>
    public mut open prop controlSize: Option<ControlSize>
    public mut open prop role: Option<ButtonRole>
}
public open class ButtonOptions <: ButtonOptionsInterfaces {
    private var type_container: Option<ButtonType>
    public mut open prop type_: Option<ButtonType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var stateEffect_container: Option<Bool>
    public mut open prop stateEffect: Option<Bool>
    {
        get() {
            return stateEffect_container
        }
        set(stateEffect) {
            stateEffect_container = stateEffect
        }
    }
    private var buttonStyle_container: Option<ButtonStyleMode>
    public mut open prop buttonStyle: Option<ButtonStyleMode>
    {
        get() {
            return buttonStyle_container
        }
        set(buttonStyle) {
            buttonStyle_container = buttonStyle
        }
    }
    private var controlSize_container: Option<ControlSize>
    public mut open prop controlSize: Option<ControlSize>
    {
        get() {
            return controlSize_container
        }
        set(controlSize) {
            controlSize_container = controlSize
        }
    }
    private var role_container: Option<ButtonRole>
    public mut open prop role: Option<ButtonRole>
    {
        get() {
            return role_container
        }
        set(role) {
            role_container = role
        }
    }
    ButtonOptions(type_: Option<ButtonType>, stateEffect: Option<Bool>, buttonStyle: Option<ButtonStyleMode>, controlSize: Option<ControlSize>, role: Option<ButtonRole>) {
        this.type_container = type_
        this.stateEffect_container = stateEffect
        this.buttonStyle_container = buttonStyle
        this.controlSize_container = controlSize
        this.role_container = role
    }
}
public open class ButtonOptions_serializer {
    public static func write(buffer: SerializerBase, value: ButtonOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        if (valueHolderForType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStateEffect = value.stateEffect
        if (valueHolderForStateEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStateEffectTmpValue = valueHolderForStateEffect
            valueSerializer.writeBoolean(valueHolderForStateEffectTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForButtonStyle = value.buttonStyle
        if (valueHolderForButtonStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForButtonStyleTmpValue = valueHolderForButtonStyle
            valueSerializer.writeInt32(valueHolderForButtonStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForControlSize = value.controlSize
        if (valueHolderForControlSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForControlSizeTmpValue = valueHolderForControlSize
            valueSerializer.writeInt32(valueHolderForControlSizeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRole = value.role
        if (valueHolderForRole.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRoleTmpValue = valueHolderForRole
            valueSerializer.writeInt32(valueHolderForRoleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ButtonOptions {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<ButtonType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = ButtonType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<ButtonType> = typeTmpBuf
        let stateEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var stateEffectTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(stateEffectTmpBuf_runtimeType))) {
            stateEffectTmpBuf = valueDeserializer.readBoolean()
        }
        let stateEffectTmpResult: Option<Bool> = stateEffectTmpBuf
        let buttonStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buttonStyleTmpBuf: Option<ButtonStyleMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buttonStyleTmpBuf_runtimeType))) {
            buttonStyleTmpBuf = ButtonStyleMode(valueDeserializer.readInt32())
        }
        let buttonStyleTmpResult: Option<ButtonStyleMode> = buttonStyleTmpBuf
        let controlSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var controlSizeTmpBuf: Option<ControlSize> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(controlSizeTmpBuf_runtimeType))) {
            controlSizeTmpBuf = ControlSize(valueDeserializer.readInt32())
        }
        let controlSizeTmpResult: Option<ControlSize> = controlSizeTmpBuf
        let roleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var roleTmpBuf: Option<ButtonRole> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(roleTmpBuf_runtimeType))) {
            roleTmpBuf = ButtonRole(valueDeserializer.readInt32())
        }
        let roleTmpResult: Option<ButtonRole> = roleTmpBuf
        var value: ButtonOptions = ButtonOptions(typeTmpResult, stateEffectTmpResult, buttonStyleTmpResult, controlSizeTmpResult, roleTmpResult)
        return value
    }
}
