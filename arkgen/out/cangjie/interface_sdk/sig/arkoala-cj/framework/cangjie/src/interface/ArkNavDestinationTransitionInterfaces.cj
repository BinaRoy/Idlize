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
public interface NavDestinationTransitionInterfaces <:  {
    public mut open prop onTransitionEnd: Option<(() -> Unit)>
    public mut open prop duration: Option<Float64>
    public mut open prop curve: Option<Curve>
    public mut open prop delay: Option<Float64>
    public mut open prop event: (() -> Unit)
}
public open class NavDestinationTransition <: NavDestinationTransitionInterfaces {
    private var onTransitionEnd_container: Option<(() -> Unit)>
    public mut open prop onTransitionEnd: Option<(() -> Unit)>
    {
        get() {
            return onTransitionEnd_container
        }
        set(onTransitionEnd) {
            onTransitionEnd_container = onTransitionEnd
        }
    }
    private var duration_container: Option<Float64>
    public mut open prop duration: Option<Float64>
    {
        get() {
            return duration_container
        }
        set(duration) {
            duration_container = duration
        }
    }
    private var curve_container: Option<Curve>
    public mut open prop curve: Option<Curve>
    {
        get() {
            return curve_container
        }
        set(curve) {
            curve_container = curve
        }
    }
    private var delay_container: Option<Float64>
    public mut open prop delay: Option<Float64>
    {
        get() {
            return delay_container
        }
        set(delay) {
            delay_container = delay
        }
    }
    private var event_container: (() -> Unit)
    public mut open prop event: (() -> Unit)
    {
        get() {
            return event_container
        }
        set(event) {
            event_container = event
        }
    }
    NavDestinationTransition(onTransitionEnd: Option<(() -> Unit)>, duration: Option<Float64>, curve: Option<Curve>, delay: Option<Float64>, event: (() -> Unit)) {
        this.onTransitionEnd_container = onTransitionEnd
        this.duration_container = duration
        this.curve_container = curve
        this.delay_container = delay
        this.event_container = event
    }
}
public open class NavDestinationTransition_serializer {
    public static func write(buffer: SerializerBase, value: NavDestinationTransition): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnTransitionEnd = value.onTransitionEnd
        if (valueHolderForOnTransitionEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnTransitionEndTmpValue = valueHolderForOnTransitionEnd
            valueSerializer.holdAndWriteCallback(valueHolderForOnTransitionEndTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDuration = value.duration
        if (valueHolderForDuration.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDurationTmpValue = valueHolderForDuration
            valueSerializer.writeNumber(valueHolderForDurationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCurve = value.curve
        if (valueHolderForCurve.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCurveTmpValue = valueHolderForCurve
            valueSerializer.writeInt32(valueHolderForCurveTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDelay = value.delay
        if (valueHolderForDelay.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDelayTmpValue = valueHolderForDelay
            valueSerializer.writeNumber(valueHolderForDelayTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEvent = value.event
        valueSerializer.holdAndWriteCallback(valueHolderForEvent);
    }
    public static func read(buffer: DeserializerBase): NavDestinationTransition {
        var valueDeserializer: DeserializerBase = buffer
        let onTransitionEndTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onTransitionEndTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onTransitionEndTmpBuf_runtimeType))) {
            let onTransitionEndTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onTransitionEndTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onTransitionEndTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onTransitionEndTmpBuf = { => let onTransitionEndTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onTransitionEndTmpBuf_BufArgsSerializer.writeInt32(onTransitionEndTmpBuf_BufResource.resourceId);
onTransitionEndTmpBuf_BufArgsSerializer.writePointer(onTransitionEndTmpBuf_BufCall);
onTransitionEndTmpBuf_BufArgsSerializer.writePointer(onTransitionEndTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onTransitionEndTmpBuf_BufArgsSerializer.asBuffer(), onTransitionEndTmpBuf_BufArgsSerializer.length());
onTransitionEndTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onTransitionEndTmpResult: Option<(() -> Unit)> = onTransitionEndTmpBuf
        let durationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var durationTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(durationTmpBuf_runtimeType))) {
            durationTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let durationTmpResult: Option<Float64> = durationTmpBuf
        let curveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var curveTmpBuf: Option<Curve> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(curveTmpBuf_runtimeType))) {
            curveTmpBuf = Curve(valueDeserializer.readInt32())
        }
        let curveTmpResult: Option<Curve> = curveTmpBuf
        let delayTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var delayTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(delayTmpBuf_runtimeType))) {
            delayTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let delayTmpResult: Option<Float64> = delayTmpBuf
        let eventTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let eventTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let eventTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let eventTmpResult: (() -> Unit) = { => let eventTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
eventTmpBufBufArgsSerializer.writeInt32(eventTmpBufBufResource.resourceId);
eventTmpBufBufArgsSerializer.writePointer(eventTmpBufBufCall);
eventTmpBufBufArgsSerializer.writePointer(eventTmpBufBufCallSync);
InteropNativeModule._CallCallback(-1867723152, eventTmpBufBufArgsSerializer.asBuffer(), eventTmpBufBufArgsSerializer.length());
eventTmpBufBufArgsSerializer.release();
return; }
        var value: NavDestinationTransition = NavDestinationTransition(onTransitionEndTmpResult, durationTmpResult, curveTmpResult, delayTmpResult, eventTmpResult)
        return value
    }
}
