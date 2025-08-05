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
public interface NestedScrollOptionsExtInterfaces <:  {
    public mut open prop scrollUp: Option<NestedScrollMode>
    public mut open prop scrollDown: Option<NestedScrollMode>
    public mut open prop scrollRight: Option<NestedScrollMode>
    public mut open prop scrollLeft: Option<NestedScrollMode>
}
public open class NestedScrollOptionsExt <: NestedScrollOptionsExtInterfaces {
    private var scrollUp_container: Option<NestedScrollMode>
    public mut open prop scrollUp: Option<NestedScrollMode>
    {
        get() {
            return scrollUp_container
        }
        set(scrollUp) {
            scrollUp_container = scrollUp
        }
    }
    private var scrollDown_container: Option<NestedScrollMode>
    public mut open prop scrollDown: Option<NestedScrollMode>
    {
        get() {
            return scrollDown_container
        }
        set(scrollDown) {
            scrollDown_container = scrollDown
        }
    }
    private var scrollRight_container: Option<NestedScrollMode>
    public mut open prop scrollRight: Option<NestedScrollMode>
    {
        get() {
            return scrollRight_container
        }
        set(scrollRight) {
            scrollRight_container = scrollRight
        }
    }
    private var scrollLeft_container: Option<NestedScrollMode>
    public mut open prop scrollLeft: Option<NestedScrollMode>
    {
        get() {
            return scrollLeft_container
        }
        set(scrollLeft) {
            scrollLeft_container = scrollLeft
        }
    }
    NestedScrollOptionsExt(scrollUp: Option<NestedScrollMode>, scrollDown: Option<NestedScrollMode>, scrollRight: Option<NestedScrollMode>, scrollLeft: Option<NestedScrollMode>) {
        this.scrollUp_container = scrollUp
        this.scrollDown_container = scrollDown
        this.scrollRight_container = scrollRight
        this.scrollLeft_container = scrollLeft
    }
}
public open class NestedScrollOptionsExt_serializer {
    public static func write(buffer: SerializerBase, value: NestedScrollOptionsExt): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForScrollUp = value.scrollUp
        if (valueHolderForScrollUp.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScrollUpTmpValue = valueHolderForScrollUp
            valueSerializer.writeInt32(valueHolderForScrollUpTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScrollDown = value.scrollDown
        if (valueHolderForScrollDown.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScrollDownTmpValue = valueHolderForScrollDown
            valueSerializer.writeInt32(valueHolderForScrollDownTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScrollRight = value.scrollRight
        if (valueHolderForScrollRight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScrollRightTmpValue = valueHolderForScrollRight
            valueSerializer.writeInt32(valueHolderForScrollRightTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScrollLeft = value.scrollLeft
        if (valueHolderForScrollLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScrollLeftTmpValue = valueHolderForScrollLeft
            valueSerializer.writeInt32(valueHolderForScrollLeftTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NestedScrollOptionsExt {
        var valueDeserializer: DeserializerBase = buffer
        let scrollUpTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scrollUpTmpBuf: Option<NestedScrollMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scrollUpTmpBuf_runtimeType))) {
            scrollUpTmpBuf = NestedScrollMode(valueDeserializer.readInt32())
        }
        let scrollUpTmpResult: Option<NestedScrollMode> = scrollUpTmpBuf
        let scrollDownTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scrollDownTmpBuf: Option<NestedScrollMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scrollDownTmpBuf_runtimeType))) {
            scrollDownTmpBuf = NestedScrollMode(valueDeserializer.readInt32())
        }
        let scrollDownTmpResult: Option<NestedScrollMode> = scrollDownTmpBuf
        let scrollRightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scrollRightTmpBuf: Option<NestedScrollMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scrollRightTmpBuf_runtimeType))) {
            scrollRightTmpBuf = NestedScrollMode(valueDeserializer.readInt32())
        }
        let scrollRightTmpResult: Option<NestedScrollMode> = scrollRightTmpBuf
        let scrollLeftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scrollLeftTmpBuf: Option<NestedScrollMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scrollLeftTmpBuf_runtimeType))) {
            scrollLeftTmpBuf = NestedScrollMode(valueDeserializer.readInt32())
        }
        let scrollLeftTmpResult: Option<NestedScrollMode> = scrollLeftTmpBuf
        var value: NestedScrollOptionsExt = NestedScrollOptionsExt(scrollUpTmpResult, scrollDownTmpResult, scrollRightTmpResult, scrollLeftTmpResult)
        return value
    }
}
