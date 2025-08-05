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
public interface SwiperContentAnimatedTransitionInterfaces <:  {
    public mut open prop timeout: Option<Float64>
    public mut open prop transition: ((parameter: SwiperContentTransitionProxy) -> Unit)
}
public open class SwiperContentAnimatedTransition <: SwiperContentAnimatedTransitionInterfaces {
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
    private var transition_container: ((parameter: SwiperContentTransitionProxy) -> Unit)
    public mut open prop transition: ((parameter: SwiperContentTransitionProxy) -> Unit)
    {
        get() {
            return transition_container
        }
        set(transition) {
            transition_container = transition
        }
    }
    SwiperContentAnimatedTransition(timeout: Option<Float64>, transition: ((parameter: SwiperContentTransitionProxy) -> Unit)) {
        this.timeout_container = timeout
        this.transition_container = transition
    }
}
public open class SwiperContentAnimatedTransition_serializer {
    public static func write(buffer: SerializerBase, value: SwiperContentAnimatedTransition): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTimeout = value.timeout
        if (valueHolderForTimeout.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTimeoutTmpValue = valueHolderForTimeout
            valueSerializer.writeNumber(valueHolderForTimeoutTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTransition = value.transition
        valueSerializer.holdAndWriteCallback(valueHolderForTransition);
    }
    public static func read(buffer: DeserializerBase): SwiperContentAnimatedTransition {
        var valueDeserializer: DeserializerBase = buffer
        let timeoutTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var timeoutTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(timeoutTmpBuf_runtimeType))) {
            timeoutTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let timeoutTmpResult: Option<Float64> = timeoutTmpBuf
        let transitionTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let transitionTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let transitionTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let transitionTmpResult: ((parameter: SwiperContentTransitionProxy) -> Unit) = {parameter: SwiperContentTransitionProxy => let transitionTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
transitionTmpBufBufArgsSerializer.writeInt32(transitionTmpBufBufResource.resourceId);
transitionTmpBufBufArgsSerializer.writePointer(transitionTmpBufBufCall);
transitionTmpBufBufArgsSerializer.writePointer(transitionTmpBufBufCallSync);
SwiperContentTransitionProxy_serializer.write(transitionTmpBufBufArgsSerializer, parameter);
InteropNativeModule._CallCallback(-416053361, transitionTmpBufBufArgsSerializer.asBuffer(), transitionTmpBufBufArgsSerializer.length());
transitionTmpBufBufArgsSerializer.release();
return; }
        var value: SwiperContentAnimatedTransition = SwiperContentAnimatedTransition(timeoutTmpResult, transitionTmpResult)
        return value
    }
}
