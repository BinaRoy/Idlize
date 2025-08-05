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
public interface PasswordIconInterfaces <:  {
    public mut open prop onIconSrc: Option<Union_String_Resource>
    public mut open prop offIconSrc: Option<Union_String_Resource>
}
public open class PasswordIcon <: PasswordIconInterfaces {
    private var onIconSrc_container: Option<Union_String_Resource>
    public mut open prop onIconSrc: Option<Union_String_Resource>
    {
        get() {
            return onIconSrc_container
        }
        set(onIconSrc) {
            onIconSrc_container = onIconSrc
        }
    }
    private var offIconSrc_container: Option<Union_String_Resource>
    public mut open prop offIconSrc: Option<Union_String_Resource>
    {
        get() {
            return offIconSrc_container
        }
        set(offIconSrc) {
            offIconSrc_container = offIconSrc
        }
    }
    PasswordIcon(onIconSrc: Option<Union_String_Resource>, offIconSrc: Option<Union_String_Resource>) {
        this.onIconSrc_container = onIconSrc
        this.offIconSrc_container = offIconSrc
    }
}
public open class PasswordIcon_serializer {
    public static func write(buffer: SerializerBase, value: PasswordIcon): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnIconSrc = value.onIconSrc
        if (valueHolderForOnIconSrc.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnIconSrcTmpValue = valueHolderForOnIconSrc
            if (valueHolderForOnIconSrcTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOnIconSrcTmpValueForIdx0 = valueHolderForOnIconSrcTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForOnIconSrcTmpValueForIdx0);
            } else if (valueHolderForOnIconSrcTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOnIconSrcTmpValueForIdx1 = valueHolderForOnIconSrcTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForOnIconSrcTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffIconSrc = value.offIconSrc
        if (valueHolderForOffIconSrc.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffIconSrcTmpValue = valueHolderForOffIconSrc
            if (valueHolderForOffIconSrcTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffIconSrcTmpValueForIdx0 = valueHolderForOffIconSrcTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForOffIconSrcTmpValueForIdx0);
            } else if (valueHolderForOffIconSrcTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffIconSrcTmpValueForIdx1 = valueHolderForOffIconSrcTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForOffIconSrcTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PasswordIcon {
        var valueDeserializer: DeserializerBase = buffer
        let onIconSrcTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onIconSrcTmpBuf: Option<Union_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onIconSrcTmpBuf_runtimeType))) {
            let onIconSrcTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var onIconSrcTmpBuf_: Union_String_Resource 
            if (onIconSrcTmpBuf_UnionSelector == Int8(0)) {
                onIconSrcTmpBuf_ = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (onIconSrcTmpBuf_UnionSelector == Int8(1)) {
                onIconSrcTmpBuf_ = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for onIconSrcTmpBuf_ has to be chosen through deserialisation.")
            }
            onIconSrcTmpBuf = match (onIconSrcTmpBuf_ as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let onIconSrcTmpResult: Option<Union_String_Resource> = onIconSrcTmpBuf
        let offIconSrcTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offIconSrcTmpBuf: Option<Union_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offIconSrcTmpBuf_runtimeType))) {
            let offIconSrcTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var offIconSrcTmpBuf_: Union_String_Resource 
            if (offIconSrcTmpBuf_UnionSelector == Int8(0)) {
                offIconSrcTmpBuf_ = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offIconSrcTmpBuf_UnionSelector == Int8(1)) {
                offIconSrcTmpBuf_ = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for offIconSrcTmpBuf_ has to be chosen through deserialisation.")
            }
            offIconSrcTmpBuf = match (offIconSrcTmpBuf_ as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offIconSrcTmpResult: Option<Union_String_Resource> = offIconSrcTmpBuf
        var value: PasswordIcon = PasswordIcon(onIconSrcTmpResult, offIconSrcTmpResult)
        return value
    }
}
