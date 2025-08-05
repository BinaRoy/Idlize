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
public interface BoardStyleInterfaces <:  {
    public mut open prop borderRadius: Option<Length>
}
public open class BoardStyle <: BoardStyleInterfaces {
    private var borderRadius_container: Option<Length>
    public mut open prop borderRadius: Option<Length>
    {
        get() {
            return borderRadius_container
        }
        set(borderRadius) {
            borderRadius_container = borderRadius
        }
    }
    BoardStyle(borderRadius: Option<Length>) {
        this.borderRadius_container = borderRadius
    }
}
public open class BoardStyle_serializer {
    public static func write(buffer: SerializerBase, value: BoardStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBorderRadius = value.borderRadius
        if (valueHolderForBorderRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderRadiusTmpValue = valueHolderForBorderRadius
            if (valueHolderForBorderRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderRadiusTmpValueForIdx0 = valueHolderForBorderRadiusTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBorderRadiusTmpValueForIdx0);
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderRadiusTmpValueForIdx1 = valueHolderForBorderRadiusTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderRadiusTmpValueForIdx1);
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderRadiusTmpValueForIdx2 = valueHolderForBorderRadiusTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBorderRadiusTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BoardStyle {
        var valueDeserializer: DeserializerBase = buffer
        let borderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderRadiusTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderRadiusTmpBuf_runtimeType))) {
            let borderRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderRadiusTmpBuf_: Length 
            if (borderRadiusTmpBuf_UnionSelector == Int8(0)) {
                borderRadiusTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(1)) {
                borderRadiusTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(2)) {
                borderRadiusTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for borderRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            borderRadiusTmpBuf = match (borderRadiusTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderRadiusTmpResult: Option<Length> = borderRadiusTmpBuf
        var value: BoardStyle = BoardStyle(borderRadiusTmpResult)
        return value
    }
}
