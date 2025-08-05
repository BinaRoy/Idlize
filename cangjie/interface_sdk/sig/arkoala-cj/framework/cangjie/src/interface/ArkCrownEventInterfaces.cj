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
public interface CrownEventInterfaces <:  {
    public mut open prop timestamp: Int64
    public mut open prop angularVelocity: Float64
    public mut open prop degree: Float64
    public mut open prop action: CrownAction
    public mut open prop stopPropagation: (() -> Unit)
}
public open class CrownEvent <: CrownEventInterfaces {
    private var timestamp_container: Int64
    public mut open prop timestamp: Int64
    {
        get() {
            return timestamp_container
        }
        set(timestamp) {
            timestamp_container = timestamp
        }
    }
    private var angularVelocity_container: Float64
    public mut open prop angularVelocity: Float64
    {
        get() {
            return angularVelocity_container
        }
        set(angularVelocity) {
            angularVelocity_container = angularVelocity
        }
    }
    private var degree_container: Float64
    public mut open prop degree: Float64
    {
        get() {
            return degree_container
        }
        set(degree) {
            degree_container = degree
        }
    }
    private var action_container: CrownAction
    public mut open prop action: CrownAction
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    private var stopPropagation_container: (() -> Unit)
    public mut open prop stopPropagation: (() -> Unit)
    {
        get() {
            return stopPropagation_container
        }
        set(stopPropagation) {
            stopPropagation_container = stopPropagation
        }
    }
    CrownEvent(timestamp: Int64, angularVelocity: Float64, degree: Float64, action: CrownAction, stopPropagation: (() -> Unit)) {
        this.timestamp_container = timestamp
        this.angularVelocity_container = angularVelocity
        this.degree_container = degree
        this.action_container = action
        this.stopPropagation_container = stopPropagation
    }
}
public open class CrownEvent_serializer {
    public static func write(buffer: SerializerBase, value: CrownEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTimestamp = value.timestamp
        valueSerializer.writeInt64(valueHolderForTimestamp);
        let valueHolderForAngularVelocity = value.angularVelocity
        valueSerializer.writeNumber(valueHolderForAngularVelocity);
        let valueHolderForDegree = value.degree
        valueSerializer.writeNumber(valueHolderForDegree);
        let valueHolderForAction = value.action
        valueSerializer.writeInt32(valueHolderForAction.value);
        let valueHolderForStopPropagation = value.stopPropagation
        valueSerializer.holdAndWriteCallback(valueHolderForStopPropagation);
    }
    public static func read(buffer: DeserializerBase): CrownEvent {
        var valueDeserializer: DeserializerBase = buffer
        let timestampTmpResult: Int64 = valueDeserializer.readInt64()
        let angularVelocityTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let degreeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let actionTmpResult: CrownAction = CrownAction(valueDeserializer.readInt32())
        let stopPropagationTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let stopPropagationTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let stopPropagationTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let stopPropagationTmpResult: (() -> Unit) = { => let stopPropagationTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
stopPropagationTmpBufBufArgsSerializer.writeInt32(stopPropagationTmpBufBufResource.resourceId);
stopPropagationTmpBufBufArgsSerializer.writePointer(stopPropagationTmpBufBufCall);
stopPropagationTmpBufBufArgsSerializer.writePointer(stopPropagationTmpBufBufCallSync);
InteropNativeModule._CallCallback(-1867723152, stopPropagationTmpBufBufArgsSerializer.asBuffer(), stopPropagationTmpBufBufArgsSerializer.length());
stopPropagationTmpBufBufArgsSerializer.release();
return; }
        var value: CrownEvent = CrownEvent(timestampTmpResult, angularVelocityTmpResult, degreeTmpResult, actionTmpResult, stopPropagationTmpResult)
        return value
    }
}
