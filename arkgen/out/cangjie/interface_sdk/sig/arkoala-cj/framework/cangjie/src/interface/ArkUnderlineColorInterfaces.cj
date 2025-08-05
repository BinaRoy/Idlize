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
public interface UnderlineColorInterfaces <:  {
    public mut open prop typing: Option<ResourceColor>
    public mut open prop normal: Option<ResourceColor>
    public mut open prop error: Option<ResourceColor>
    public mut open prop disable: Option<ResourceColor>
}
public open class UnderlineColor <: UnderlineColorInterfaces {
    private var typing_container: Option<ResourceColor>
    public mut open prop typing: Option<ResourceColor>
    {
        get() {
            return typing_container
        }
        set(typing) {
            typing_container = typing
        }
    }
    private var normal_container: Option<ResourceColor>
    public mut open prop normal: Option<ResourceColor>
    {
        get() {
            return normal_container
        }
        set(normal) {
            normal_container = normal
        }
    }
    private var error_container: Option<ResourceColor>
    public mut open prop error: Option<ResourceColor>
    {
        get() {
            return error_container
        }
        set(error) {
            error_container = error
        }
    }
    private var disable_container: Option<ResourceColor>
    public mut open prop disable: Option<ResourceColor>
    {
        get() {
            return disable_container
        }
        set(disable) {
            disable_container = disable
        }
    }
    UnderlineColor(typing: Option<ResourceColor>, normal: Option<ResourceColor>, error: Option<ResourceColor>, disable: Option<ResourceColor>) {
        this.typing_container = typing
        this.normal_container = normal
        this.error_container = error
        this.disable_container = disable
    }
}
public open class UnderlineColor_serializer {
    public static func write(buffer: SerializerBase, value: UnderlineColor): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTyping = value.typing
        if (valueHolderForTyping.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypingTmpValue = valueHolderForTyping
            if (valueHolderForTypingTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTypingTmpValueForIdx0 = valueHolderForTypingTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForTypingTmpValueForIdx0.value);
            } else if (valueHolderForTypingTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTypingTmpValueForIdx1 = valueHolderForTypingTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTypingTmpValueForIdx1);
            } else if (valueHolderForTypingTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTypingTmpValueForIdx2 = valueHolderForTypingTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForTypingTmpValueForIdx2);
            } else if (valueHolderForTypingTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForTypingTmpValueForIdx3 = valueHolderForTypingTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForTypingTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForNormal = value.normal
        if (valueHolderForNormal.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNormalTmpValue = valueHolderForNormal
            if (valueHolderForNormalTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForNormalTmpValueForIdx0 = valueHolderForNormalTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForNormalTmpValueForIdx0.value);
            } else if (valueHolderForNormalTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForNormalTmpValueForIdx1 = valueHolderForNormalTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForNormalTmpValueForIdx1);
            } else if (valueHolderForNormalTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForNormalTmpValueForIdx2 = valueHolderForNormalTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForNormalTmpValueForIdx2);
            } else if (valueHolderForNormalTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForNormalTmpValueForIdx3 = valueHolderForNormalTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForNormalTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForError = value.error
        if (valueHolderForError.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForErrorTmpValue = valueHolderForError
            if (valueHolderForErrorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForErrorTmpValueForIdx0 = valueHolderForErrorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForErrorTmpValueForIdx0.value);
            } else if (valueHolderForErrorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForErrorTmpValueForIdx1 = valueHolderForErrorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForErrorTmpValueForIdx1);
            } else if (valueHolderForErrorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForErrorTmpValueForIdx2 = valueHolderForErrorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForErrorTmpValueForIdx2);
            } else if (valueHolderForErrorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForErrorTmpValueForIdx3 = valueHolderForErrorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForErrorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDisable = value.disable
        if (valueHolderForDisable.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDisableTmpValue = valueHolderForDisable
            if (valueHolderForDisableTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForDisableTmpValueForIdx0 = valueHolderForDisableTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForDisableTmpValueForIdx0.value);
            } else if (valueHolderForDisableTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForDisableTmpValueForIdx1 = valueHolderForDisableTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForDisableTmpValueForIdx1);
            } else if (valueHolderForDisableTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForDisableTmpValueForIdx2 = valueHolderForDisableTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForDisableTmpValueForIdx2);
            } else if (valueHolderForDisableTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForDisableTmpValueForIdx3 = valueHolderForDisableTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForDisableTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): UnderlineColor {
        var valueDeserializer: DeserializerBase = buffer
        let typingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typingTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typingTmpBuf_runtimeType))) {
            let typingTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var typingTmpBuf_: ResourceColor 
            if (typingTmpBuf_UnionSelector == Int8(0)) {
                typingTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (typingTmpBuf_UnionSelector == Int8(1)) {
                typingTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (typingTmpBuf_UnionSelector == Int8(2)) {
                typingTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (typingTmpBuf_UnionSelector == Int8(3)) {
                typingTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for typingTmpBuf_ has to be chosen through deserialisation.")
            }
            typingTmpBuf = match (typingTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let typingTmpResult: Option<ResourceColor> = typingTmpBuf
        let normalTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var normalTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(normalTmpBuf_runtimeType))) {
            let normalTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var normalTmpBuf_: ResourceColor 
            if (normalTmpBuf_UnionSelector == Int8(0)) {
                normalTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (normalTmpBuf_UnionSelector == Int8(1)) {
                normalTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (normalTmpBuf_UnionSelector == Int8(2)) {
                normalTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (normalTmpBuf_UnionSelector == Int8(3)) {
                normalTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for normalTmpBuf_ has to be chosen through deserialisation.")
            }
            normalTmpBuf = match (normalTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let normalTmpResult: Option<ResourceColor> = normalTmpBuf
        let errorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var errorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(errorTmpBuf_runtimeType))) {
            let errorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var errorTmpBuf_: ResourceColor 
            if (errorTmpBuf_UnionSelector == Int8(0)) {
                errorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (errorTmpBuf_UnionSelector == Int8(1)) {
                errorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (errorTmpBuf_UnionSelector == Int8(2)) {
                errorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (errorTmpBuf_UnionSelector == Int8(3)) {
                errorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for errorTmpBuf_ has to be chosen through deserialisation.")
            }
            errorTmpBuf = match (errorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let errorTmpResult: Option<ResourceColor> = errorTmpBuf
        let disableTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var disableTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(disableTmpBuf_runtimeType))) {
            let disableTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var disableTmpBuf_: ResourceColor 
            if (disableTmpBuf_UnionSelector == Int8(0)) {
                disableTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (disableTmpBuf_UnionSelector == Int8(1)) {
                disableTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (disableTmpBuf_UnionSelector == Int8(2)) {
                disableTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (disableTmpBuf_UnionSelector == Int8(3)) {
                disableTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for disableTmpBuf_ has to be chosen through deserialisation.")
            }
            disableTmpBuf = match (disableTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let disableTmpResult: Option<ResourceColor> = disableTmpBuf
        var value: UnderlineColor = UnderlineColor(typingTmpResult, normalTmpResult, errorTmpResult, disableTmpResult)
        return value
    }
}
