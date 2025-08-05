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
public interface NavigationAnimatedTransitionInterfaces <:  {
    public mut open prop onTransitionEnd: Option<((parameter: Bool) -> Unit)>
    public mut open prop timeout: Option<Float64>
    public mut open prop isInteractive: Option<Bool>
    public mut open prop transition: ((transitionProxy: NavigationTransitionProxy) -> Unit)
}
public open class NavigationAnimatedTransition <: NavigationAnimatedTransitionInterfaces {
    private var onTransitionEnd_container: Option<((parameter: Bool) -> Unit)>
    public mut open prop onTransitionEnd: Option<((parameter: Bool) -> Unit)>
    {
        get() {
            return onTransitionEnd_container
        }
        set(onTransitionEnd) {
            onTransitionEnd_container = onTransitionEnd
        }
    }
    private var timeout_container: Option<Float64>
    public mut open prop timeout: Option<Float64>
    {
        get() {
            return timeout_container
        }
        set(timeout) {
            timeout_container = timeout
        }
    }
    private var isInteractive_container: Option<Bool>
    public mut open prop isInteractive: Option<Bool>
    {
        get() {
            return isInteractive_container
        }
        set(isInteractive) {
            isInteractive_container = isInteractive
        }
    }
    private var transition_container: ((transitionProxy: NavigationTransitionProxy) -> Unit)
    public mut open prop transition: ((transitionProxy: NavigationTransitionProxy) -> Unit)
    {
        get() {
            return transition_container
        }
        set(transition) {
            transition_container = transition
        }
    }
    NavigationAnimatedTransition(onTransitionEnd: Option<((parameter: Bool) -> Unit)>, timeout: Option<Float64>, isInteractive: Option<Bool>, transition: ((transitionProxy: NavigationTransitionProxy) -> Unit)) {
        this.onTransitionEnd_container = onTransitionEnd
        this.timeout_container = timeout
        this.isInteractive_container = isInteractive
        this.transition_container = transition
    }
}
public open class NavigationAnimatedTransition_serializer {
    public static func write(buffer: SerializerBase, value: NavigationAnimatedTransition): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnTransitionEnd = value.onTransitionEnd
        if (valueHolderForOnTransitionEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnTransitionEndTmpValue = valueHolderForOnTransitionEnd
            valueSerializer.holdAndWriteCallback(valueHolderForOnTransitionEndTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTimeout = value.timeout
        if (valueHolderForTimeout.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTimeoutTmpValue = valueHolderForTimeout
            valueSerializer.writeNumber(valueHolderForTimeoutTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIsInteractive = value.isInteractive
        if (valueHolderForIsInteractive.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsInteractiveTmpValue = valueHolderForIsInteractive
            valueSerializer.writeBoolean(valueHolderForIsInteractiveTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTransition = value.transition
        valueSerializer.holdAndWriteCallback(valueHolderForTransition);
    }
    public static func read(buffer: DeserializerBase): NavigationAnimatedTransition {
        var valueDeserializer: DeserializerBase = buffer
        let onTransitionEndTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onTransitionEndTmpBuf: Option<((parameter: Bool) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onTransitionEndTmpBuf_runtimeType))) {
            let onTransitionEndTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onTransitionEndTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onTransitionEndTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onTransitionEndTmpBuf = {parameter: Bool => let onTransitionEndTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onTransitionEndTmpBuf_BufArgsSerializer.writeInt32(onTransitionEndTmpBuf_BufResource.resourceId);
onTransitionEndTmpBuf_BufArgsSerializer.writePointer(onTransitionEndTmpBuf_BufCall);
onTransitionEndTmpBuf_BufArgsSerializer.writePointer(onTransitionEndTmpBuf_BufCallSync);
onTransitionEndTmpBuf_BufArgsSerializer.writeBoolean(parameter);
InteropNativeModule._CallCallback(313269291, onTransitionEndTmpBuf_BufArgsSerializer.asBuffer(), onTransitionEndTmpBuf_BufArgsSerializer.length());
onTransitionEndTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onTransitionEndTmpResult: Option<((parameter: Bool) -> Unit)> = onTransitionEndTmpBuf
        let timeoutTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var timeoutTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(timeoutTmpBuf_runtimeType))) {
            timeoutTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let timeoutTmpResult: Option<Float64> = timeoutTmpBuf
        let isInteractiveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isInteractiveTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isInteractiveTmpBuf_runtimeType))) {
            isInteractiveTmpBuf = valueDeserializer.readBoolean()
        }
        let isInteractiveTmpResult: Option<Bool> = isInteractiveTmpBuf
        let transitionTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let transitionTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let transitionTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let transitionTmpResult: ((transitionProxy: NavigationTransitionProxy) -> Unit) = {transitionProxy: NavigationTransitionProxy => let transitionTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
transitionTmpBufBufArgsSerializer.writeInt32(transitionTmpBufBufResource.resourceId);
transitionTmpBufBufArgsSerializer.writePointer(transitionTmpBufBufCall);
transitionTmpBufBufArgsSerializer.writePointer(transitionTmpBufBufCallSync);
NavigationTransitionProxy_serializer.write(transitionTmpBufBufArgsSerializer, transitionProxy);
InteropNativeModule._CallCallback(-1375731066, transitionTmpBufBufArgsSerializer.asBuffer(), transitionTmpBufBufArgsSerializer.length());
transitionTmpBufBufArgsSerializer.release();
return; }
        var value: NavigationAnimatedTransition = NavigationAnimatedTransition(onTransitionEndTmpResult, timeoutTmpResult, isInteractiveTmpResult, transitionTmpResult)
        return value
    }
}
