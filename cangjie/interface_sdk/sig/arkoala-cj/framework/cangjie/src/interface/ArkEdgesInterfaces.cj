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
public interface EdgesInterfaces <:  {
    public mut open prop top: Option<Dimension>
    public mut open prop left: Option<Dimension>
    public mut open prop bottom: Option<Dimension>
    public mut open prop right: Option<Dimension>
}
public open class Edges <: EdgesInterfaces {
    private var top_container: Option<Dimension>
    public mut open prop top: Option<Dimension>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var left_container: Option<Dimension>
    public mut open prop left: Option<Dimension>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    private var bottom_container: Option<Dimension>
    public mut open prop bottom: Option<Dimension>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var right_container: Option<Dimension>
    public mut open prop right: Option<Dimension>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    Edges(top: Option<Dimension>, left: Option<Dimension>, bottom: Option<Dimension>, right: Option<Dimension>) {
        this.top_container = top
        this.left_container = left
        this.bottom_container = bottom
        this.right_container = right
    }
}
public open class Edges_serializer {
    public static func write(buffer: SerializerBase, value: Edges): Unit {
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
    public static func read(buffer: DeserializerBase): Edges {
        var valueDeserializer: DeserializerBase = buffer
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            let topTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var topTmpBuf_: Dimension 
            if (topTmpBuf_UnionSelector == Int8(0)) {
                topTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(1)) {
                topTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(2)) {
                topTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for topTmpBuf_ has to be chosen through deserialisation.")
            }
            topTmpBuf = match (topTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topTmpResult: Option<Dimension> = topTmpBuf
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            let leftTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var leftTmpBuf_: Dimension 
            if (leftTmpBuf_UnionSelector == Int8(0)) {
                leftTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leftTmpBuf_UnionSelector == Int8(1)) {
                leftTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (leftTmpBuf_UnionSelector == Int8(2)) {
                leftTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for leftTmpBuf_ has to be chosen through deserialisation.")
            }
            leftTmpBuf = match (leftTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let leftTmpResult: Option<Dimension> = leftTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            let bottomTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var bottomTmpBuf_: Dimension 
            if (bottomTmpBuf_UnionSelector == Int8(0)) {
                bottomTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBuf_UnionSelector == Int8(1)) {
                bottomTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBuf_UnionSelector == Int8(2)) {
                bottomTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for bottomTmpBuf_ has to be chosen through deserialisation.")
            }
            bottomTmpBuf = match (bottomTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomTmpResult: Option<Dimension> = bottomTmpBuf
        let rightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rightTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rightTmpBuf_runtimeType))) {
            let rightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var rightTmpBuf_: Dimension 
            if (rightTmpBuf_UnionSelector == Int8(0)) {
                rightTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rightTmpBuf_UnionSelector == Int8(1)) {
                rightTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rightTmpBuf_UnionSelector == Int8(2)) {
                rightTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for rightTmpBuf_ has to be chosen through deserialisation.")
            }
            rightTmpBuf = match (rightTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let rightTmpResult: Option<Dimension> = rightTmpBuf
        var value: Edges = Edges(topTmpResult, leftTmpResult, bottomTmpResult, rightTmpResult)
        return value
    }
}
