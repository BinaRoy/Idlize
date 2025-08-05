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
public interface FocusMovementInterfaces <:  {
    public mut open prop forward: Option<String>
    public mut open prop backward: Option<String>
    public mut open prop up: Option<String>
    public mut open prop down: Option<String>
    public mut open prop left: Option<String>
    public mut open prop right: Option<String>
}
public open class FocusMovement <: FocusMovementInterfaces {
    private var forward_container: Option<String>
    public mut open prop forward: Option<String>
    {
        get() {
            return forward_container
        }
        set(forward) {
            forward_container = forward
        }
    }
    private var backward_container: Option<String>
    public mut open prop backward: Option<String>
    {
        get() {
            return backward_container
        }
        set(backward) {
            backward_container = backward
        }
    }
    private var up_container: Option<String>
    public mut open prop up: Option<String>
    {
        get() {
            return up_container
        }
        set(up) {
            up_container = up
        }
    }
    private var down_container: Option<String>
    public mut open prop down: Option<String>
    {
        get() {
            return down_container
        }
        set(down) {
            down_container = down
        }
    }
    private var left_container: Option<String>
    public mut open prop left: Option<String>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    private var right_container: Option<String>
    public mut open prop right: Option<String>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    FocusMovement(forward: Option<String>, backward: Option<String>, up: Option<String>, down: Option<String>, left: Option<String>, right: Option<String>) {
        this.forward_container = forward
        this.backward_container = backward
        this.up_container = up
        this.down_container = down
        this.left_container = left
        this.right_container = right
    }
}
public open class FocusMovement_serializer {
    public static func write(buffer: SerializerBase, value: FocusMovement): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForForward = value.forward
        if (valueHolderForForward.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForForwardTmpValue = valueHolderForForward
            valueSerializer.writeString(valueHolderForForwardTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackward = value.backward
        if (valueHolderForBackward.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackwardTmpValue = valueHolderForBackward
            valueSerializer.writeString(valueHolderForBackwardTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUp = value.up
        if (valueHolderForUp.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUpTmpValue = valueHolderForUp
            valueSerializer.writeString(valueHolderForUpTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDown = value.down
        if (valueHolderForDown.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDownTmpValue = valueHolderForDown
            valueSerializer.writeString(valueHolderForDownTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLeft = value.left
        if (valueHolderForLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeftTmpValue = valueHolderForLeft
            valueSerializer.writeString(valueHolderForLeftTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRight = value.right
        if (valueHolderForRight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRightTmpValue = valueHolderForRight
            valueSerializer.writeString(valueHolderForRightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FocusMovement {
        var valueDeserializer: DeserializerBase = buffer
        let forwardTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var forwardTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(forwardTmpBuf_runtimeType))) {
            forwardTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let forwardTmpResult: Option<String> = forwardTmpBuf
        let backwardTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backwardTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backwardTmpBuf_runtimeType))) {
            backwardTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backwardTmpResult: Option<String> = backwardTmpBuf
        let upTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var upTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(upTmpBuf_runtimeType))) {
            upTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let upTmpResult: Option<String> = upTmpBuf
        let downTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var downTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(downTmpBuf_runtimeType))) {
            downTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let downTmpResult: Option<String> = downTmpBuf
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            leftTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let leftTmpResult: Option<String> = leftTmpBuf
        let rightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rightTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rightTmpBuf_runtimeType))) {
            rightTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let rightTmpResult: Option<String> = rightTmpBuf
        var value: FocusMovement = FocusMovement(forwardTmpResult, backwardTmpResult, upTmpResult, downTmpResult, leftTmpResult, rightTmpResult)
        return value
    }
}
