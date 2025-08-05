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
public interface EdgeOutlineStylesInterfaces <:  {
    public mut open prop top: Option<OutlineStyle>
    public mut open prop right: Option<OutlineStyle>
    public mut open prop bottom: Option<OutlineStyle>
    public mut open prop left: Option<OutlineStyle>
}
public open class EdgeOutlineStyles <: EdgeOutlineStylesInterfaces {
    private var top_container: Option<OutlineStyle>
    public mut open prop top: Option<OutlineStyle>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var right_container: Option<OutlineStyle>
    public mut open prop right: Option<OutlineStyle>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    private var bottom_container: Option<OutlineStyle>
    public mut open prop bottom: Option<OutlineStyle>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var left_container: Option<OutlineStyle>
    public mut open prop left: Option<OutlineStyle>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    EdgeOutlineStyles(top: Option<OutlineStyle>, right: Option<OutlineStyle>, bottom: Option<OutlineStyle>, left: Option<OutlineStyle>) {
        this.top_container = top
        this.right_container = right
        this.bottom_container = bottom
        this.left_container = left
    }
}
public open class EdgeOutlineStyles_serializer {
    public static func write(buffer: SerializerBase, value: EdgeOutlineStyles): Unit {
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
    public static func read(buffer: DeserializerBase): EdgeOutlineStyles {
        var valueDeserializer: DeserializerBase = buffer
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<OutlineStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            topTmpBuf = OutlineStyle(valueDeserializer.readInt32())
        }
        let topTmpResult: Option<OutlineStyle> = topTmpBuf
        let rightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rightTmpBuf: Option<OutlineStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rightTmpBuf_runtimeType))) {
            rightTmpBuf = OutlineStyle(valueDeserializer.readInt32())
        }
        let rightTmpResult: Option<OutlineStyle> = rightTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<OutlineStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            bottomTmpBuf = OutlineStyle(valueDeserializer.readInt32())
        }
        let bottomTmpResult: Option<OutlineStyle> = bottomTmpBuf
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<OutlineStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            leftTmpBuf = OutlineStyle(valueDeserializer.readInt32())
        }
        let leftTmpResult: Option<OutlineStyle> = leftTmpBuf
        var value: EdgeOutlineStyles = EdgeOutlineStyles(topTmpResult, rightTmpResult, bottomTmpResult, leftTmpResult)
        return value
    }
}
