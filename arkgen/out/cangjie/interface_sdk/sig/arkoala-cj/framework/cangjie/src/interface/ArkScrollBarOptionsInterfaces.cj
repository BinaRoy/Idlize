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
public interface ScrollBarOptionsInterfaces <:  {
    public mut open prop scroller: Scroller
    public mut open prop direction: Option<ScrollBarDirection>
    public mut open prop state: Option<BarState>
}
public open class ScrollBarOptions <: ScrollBarOptionsInterfaces {
    private var scroller_container: Scroller
    public mut open prop scroller: Scroller
    {
        get() {
            return scroller_container
        }
        set(scroller) {
            scroller_container = scroller
        }
    }
    private var direction_container: Option<ScrollBarDirection>
    public mut open prop direction: Option<ScrollBarDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var state_container: Option<BarState>
    public mut open prop state: Option<BarState>
    {
        get() {
            return state_container
        }
        set(state) {
            state_container = state
        }
    }
    ScrollBarOptions(scroller: Scroller, direction: Option<ScrollBarDirection>, state: Option<BarState>) {
        this.scroller_container = scroller
        this.direction_container = direction
        this.state_container = state
    }
}
public open class ScrollBarOptions_serializer {
    public static func write(buffer: SerializerBase, value: ScrollBarOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForScroller = value.scroller
        Scroller_serializer.write(valueSerializer, valueHolderForScroller);
        let valueHolderForDirection = value.direction
        if (valueHolderForDirection.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDirectionTmpValue = valueHolderForDirection
            valueSerializer.writeInt32(valueHolderForDirectionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForState = value.state
        if (valueHolderForState.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStateTmpValue = valueHolderForState
            valueSerializer.writeInt32(valueHolderForStateTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ScrollBarOptions {
        var valueDeserializer: DeserializerBase = buffer
        let scrollerTmpResult: Scroller = match (Scroller_serializer.read(valueDeserializer) as Scroller) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let directionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var directionTmpBuf: Option<ScrollBarDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(directionTmpBuf_runtimeType))) {
            directionTmpBuf = ScrollBarDirection(valueDeserializer.readInt32())
        }
        let directionTmpResult: Option<ScrollBarDirection> = directionTmpBuf
        let stateTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var stateTmpBuf: Option<BarState> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(stateTmpBuf_runtimeType))) {
            stateTmpBuf = BarState(valueDeserializer.readInt32())
        }
        let stateTmpResult: Option<BarState> = stateTmpBuf
        var value: ScrollBarOptions = ScrollBarOptions(scrollerTmpResult, directionTmpResult, stateTmpResult)
        return value
    }
}
