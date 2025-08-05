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
public interface NativeEmbedTouchInfoInterfaces <:  {
    public mut open prop embedId: Option<String>
    public mut open prop touchEvent: Option<TouchEvent>
    public mut open prop result: Option<EventResult>
}
public open class NativeEmbedTouchInfo <: NativeEmbedTouchInfoInterfaces {
    private var embedId_container: Option<String>
    public mut open prop embedId: Option<String>
    {
        get() {
            return embedId_container
        }
        set(embedId) {
            embedId_container = embedId
        }
    }
    private var touchEvent_container: Option<TouchEvent>
    public mut open prop touchEvent: Option<TouchEvent>
    {
        get() {
            return touchEvent_container
        }
        set(touchEvent) {
            touchEvent_container = touchEvent
        }
    }
    private var result_container: Option<EventResult>
    public mut open prop result: Option<EventResult>
    {
        get() {
            return result_container
        }
        set(result) {
            result_container = result
        }
    }
    NativeEmbedTouchInfo(embedId: Option<String>, touchEvent: Option<TouchEvent>, result: Option<EventResult>) {
        this.embedId_container = embedId
        this.touchEvent_container = touchEvent
        this.result_container = result
    }
}
public open class NativeEmbedTouchInfo_serializer {
    public static func write(buffer: SerializerBase, value: NativeEmbedTouchInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEmbedId = value.embedId
        if (valueHolderForEmbedId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEmbedIdTmpValue = valueHolderForEmbedId
            valueSerializer.writeString(valueHolderForEmbedIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTouchEvent = value.touchEvent
        if (valueHolderForTouchEvent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTouchEventTmpValue = valueHolderForTouchEvent
            TouchEvent_serializer.write(valueSerializer, valueHolderForTouchEventTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForResult = value.result
        if (valueHolderForResult.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForResultTmpValue = valueHolderForResult
            EventResult_serializer.write(valueSerializer, valueHolderForResultTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NativeEmbedTouchInfo {
        var valueDeserializer: DeserializerBase = buffer
        let embedIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var embedIdTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(embedIdTmpBuf_runtimeType))) {
            embedIdTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let embedIdTmpResult: Option<String> = embedIdTmpBuf
        let touchEventTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var touchEventTmpBuf: Option<TouchEvent> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(touchEventTmpBuf_runtimeType))) {
            touchEventTmpBuf = match (TouchEvent_serializer.read(valueDeserializer) as TouchEvent) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let touchEventTmpResult: Option<TouchEvent> = touchEventTmpBuf
        let resultTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var resultTmpBuf: Option<EventResult> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(resultTmpBuf_runtimeType))) {
            resultTmpBuf = match (EventResult_serializer.read(valueDeserializer) as EventResult) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let resultTmpResult: Option<EventResult> = resultTmpBuf
        var value: NativeEmbedTouchInfo = NativeEmbedTouchInfo(embedIdTmpResult, touchEventTmpResult, resultTmpResult)
        return value
    }
}
