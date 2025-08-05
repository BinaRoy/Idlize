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
public interface PixelStretchEffectOptionsInterfaces <:  {
    public mut open prop top: Option<Length>
    public mut open prop bottom: Option<Length>
    public mut open prop left: Option<Length>
    public mut open prop right: Option<Length>
}
public open class PixelStretchEffectOptions <: PixelStretchEffectOptionsInterfaces {
    private var top_container: Option<Length>
    public mut open prop top: Option<Length>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var bottom_container: Option<Length>
    public mut open prop bottom: Option<Length>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var left_container: Option<Length>
    public mut open prop left: Option<Length>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    private var right_container: Option<Length>
    public mut open prop right: Option<Length>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    PixelStretchEffectOptions(top: Option<Length>, bottom: Option<Length>, left: Option<Length>, right: Option<Length>) {
        this.top_container = top
        this.bottom_container = bottom
        this.left_container = left
        this.right_container = right
    }
}
public open class PixelStretchEffectOptions_serializer {
    public static func write(buffer: SerializerBase, value: PixelStretchEffectOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            if (valueHolderForTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTopTmpValueForIdx0 = valueHolderForTopTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForTopTmpValueForIdx0);
            } else if (valueHolderForTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTopTmpValueForIdx1 = valueHolderForTopTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTopTmpValueForIdx1);
            } else if (valueHolderForTopTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTopTmpValueForIdx2 = valueHolderForTopTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForTopTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (valueHolderForBottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            if (valueHolderForBottomTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBottomTmpValueForIdx0 = valueHolderForBottomTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBottomTmpValueForIdx0);
            } else if (valueHolderForBottomTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBottomTmpValueForIdx1 = valueHolderForBottomTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBottomTmpValueForIdx1);
            } else if (valueHolderForBottomTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBottomTmpValueForIdx2 = valueHolderForBottomTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBottomTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLeft = value.left
        if (valueHolderForLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeftTmpValue = valueHolderForLeft
            if (valueHolderForLeftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLeftTmpValueForIdx0 = valueHolderForLeftTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForLeftTmpValueForIdx0);
            } else if (valueHolderForLeftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLeftTmpValueForIdx1 = valueHolderForLeftTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForLeftTmpValueForIdx1);
            } else if (valueHolderForLeftTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForLeftTmpValueForIdx2 = valueHolderForLeftTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForLeftTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRight = value.right
        if (valueHolderForRight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRightTmpValue = valueHolderForRight
            if (valueHolderForRightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRightTmpValueForIdx0 = valueHolderForRightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForRightTmpValueForIdx0);
            } else if (valueHolderForRightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRightTmpValueForIdx1 = valueHolderForRightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForRightTmpValueForIdx1);
            } else if (valueHolderForRightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForRightTmpValueForIdx2 = valueHolderForRightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForRightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PixelStretchEffectOptions {
        var valueDeserializer: DeserializerBase = buffer
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            let topTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var topTmpBuf_: Length 
            if (topTmpBuf_UnionSelector == Int8(0)) {
                topTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(1)) {
                topTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(2)) {
                topTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for topTmpBuf_ has to be chosen through deserialisation.")
            }
            topTmpBuf = match (topTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topTmpResult: Option<Length> = topTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            let bottomTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var bottomTmpBuf_: Length 
            if (bottomTmpBuf_UnionSelector == Int8(0)) {
                bottomTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBuf_UnionSelector == Int8(1)) {
                bottomTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBuf_UnionSelector == Int8(2)) {
                bottomTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for bottomTmpBuf_ has to be chosen through deserialisation.")
            }
            bottomTmpBuf = match (bottomTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomTmpResult: Option<Length> = bottomTmpBuf
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            let leftTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var leftTmpBuf_: Length 
            if (leftTmpBuf_UnionSelector == Int8(0)) {
                leftTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leftTmpBuf_UnionSelector == Int8(1)) {
                leftTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leftTmpBuf_UnionSelector == Int8(2)) {
                leftTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for leftTmpBuf_ has to be chosen through deserialisation.")
            }
            leftTmpBuf = match (leftTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let leftTmpResult: Option<Length> = leftTmpBuf
        let rightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rightTmpBuf_runtimeType))) {
            let rightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var rightTmpBuf_: Length 
            if (rightTmpBuf_UnionSelector == Int8(0)) {
                rightTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rightTmpBuf_UnionSelector == Int8(1)) {
                rightTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rightTmpBuf_UnionSelector == Int8(2)) {
                rightTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for rightTmpBuf_ has to be chosen through deserialisation.")
            }
            rightTmpBuf = match (rightTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let rightTmpResult: Option<Length> = rightTmpBuf
        var value: PixelStretchEffectOptions = PixelStretchEffectOptions(topTmpResult, bottomTmpResult, leftTmpResult, rightTmpResult)
        return value
    }
}
