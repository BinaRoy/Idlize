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
public interface BorderRadiusesInterfaces <:  {
    public mut open prop topLeft: Option<Length>
    public mut open prop topRight: Option<Length>
    public mut open prop bottomLeft: Option<Length>
    public mut open prop bottomRight: Option<Length>
}
public open class BorderRadiuses <: BorderRadiusesInterfaces {
    private var topLeft_container: Option<Length>
    public mut open prop topLeft: Option<Length>
    {
        get() {
            return topLeft_container
        }
        set(topLeft) {
            topLeft_container = topLeft
        }
    }
    private var topRight_container: Option<Length>
    public mut open prop topRight: Option<Length>
    {
        get() {
            return topRight_container
        }
        set(topRight) {
            topRight_container = topRight
        }
    }
    private var bottomLeft_container: Option<Length>
    public mut open prop bottomLeft: Option<Length>
    {
        get() {
            return bottomLeft_container
        }
        set(bottomLeft) {
            bottomLeft_container = bottomLeft
        }
    }
    private var bottomRight_container: Option<Length>
    public mut open prop bottomRight: Option<Length>
    {
        get() {
            return bottomRight_container
        }
        set(bottomRight) {
            bottomRight_container = bottomRight
        }
    }
    BorderRadiuses(topLeft: Option<Length>, topRight: Option<Length>, bottomLeft: Option<Length>, bottomRight: Option<Length>) {
        this.topLeft_container = topLeft
        this.topRight_container = topRight
        this.bottomLeft_container = bottomLeft
        this.bottomRight_container = bottomRight
    }
}
public open class BorderRadiuses_serializer {
    public static func write(buffer: SerializerBase, value: BorderRadiuses): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTopLeft = value.topLeft
        if (valueHolderForTopLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopLeftTmpValue = valueHolderForTopLeft
            if (valueHolderForTopLeftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTopLeftTmpValueForIdx0 = valueHolderForTopLeftTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForTopLeftTmpValueForIdx0);
            } else if (valueHolderForTopLeftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTopLeftTmpValueForIdx1 = valueHolderForTopLeftTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTopLeftTmpValueForIdx1);
            } else if (valueHolderForTopLeftTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTopLeftTmpValueForIdx2 = valueHolderForTopLeftTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForTopLeftTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTopRight = value.topRight
        if (valueHolderForTopRight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopRightTmpValue = valueHolderForTopRight
            if (valueHolderForTopRightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTopRightTmpValueForIdx0 = valueHolderForTopRightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForTopRightTmpValueForIdx0);
            } else if (valueHolderForTopRightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTopRightTmpValueForIdx1 = valueHolderForTopRightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTopRightTmpValueForIdx1);
            } else if (valueHolderForTopRightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTopRightTmpValueForIdx2 = valueHolderForTopRightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForTopRightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottomLeft = value.bottomLeft
        if (valueHolderForBottomLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomLeftTmpValue = valueHolderForBottomLeft
            if (valueHolderForBottomLeftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBottomLeftTmpValueForIdx0 = valueHolderForBottomLeftTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBottomLeftTmpValueForIdx0);
            } else if (valueHolderForBottomLeftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBottomLeftTmpValueForIdx1 = valueHolderForBottomLeftTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBottomLeftTmpValueForIdx1);
            } else if (valueHolderForBottomLeftTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBottomLeftTmpValueForIdx2 = valueHolderForBottomLeftTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBottomLeftTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottomRight = value.bottomRight
        if (valueHolderForBottomRight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomRightTmpValue = valueHolderForBottomRight
            if (valueHolderForBottomRightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBottomRightTmpValueForIdx0 = valueHolderForBottomRightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBottomRightTmpValueForIdx0);
            } else if (valueHolderForBottomRightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBottomRightTmpValueForIdx1 = valueHolderForBottomRightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBottomRightTmpValueForIdx1);
            } else if (valueHolderForBottomRightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBottomRightTmpValueForIdx2 = valueHolderForBottomRightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBottomRightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BorderRadiuses {
        var valueDeserializer: DeserializerBase = buffer
        let topLeftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topLeftTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topLeftTmpBuf_runtimeType))) {
            let topLeftTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var topLeftTmpBuf_: Length 
            if (topLeftTmpBuf_UnionSelector == Int8(0)) {
                topLeftTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topLeftTmpBuf_UnionSelector == Int8(1)) {
                topLeftTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topLeftTmpBuf_UnionSelector == Int8(2)) {
                topLeftTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for topLeftTmpBuf_ has to be chosen through deserialisation.")
            }
            topLeftTmpBuf = match (topLeftTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topLeftTmpResult: Option<Length> = topLeftTmpBuf
        let topRightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topRightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topRightTmpBuf_runtimeType))) {
            let topRightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var topRightTmpBuf_: Length 
            if (topRightTmpBuf_UnionSelector == Int8(0)) {
                topRightTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topRightTmpBuf_UnionSelector == Int8(1)) {
                topRightTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topRightTmpBuf_UnionSelector == Int8(2)) {
                topRightTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for topRightTmpBuf_ has to be chosen through deserialisation.")
            }
            topRightTmpBuf = match (topRightTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topRightTmpResult: Option<Length> = topRightTmpBuf
        let bottomLeftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomLeftTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomLeftTmpBuf_runtimeType))) {
            let bottomLeftTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var bottomLeftTmpBuf_: Length 
            if (bottomLeftTmpBuf_UnionSelector == Int8(0)) {
                bottomLeftTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomLeftTmpBuf_UnionSelector == Int8(1)) {
                bottomLeftTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomLeftTmpBuf_UnionSelector == Int8(2)) {
                bottomLeftTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for bottomLeftTmpBuf_ has to be chosen through deserialisation.")
            }
            bottomLeftTmpBuf = match (bottomLeftTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomLeftTmpResult: Option<Length> = bottomLeftTmpBuf
        let bottomRightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomRightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomRightTmpBuf_runtimeType))) {
            let bottomRightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var bottomRightTmpBuf_: Length 
            if (bottomRightTmpBuf_UnionSelector == Int8(0)) {
                bottomRightTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomRightTmpBuf_UnionSelector == Int8(1)) {
                bottomRightTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomRightTmpBuf_UnionSelector == Int8(2)) {
                bottomRightTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for bottomRightTmpBuf_ has to be chosen through deserialisation.")
            }
            bottomRightTmpBuf = match (bottomRightTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomRightTmpResult: Option<Length> = bottomRightTmpBuf
        var value: BorderRadiuses = BorderRadiuses(topLeftTmpResult, topRightTmpResult, bottomLeftTmpResult, bottomRightTmpResult)
        return value
    }
}
