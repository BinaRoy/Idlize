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
public interface EdgeStylesInterfaces <:  {
    public mut open prop top: Option<BorderStyle>
    public mut open prop right: Option<BorderStyle>
    public mut open prop bottom: Option<BorderStyle>
    public mut open prop left: Option<BorderStyle>
}
public open class EdgeStyles <: EdgeStylesInterfaces {
    private var top_container: Option<BorderStyle>
    public mut open prop top: Option<BorderStyle>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var right_container: Option<BorderStyle>
    public mut open prop right: Option<BorderStyle>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    private var bottom_container: Option<BorderStyle>
    public mut open prop bottom: Option<BorderStyle>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var left_container: Option<BorderStyle>
    public mut open prop left: Option<BorderStyle>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    EdgeStyles(top: Option<BorderStyle>, right: Option<BorderStyle>, bottom: Option<BorderStyle>, left: Option<BorderStyle>) {
        this.top_container = top
        this.right_container = right
        this.bottom_container = bottom
        this.left_container = left
    }
}
public open class EdgeStyles_serializer {
    public static func write(buffer: SerializerBase, value: EdgeStyles): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            valueSerializer.writeInt32(valueHolderForTopTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRight = value.right
        if (valueHolderForRight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRightTmpValue = valueHolderForRight
            valueSerializer.writeInt32(valueHolderForRightTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (valueHolderForBottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            valueSerializer.writeInt32(valueHolderForBottomTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLeft = value.left
        if (valueHolderForLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeftTmpValue = valueHolderForLeft
            valueSerializer.writeInt32(valueHolderForLeftTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): EdgeStyles {
        var valueDeserializer: DeserializerBase = buffer
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<BorderStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            topTmpBuf = BorderStyle(valueDeserializer.readInt32())
        }
        let topTmpResult: Option<BorderStyle> = topTmpBuf
        let rightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rightTmpBuf: Option<BorderStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rightTmpBuf_runtimeType))) {
            rightTmpBuf = BorderStyle(valueDeserializer.readInt32())
        }
        let rightTmpResult: Option<BorderStyle> = rightTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<BorderStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            bottomTmpBuf = BorderStyle(valueDeserializer.readInt32())
        }
        let bottomTmpResult: Option<BorderStyle> = bottomTmpBuf
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<BorderStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            leftTmpBuf = BorderStyle(valueDeserializer.readInt32())
        }
        let leftTmpResult: Option<BorderStyle> = leftTmpBuf
        var value: EdgeStyles = EdgeStyles(topTmpResult, rightTmpResult, bottomTmpResult, leftTmpResult)
        return value
    }
}
